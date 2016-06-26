MODULE MainModule

    PROC Main()
        VelSet 100, 800;
        AccSet 50,50;
        Buffer_1_Uit;
        Stop;
        
        
        rInterFaceHome;
    ENDPROC

    PROC rInterFaceHome()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Karker Trailers **K-FORCE**"
        \MsgArray:=["Wat wilt u doen?","OndeRanden => selecteer productie onderranden","DwarsBalken => selecteer productie dwarsbalken","ResetBuffer => buffer resetten","Onderhoud => Onderhouds functies"],
        \BtnArray:=["OnderRanden","DwarsBalken","","ResetBuffer","Onderhoud"]);
        TEST nAnswer
        CASE 1:
          rOnderRanden;
        CASE 2:
          rDwarsBalken;
        CASE 3:
          !leeg
        CASE 4:
          RESET_Buffer;
        CASE 5:
          rMaint;
        ENDTEST  
    ENDPROC
    
    PROC rOnderRanden()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Onderranden"
        \MsgArray:=["Welke onderrand wilt u bewerken?","Linker zijde  B-215537-602","Rechter zijde B-215537-603"],
        \BtnArray:=["","Links 602","","Rechts 603","Cancel"]);
        TEST nAnswer
        CASE 1:
          !leeg
        CASE 2:
            nAnswer := UIMessageBox(\Header:="Onderrand Links gekozen",
            \MsgArray:=["Druk op 'OK' om te starten met de onderrand links type 602","Let erop dat de aanslag goed zit (ongeveer halverwege)","Druk op 'Cancel' om de keuze te wijzigen"],
            \BtnArray:=["OK","","","","Cancel"]);
            TEST nAnswer
              CASE 5:
                GOTO lblExit;
              CASE 1:
                !start programma onderrand links
                rOnderrand_B_215537_602_Links;
                rOnderrand_Frezen_215537_602_L; 
            ENDTEST
        CASE 3:
            !leeg
        CASE 4:
            nAnswer := UIMessageBox(\Header:="Onderrand Rechts gekozen",
            \MsgArray:=["Druk op 'OK' om te starten met de onderrand Rechts type 602","Let erop dat de aanslag goed zit (ongeveer halverwege)","Druk op 'Cancel' om de keuze te wijzigen"],
            \BtnArray:=["OK","","","","Cancel"]);
            TEST nAnswer
              CASE 5:
                GOTO lblExit;
              CASE 1:
               !start programma onderrand rechts
               rOnderrand_B_215537_603_Rechts;
               rOnderrand_Frezen_215537_603_R;
            ENDTEST
        ENDTEST  
       lblExit:
    ENDPROC 
    
   PROC rDwarsBalken()
        VAR btnres nAnswer;
        lblBegin:
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken"
        \MsgArray:=["CONTROLLER WELKE BUFFERS ACTIEF ZIJN!","BufferIn  => " + strActive_BufferIn + "  actief (nieuwe balken) ","BufferUit => " + strActive_BufferOut +" actief (afgewerkte balken)","Start => begin met procutie"],
        \BtnArray:=["Start","SetBufferIn","Stations","SetBufferUit","Cancel"]);
        TEST nAnswer
        CASE 1:
          Dwarsbalkmain;
        CASE 2:
          rSetBufferIn;
          GOTO lblBegin;
        CASE 3:
          rSetStations;
          GOTO lblBegin;
        CASE 4:
          rSetBufferOut;
          GOTO lblBegin;
        CASE 5:
          GOTO lblExit;
        ENDTEST  
       lblExit:
    ENDPROC 
    
   PROC rSetBufferIn()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken"
        \MsgArray:=["Dit zijn de buffers waar de nieuwe balken uit genomen worden","selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","Buffer4","Buffer5"]);
        TEST nAnswer
        CASE 1:
         rSetInbuffStatus(1);
        CASE 2:
         rSetInbuffStatus(2);
        CASE 3:
         rSetInbuffStatus(3);
        CASE 4:
         rSetInbuffStatus(4);
        CASE 5:
         rSetInbuffStatus(5);
        ENDTEST  
       lblExit:
   ENDPROC
   
   PROC rSetBufferOut()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken"
        \MsgArray:=["Dit zijn de buffers waar de afgewerkte balken naar toe moeten","selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","Buffer4","Buffer5"]);
        TEST nAnswer
        CASE 1:
         rSetOutbuffStatus(1);
        CASE 2:
         rSetOutbuffStatus(2);
        CASE 3:
         rSetOutbuffStatus(3);
        CASE 4:
         rSetOutbuffStatus(4);
        CASE 5:
         rSetOutbuffStatus(5);
        ENDTEST  
       lblExit:
   ENDPROC
    
   PROC rSetStations()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Stations"
        \MsgArray:=["Dit zijn de stations waar de nieuwe balken gemaakt worden","selecteer een station om het status te veranderen"],
        \BtnArray:=["Station1","Station2","Station3","Station4","Station5"]);
        TEST nAnswer
        CASE 1:
         rSetStationStatus(1);
        CASE 2:
         rSetStationStatus(2);
        CASE 3:
         rSetStationStatus(3);
        CASE 4:
         rSetStationStatus(4);
        CASE 5:
         rSetStationStatus(5);
        ENDTEST  
       lblExit:
   ENDPROC
   
    PROC rMaint()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Onderhoud"
        \MsgArray:=["Wat wilt u doen?","SpindelTool => wissel de tool in de spindel","GrijperTool => wissel de tool aan de grijper", "GoHome => zet robot thuis met active tool","Uitlijnen => uitlijnen van dwarsbalken"],
        \BtnArray:=["SpindelTool","Grijpertool","GoHome","Uitlijnen","Cancel"]);
        TEST nAnswer
        CASE 1:
         Get_tool_Manual;
        CASE 2:
         Get_gripper_Manual;
        CASE 3:
         go_home\Armfirst:=TRUE;
        CASE 4:
         rUitlijningDwarsbalken;
        CASE 5:
         !Cancel
        ENDTEST  
    ENDPROC
    
   PROC rUitlijningDwarsbalken()
         VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Uitlijnen dwarsbalken"
        \MsgArray:=["WelkStation wilt u controleren?","Dit roept de routine op om met de krasnaald de stations uit te lijnen","Deze routine enkel MANUEEL met de naald uitvoeren!"],
        \BtnArray:=["Station1","Station2","Station3","Station4","Station5"]);
        TEST nAnswer
        CASE 1:
         rSationx_uitlijnen(wobj_BalkStation1);
        CASE 2:
         rSationx_uitlijnen(wobj_BalkStation2);
        CASE 3:
         rSationx_uitlijnen(wobj_BalkStation3);
        CASE 4:
         rSationx_uitlijnen(wobj_BalkStation4);
        CASE 5:
         rSation5_uitlijnen;
        ENDTEST 
       
   ENDPROC
ENDMODULE