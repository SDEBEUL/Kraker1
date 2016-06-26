 MODULE mSettings_buffer 
!==================================================================================
!Buffer logica    
!==================================================================================
!onderste buffer zijn enkel voor nieuwe balken.
!Deze kunnen het volgende status hebben.
local const num InbuffUitdienst := 1;
local const num InbuffVol := 2;
local const num InbuffIngebruik := 3; ! (niet vol niet leeg)
local const num InbuffLeeg := 4;
local const num InbuffMaxParts := 40;
local PERS  num InbuffParts{6} := [38,0,0,0,0,0];
local PERS num InbuffStatus{6} := [2,1,1,1,1,1];
!bovenste buffers zijn enkel voor afgewerkte balken.
!Deze kunnen het volgende status hebben.
local const num OutbuffUitdienst := 1;
local const num OutbuffVol := 2;
local const num OutbuffIngebruik := 3; ! (niet vol niet leeg)
local const num OutbuffLeeg := 4;
local const num OutbuffMaxParts := 40;
local PERS num OutbuffStatus{6} := [2,1,1,1,1,1];
!uit voer buffer gewenst en actueel status
local PERS num OutbuffRequest{6,3} := [[0,0,1],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
local PERS num   OutbuffParts{6,3} := [[0,0,1],[0,0,0],[0,0,0],[0,0,0],[0,0,0],[0,0,0]];
!voor de inbuffers zal de robot steeds de eerste active buffer nemen die in dienst staat en niet meer volledig vol is.
!voor de outbuffers zal de robot steeds het eerste active buffer nemen die nog stukken nodig heeft.
!types van movelijke stukken zowel voor buffers als stations
!ook gebruikt in stations 
 CONST num Dwarsbalk330 := 1;
 CONST num Dwarsbalk331 := 2;
 CONST num Dwarsbalk332 := 3;
 CONST num DwarsbalkNieuw := 4;
 CONST num DwarsbalkScrap := 5;
 CONST num Dwarsbalk330B := 6;
 CONST num Dwarsbalk331B := 7;
 CONST num Dwarsbalk332B := 8; !type b wil zeggen dat het stuk nog niet is afgewerkt
!!stations kunnen het volgende status hebben
 const num StationUitDienst := 9;
 const num StationLeeg := 10;
 
!==================================================================================
!teller voor het rek stuknummer en rijnummer
LOCAL PERS num OutbuffTeller{6,2} :=  [[7,5],[0,0],[0,0],[0,0],[0,0],[0,0]];
LOCAL PERS num InbuffTeller{6,2} :=  [[5,3],[0,0],[0,0],[0,0],[0,0],[0,0]];
!
    
FUNC num fGetInbuffStatus(num buffnum)
  RETURN InbuffStatus{buffnum};
  !
ENDFUNC 

FUNC num fGetOutbuffStatus(num buffnum)
  RETURN OutbuffStatus{buffnum};
  !
ENDFUNC 

FUNC num fGetNextBuffer()
    !***************************************	    
    ! Func: fGetNextBuffer
    ! Description: uit welke buffer het stuk nemen;
    !***************************************
   VAR num nBuffernummer := 0;
   VAR btnres nAnswer; 
   lblRetry:
    FOR i FROM 1 TO 6 STEP 1 DO
        !niet uit dienst of niet leeg
       IF (InbuffStatus{i} <> Inbuffuitdienst) AND (InbuffStatus{i} <> Inbuffleeg) THEN
           !Als buffer al in gebruik is neem dan onmiddelijk die
           IF InbuffStatus{i} <> Inbuffvol THEN
             nBuffernummer := i;
             RETURN nBuffernummer;
           ENDIF
           !Als buffer vol is onthoud dan de laagste buffernummer en zoek verder
           IF (InbuffStatus{i} = Inbuffvol) AND (nBuffernummer = 0) THEN
            nBuffernummer := i;
           ENDIF
       ENDIF   
     ENDFOR   
     !return de laagste active volle buffer
     RETURN nbuffernummer;
     !
ENDFUNC

PROC Getnextpart()
    !***************************************	    
    ! Func: Getnextpart
    ! Description: haal een nieuwe balk
    !gaat er van uit dat robot home is
    !***************************************
    VAR num nbuffernummer := 0;
    VAR btnres nAnswer; 
    nbuffernummer := fGetNextBuffer();
    !robot kan nergens met het stuk naartoe
    IF nbuffernummer = 0 THEN
       WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="Kan negens een balk halen"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
       ENDWHILE
    ENDIF
    getpart(nbuffernummer);
    !update het buffer status
    rUpdateInbuff nbuffernummer;
    !
ENDPROC

FUNC num fPutNextBuffer(Num nPartType)
    !***************************************	    
    ! Func: fPutNextBuffer
    ! Description: naar welke buffer moet dit stuk
    !***************************************
   VAR num nBuffernummer := 0;
   VAR btnres nAnswer; 
   !kijk of dit een goed stuk is 
   IF nPartType = Dwarsbalk330 OR nPartType = Dwarsbalk331 OR nPartType = Dwarsbalk332  THEN
    FOR i FROM 1 TO 6 STEP 1 DO
        !niet uit dienst of niet vol
       IF (OutbuffStatus{i} <> Outbuffuitdienst) AND (OutbuffStatus{i} <> Outbuffvol) THEN
           !kijk of het rek nog een stuk van dit type wil 
           IF OutbuffRequest{i,nPartType} > OutbuffParts{i,nPartType} THEN 
               nBuffernummer := i;
               RETURN i;
           ENDIF
       ENDIF   
     ENDFOR
    ELSE
      WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="stuk niet geldig voor buffer"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
      ENDWHILE
   ENDIF
     !return de eerste buffer die het stuk kan ontvangen 0 wil zeggen stuk niet nodig
     RETURN nbuffernummer;
     !
ENDFUNC

PROC PUTnextpart(Num nPartType)
    !***************************************	    
    ! Func: PUTnextpart
    ! Description: steek stuk in buffer
    !gaat er van uit dat robot in wachtpos staat met een stuk 
    !***************************************
    VAR num nbuffernummer := 0;
    VAR btnres nAnswer; 
    nbuffernummer := fPutNextBuffer(nPartType);
    !robot kan nergens met het stuk naartoe
    IF nbuffernummer = 0 THEN
       WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="Kan de balk nergens plaatsen"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
       ENDWHILE
    ENDIF
    
    !routine van GERT (ik overschrijf zijn buffernumer en zet die dan terug)
    putpart(nbuffernummer);
    !update het buffer status
    rUpdateOutbuff nbuffernummer,nPartType;
    !
ENDPROC

LOCAL PROC rUpdateInbuff(num buffnum)
    !***************************************	    
    ! Func: rUpdateInbuff
    ! Description: update het status van de buffer 
    !*************************************** 
    Decr InbuffParts{buffnum};
    IF InbuffParts{buffnum} >= InbuffMaxParts THEN 
        InbuffStatus{buffnum} := InbuffVol;
    ENDIF
    !
ENDPROC

LOCAL PROC rUpdateOutbuff(num buffnum, num nPartType)
    !***************************************	    
    ! Func: rUpdateOutbuff
    ! Description: update het status van de buffer 
    !*************************************** 
    Incr OutbuffParts{buffnum,nPartType};
    IF (OutbuffParts{buffnum,Dwarsbalk330} + OutbuffParts{buffnum,Dwarsbalk330} + OutbuffParts{buffnum,Dwarsbalk330}) <= OutbuffMaxParts THEN
        OutbuffStatus{buffnum} := OutbuffVol;
    ENDIF
    IF (OutbuffRequest{buffnum,Dwarsbalk330} = OutbuffParts{buffnum,Dwarsbalk330}) 
    AND (OutbuffRequest{buffnum,Dwarsbalk331} = OutbuffParts{buffnum,Dwarsbalk331}) 
    AND (OutbuffRequest{buffnum,Dwarsbalk332} = OutbuffParts{buffnum,Dwarsbalk332})  THEN
        OutbuffStatus{buffnum} := OutbuffVol;
    ENDIF
    !
ENDPROC

LOCAL PROC rResetInbuff(num buffnum)
    !***************************************	    
    ! Func: rResetInbuff
    ! Description: set het status vol van inbuffer
    !***************************************  
    InbuffParts{buffnum} := InbuffMaxParts;
    InbuffStatus{buffnum} := InbuffVol;
    InbuffTeller{buffnum,1} := 1; !vol rek = part1 rij1  
    InbuffTeller{buffnum,2} := 1; !vol rek = part1 rij1  
    !
ENDPROC

PROC rDercInbuff(num buffnum)
    !***************************************	    
    ! Func: rDercInbuff
    ! Description: tellers updaten 1 stuk uit buffer
    !***************************************  
    !tel 1 stuk bij de rij 
    Incr InbuffTeller{buffnum,1};
    !als rij meer dan 8 is volgende 
    IF InbuffTeller{buffnum,1} > 8 THEN
        InbuffTeller{buffnum,1} := 1;
        Incr InbuffTeller{buffnum,2};
    ENDIF
    
    !veiligeid voor slechte tellers veilige situatie is LEEG
    IF (InbuffTeller{buffnum,1} > 8) OR (InbuffTeller{buffnum,1} < 1) THEN
      InbuffStatus{buffnum} := InbuffLeeg;
    ENDIF
    IF (InbuffTeller{buffnum,2} > 5) OR (InbuffTeller{buffnum,2} < 1) THEN
      InbuffStatus{buffnum} := InbuffLeeg;
    ENDIF
    !
ENDPROC

PROC rInrcOutbuff(num buffnum)
    !***************************************	    
    ! Func: rInrcOutbuff
    ! Description: tellers updaten 1 stuk bij buffer
    !***************************************  
    !trek 1 stuk van de rij 
    Decr OutbuffTeller{buffnum,1};
    !als rij minder dan 1 is volgende 
    IF OutbuffTeller{buffnum,1} < 1 THEN
        OutbuffTeller{buffnum,1} := 8;
        Decr OutbuffTeller{buffnum,2};
    ENDIF
    
    !veiligeid voor slechte tellers veilige situatie is VOl 
    IF (OutbuffTeller{buffnum,1} > 8) THEN 
        stop;
     OutbuffStatus{buffnum} := OutbuffVol;
    ENDIF
     IF (OutbuffTeller{buffnum,2} < 1) THEN
        stop;
        OutbuffStatus{buffnum} := OutbuffVol; 
     ENDIF
ENDPROC


LOCAL PROC rResetOutbuff(num buffnum)
    !***************************************	    
    ! Func: rResetOutbuff
    ! Description: set het status vol van inbuffer
    !*************************************** 
        OutbuffStatus{buffnum} := OutbuffLeeg;
        OutbuffParts{buffnum,Dwarsbalk330} := 0;
        OutbuffParts{buffnum,Dwarsbalk331} := 0;
        OutbuffParts{buffnum,Dwarsbalk332} := 0;
        OutbuffTeller{buffnum,1} := 8; !leeg rek = part8 rij5
        OutbuffTeller{buffnum,2} := 5; !leeg rek = part8 rij5
        !
ENDPROC


FUNC num fNparsNeeded(num buffnum, num Parttype)
    !***************************************	    
    ! Func: fNparsNeeded
    ! Description: kijkt hoeveel stukken van een bepaald type een buffer nog wil
    !*************************************** 
    VAR num nAantalNodig;
    VAR num nAantalAanweig;
    VAR num nResult;    
    nAantalNodig := OutbuffRequest{buffnum,Parttype};
    nAantalAanweig := OutbuffParts{buffnum,Parttype};
    nResult :=  nAantalNodig - nAantalAanweig ;
    RETURN nResult;
    !
ENDFUNC

PROC rSetInbuffStatus(num buffnum)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="INbuffer status voor buffer"+NumToStr(buffnum,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status"
        ,"InbuffStatus="+NumToStr(InbuffStatus{buffnum},0),"InbuffParts="+NumToStr(InbuffParts{buffnum},0),"InbuffMAXParts="+NumToStr(InbuffMaxParts,0)],
        \BtnArray:=["InDienst","UitDienst","VOL","","Exit"]);
        TEST nAnswer
        CASE 1:
          InbuffStatus{buffnum} := InbuffIngebruik;
          GOTO lbl_begin;
        CASE 2:
          InbuffStatus{buffnum} := InbuffUitdienst;
          GOTO lbl_begin;
        CASE 3:
          rResetInbuff(buffnum);
          GOTO lbl_begin;
        CASE 4:
          !leeg
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
       !
