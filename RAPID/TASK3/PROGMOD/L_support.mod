MODULE L_support
  !Data types declaratie.
  RECORD PartType
     num Geen;
     num OnbewerkteBalk;
     num OnbewerkteOnderrand;
     num OnbewerkteBovenrrand;
     num Balk330;
     num Balk331;
     num Balk332;
     num OnderrandLinks;
     num OnderrandRechts;
     num BovenrandLinks;
     num BovenrandRechts;
     num Inbewerking;
  Endrecord
  
  RECORD StationType
   bool InDienst; !station in dienst 
   num  Lading; !wat voor een stuk er monteel in het station ligt. (parttype)
   num  Bewerkingsstap; !nog niet gebruikt ... voor auto repair toepassing
   num  Opdracht; !wat voor een stuk er in het station gemaakt moet worden (parttype)
   num  xOffset; !offset tov midden
   num  pOffset; !offset langs positieve kant 
   num  nOffset; !offset langs negatieve kant 
  ENDRECORD
  
  RECORD UitvoerBufferType 
    bool InDienst;
    bool Vol;
    bool Leeg;
    bool Veilig;
    num ActieveLaag;
    num ActiefStuk;
    PartType AantalPartsAanwezig;
    PartType AantalPartsGewenst;
  ENDRECORD 
  
  RECORD InvoerBufferType 
    bool InDienst;
    bool Vol;
    bool Leeg;
    bool Veilig;
    num ActieveLaag;
    num ActiefStuk;
  ENDRECORD 
    
  RECORD ProcuctionType
      bool Dwarsbalken;
      bool Onderanden;
      bool Bovenranden;
  ENDRECORD 
  
  RECORD SpindeltoolType 
      string toolnaam;
      num Toerental;
      speeddata VoedingBoren;
      speeddata VoedingFrezen;
      speeddata VoedingAanzetBoren;
      speeddata VoedingAanzetFrezen;
      num nFreesStap;
      num nFreesPrecut;
      num nGatengeboord;
      num nMetergefreest;
      string sLaatsgewisseld;
      num nMaxaantalgaten;
      num nMaxMeterfrezen;
  ENDRECORD 
  
 !gedeelde record over de verschillende taken.
 !pas hier nooit iets handmatig aan maar gebruik altijd de interface! 
  CONST PartType part := [0,1,2,3,4,5,6,7,8,9,10,11];
  PERS StationType Station{6}; !station 1-5 zijn de automatische station 6 is het manuele station gebruikt voor onderranden en bovenranden
  PERS UitvoerBufferType UitvoerBuffer{6};
  PERS InvoerBufferType InvoerBuffer{6};
  PERS ProcuctionType Production;
  PERS SpindeltoolType Spindeltool{6};
  
  !vars shared with the UI task for visulaisation
  PERS num nLastInvoerbuffer;
  PERS num nLastUitvoerbuffer;
  
  !interupts
  VAR intnum Int3Sprvlichtbeam1 := 3;
  VAR intnum Int4Sprvlichtbeam2 := 4;
  VAR intnum Int5SprvAutoStop := 5;
  
  
  FUNC string sBooltoString(bool bBool)
     IF bBool THEN
       return "TRUE "; 
     ELSE
       RETURN "FALSE";
     ENDIF
  ENDFUNC
    
  FUNC string sPartTypetoString(num nPartType)
    VAR string sString;
     TEST nPartType
      CASE part.geen:
         sString :=  "Geen                ";
      CASE part.OnbewerkteBalk:
         sString :=  "OnbewerkteBalk      ";
      CASE part.OnbewerkteOnderrand:
         sString :=  "OnbewerkteOnderrand ";
      CASE part.OnbewerkteBovenrrand:
         sString :=  "OnbewerkteBovenrrand ";
      CASE part.Balk330:
         sString :=  "Balk330              ";
      CASE part.Balk331:
         sString :=  "Balk331              ";
      CASE part.Balk332:
         sString :=  "Balk332              ";
      CASE part.OnderrandLinks:
         sString :=  "OnderrandLinks       ";
      CASE part.OnderrandRechts:
         sString :=  "OnderrandRechts      ";
      CASE part.BovenrandLinks:
         sString :=  "BovenrandLinks       ";
      CASE part.BovenrandRechts:
         sString :=  "BovenrandRechts      ";
      CASE part.Inbewerking:
         sString :=  "Inbewerking          ";
     ENDTEST
   RETURN sString;
  ENDFUNC
  
  
PROC rMonitorSafety()
  !***************************************	    
  ! Func: rMonitorSafety
  ! Description: kijkt of 1 van de lichtschermen gebroken is
  ! indien nodig word buffer veilig van die kant gereset 
  !***************************************  
     !
     IDelete Int3Sprvlichtbeam1;  
     IDelete Int4Sprvlichtbeam2;
     IDelete Int5SprvAutoStop;
     CONNECT Int3Sprvlichtbeam1 WITH tResetbuffersafety;
     CONNECT Int4Sprvlichtbeam2 WITH tResetbuffersafety;
     !watch for interupt on safety 
     ISignalDI di_Lightbeam1, 0,Int3Sprvlichtbeam1;
     ISignalDI di_Lightbeam2, 0,Int4Sprvlichtbeam2;
     
     IWatch Int3Sprvlichtbeam1;
     IWatch Int4Sprvlichtbeam2;
ENDPROC 

TRAP tResetbuffersafety
    !***************************************	    
    ! Trap: tResetbuffersafety
    ! Description: reset buffer veilig als lichtscherm is gebroken  
    ! Connected in rMonitorSafety
    !***************************************
    !
    ISleep Int3Sprvlichtbeam1;
    ISleep Int4Sprvlichtbeam2;
    if  TestDI(di_Lightbeam1) = FALSE THEN 
        rResetBufferSafe \rightside;
        TPWrite "Safety reset on Left side!";
    ENDIF 
    
    if  TestDI(di_Lightbeam2) = FALSE  THEN 
        rResetBufferSafe \leftside;
        TPWrite "Safety reset on Right side!";
    ENDIF 
    IWatch Int3Sprvlichtbeam1;
    IWatch Int4Sprvlichtbeam2;
    !
  ENDTRAP
  
PROC rResetBufferSafe( \switch leftside \switch rightside)  
  !***************************************	    
  ! PROC: rResetBufferSafe
  ! Description:reset safe state on buffers
  ! can selecte single sied of buffer
  !*************************************** 
 IF Present(rightside) THEN   
     FOR i FROM 1 TO 3 DO 
         UitvoerBuffer{i}.Veilig := FALSE;
         InvoerBuffer{i}.veilig  := FALSE;
     ENDFOR
 RETURN;
 ENDIF 
 
 IF Present(leftside) THEN 
  FOR i FROM 4 TO 6 DO 
     UitvoerBuffer{i}.Veilig := FALSE;
     InvoerBuffer{i}.veilig  := FALSE;
  ENDFOR
 RETURN;
 ENDIF
 
 FOR i FROM 1 TO 6 DO 
   UitvoerBuffer{i}.Veilig := FALSE;
   InvoerBuffer{i}.veilig  := FALSE;
 ENDFOR
 RETURN;
ENDPROC
  
ENDMODULE