 MODULE mSettings_buffer 
    
FUNC num nGetInvoerbuffer()
    !***************************************	    
    ! Func: nGetInvoerbuffer
    ! Description: uit welke buffer het stuk nemen;
    ! zoekt de nummer van de buffer die al in gebruik is.
    ! indien geen buffer al in gebruik geeft hij de laagste volle buffer 
    ! indien geen buffer beschikbaar return 0 
    !***************************************
   VAR num nBuffernummer := 0;
   VAR btnres nAnswer; 
   lblRetry:
    FOR i FROM 1 TO 6 STEP 1 DO
        !niet uit dienst of niet leeg
       IF InvoerBuffer{i}.indienst = true AND InvoerBuffer{i}.leeg = false THEN
           !Als buffer al in gebruik is neem dan onmiddelijk die
           IF InvoerBuffer{i}.vol = False THEN
             nBuffernummer := i;
             RETURN nBuffernummer;
           ENDIF
           !Als buffer vol is onthoud en nog geen buffer gevonden. 
           IF InvoerBuffer{i}.vol = true  AND (nBuffernummer = 0) THEN
             nBuffernummer := i;
           ENDIF
       ENDIF   
     ENDFOR   
     !return de laagste buffer
     RETURN nbuffernummer;
     !
ENDFUNC

PROC Getnextpart()
    !***************************************	    
    ! Func: Getnextpart
    ! Description: haal een nieuwe balk
    !***************************************
    VAR num nbuffernummer := 0;
    VAR btnres nAnswer; 
    nbuffernummer := nGetInvoerbuffer();
    !robot kan nergens met het stuk naartoe
    IF nbuffernummer = 0 THEN
       LoggProc "mBuffer",2,"Niet mogelijk om balk te halen";
       WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="Kan negens een balk halen"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
       ENDWHILE
    ENDIF
    getpart(nbuffernummer);
    !update het buffer status
    rUpdateInvoerbuffer nbuffernummer;
    !
ENDPROC

FUNC bool bUitvoerbufferPartNeeded(num nBuffer, num nPartType)
    !***************************************	    
    ! Func: bUitvoerbufferPartNeeded
    ! Description: kijk of een bepaalde buffer een bepaald stuktype wil
    !***************************************
   VAR PartType AantalPartsGewenst;
   VAR PartType AantalPartsAanwezig; 
   AantalPartsGewenst := UitvoerBuffer{nBuffer}.AantalPartsGewenst;
   AantalPartsAanwezig := UitvoerBuffer{nBuffer}.AantalPartsAanwezig;
   
    IF (AantalPartsAanwezig.Balk330 < AantalPartsGewenst.Balk330) AND nPartType = part.Balk330 THEN
      RETURN TRUE;
    ENDIF
    IF (AantalPartsAanwezig.Balk331 < AantalPartsGewenst.Balk331) AND nPartType = part.Balk331 THEN
      RETURN TRUE;
    ENDIF
    IF (AantalPartsAanwezig.Balk332 < AantalPartsGewenst.Balk332) AND nPartType = part.Balk332 THEN
      RETURN TRUE;
    ENDIF     
   RETURN FALSE;
    !  
ENDFUNC

FUNC num nGetUitvoerbuffer(Num nPartType)
    !***************************************	    
    ! Func: nGetUitvoerbuffer
    ! Description: naar welke buffer moet dit stuk
    ! zoek de eerste buffer die dit stuk wenst
    ! 0 wil zeggen niemand wil dit stuk 
    !***************************************
   VAR num nBuffernummer := 0;
   VAR btnres nAnswer; 
   !kijk of dit een goed stuk is 
   IF nPartType = part.Balk330 OR nPartType = part.Balk331 OR nPartType = part.Balk332  THEN
    FOR i FROM 1 TO 6 STEP 1 DO
        !niet uit dienst of niet vol
       IF UitvoerBuffer{i}.indienst AND UitvoerBuffer{i}.vol = false THEN
           !kijk of het rek nog een stuk van dit type wil 
           IF bUitvoerbufferPartNeeded(i,nPartType) THEN
               nBuffernummer := i;
               RETURN i;
           ENDIF
       ENDIF   
     ENDFOR
    ELSE
      LoggProc "mBuffer",3,"stuktype niet geldig voor buffer";
      WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="stuktype niet geldig voor buffer"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
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
    nbuffernummer := nGetUitvoerbuffer(nPartType);
    !robot kan nergens met het stuk naartoe
    IF nbuffernummer = 0 THEN
        LoggProc "mBuffer",4,"Kan de balk nergens plaatsen";
        WHILE TRUE DO 
         nAnswer := UIMessageBox(\Header:="Kan de balk nergens plaatsen"\MsgArray:=["","ga manueel en los het op","Dit zou niet mogen gebeuren"],\BtnArray:=["","","","","OK"]); 
       ENDWHILE
    ENDIF
    !steek het stuk in de buffer
    putpart(nbuffernummer);
    !update het buffer status
    rUpdateUitvoerbuffer nbuffernummer,nPartType;
    !
ENDPROC

