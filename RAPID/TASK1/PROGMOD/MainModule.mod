MODULE MainModule

    PROC Main()
        VelSet 100, 800;
        AccSet 50,50;
     !init 
     rMainui;
     !check home 
     WHILE TRUE do
     IF bDwarbalkenGewenst() = TRUE THEN
        IF NOT bDwarbalkenBeschikbaar() THEN
           TPWrite "Geen nieuwe balken beschikbaar";
           WaitTime 10;  
        ENDIF
        !roep eerst unload stations als er dan nog bewerkte stukken liggen zijn die eerst weg
        rUnloadStations;
        !laad nu de active stations met lege balken
        rloadStations;
        !kijk wat waar moet gemaakt worden
        rSetOrders;
        !bewerk de stukken in de stations
        rWorkStations;
        !ontlaad de afgewerkte stukken
        rUnloadStations;
        ELSE
         !laad nu de active stations met lege balken
         rloadStations;
         TPWrite "Geen rekken voor uitvoer of geen opdrachten";
         WaitTime 10;   
        ENDIF
     ENDWHILE
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
         go_home\Armfirst;
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