ENDPROC

PROC rSetOutbuffStatus(num buffnum)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="OUTbuffer status voor buffer"+NumToStr(buffnum,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status"
        ,"OutbuffStatus="+NumToStr(OutbuffStatus{buffnum},0),
         "OutbuffTotalParts="+NumToStr( (OutbuffParts{buffnum,Dwarsbalk330}+OutbuffParts{buffnum,Dwarsbalk331}+OutbuffParts{buffnum,Dwarsbalk332}) ,0),
         "Type330="+NumToStr(OutbuffParts{buffnum,Dwarsbalk330},0) + " Type331=" + numtostr(OutbuffParts{buffnum,Dwarsbalk331},0) + " Type332=" + numtostr(OutbuffParts{buffnum,Dwarsbalk332},0),
         "OutbuffMAXParts="+NumToStr(InbuffMaxParts,0),
         "Type330="+NumToStr(OutbuffRequest{buffnum,Dwarsbalk330},0) + " Type331=" + numtostr(OutbuffRequest{buffnum,Dwarsbalk331},0) + " Type332=" + numtostr(OutbuffRequest{buffnum,Dwarsbalk332},0)],
        \BtnArray:=["InDienst","UitDienst","LEEG","Settings","Exit"]);
        TEST nAnswer
        CASE 1:
          OutbuffStatus{buffnum} := OutbuffIngebruik;
          GOTO lbl_begin;
        CASE 2:
          OutbuffStatus{buffnum} := OutbuffUitdienst;
          GOTO lbl_begin;
        CASE 3:
          rResetOutbuff(buffnum);
          GOTO lbl_begin;
        CASE 4:
          !pas stuk verdeling aan
          GOTO lbl_begin;
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
       !
