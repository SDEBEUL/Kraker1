MODULE m_Main
PROC Main()
    rSpindelManUnlock TRUE \init;
    WHILE TRUE DO 
        rInterFaceHome;
    ENDWHILE
ENDPROC
  
   PROC rInterFaceHome()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Kraker Trailers **K-FORCE**"
        \MsgArray:=["InterfaceHome",
            "OnderRanden => Instelling productie onderranden  Productie="+ sBooltoString(Production.Onderanden),
            "DwarsBalken => Instelling productie dwarsbalken  Productie="+ sBooltoString(Production.Dwarsbalken),
            "Stations    => Instellingen van stations"],
        \BtnArray:=["OnderRanden","DwarsBalken","Stations","","TOOLS"]);
        
        TEST nAnswer
        CASE 1:
          rOnderRanden;
        CASE 2:
          rDwarsBalken;
        CASE 3:
          rSetStations;
        CASE 4:
          !leeg
        CASE 5:
          rSpindelToolUI;
        ENDTEST  
    ENDPROC
    
    PROC rOnderRanden()
        VAR btnres nAnswer;
        lblBegin:
        nAnswer:=UIMessageBox(\Header:="Onderranden"
        \MsgArray:=["Welke onderrand wilt u bewerken?","Linker zijde  B-215537-602","Rechter zijde B-215537-603",
         "Dit Station heeft momenteel het volgende status (station 6)",
         "indienst="+sBooltoString(Station{6}.indienst),
         "Lading="+sPartTypetoString(Station{6}.Lading),
         "Bewerkingsstap="+NumToStr(Station{6}.Bewerkingsstap,0),
         "Opdracht="+sPartTypetoString(Station{6}.Opdracht),
         "xOffset="+NumToStr(Station{6}.xOffset,0)]
        \BtnArray:=["Start","Stop","Links 602","Rechts 603","Cancel"]);
        TEST nAnswer
        CASE 1:
          Production.Onderanden := TRUE;
        CASE 2:
           Production.Onderanden := FALSE;
           Station{6}.Lading := part.Geen;
           Station{6}.Opdracht := part.Geen;
        CASE 3:
            nAnswer := UIMessageBox(\Header:="Onderrand Links gekozen",
            \MsgArray:=["Druk op 'OK' om te starten met de onderrand links type 602","Let erop dat de aanslag goed zit (ongeveer halverwege)","Druk op 'Cancel' om de keuze te wijzigen"],
            \BtnArray:=["OK","","","","Terug"] );
            TEST nAnswer
              CASE 5:
               GOTO lblBegin;
              CASE 1:
               !start programma onderrand links
                Station{6}.indienst := TRUE;
                Station{6}.Lading := part.OnbewerkteOnderrand;
                Station{6}.Opdracht := part.OnderrandLinks;
            ENDTEST
        CASE 4:
            nAnswer := UIMessageBox(\Header:="Onderrand Rechts gekozen",
            \MsgArray:=["Druk op 'OK' om te starten met de onderrand Rechts type 602","Let erop dat de aanslag goed zit (ongeveer halverwege)","Druk op 'Cancel' om de keuze te wijzigen"],
            \BtnArray:=["OK","","","","Terug"] );
            TEST nAnswer
              CASE 5:
                GOTO lblBegin;
              CASE 1:
               !start programma onderrand rechts
                Station{6}.indienst := TRUE;
                Station{6}.Lading := part.OnbewerkteOnderrand;
                Station{6}.Opdracht := part.OnderrandRechts;
            ENDTEST
         CASE 5:
           !exit
        ENDTEST  
    ENDPROC 
ENDMODULE