MODULE MainModule

    PROC Main()
        VelSet 100, 800;
        AccSet 50,50;
        go_home \Armonly:=TRUE;
        Stop;
        VulSations;

        !rOnderRanden;
    ENDPROC

    
    
    PROC VulSations()
        !
        go_home \Armonly:=true;
        Set_Gripper(GrijperTool);
        !
        buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;   
        !
        go_home \Armonly:=TRUE;
        Set_Gripper(DummyTool);
    ENDPROC
    
    PROC LeegStations()
        !
        go_home \Armonly:=true;
        Set_Gripper(GrijperTool);
        !
        Station_1_Uit;
        Buffer_1_In;
        !
        Station_2_Uit;
        Buffer_1_In;
        !
        Station_3_Uit;
        Buffer_1_In;
        !
        Station_4_Uit;
        Buffer_1_In;
        !
        Station_5_Uit;
        Buffer_1_In;
        !
        go_home \Armonly:=TRUE;
        !
    ENDPROC
    
    PROC r502033X()

        !CYCLUS 1
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation4;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation5;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 2
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation4;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation5;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 3
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020330 wobj_BalkStation4;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        rDwarsbalk_Frezen_5020330 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 4
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation4;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 5
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation4;
        !

        !
        rDwarsbalk_Boren_5020332 ;
        !
        rDwarsbalk_Frezen_5020332 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 6
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation4;
        !
        rDwarsbalk_Boren_5020332 ;
        !
        rDwarsbalk_Frezen_5020332 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;

        !CYCLUS 7
        !
        Buffer_1_Uit;
        Station_1_In;
        !
        Buffer_1_Uit;
        Station_2_In;
        !
        Buffer_1_Uit;
        Station_3_In;
        !
        Buffer_1_Uit;
        Station_4_In;
        !
        Buffer_1_Uit;
        Station_5_In;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation1;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation2;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation3;
        !
        rDwarsbalk_Boren_5020331 wobj_BalkStation4;
        !
        rDwarsbalk_Boren_5020332 ;
        !
        rDwarsbalk_Frezen_5020332 0;
        !
        Station_1_Uit;
        Buffer_1_In;
        Station_2_Uit;
        Buffer_1_In;
        Station_3_Uit;
        Buffer_1_In;
        Station_4_Uit;
        Buffer_1_In;
        Station_5_Uit;
        Buffer_1_In;
        !
    ENDPROC
    
     PROC rOnderRanden()
        VAR btnres nAnswer;
        keuze_Onderrand:
        nAnswer:=UIMessageBox(\Header:="Onderranden"\MsgArray:=["Welke onderrand wilt u bewerken?","Linker zijde  B-215537-602","Rechter zijde B-215537-603"],\BtnArray:=["","Links 602","","Rechts 603",""]);
        TEST nAnswer
        CASE 2:
            UIMsgBox\Header:="Onderrand Links gekozen","Druk op 'OK' om te starten met de onderrand links type 602"\MsgLine2:="Let erop dat de aandlag goed zit (ongeveer halverwege)"\MsgLine3:="Druk op 'Cancel' om de keuze te wijzigen"\Buttons:=btnOKCancel;
            IF nAnswer=resCancel GOTO keuze_Onderrand;
            !start programma onderrand links
            rOnderrand_B_215537_602_Links;
            rOnderrand_Frezen_215537_602_L; 
        CASE 4:
            UIMsgBox\Header:="Onderrand Rechts gekozen","Druk op 'OK' om te starten met de onderrand rechts type 603"\MsgLine2:="Deze moet 16cm voorbij de laatste klem zitten"\MsgLine3:="Druk op 'Cancel' om de keuze te wijzigen"\Buttons:=btnOKCancel;
            IF nAnswer=resCancel GOTO keuze_Onderrand;
            !start programma onderrand rechts
           rOnderrand_B_215537_603_Rechts;
           rOnderrand_Frezen_215537_603_R;
        ENDTEST  
    ENDPROC 
ENDMODULE