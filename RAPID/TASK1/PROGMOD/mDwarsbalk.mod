MODULE mDwarsbalk
    !wobj voor bewerken balken in station
    TASK PERS wobjdata wobj_BalkStation1:=[FALSE,TRUE,"",[[1926.9,-1043.5,510.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation2:=[FALSE,TRUE,"",[[4926.3,-1043.5,507],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation3:=[FALSE,TRUE,"",[[7925.3,-1043.5,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation4:=[FALSE,TRUE,"",[[10925.9,-1046,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation5:=[FALSE,TRUE,"",[[13936,-1045.5,508.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];

    TASK PERS wobjdata wobj_Dwarsbalk330_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees90:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    !Robtargets  
    CONST robtarget pGat11_330:=[[0,0,0],[0.996832,-3.67099E-05,-1.70326E-05,0.0795373],[-2,0,0,0],[3200,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_331:=[[0,0,0],[0.996832,-3.67099E-05,-1.70326E-05,0.0795373],[-2,0,0,0],[3200,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_332:=[[0,0,0],[0.996832,-3.67099E-05,-1.70326E-05,0.0795373],[-1,-3,0,0],[13250,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_1L:=[[-1214,-74.5,49],[0.668682,0.668835,0.229643,-0.229761],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_2L:=[[-790,-74.0,49],[0.668682,0.668835,0.229643,-0.229761],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_3L:=[[-780,-74.0,50.5],[0.668682,0.668835,0.229643,-0.229761],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_4L:=[[-767.5,-74.0,58],[0.668682,0.668835,0.229643,-0.229761],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_5L:=[[-719.5,-73.5,104],[0.668682,0.668835,0.229643,-0.229761],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_6L:=[[-756,25,58],[0.236633,-0.500177,-0.768326,0.32172],[-1,2,-3,0],[12634,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_7L:=[[-754.47,-73.39,58.07],[0.236614,-0.500176,-0.768334,0.321717],[-1,2,-3,0],[12634,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_1R:=[[1214,-74.5,49],[0.668682,0.668835,0.229643,-0.229761],[-1,1,-1,0],[14296.2,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_2R:=[[790,-74.5,49],[0.668669,0.668853,0.229632,-0.229756],[-1,0,-1,0],[14296.2,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_3R:=[[780,-74.5,50.5],[0.668661,0.668866,0.229623,-0.229751],[-1,0,-1,0],[14296.2,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_4R:=[[767.5,-74.5,58],[0.668729,0.6688,0.229566,-0.229801],[-1,0,-1,0],[14296.2,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_5R:=[[719.5,-74.5,106],[0.668716,0.668823,0.229547,-0.229794],[-1,0,-1,0],[14296.2,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_6R:=[[763,16,61.5],[0.375928,0.706234,0.580842,0.150118],[-1,1,-2,0],[14289.3,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_7R:=[[759.98,-79.14,56.08],[0.409603,0.685325,0.59321,0.103238],[-1,1,-1,0],[14289.3,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Y is midden van de balk Z de hoogte 
    !pos met eensnijderd 
    !CONST robtarget pGatCenter_330:=[[0,-66,59.5],[0.674814,0.674808,0.211288,-0.211231],[-1,1,-1,0],[1165.02,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGatCenter_330:=[[0.01,-76.82,59.49],[0.67481,0.674814,0.211286,-0.211228],[-1,1,-1,0],[1165.02,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p_330CleanStart:=[[475.34,-38.73,75.70],[0.296007,0.689292,0.245469,-0.614005],[-1,0,-1,0],[2334.74,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget p_330CleanEnd:=[[-2094.22,-38.73,75.70],[0.296008,0.689291,0.245468,-0.614007],[-1,0,-1,0],[-90.0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !stations uitlijning
    PERS robtarget pMeasurePos1Start:=[[-769.315,14.0313,55.1388],[0.00308722,-0.708007,0.706195,-0.00242576],[-1,0,-3,0],[800.102,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pMeasurePos2Start:=[[781.774,14.042,55.1107],[0.00308625,-0.708106,0.706096,-0.0024273],[-1,0,-3,0],[1896.26,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pMeasurePos3Start:=[[-19.9394,-19.0196,324.254],[0.00190818,0.999998,-3.43423E-05,0.000750551],[-1,-1,0,0],[14172,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS num off_Sensor1_Q1_In:=-769.315;
    PERS num off_Sensor2_Q1_In:=781.774;
    PERS num off_Sensor3_Q1_In:=-19.9394;

    !jointagerts
    CONST jointtarget pHomeJoint_StationXboor11:=[[-171.697,20.7673,73.6379,9.40827,-78.4414,76.6744],[2201.06,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_StationXFrees11:=[[-45.5974,-8.45157,22.3078,92.4167,-96.0155,-67.1399],[500.019,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Station5boor11:=[[-5.29279,-8.10328,8.40441,-184.76,-85.3069,71.779],[12500,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Station5Frees11:=[[-57.2633,-10.4175,36.8051,50.0431,-53.0773,-38.19],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST speeddata v1:=[1,500,5000,1000];

    !===============================================================================================================
    !boren bewerking
    !===============================================================================================================

    PROC rBoren_11mm_Dwarsbalk_330_Enkel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_330,0,0,-100),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_330,0,0,-5),v2000,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-100),v2000,z50,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_330_Dubbel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_330,0,0,-100),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_330,0,0,-5),v2000,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,110),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-100),v2000,z50,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_331_Enkel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_331,0,0,-100),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_331,0,0,-5),v2000,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_331,0,0,-100),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC


    PROC rBoren_11mm_Dwarsbalk_331_Dubbel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_331,0,0,-100),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_331,0,0,-5),v2000,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,110),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-100),v2000,z50,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Enkel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_332,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_332,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Dubbel(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_332,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,110),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_332,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    !===============================================================================================================
    !frezen bewerking
    !===============================================================================================================
    PROC rFrezen_Gat_45mm_Dwarsbalk_330(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep;
        VAR num nMillDepth:=-7;
        VAR num nRadius:=16.15;
        VAR num nPrecut:=0.5;
        VAR num nCurrStep;
        VAR num nCurRadius;
        VAR num nLoop:=0;
        nStep:=Spindeltool{Frees_13}.nFreesStap;
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v2000,z50,tFrees_13\WObj:=wobj_Active;
        !MoveL pGatCenter_330,v50,fine,tFrees_13\WObj:=wobj_Active;
        rStart_Spindle;
        !
        MoveL Offs(pGatCenter_330,nRadius,10,0),v2000,fine,tFrees_13\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,nRadius,3,0),v150,fine,tFrees_13\WObj:=wobj_Active;
        roiliNIT;
        !voorbewerken
        FOR nLoop FROM -1 TO nMillDepth STEP nStep DO
            rAutoOilPulse\keepon,\nPulseinterval:=4;
            IF nLoop<=nMillDepth THEN
                rStart_Spindle\nSpeed:=12000;
                nCurrStep:=-10;
                nCurRadius:=nRadius;
                nPrecut:=0;
                roilOFF;
            ELSE
                nCurrStep:=nLoop;
                nCurRadius:=nRadius-nPrecut;
            ENDIF
            TPWrite "CurrStep:"+NumToStr(nCurrStep,2)+"  nPreCur:"+NumToStr(nPrecut,2);
            !in stuk (stuk doorboren)
            MoveL Offs(pGatCenter_330,nCurRadius,nCurrStep,0),vBorenMetFrees,fine,tFrees_13\WObj:=wobj_Active;
            !gat frezen
            MoveC Offs(pGatCenter_330,0,nCurrStep,nCurRadius),Offs(pGatCenter_330,-nCurRadius,nCurrStep,0),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            MoveC Offs(pGatCenter_330,0,nCurrStep,-nCurRadius),Offs(pGatCenter_330,nCurRadius,nCurrStep,0),vFrezen,fine,tFrees_13\WObj:=wobj_Active;
            roilOFF;
        ENDFOR
        !weg van stuk 
        MoveL RelTool(pGatCenter_330,0,0,-30),v150,z5,tFrees_13\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        !
        MoveL RelTool(pGatCenter_330,0,0,-200),v2000,z50,tFrees_13\WObj:=wobj_Active;
        !		   
    ENDPROC

    PROC rFrezen_Gat_35mm_Dwarsbalk_330(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep;
        VAR num nMillDepth:=-7;
        VAR num nRadius:=11.15;
        VAR num nPrecut:=0.5;
        VAR num nCurrStep;
        VAR num nCurRadius;
        VAR num nLoop:=0;
        nStep:=Spindeltool{Frees_13}.nFreesStap;
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v2000,z50,tFrees_13\WObj:=wobj_Active;
        !MoveL pGatCenter_330,v50,fine,tFrees_13\WObj:=wobj_Active;
        !
        rStart_Spindle;
        !
        MoveL Offs(pGatCenter_330,nRadius,10,0),v2000,z50,tFrees_13\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,nRadius,3,0),v150,fine,tFrees_13\WObj:=wobj_Active;
        roiliNIT;
        !voorbewerken
        FOR nLoop FROM -1 TO nMillDepth STEP nStep DO
            rAutoOilPulse\keepon,\nPulseinterval:=4;
            IF nLoop<=nMillDepth THEN
                rStart_Spindle\nSpeed:=12000;
                nCurrStep:=-10;
                nCurRadius:=nRadius;
                nPrecut:=0;
                roilOFF;
            ELSE
                nCurrStep:=nLoop;
                nCurRadius:=nRadius-nPrecut;
            ENDIF
            TPWrite "CurrStep:"+NumToStr(nCurrStep,2)+"  nPreCur:"+NumToStr(nPrecut,2);
            !in stuk (stuk doorboren)
            MoveL Offs(pGatCenter_330,nCurRadius,nCurrStep,0),vBorenMetFrees,fine,tFrees_13\WObj:=wobj_Active;
            !gat frezen
            MoveC Offs(pGatCenter_330,0,nCurrStep,nCurRadius),Offs(pGatCenter_330,-nCurRadius,nCurrStep,0),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            MoveC Offs(pGatCenter_330,0,nCurrStep,-nCurRadius),Offs(pGatCenter_330,nCurRadius,nCurrStep,0),vFrezen,fine,tFrees_13\WObj:=wobj_Active;
            roilOFF;
        ENDFOR
        MoveL Offs(pGatCenter_330,nRadius,nMillDepth,0),vFrees_aanzet,fine,tFrees_13\WObj:=wobj_Active;
        !weg van stuk 
        MoveL RelTool(pGatCenter_330,0,0,-30),v150,z5,tFrees_13\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        !
        MoveL RelTool(pGatCenter_330,0,0,-200),v2000,z50,tFrees_13\WObj:=wobj_Active;
        !	
    ENDPROC


    PROC rFrezen_10mm_Flens_515x60L_B(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep;
        VAR num nMillDepth:=-8;
        VAR num nCurrStep;
        VAR num nLoop:=0;
        VAR num nFinish:=0.1;
        VAR num nFinishFor;
        VAR num i:=0;
        nStep:=Spindeltool{Frees_13}.nFreesStap;

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle;
        !
        MoveJ Offs(pFrees_332_1L,-50,100,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
        Movel Offs(pFrees_332_1L,-30,0,0),v200,fine,tFrees_13\WObj:=wobj_Active;
        roiliNIT;
        rAutoOilPulse\keepon,\nPulseinterval:=2;
        !
        FOR nLoop FROM nStep TO nMillDepth STEP nStep DO
            i:=i+1;
            !
            IF nLoop<=nMillDepth THEN
                rStart_Spindle\nSpeed:=8000;
                nCurrStep:=nMillDepth+nStep;
                nFinishFor:=nFinish*i+nFinish;
            ELSE
                nCurrStep:=nLoop;
                nFinishFor:=nFinish*i;
            ENDIF
            !in stuk
            !frees halverwege om stuk. (frees raakt stuk net)
            IF (i MOD 2)=1 THEN
                wobj_Active.oframe.trans:=[nShift_x+nFinishFor-0.5,nShift_y+nCurrStep,nShift_z-nFinishFor+0.5];
                MoveL pFrees_332_1L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                MoveL pFrees_332_2L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                MoveC pFrees_332_3L,pFrees_332_4L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                !frees met center gelijk in flens. (kan enkel op afgewerkt stuk geteached worden)
                MoveL pFrees_332_5L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            ELSE
                wobj_Active.oframe.trans:=[nShift_x+nFinishFor+0.5,nShift_y+nCurrStep,nShift_z-nFinishFor-0.5];
                MoveL pFrees_332_5L,v5,z0,tFrees_13\WObj:=wobj_Active;
                MoveL pFrees_332_4L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                MoveC pFrees_332_3L,pFrees_332_2L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                MoveL pFrees_332_1L,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
                Movel Offs(pFrees_332_1L,-30,0,0),vFrezen,fine,tFrees_13\WObj:=wobj_Active;
            ENDIF
        ENDFOR
        roilOFF;
        !uit stuk
        MoveJ Offs(pFrees_332_1L,-50,100,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
        Movel Offs(pFrees_332_5L,0,250,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rFrezen_10mm_Flens_515x60L_A(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep:=-3;
        VAR num nMillDepth:=-18;
        VAR num nLoop:=0;
        VAR num nFinish:=0.1;
        !
        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle;
        !stap 1
        !frezen van flens
        MoveJ Offs(pFrees_332_6L,0,50,0),v200,fine,tFrees_13\WObj:=wobj_Active;

        FOR nLoop FROM nStep TO nMillDepth STEP nStep DO
            Movel Offs(pFrees_332_6L,nLoop,5,nLoop),v200,z0,tFrees_13\WObj:=wobj_Active;
            roiliNIT;
            rAutoOilPulse\keepon,\nPulseinterval:=2;
            !in stuk 
            MoveL Offs(pFrees_332_6L,nLoop,-100+(nLoop/4),nLoop),v5,z0,tFrees_13\WObj:=wobj_Active;
            !uit stuk
            Movel Offs(pFrees_332_6L,3,-100,3),v50,z0,tFrees_13\WObj:=wobj_Active;
            roilOFF;
            Movel Offs(pFrees_332_6L,3,5,3),v200,z0,tFrees_13\WObj:=wobj_Active;
        ENDFOR

        ! nabewerken
        rStart_Spindle\nSpeed:=8000;
        Movel Offs(pFrees_332_6L,nMillDepth+nFinish,5,nMillDepth-nFinish),v200,z0,tFrees_13\WObj:=wobj_Active;
        roiliNIT;
        rAutoOilPulse\keepon,\nPulseinterval:=2;
        !in stuk
        Movel Offs(pFrees_332_6L,nMillDepth+nFinish,-100+(nMillDepth/4),nMillDepth-nFinish),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
        !uit stuk
        Movel Offs(pFrees_332_6L,3,-100,3),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
        roilOFF;
        Movel Offs(pFrees_332_6L,3,5,3),v200,z0,tFrees_13\WObj:=wobj_Active;
        MoveL pFrees_332_6L,v200,z0,tFrees_13\WObj:=wobj_Active;
        Movel Offs(pFrees_332_6L,0,200,50),v200,z0,tFrees_13\WObj:=wobj_Active;
        !
    ENDPROC


    PROC rFrezen_10mm_Flens_515x60R_B(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep;
        VAR num nMillDepth:=-8;
        VAR num nCurrStep;
        VAR num nLoop:=0;
        VAR num nFinish:=0.05;
        VAR num nFinishFor;
        VAR num i:=0;
        nStep:=Spindeltool{Frees_13}.nFreesStap;

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle;
        !
        FOR nLoop FROM nStep TO nMillDepth STEP nStep DO
            i:=i+1;
            !
            MoveJ Offs(pFrees_332_1R,50,100,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
            Movel Offs(pFrees_332_1R,30,0,0),v200,fine,tFrees_13\WObj:=wobj_Active;

            roiliNIT;
            rAutoOilPulse\keepon,\nPulseinterval:=2;
            IF nLoop<=nMillDepth THEN
                rStart_Spindle\nSpeed:=8000;
                nCurrStep:=nMillDepth+nStep;
                nFinishFor:=nFinish*i+nFinish;
            ELSE
                nCurrStep:=nLoop;
                nFinishFor:=nFinish*i;
            ENDIF
            wobj_Active.oframe.trans:=[nShift_x-nFinishFor,nShift_y+nCurrStep,nShift_z-nFinishFor];
            !in stuk
            !frees halverwege om stuk. (frees raakt stuk net)
            MoveL pFrees_332_1R,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            MoveL pFrees_332_2R,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            MoveC pFrees_332_3R,pFrees_332_4R,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            !frees met center gelijk in flens. (kan enkel op afgewerkt stuk geteached worden)
            MoveL pFrees_332_5R,vFrezen,z0,tFrees_13\WObj:=wobj_Active;
            roilOFF;
            !uit stuk
            Movel Offs(pFrees_332_5R,0,100,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
        ENDFOR
        Movel Offs(pFrees_332_5R,0,250,0),v2000,z10,tFrees_13\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rFrezen_10mm_Flens_515x60R_A(num nShift_x,num nShift_y,num nShift_z,num Shift_Track)
        VAR num nStep:=-3;
        VAR num nMillDepth:=-18;
        VAR num nLoop:=0;
        VAR num nFinish:=0.1;
        !
        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle;
        !stap 1
        !frezen van flens
        MoveJ Offs(pFrees_332_6R,0,50,0),v200,fine,tFrees_13\WObj:=wobj_Active;

        FOR nLoop FROM nStep TO nMillDepth STEP nStep DO
            Movel Offs(pFrees_332_6R,-nLoop,5,nLoop),v200,z0,tFrees_13\WObj:=wobj_Active;
            roiliNIT;
            rAutoOilPulse\keepon,\nPulseinterval:=2;
            !in stuk 
            MoveL Offs(pFrees_332_6R,-nLoop,-100+(nLoop/4),nLoop),v5,z0,tFrees_13\WObj:=wobj_Active;
            !uit stuk
            Movel Offs(pFrees_332_6R,-3,-100,3),v50,z0,tFrees_13\WObj:=wobj_Active;
            roilOFF;
            Movel Offs(pFrees_332_6R,-3,5,3),v200,z0,tFrees_13\WObj:=wobj_Active;
        ENDFOR

        ! nabewerken
        rStart_Spindle\nSpeed:=8000;
        Movel Offs(pFrees_332_6R,-nMillDepth-nFinish,5,nMillDepth-nFinish),v200,z0,tFrees_13\WObj:=wobj_Active;
        roiliNIT;
        rAutoOilPulse\keepon,\nPulseinterval:=2;
        !in stuk
        Movel Offs(pFrees_332_6R,-nMillDepth-nFinish,-100+(nMillDepth/4),nMillDepth-nFinish),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
        !uit stuk
        Movel Offs(pFrees_332_6R,-3,-100,3),vFrezen,z0,tFrees_13\WObj:=wobj_Active;
        roilOFF;
        Movel Offs(pFrees_332_6R,-3,5,3),v200,z0,tFrees_13\WObj:=wobj_Active;
        MoveL pFrees_332_6R,v200,z0,tFrees_13\WObj:=wobj_Active;
        Movel Offs(pFrees_332_6R,0,200,50),v200,z0,tFrees_13\WObj:=wobj_Active;
        !
    ENDPROC




    !===============================================================================================================
    !volledige dwarsbalk
    !===============================================================================================================


    PROC rDwarsbalk_Boren_5020330(num nStation,wobjdata WobjActiveStation)
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x:=WobjActiveStation.uframe.trans.x-nStationOffset(nStation);
        trackshift:=nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v4000,z50,tool0;
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0;
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_330_Enkel 0,0,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel-1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel-1202.5,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel-1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel-1040,20,0,trackshift;


        !
        rBoren_11mm_Dwarsbalk_330_Enkel-690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel-690,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel-280,-27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel-280,27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel 0,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 0,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel 280,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 280,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel 690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 690,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Enkel 1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 1150,20,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,-27.5,0,trackshift;
        !
        EOffsSet [trackshift+2000,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0;
        !
    ENDPROC

    PROC rDwarsbalk_Boren_5020331(num nStation,wobjdata WobjActiveStation)
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x:=WobjActiveStation.uframe.trans.x-nStationOffset(nStation);
        trackshift:=nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v5000,z50,tool0;
        MoveAbsJ pHomeJoint_StationXboor11,v5000,z50,tool0;
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_331_Enkel 0,0,0,trackshift;
        !
        !offsets to negative 
        !wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(nStation\Negeative);
        rBoren_11mm_Dwarsbalk_331_Dubbel-1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Dubbel-1202.5,-27.5,0,trackshift;
        !
        !offsets back to center 
        !wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(nStation);
        !
        rBoren_11mm_Dwarsbalk_331_Enkel-1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel-1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel-750,20,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_331_Enkel-690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel-690,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_331_Enkel-350,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 350,20,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,-27.5,0,trackshift;

        !
        rBoren_11mm_Dwarsbalk_331_Enkel 750,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1150,20,0,trackshift;

        !
        !offsets to positive 
        !wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(nStation\positive);
        rBoren_11mm_Dwarsbalk_331_Dubbel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Dubbel 1202.5,-27.5,0,trackshift;
        !
        EOffsSet [trackshift+2000,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0;
        !
    ENDPROC

    PROC rDwarsbalk_Boren_5020332()

        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=wobj_BalkStation5;
        wobj_Active.uframe.trans.x:=wobj_BalkStation5.uframe.trans.x-nStationOffset(5);
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5boor11),v4000,z50,tool0;
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0;
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_332_Enkel 0,0,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,-27.5,0,0;

        !
        rBoren_11mm_Dwarsbalk_332_Dubbel 690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel 690,-27.5,0,0;

        !
        rBoren_11mm_Dwarsbalk_332_Dubbel-690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel-690,-27.5,0,0;

        !
        rBoren_11mm_Dwarsbalk_332_Enkel-1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel-1202.5,-27.5,0,0;
        !
        rStop_Spindle;
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0;
        !
    ENDPROC

    PROC rDwarsbalk_Frezen_5020332()
        var num trackshift;
        !
        Set_Tool Frees_13;
        !
        wobj_Active:=wobj_BalkStation5;
        wobj_Active.uframe.trans.x:=wobj_BalkStation5.uframe.trans.x-nStationOffset(5,\Negeative);
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5Frees11),v4000,z50,tool0;
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0;
        !
        rFrezen_10mm_Flens_515x60L_A 0,0,0,0;
        !
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0;
        !
        rFrezen_10mm_Flens_515x60L_B 0,0.5,0,0;
        !
        wobj_Active.uframe.trans.x:=wobj_BalkStation5.uframe.trans.x-nStationOffset(5,\Positive);
        EOffsSet [2000,0,0,0,0,0];
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0;
        !
        rFrezen_10mm_Flens_515x60R_A 0,0,0,0;
        !
        EOffsSet [2000,0,0,0,0,0];
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0;
        !
        rFrezen_10mm_Flens_515x60R_B 0,0,0,0;
        !
        rStop_Spindle;

        EOffsSet [2000,0,0,0,0,0];
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0;
        !
    ENDPROC


    PROC rDwarsbalk_Frezen_5020330(num nStation,wobjdata WobjActiveStation)
        var num trackshift;
        !
        Set_Tool Frees_13;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x:=WobjActiveStation.uframe.trans.x-nStationOffset(nStation);
        trackshift:=nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXFrees11),v4000,z50,tool0;
        MoveAbsJ pHomeJoint_StationXFrees11,v4000,z50,tool0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330-665,0,0,trackshift;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330-224,0,0,trackshift;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 0,0,0,trackshift;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 224,0,0,trackshift;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 665,0,0,trackshift;
        !
        !kuisen 
        trackshift:=nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        EOffsSet [trackshift,0,0,0,0,0];
        rSetSationClamps nStation,\open,\nWaittime:=0;
        !
        MoveJ Offs(p_330CleanStart,0,200,0),v2000,fine,tFrees_13\WObj:=wobj_Active;
        rSetSationClamps nStation,\open,\Check;
        MoveL p_330CleanStart,v2000,z50,tFrees_13\WObj:=wobj_Active;
        MoveL p_330CleanEnd,v200,z50,tFrees_13\WObj:=wobj_Active;
        MoveL Offs(p_330CleanEnd,0,200,0),v2000,z50,tFrees_13\WObj:=wobj_Active;
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXFrees11,v4000,z50,tool0;
        rSetSationClamps nStation,\close,\nWaittime:=0;
        !
    ENDPROC



ENDMODULE