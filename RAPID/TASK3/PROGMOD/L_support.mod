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
   bool InDienst;
   num  Lading;
   num  Bewerkingsstap;
   num  Opdracht;
   num  xOffset;
  ENDRECORD
  
  RECORD UitvoerBufferType 
    bool InDienst;
    bool InGebruik;
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
    bool InGebruik;
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
  
 !gedeelde record over de verschillende taken.
 !pas hier nooit iets handmatig aan maar gebruik altijd de interface! 
  CONST PartType part := [0,1,2,3,4,5,6,7,8,9,10,11];
  PERS StationType Station{6}; !station 1-5 zijn de automatische station 6 is het manuele station gebruikt voor onderranden en bovenranden
  PERS UitvoerBufferType UitvoerBuffer{6};
  PERS InvoerBufferType InvoerBuffer{6};
  PERS ProcuctionType Production;
  
  
  FUNC string sBooltoString(bool bBool)
     IF bBool THEN
       return "TRUE"; 
     ELSE
       RETURN "FALSE";
     ENDIF
  ENDFUNC
    
  FUNC string sPartTypetoString(num nPartType)
    VAR string sString;
     TEST nPartType
      CASE part.geen:
         sString :=  "Geen";
      CASE part.OnbewerkteBalk:
         sString :=  "OnbewerkteBalk";
      CASE part.OnbewerkteOnderrand:
         sString :=  "OnbewerkteOnderrand";
      CASE part.OnbewerkteBovenrrand:
         sString :=  "OnbewerkteBovenrrand";
      CASE part.Balk330:
         sString :=  "Balk330";
      CASE part.Balk331:
         sString :=  "Balk331";
      CASE part.Balk332:
         sString :=  "Balk332";
      CASE part.OnderrandLinks:
         sString :=  "OnderrandLinks";
      CASE part.OnderrandRechts:
         sString :=  "OnderrandRechts";
      CASE part.BovenrandLinks:
         sString :=  "BovenrandLinks";
      CASE part.BovenrandRechts:
         sString :=  "BovenrandRechts";
      CASE part.Inbewerking:
         sString :=  "Inbewerking";
     ENDTEST
   RETURN sString;
  ENDFUNC
ENDMODULE