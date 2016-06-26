MODULE mBoren_Fresen_5010737
    !Tooldata 
    TASK PERS tooldata boor_11mm_L45:=[TRUE,[[415,-0.75,111],[0.707106781,0,0.707106781,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    TASK PERS tooldata boor_11mm_L280:=[TRUE,[[594,-0.75,111],[0.707107,0,0.707107,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    !    TASK PERS tooldata boor_11mm_L190:=[TRUE,[[504,-0.75,111],[0.707107,0,0.707107,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    TASK PERS tooldata boor_11mm_L190:=[TRUE,[[502,-0.75,111],[0.707107,0,0.707107,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    !    TASK PERS tooldata boor_8mm_L250:=[TRUE,[[560,-0.75,111],[0.707107,0,0.707107,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    TASK PERS tooldata boor_11mm_L250:=[TRUE,[[560,-0.75,111],[0.707107,0,0.707107,0]],[20,[300,0,150],[1,0,0,0],0,0,0]];
    TASK PERS tooldata tFrees_10:=[TRUE,[[505,-0.75,111],[0.707107,0,0.707107,0]],[15,[0,0,100],[1,0,0,0],0,0,0]];

    !Wobjdata
    TASK PERS wobjdata wobjOpen_dag:=[FALSE,TRUE,"",[[1500,-1500,500],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_L:=[FALSE,TRUE,"",[[204,-1400,300],[1,0,0,0]],[[1015,0,0],[1,0,0,-3.70344E-05]]];
    !		TASK PERS wobjdata wobj_Onderrand_R:=[FALSE,TRUE,"",[[14000,-1400,300],[0,0,0,1]],[[0,0,0],[3.70344E-05,0,0,1]]];
    TASK PERS wobjdata wobj_Onderrand_R:=[FALSE,TRUE,"",[[13972,-1400,300],[0,0,0,1]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_Frees_L:=[FALSE,TRUE,"",[[500,-1400,300],[1,0,0,0]],[[0,0,-6],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_Frees_R:=[FALSE,TRUE,"",[[14490,-1400,300],[0,0,0,1]],[[0,0,0],[0,0,0,1]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees90:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];

    !Variabelen
    VAR extjoint extjoint2:=[9E9,9E9,9E9,9E9,9E9,9E9];

    !Jointtargets
    CONST jointtarget pHomeJoint_Boren_L:=[[0,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Boren_R:=[[0,0,0,0,0,0],[500,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Frezen_L:=[[0,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Frezen_R:=[[0,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Robtargets  
    CONST robtarget pGat11_330:=[[554.09,17.5,317],[1.10307E-06,-1,-2.64362E-06,-9.27231E-07],[-2,0,-1,0],[1380,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_331:=[[554.09,17.5,317],[1.10307E-06,-1,-2.64362E-06,-9.27231E-07],[-2,0,-1,0],[1380,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_332:=[[554.09,17.5,317],[1.10307E-06,-1,-2.64362E-06,-9.27231E-07],[-2,0,-1,0],[1380,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_R:=[[-516.11,-17.45,316.33],[0.000727202,-0.000750648,-0.999992,0.00404229],[-1,-1,1,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_L:=[[580.87,15.57,316.48],[1.8551E-05,-1,-2.14424E-06,-1.09513E-06],[-1,1,-1,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand_R:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand_L:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Ziel:=[[0.01,51.77,256],[6.13094E-05,-1,2.02582E-05,-1.54504E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Flens:=[[0.01,51.77,256],[6.13094E-05,-1,2.02582E-05,-1.54504E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    VAR robtarget pGatCenter_330:=[[0,0,0],[1.10307E-06,-1,-2.64362E-06,-9.27231E-07],[-2,0,-1,0],[1380,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Speedata
    CONST speeddata vBoren_11_190:=[0.5,500,5000,1000];
    CONST speeddata vBoren_8_250:=[0.8,500,5000,1000];
    CONST speeddata vBoren:=[2,500,5000,1000];
    CONST speeddata v3:=[10,500,3,1000];
    CONST speeddata speed1:=[0.1,500,5000,1000];
    CONST speeddata vFrezen:=[1.5,500,5000,1000];

    !Posedata

    !Numdata
    LOCAL PERS num nShift_x:=0;
    LOCAL PERS num nShift_y:=0;
    LOCAL PERS num nShift_z:=0;
    LOCAL PERS num nShift_Xx:=0;
    LOCAL PERS num nnShift_yy:=0;
    LOCAL PERS num nnShift_zz:=0;
    LOCAL PERS num nLengte:=635;
    LOCAL PERS num Shift_Track:=0;
    PERS num Boordiepte:=20;

    !Variabelen
    VAR extjoint extjoint1:=[9E9,9E9,9E9,9E9,9E9,9E9];
    

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
            rOnderrand_B_215537_602_L_8mm;
            !rOnderrand_Frezen_215537_602_L;            
        CASE 4:
            UIMsgBox\Header:="Onderrand Links gekozen","Druk op 'OK' om te starten met de onderrand rechts type 603"\MsgLine2:="Deze moet 16cm voorbij de laatste klem zitten"\MsgLine3:="Druk op 'Cancel' om de keuze te wijzigen"\Buttons:=btnOKCancel;
            IF nAnswer=resCancel GOTO keuze_Onderrand;
            !start programma onderrand rechts
            rOnderrand_B_215537_603_Rechts;
            rOnderrand_B_215537_603_R_8mm;
            !rOnderrand_Frezen_215537_603_R;           
        ENDTEST
        
    ENDPROC

    PROC rBoren_11mm_Onderrand_Enkel_L(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1900;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_L,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,15),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-30),v20,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Onderrand_Dubbel_L(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=3472;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_L,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,108),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,123),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_L,v100,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Onderrand_NUL_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=14172-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStop_Spindle;
        !
        MoveJ RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_R,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        Stop;
        MoveL RelTool(pGat11_R,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !
    ENDPROC

    PROC rBoren_11mm_Onderrand_Enkel_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=14172-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveJ pGat11_R,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,15),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Onderrand_Dubbel_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=3472;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_R,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,108),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,123),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_R,v100,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_8mm_Onderrand_2eGat_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=14172-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-5),v200,z0,boor_11mm_L250\WObj:=wobj_Active;
        MoveL pGat11_L,v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,50),v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,108),v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,123),vBoren_8_250,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL pGat11_L,v100,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-30),v200,z5,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L250\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
        Stop;
    ENDPROC

    PROC rBoren_8mm_Onderrand_2eGat_L(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-5),v200,z0,boor_11mm_L250\WObj:=wobj_Active;
        MoveL pGat11_L,v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,50),v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,108),v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,123),vBoren_8_250,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,108),v20,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL pGat11_L,v100,fine,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-30),v200,z5,boor_11mm_L250\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-200),v200,fine,boor_11mm_L250\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
        Stop;
    ENDPROC
    
    PROC rBoren_11mm_Dwarsbalk_330_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=2500;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_330_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=3472;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,108),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,123),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,v100,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_331_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_331_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=3472;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,108),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,123),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,v100,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=3472;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,50),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,108),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,123),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,v100,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rOnderrand_B_215537_602_Links()
        !
        wobj_Active:=wobj_Onderrand_L;
        MoveAbsJ pHomeJoint_Boren_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        Set_Tool 2;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;

        rBoren_11mm_Onderrand_Enkel_L 15,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 70,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 230,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 285,0,0,0;
        !5
        rBoren_11mm_Onderrand_Enkel_L 460,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 515,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 670,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 725,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 960,0,0,0;
        !10
        rBoren_11mm_Onderrand_Enkel_L 1015,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 1250,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 1305,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 1540,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 1595,0,0,0;
        !15
        rBoren_11mm_Onderrand_Enkel_L 1830,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 1885,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 2120,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 2175,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 2410,0,0,0;
        !20
        rBoren_11mm_Onderrand_Enkel_L 2465,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 2735,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 2790,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 3060,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 3115,0,0,0;
        !25
        rBoren_11mm_Onderrand_Enkel_L 3390,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 3445,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 3720,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 3775,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 4045,0,0,0;
        !30
        rBoren_11mm_Onderrand_Enkel_L 4100,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 4370,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 4425,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4700,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 4755,0,0,0;
        !35
        rBoren_11mm_Onderrand_Enkel_L 5030,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 5085,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 5355,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 5410,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 5680,0,0,0;
        !40
        rBoren_11mm_Onderrand_Enkel_L 5735,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 5945,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 6000,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 6230,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 6285,0,0,0;
        !45
        rBoren_11mm_Onderrand_Enkel_L 6836,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 6891,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 7032,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 7087,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 7507,0,0,0;
        !50
        rBoren_11mm_Onderrand_Enkel_L 7562,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 7703,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 7758,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8112.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8167.5,0,0,0;
        !55
        rBoren_11mm_Onderrand_Enkel_L 8387.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8442.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8662.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8717.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 8942.5,0,0,0;
        !60
        rBoren_11mm_Onderrand_Enkel_L 8997.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9217.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9272.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9472.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9527.5,0,0,0;
        !65
        rBoren_11mm_Onderrand_Enkel_L 9712.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9767.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 9997.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10052.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10282.5,0,0,0;
        !70
        rBoren_11mm_Onderrand_Enkel_L 10337.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10567.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10622.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10852.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 10907.5,0,0,0;
        !75
        rBoren_11mm_Onderrand_Enkel_L 11137.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11192.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11402.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11462.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11517.5,0,0,0;
        !80
        rBoren_11mm_Onderrand_Enkel_L 11577.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11657.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11717.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11772.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11832.5,0,0,0;
        !85
        rBoren_11mm_Onderrand_Enkel_L 11912.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 11972.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12027.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12087.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12167.5,0,0,0;
        !90
        rBoren_11mm_Onderrand_Enkel_L 12227.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12282.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12342.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12540,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12595,0,0,0;
        !95
        rBoren_11mm_Onderrand_Enkel_L 12850,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 12905,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 13050,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 13105,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_L 13160,0,0,0;
        !100
        rBoren_11mm_Onderrand_Enkel_L 13215,0,0,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Boren_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;

    ENDPROC

    PROC rOnderrand_B_215537_603_Rechts()
        !
        wobj_Active:=wobj_Onderrand_R;
        MoveAbsJ pHomeJoint_Boren_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        Set_Tool 2;
        MoveAbsJ [[-90,0,0,-90,90,90],[14400,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;

        rBoren_11mm_Onderrand_NUL_R 0,0,0,14200;
        Stop;
        !
        rBoren_11mm_Onderrand_Enkel_R 15,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 70,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 230,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 285,0,0,0;
        !5
        rBoren_11mm_Onderrand_Enkel_R 460,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 515,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 670,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 725,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 960,0,0,0;
        !10
        rBoren_11mm_Onderrand_Enkel_R 1015,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 1250,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 1305,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 1540,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 1595,0,0,0;
        !15
        rBoren_11mm_Onderrand_Enkel_R 1830,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 1885,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 2120,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 2175,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 2410,0,0,0;
        !20
        rBoren_11mm_Onderrand_Enkel_R 2465,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 2735,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 2790,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 3060,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 3115,0,0,0;
        !25
        rBoren_11mm_Onderrand_Enkel_R 3390,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 3445,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 3720,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 3775,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 4045,0,0,0;
        !30
        rBoren_11mm_Onderrand_Enkel_R 4100,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 4370,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 4425,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 4700,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 4755,0,0,0;
        !35
        rBoren_11mm_Onderrand_Enkel_R 5030,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 5085,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 5355,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 5410,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 5680,0,0,0;
        !40
        rBoren_11mm_Onderrand_Enkel_R 5735,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 5945,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 6000,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 6230,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 6285,0,0,0;
        !45
        rBoren_11mm_Onderrand_Enkel_R 6836,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 6891,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 7032,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 7087,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 7507,0,0,0;
        !50
        rBoren_11mm_Onderrand_Enkel_R 7562,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 7703,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 7758,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8112.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8167.5,0,0,0;
        !55
        rBoren_11mm_Onderrand_Enkel_R 8387.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8442.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8662.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8717.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 8942.5,0,0,0;
        !60
        rBoren_11mm_Onderrand_Enkel_R 8997.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9217.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9272.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9472.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9527.5,0,0,0;
        !65
        rBoren_11mm_Onderrand_Enkel_R 9712.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9767.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 9997.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10052.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10282.5,0,0,0;
        !70
        rBoren_11mm_Onderrand_Enkel_R 10337.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10567.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10622.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10852.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 10907.5,0,0,0;
        !75
        rBoren_11mm_Onderrand_Enkel_R 11137.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11192.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11402.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11462.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11517.5,0,0,0;
        !80
        rBoren_11mm_Onderrand_Enkel_R 11577.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11657.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11717.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11772.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11832.5,0,0,0;
        !85
        rBoren_11mm_Onderrand_Enkel_R 11912.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 11972.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12027.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12087.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12167.5,0,0,0;
        !90
        rBoren_11mm_Onderrand_Enkel_R 12227.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12282.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12342.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12540,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12595,0,0,0;
        !95
        rBoren_11mm_Onderrand_Enkel_R 12850,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 12905,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 13050,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 13105,0,0,0;
        !
        rBoren_11mm_Onderrand_Enkel_R 13160,0,0,0;
        !100
        rBoren_11mm_Onderrand_Enkel_R 13215,0,0,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[500,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Boren_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;

    ENDPROC

    PROC rOnderrand_B_215537_602_L_8mm()
        !		
        wobj_Active:=wobj_Onderrand_L;
        MoveAbsJ pHomeJoint_Boren_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        Set_Tool 4;
        MoveAbsJ [[-90,0,0,-90,90,90],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;

        !rBoren_8mm_Onderrand_2eGat_L		
        Stop;
        !		
        rBoren_8mm_Onderrand_2eGat_L 15,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 70,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 230,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 285,0,0,0;
        !5		
        rBoren_8mm_Onderrand_2eGat_L 460,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 515,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 670,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 725,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 960,0,0,0;
        !10		
        rBoren_8mm_Onderrand_2eGat_L 1015,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 1250,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 1305,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 1540,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 1595,0,0,0;
        !15		
        rBoren_8mm_Onderrand_2eGat_L 1830,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 1885,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 2120,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 2175,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 2410,0,0,0;
        !20		
        rBoren_8mm_Onderrand_2eGat_L 2465,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 2735,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 2790,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 3060,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 3115,0,0,0;
        !25		
        rBoren_8mm_Onderrand_2eGat_L 3390,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 3445,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 3720,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 3775,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 4045,0,0,0;
        !30		
        rBoren_8mm_Onderrand_2eGat_L 4100,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 4370,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 4425,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 4700,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 4755,0,0,0;
        !35		
        rBoren_8mm_Onderrand_2eGat_L 5030,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 5085,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 5355,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 5410,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 5680,0,0,0;
        !40		
        rBoren_8mm_Onderrand_2eGat_L 5735,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 5945,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 6000,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 6230,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 6285,0,0,0;
        !45		
        rBoren_8mm_Onderrand_2eGat_L 6836,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 6891,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 7032,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 7087,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 7507,0,0,0;
        !50		
        rBoren_8mm_Onderrand_2eGat_L 7562,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 7703,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 7758,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8112.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8167.5,0,0,0;
        !55		
        rBoren_8mm_Onderrand_2eGat_L 8387.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8442.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8662.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8717.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 8942.5,0,0,0;
        !60		
        rBoren_8mm_Onderrand_2eGat_L 8997.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9217.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9272.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9472.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9527.5,0,0,0;
        !65		
        rBoren_8mm_Onderrand_2eGat_L 9712.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9767.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 9997.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10052.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10282.5,0,0,0;
        !70		
        rBoren_8mm_Onderrand_2eGat_L 10337.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10567.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10622.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10852.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 10907.5,0,0,0;
        !75		
        rBoren_8mm_Onderrand_2eGat_L 11137.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11192.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11402.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11462.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11517.5,0,0,0;
        !80		
        rBoren_8mm_Onderrand_2eGat_L 11577.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11657.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11717.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11772.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11832.5,0,0,0;
        !85		
        rBoren_8mm_Onderrand_2eGat_L 11912.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 11972.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12027.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12087.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12167.5,0,0,0;
        !90		
        rBoren_8mm_Onderrand_2eGat_L 12227.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12282.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12342.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12540,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12595,0,0,0;
        !95		
        rBoren_8mm_Onderrand_2eGat_L 12850,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 12905,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 13050,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 13105,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_L 13160,0,0,0;
        !100		
        rBoren_8mm_Onderrand_2eGat_L 13215,0,0,0;
        !		
        MoveAbsJ pHomeJoint_Boren_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;

    ENDPROC


    PROC rOnderrand_B_215537_603_R_8mm()
        !		
        wobj_Active:=wobj_Onderrand_R;
        MoveAbsJ pHomeJoint_Boren_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        Set_Tool 4;
        MoveAbsJ [[-90,0,0,-90,90,90],[14400,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;

        !rBoren_8mm_Onderrand_2eGat_R		
        Stop;
        !		
        rBoren_8mm_Onderrand_2eGat_R 15,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 70,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 230,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 285,0,0,0;
        !5		
        rBoren_8mm_Onderrand_2eGat_R 460,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 515,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 670,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 725,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 960,0,0,0;
        !10		
        rBoren_8mm_Onderrand_2eGat_R 1015,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 1250,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 1305,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 1540,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 1595,0,0,0;
        !15		
        rBoren_8mm_Onderrand_2eGat_R 1830,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 1885,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 2120,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 2175,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 2410,0,0,0;
        !20		
        rBoren_8mm_Onderrand_2eGat_R 2465,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 2735,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 2790,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 3060,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 3115,0,0,0;
        !25		
        rBoren_8mm_Onderrand_2eGat_R 3390,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 3445,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 3720,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 3775,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 4045,0,0,0;
        !30		
        rBoren_8mm_Onderrand_2eGat_R 4100,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 4370,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 4425,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 4700,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 4755,0,0,0;
        !35		
        rBoren_8mm_Onderrand_2eGat_R 5030,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 5085,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 5355,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 5410,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 5680,0,0,0;
        !40		
        rBoren_8mm_Onderrand_2eGat_R 5735,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 5945,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 6000,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 6230,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 6285,0,0,0;
        !45		
        rBoren_8mm_Onderrand_2eGat_R 6836,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 6891,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 7032,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 7087,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 7507,0,0,0;
        !50		
        rBoren_8mm_Onderrand_2eGat_R 7562,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 7703,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 7758,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8112.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8167.5,0,0,0;
        !55		
        rBoren_8mm_Onderrand_2eGat_R 8387.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8442.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8662.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8717.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 8942.5,0,0,0;
        !60		
        rBoren_8mm_Onderrand_2eGat_R 8997.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9217.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9272.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9472.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9527.5,0,0,0;
        !65		
        rBoren_8mm_Onderrand_2eGat_R 9712.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9767.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 9997.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10052.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10282.5,0,0,0;
        !70		
        rBoren_8mm_Onderrand_2eGat_R 10337.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10567.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10622.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10852.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 10907.5,0,0,0;
        !75		
        rBoren_8mm_Onderrand_2eGat_R 11137.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11192.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11402.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11462.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11517.5,0,0,0;
        !80		
        rBoren_8mm_Onderrand_2eGat_R 11577.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11657.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11717.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11772.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11832.5,0,0,0;
        !85		
        rBoren_8mm_Onderrand_2eGat_R 11912.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 11972.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12027.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12087.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12167.5,0,0,0;
        !90		
        rBoren_8mm_Onderrand_2eGat_R 12227.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12282.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12342.5,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12540,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12595,0,0,0;
        !95		
        rBoren_8mm_Onderrand_2eGat_R 12850,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 12905,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 13050,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 13105,0,0,0;
        !		
        rBoren_8mm_Onderrand_2eGat_R 13160,0,0,0;
        !100		
        rBoren_8mm_Onderrand_2eGat_R 13215,0,0,0;
        !		
        MoveAbsJ [[-90,0,0,0,0,0],[500,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,boor_11mm_L190\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Boren_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;

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
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
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
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
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
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
        !
        rDwarsbalk_Boren_5020330 0;
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
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
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
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020332 0;
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
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020332 0;
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
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020331 0;
        !
        rDwarsbalk_Boren_5020332 0;
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

    PROC rDwarsbalk_Boren_5020330(
                num nShift_Xx)
        !
        wobj_Active:=wobj_Dwarsbalk330_Boor_11;
        !
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 1202.5,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,-27.5,0,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC

    PROC rDwarsbalk_Boren_5020331(
            num nShift_Xx)
        !
        wobj_Active:=wobj_Dwarsbalk331_Boor_11;
        !
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1202.5,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1150,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1040,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 750,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 350,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -350,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -750,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1040,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1150,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,-27.5,0,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC

    PROC rDwarsbalk_Boren_5020332(
                num nShift_Xx)
        !
        wobj_Active:=wobj_Dwarsbalk332_Boor_11;
        !
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1150,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1040,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 280,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 280,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 0,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 0,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -280,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -280,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -690,-27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -1040,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -1150,20,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -1202.5,-27.5,0,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC


    !================================================================================================================================================================================    
    !================================================================================================================================================================================    
    !================================================================================================================================================================================    

    PROC rFrezen_Gat_45mm_Dwarsbalk_330(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x+nShift_Xx,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,0,17.5,10),v10,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,0,17.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,17.5,0,-3),Offs(pGatCenter_330,0,-17.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,-17.5,0,-3),Offs(pGatCenter_330,0,17.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,-17.5,0,-25),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGatCenter_330,0,0,-30),v100,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGatCenter_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rFrezen_Gat_35mm_Dwarsbalk_330(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x+nShift_Xx,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1800;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,0,12.5,10),v10,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,0,12.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,12.5,0,-3),Offs(pGatCenter_330,0,-12.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,-12.5,0,-3),Offs(pGatCenter_330,0,12.5,-3),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,-12.5,0,-25),vFrezen,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGatCenter_330,0,0,-30),v100,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGatCenter_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rFrezen_10mm_Uitparing_635x45(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=6000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ Offs(pFrees_Onderrand,0,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,0,0,5),v200,z0,tFrees_10\WObj:=wobj_Active;
        MoveL pFrees_Onderrand,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,0,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,40,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,580,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,625,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,625,0,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand,625,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rFrezen_10mm_Uitsp_635x45_L(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=6000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ Offs(pFrees_Onderrand_L,0,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,0,0,5),v200,z0,tFrees_10\WObj:=wobj_Active;
        MoveL pFrees_Onderrand_L,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,0,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,40,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,580,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,625,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,625,0,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_L,625,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rFrezen_10mm_Uitsp_635x45_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=14172-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=1500;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        MoveJ Offs(pFrees_Onderrand_R,0,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,0,0,5),v200,z0,tFrees_10\WObj:=wobj_Active;
        MoveL pFrees_Onderrand_R,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,0,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-40,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-580,-40,-3),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-625,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-625,0,-3),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-625,0,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Onderrand_R,-625,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC


    PROC rFrezen_10mm_Uitsp_515x60_MAN()

        !Routine voor instellen 0-posities fresen uisparing
        !Positie aanlopen tot "stop", dan aanpassen
        PDispOff;
        nShift_x:=11990;
        nShift_y:=0;
        nShift_z:=0;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStop_Spindle;
        !
        MoveAbsJ pHomeJoint_Frezen_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        MoveJ Offs(pFrees_Flens,0,50,0),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL pFrees_Flens,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        Stop;
        MoveJ Offs(pFrees_Flens,0,50,0),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;

        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        MoveJ Offs(pFrees_Ziel,0,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL pFrees_Ziel,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        Stop;
        MoveJ Offs(pFrees_Ziel,0,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveAbsJ [[-90,0,0,0,0,0],[Shift_Track,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        !
    ENDPROC

    PROC rFrezen_10mm_Flens_515x60(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x+nShift_Xx,nShift_y,nShift_z];
        !
        nSpindleSpeed:=6000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        !Frezen flens rechts 
        MoveJ Offs(pFrees_Flens,710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,710,0,50),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,710,0,50),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,710,0,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,-90,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,-90,25),v10,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,-90,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        !Frezen flens links 
        MoveJ Offs(pFrees_Flens,710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,-710,0,50),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,-710,0,50),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Flens,-710,0,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,-90,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,-90,25),v10,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,-90,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rFrezen_10mm_Uitsparing_515x60(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        nSpindleSpeed:=6000;
        !
        rStart_Spindle;
        SetAO aoPLC_Spindle_Speed,nSpindleSpeed;
        !
        !Frezen uitsparing rechts 
        MoveJ Offs(pFrees_Ziel,710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,0,5),v200,z0,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,0,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,710,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,765,-55,-3),vFrezen,z40,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,1190,-55,-3),vFrezen,z40,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,1190,-55,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,1190,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        !Frezen uitsparing links 
        MoveJ Offs(pFrees_Ziel,-710,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,0,5),v200,z0,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,0,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-710,0,-3),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-765,-55,-3),vFrezen,z40,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-1190,-55,-3),vFrezen,z40,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-1190,-55,30),v200,z5,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pFrees_Ziel,-1190,0,200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
    ENDPROC

    PROC rOnderrand_Frezen_215537_602_L()
        !
        wobj_Active:=wobj_Onderrand_Frees_L;
        !
        Set_Tool 3;
        
        MoveAbsJ pHomeJoint_Frezen_L\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;

        rFrezen_10mm_Uitsp_635x45_L 2445,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 2445,0,-3,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 2445,0,-6,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 3755,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 3755,0,-3,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 3755,0,-6,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 5065,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 5065,0,-3,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 5065,0,-6,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_L\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC

    PROC rOnderrand_Frezen_215537_603_R()
        !
        wobj_Active:=wobj_Onderrand_Frees_R;
        !
        Set_Tool 3;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,10,0,-10,0],[14000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        Stop;
        rFrezen_10mm_Uitsp_635x45_R 2445,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 2445,0,-2,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 2445,0,-4,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 2445,0,-6,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 3755,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 3755,0,-3,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 3755,0,-6,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 5065,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 5065,0,-3,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 5065,0,-6,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC

    PROC rDwarsbalk_Frezen_5020332(
                num nShift_Xx)
        !
        wobj_Active:=wobj_Dwarsbalk332_Frees;
        nLengte:=635;
        !
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        rFrezen_10mm_Flens_515x60 0,0,0,0;
        !
        rFrezen_10mm_Flens_515x60 0,0,-3,0;
        !
        rFrezen_10mm_Flens_515x60 0,0,-6,0;
        !
        rFrezen_10mm_Uitsparing_515x60 0,0,0,0;
        !
        rFrezen_10mm_Uitsparing_515x60 0,0,0,-3;
        !
        rFrezen_10mm_Uitsparing_515x60 0,0,0,-6;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC

    PROC rDwarsbalk_Frezen_5020330(
                num nShift_Xx)

        !
        wobj_Active:=wobj_Dwarsbalk330_Frees;
        !
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=Wobj0;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 -665,0,0,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 -665,0,-3,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 -665,0,-6,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 -224,0,0,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 -224,0,-3,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 -224,0,-6,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 0,0,0,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 0,0,-3,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 0,0,-6,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 224,0,0,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 224,0,-3,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 224,0,-6,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 665,0,0,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 665,0,-3,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 665,0,-6,0;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
        MoveAbsJ pHomeJoint_Frezen_R\NoEOffs,v1000,z50,tGripper\WObj:=wobj0;

    ENDPROC



ENDMODULE