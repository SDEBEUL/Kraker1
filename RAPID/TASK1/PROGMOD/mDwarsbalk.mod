MODULE mDwarsbalk
    !wobj voor bewerken balken in station
    TASK PERS wobjdata wobj_BalkStation1:=[FALSE,TRUE,"",[[1928.5,-1043.5,510.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation2:=[FALSE,TRUE,"",[[4927,-1043.5,507],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation3:=[FALSE,TRUE,"",[[7926,-1043.5,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation4:=[FALSE,TRUE,"",[[10927,-1046,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation5:=[FALSE,TRUE,"",[[13936,-1043.5,510.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    
    TASK PERS wobjdata wobj_Dwarsbalk330_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk330_Frees90:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk331_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Boor_11:=[FALSE,TRUE,"",[[15000,-1400,300],[0.707107,0.707107,0,0]],[[0,0,0],[0,1,0,0]]];
    TASK PERS wobjdata wobj_Dwarsbalk332_Frees:=[FALSE,TRUE,"",[[15000,-1400,300],[0,1,0,0]],[[0,0,0],[0,1,0,0]]];
    !Robtargets  
    CONST robtarget pGat11_330:=[[-0.01,-0.01,-0.02],[0.996832,-3.67099E-05,-1.70326E-05,0.0795373],[-2,0,0,0],[3200,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_331:=[[-0.81,0.64,0.52],[3.49432E-05,2.42889E-06,-4.25262E-05,-1],[-1,-1,-1,0],[12590.8,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_332:=[[0,0,0],[0.064009,-7.21238E-06,1.02838E-05,0.99795],[-1,-1,-1,0],[12590.8,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Ziel:=[[0.01,51.77,256],[6.13094E-05,-1,2.02582E-05,-1.54504E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Flens:=[[0.01,51.77,256],[6.13094E-05,-1,2.02582E-05,-1.54504E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGatCenter_330:=[[0,0,0],[1.10307E-06,-1,-2.64362E-06,-9.27231E-07],[-2,0,-1,0],[1380,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !jointagerts
    CONST jointtarget pHomeJoint_StationXboor11:=[[-171.694,-8.62571,38.3752,13.4122,-43.8158,68.7807],[2201.06,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Station5boor11:=[[-6.50445,-9.81998,33.3839,-11.7819,-34.0027,-58.9608],[12590.8,9E+09,9E+09,9E+09,9E+09,9E+09]];

  !===============================================================================================================
  !boren bewerking
  !===============================================================================================================
  
    PROC rBoren_11mm_Dwarsbalk_330_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        MoveL RelTool(pGat11_330,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_330_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        MoveL RelTool(pGat11_330,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_330,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,110), vBoren_11_190, fine, boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_330,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_331_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !rStart_Spindle;
        MoveL RelTool(pGat11_331,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        Stop;
        !MoveL RelTool(pGat11_331,0,0,5),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_331_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !rStart_Spindle;
        MoveL RelTool(pGat11_331,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        Stop;
        !MoveL RelTool(pGat11_331,0,0,5),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_331,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Enkel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Dwarsbalk_332_Dubbel(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !rStart_Spindle;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        Stop;
        !MoveL RelTool(pGat11_331,0,0,5),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        MoveL RelTool(pGat11_332,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC
    
  !===============================================================================================================
  !frezen bewerking
  !===============================================================================================================
     PROC rFrezen_Gat_45mm_Dwarsbalk_330(
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
        rStart_Spindle;
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
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle;
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
        rStart_Spindle;
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
    
    PROC rFrezen_10mm_Flens_515x60(
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
        rStart_Spindle;
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
        rStart_Spindle;
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
  
  !===============================================================================================================
  !volledige dwarsbalk
  !===============================================================================================================

  
  PROC rDwarsbalk_Boren_5020330 (wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v1000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        GOTO eind;
        !teach midden van balk 
        rBoren_11mm_Dwarsbalk_330_Enkel 0,0,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel -1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel -1202.5, -27.5, 0, trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -690,-27.5,0,trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -280,-27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -280,27.5,0,trackshift; 
        
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
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,-27.5,0,trackshift;
        eind:
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        !
    ENDPROC

  PROC rDwarsbalk_Boren_5020331(wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v1000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        GOTO eind;
        !teach midden van balk 
        rBoren_11mm_Dwarsbalk_331_Enkel 0,0,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1202.5,-27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 750,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 690,-27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel 350,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -350,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,-27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -750,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1202.5,-27.5,0,trackshift;
        !
        eind:
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        !
    ENDPROC

  PROC rDwarsbalk_Boren_5020332() 

        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=wobj_BalkStation5;
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5boor11),v1000,z50,tool0; 
        MoveAbsJ pHomeJoint_Station5boor11,v1000,z50,tool0; 
        GOTO eind;
        !teach midden van balk 
        rBoren_11mm_Dwarsbalk_332_Enkel 0,0,0,0;
        !
       ! rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,27.5,0,0;
        !
       ! rBoren_11mm_Dwarsbalk_332_Enkel 1202.5,-27.5,0,0;
        !
       ! rBoren_11mm_Dwarsbalk_332_Enkel 1150,20,0,0;
        !
       ! rBoren_11mm_Dwarsbalk_332_Enkel 1040,20,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 690,27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 690,-27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 280,27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 280,-27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 0,27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel 0,-27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel -280,27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel -280,-27.5,0,0;
        !
     !   rBoren_11mm_Dwarsbalk_332_Enkel -690,27.5,0,0;
        !
     !   rBoren_11mm_Dwarsbalk_332_Enkel -690,-27.5,0,0;
        !
    !    rBoren_11mm_Dwarsbalk_332_Enkel -1040,20,0,0;
        !
    !    rBoren_11mm_Dwarsbalk_332_Enkel -1150,20,0,0;
        !
     !   rBoren_11mm_Dwarsbalk_332_Enkel -1202.5,27.5,0,0;
        !
      !  rBoren_11mm_Dwarsbalk_332_Enkel -1202.5,-27.5,0,0;
        !
        eind:
        MoveAbsJ pHomeJoint_Station5boor11,v1000,z50,tool0; 
        !
    ENDPROC

  PROC rDwarsbalk_Frezen_5020332(
                num nShift_Xx)
        !
        wobj_Active:=wobj_Dwarsbalk332_Frees;
        !

      !  MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
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
     !   MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;

    ENDPROC

  PROC rDwarsbalk_Frezen_5020330(
                num nShift_Xx)

        !
        wobj_Active:=wobj_Dwarsbalk330_Frees;
        !
     !   MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
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
     !   MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v1000,z50,tFrees_10\WObj:=wobj0;
    ENDPROC
    
  !===============================================================================================================
  !uitlijnen stations
  !===============================================================================================================
  PROC rMAN_stationsUitlijnning()
      rSationx_uitlijnen(wobj_BalkStation1);
      Stop;
      rSationx_uitlijnen(wobj_BalkStation2);
      Stop;
      rSationx_uitlijnen(wobj_BalkStation3);
      Stop;
      rSationx_uitlijnen(wobj_BalkStation4);
      Stop;
      rSation5_uitlijnen;
      Stop;
  ENDPROC
  
  
  PROC rSationx_uitlijnen (wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Krasnaald;
        !
        wobj_Active:=WobjActiveStation;
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v1000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        stop;
        !
        rUitlijnen_Stationx 0,27.5,0,trackshift,pGat11_330; 
        !
        rUitlijnen_Stationx 1210,27.5,0,trackshift,pGat11_330;
        !
        rUitlijnen_Stationx 700,27.5,0,trackshift,pGat11_330;
        !
        rUitlijnen_Stationx 0,27.5,0,trackshift,pGat11_330;      
        !
        rUitlijnen_Stationx -700,27.5,0,trackshift,pGat11_330;
        !    
        rUitlijnen_Stationx -1210,27.5,0,trackshift,pGat11_330;   
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v1000,z50,tool0; 
        !
    ENDPROC
    
      PROC rSation5_uitlijnen() 

        !
        Set_Tool Krasnaald;
        !
        wobj_Active:=wobj_BalkStation5;
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5boor11),v1000,z50,tool0; 
        MoveAbsJ pHomeJoint_Station5boor11,v1000,z50,tool0; 
        Stop;
        !
        rUitlijnen_Stationx 0,27.5,0,0,pGat11_332; 
        !
        rUitlijnen_Stationx 1210,27.5,0,0,pGat11_332;
        !
        rUitlijnen_Stationx 700,27.5,0,0,pGat11_332;
        !
        rUitlijnen_Stationx 0,27.5,0,0,pGat11_332;      
        !
        rUitlijnen_Stationx -700,27.5,0,0,pGat11_332;
        !    
        rUitlijnen_Stationx -1210,27.5,0,0,pGat11_332;   
        !
        MoveAbsJ pHomeJoint_Station5boor11,v1000,z50,tool0; 
        !
    ENDPROC
    
    PROC rUitlijnen_Stationx(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track,
        robtarget refpos)
        !
        PDispOff;
        !
        EOffsSet [Shift_Track+nShift_x,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(refpos,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(refpos,0,0,-30),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(refpos,0,0,20),v80,z0,boor_11mm_L190\WObj:=wobj_Active;
        stop;
        !MoveL refpos,v30,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(refpos,0,0,35),v50,z5,boor_11mm_L190\WObj:=wobj_Active;
        stop;
        MoveL RelTool(refpos,0,0,-30),v80,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(refpos,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC
    
ENDMODULE