LOCAL PROC rUpdateInvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rUpdateInvoerbuffer
    ! Description: update het status van de buffer 
    !*************************************** 
    IF (InvoerBuffer{nBuffer}.actiefstuk * InvoerBuffer{nBuffer}.actievelaag) >= 40 THEN 
        InvoerBuffer{nBuffer}.vol := true;
    ENDIF
    !
ENDPROC

LOCAL PROC rUpdateUitvoerbuffer(num nBuffer, num nPartType)
    !***************************************	    
    ! Func: rUpdateUitvoerbuffer
    ! Description: update het status van de buffer 
    !*************************************** 
   VAR PartType AantalPartsGewenst;
   VAR PartType AantalPartsAanwezig; 
   AantalPartsGewenst := UitvoerBuffer{nBuffer}.AantalPartsGewenst;
   AantalPartsAanwezig := UitvoerBuffer{nBuffer}.AantalPartsAanwezig;
    IF nPartType = part.Balk330 THEN
        Incr AantalPartsAanwezig.Balk330;
    ENDIF
    IF nPartType = part.Balk331 THEN
        Incr AantalPartsAanwezig.Balk331;
    ENDIF
    IF nPartType = part.Balk332 THEN
        Incr AantalPartsAanwezig.Balk332;
    ENDIF
    UitvoerBuffer{nBuffer}.AantalPartsAanwezig := AantalPartsAanwezig;
    !kijk of gewenst aantal stukken is berijkt
    IF  AantalPartsAanwezig.Balk330 = AantalPartsGewenst.Balk330
    AND AantalPartsAanwezig.Balk331 = AantalPartsGewenst.Balk331
    AND AantalPartsAanwezig.Balk332 = AantalPartsGewenst.Balk332 THEN
     UitvoerBuffer{nBuffer}.Vol := TRUE;
     LoggProc "mBuffer",5,"Buffer:"+NumToStr(nBuffer,0)+" Vol (target)";
    ENDIF
    !kijk of het maximaal aantal stukken is berijkt
    IF (AantalPartsAanwezig.Balk330 + AantalPartsAanwezig.Balk331 + AantalPartsAanwezig.Balk332) >= 40 THEN
        UitvoerBuffer{nBuffer}.Vol := TRUE;
        LoggProc "mBuffer",6,"Buffer:"+NumToStr(nBuffer,0)+" Vol (Max)";
    ENDIF
    !
ENDPROC


PROC rDecrInvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rDecrInvoerbuffer
    ! Description: tellers updaten 1 stuk uit buffer
    !***************************************  
    !tel 1 stuk bij de rij 
    Incr InvoerBuffer{nBuffer}.ActiefStuk;
    !als rij meer dan 8 is volgende 
    IF InvoerBuffer{nBuffer}.ActiefStuk > 8 THEN
        InvoerBuffer{nBuffer}.ActiefStuk := 1;
        Incr InvoerBuffer{nBuffer}.Actievelaag;
    ENDIF
    !veiligeid voor slechte tellers veilige situatie is LEEG
    IF (InvoerBuffer{nBuffer}.ActiefStuk > 8) OR (InvoerBuffer{nBuffer}.ActiefStuk  < 1) THEN
      InvoerBuffer{nBuffer}.leeg := true;
      LoggProc "mBuffer",7,"Buffer:"+NumToStr(nBuffer,0)+" leeg (rDecr)";
    ENDIF
    IF (InvoerBuffer{nBuffer}.Actievelaag > 5) OR (InvoerBuffer{nBuffer}.Actievelaag  < 1) THEN
      InvoerBuffer{nBuffer}.leeg := true;
      LoggProc "mBuffer",8,"Buffer:"+NumToStr(nBuffer,0)+" leeg (rDecr)";
    ENDIF
    !
ENDPROC

PROC rIncrUitvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rIncrUitvoerbuffer
    ! Description: tellers updaten 1 stuk bij buffer
    !***************************************  
    !trek 1 stuk van de rij 
    Decr UitvoerBuffer{nBuffer}.ActiefStuk;
    !als rij minder dan 1 is volgende 
    IF  UitvoerBuffer{nBuffer}.ActiefStuk < 1 THEN
        UitvoerBuffer{nBuffer}.ActiefStuk := 8;
        Decr UitvoerBuffer{nBuffer}.Actievelaag;
    ENDIF
    
    !veiligeid voor slechte tellers veilige situatie is VOl 
    IF UitvoerBuffer{nBuffer}.ActiefStuk > 8 THEN 
     UitvoerBuffer{nBuffer}.vol := true;
     LoggProc "mBuffer",9,"Buffer:"+NumToStr(nBuffer,0)+" vol (rIncr)";
    ENDIF
    IF UitvoerBuffer{nBuffer}.Actievelaag < 1 THEN
     UitvoerBuffer{nBuffer}.vol := true;
     LoggProc "mBuffer",10,"Buffer:"+NumToStr(nBuffer,0)+" vol (rIncr)";
    ENDIF
    !
ENDPROC

 PROC Getpart(Num nBuffernummer)
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
    
    
 FUNC num nYposPart(num nActiefStukf)
 !stuk in de laag.   
 VAR num nYpos;
    !   
    TEST nActiefStukf 
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

FUNC num nZposPart(num nActievelaag)
 !laagnummer.   
 VAR num nZpos;
    TEST nActievelaag
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