ENDPROC
    
!====================================================================================================

    PROC getpart(Num nBuffernummer)
      Set_Gripper(GrijperTool);
      TEST nBuffernummer
       CASE 1:
        Buffer_1_Uit;
       CASE 2:
        Buffer_2_Uit;
       CASE 3:
        Buffer_3_Uit;
       CASE 4:
        Buffer_4_Uit;
       CASE 5:
        Buffer_5_Uit;
       CASE 6:
        Buffer_6_Uit;
      ENDTESt 
      !
    ENDPROC
    
  PROC Putpart(Num nBuffernummer)
      TEST nBuffernummer
       CASE 1:
        Buffer_1_In;
       CASE 2:
        Buffer_2_In;
       CASE 3:
        Buffer_3_In;
       CASE 4:
        Buffer_4_In;
       CASE 5:
        Buffer_5_In;
       CASE 6:
        Buffer_6_In;
      ENDTESt 
      !
    ENDPROC
    
    
 FUNC num nYposPart(num nBuffer, \bool Outbuff, \bool Inbuff)
 !stuk in de laag.   
 VAR num nYpos;
 VAR num bufferpos;
IF present(outbuff) THEN
  bufferpos := OutbuffTeller{nBuffer,1};
ENDIF
IF present(inbuff) THEN
  bufferpos := InbuffTeller{nBuffer,1};
ENDIF
    !   
    TEST bufferpos 
        CASE 1:
            nYpos:=0;
        CASE 2:
            nYpos:=90;
        CASE 3:
            nYpos:=180;
        CASE 4:
            nYpos:=270;
        CASE 5:
            nYpos:=357;
        CASE 6:
            nYpos:=443;
        CASE 7:
            nYpos:=529;
        CASE 8:
            nYpos:=615;
    ENDTEST
RETURN nYpos; 
!
ENDFUNC

FUNC num nZposPart(num nBuffer, \bool Outbuff, \bool Inbuff)
 !laagnummer.   
 VAR num nZpos;
 VAR num bufferpos;
IF present(outbuff) THEN
  bufferpos := OutbuffTeller{nBuffer,2};
ENDIF
IF present(inbuff) THEN
  bufferpos := InbuffTeller{nBuffer,2};
ENDIF
    !   
    TEST bufferpos
        CASE 5:
            nZpos:=0;
        CASE 4:
            nZpos:=100;
        CASE 3:
            nZpos:=200;
        CASE 2:
            nZpos:=300;
        CASE 1:
            nZpos:=400;
    ENDTEST
RETURN nZpos;
!
ENDFUNC 
 
ENDMODULE