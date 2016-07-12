MODULE MainModule

PROC Main()
     LoggProc "Main",18,"PP to main";
     !speed and ACC overrides 
     VelSet 100, 800;
     AccSet 50,50;
     !in manueel onderhouds beschikbaar stellen  
     IF OpMode() <> OP_AUTO THEN
       rMainui;
     ENDIF
     !Reset safestate on all buffers
     rResetBufferSafe;
     !Monitor for sombody entering one of the beams
     !rMonitorSafety;
     !check part in gripper
     rGripper_CheckPart FALSE;
     !check home 
     check_home \Armonly ; 
     !enter production mode 
     WHILE TRUE do
     !check prodcution dwarsbalken
     IF bDwarbalkenGewenst() = TRUE THEN
            !unload stations als er dan nog bewerkte stukken zouden liggen zijn die eerst weg
            rUnloadStations;
            !laad nu de actieve stations met lege balken
            rloadStations;
            !kijk wat waar moet gemaakt worden (word enkel gekeken naar de eerste actieve uitvoer buffer)
            rSetOrders;
            !bewerk de stukken in de stations die een opdracht hebben
            rWorkStations;
            !ontlaad de afgewerkte stukken
            rUnloadStations;
            IF NOT bDwarbalkenBeschikbaar() THEN
                TPWrite "Geen nieuwe balken beschikbaar";
                WaitTime 5;  
            ENDIF
        ELSE
             TPWrite "Geen uitvoer of geen opdrachten";
             WaitTime 5;  
             !controleert of er in station 6 een manuele opdracht is geplaats 
             !(in het geval dat dwarsbalk productie stil ligt).
             rWorkStations;
             !actieve lege stations kunnen toch nog geladen worden.
             !ook al zijn er geen uitvoer rekken
             rloadStations;
        ENDIF
     ENDWHILE
     !
 ENDPROC

 PROC rMainui()
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="T_rob"
        \MsgArray:=["Wat wilt u doen?","OM TE STARTEN VOER EERST GoHome UIT !"],
        \BtnArray:=["Maint","Productie","GoHome","",""]);
        TEST nAnswer
        CASE 1:
          rMaint;
          GOTO lbl_begin;
        CASE 2:
          GOTO lbl_end;
        CASE 3:
         go_home \Armonly; 
         GOTO lbl_begin;
        CASE 4:
          !leeg
        CASE 5:
         !leeg
        ENDTEST
        lbl_end:
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
         go_home\Armfirst;
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