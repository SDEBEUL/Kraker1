MODULE mDwarsbalk
    !wobj voor bewerken balken in station
    TASK PERS wobjdata wobj_BalkStation1:=[FALSE,TRUE,"",[[1926.9,-1043.5,510.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation2:=[FALSE,TRUE,"",[[4926.3,-1043.5,507],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation3:=[FALSE,TRUE,"",[[7925.3,-1043.5,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation4:=[FALSE,TRUE,"",[[10925.9,-1046,509],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_BalkStation5:=[FALSE,TRUE,"",[[13936,-1043.5,510.5],[0.707107,0.707107,0,0]],[[0,0,0],[1,0,0,0]]];
    
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
    CONST robtarget pGat11_332:=[[0,0,0],[0.064009,-7.21238E-06,1.02838E-05,0.99795],[-1,-1,-1,0],[12590.8,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand:=[[0.02,44.29,273.70],[6.89394E-05,-1,1.95355E-05,-1.6353E-05],[-2,0,-1,0],[999.988,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332:=[[0,-66,59.5],[0.674814,0.674808,0.211288,-0.211231],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_1L:=[[-765.82,-23.60,50.95],[0.266016,-0.405177,-0.826184,0.287207],[-1,2,-3,0],[12677.9,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_332_1R:=[[755.51,-37.45,60.11],[0.415157,0.702633,0.571256,0.087292],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !Y is midden van de balk Z de hoogte 
    CONST robtarget pGatCenter_330:=[[0,-66,59.5],[0.674814,0.674808,0.211288,-0.211231],[-1,1,-1,0],[1165.02,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
    !stations uitlijning
    PERS robtarget pMeasurePos1Start:=[[-772.112,14.0288,50.1119],[0.00307192,-0.707991,0.706211,-0.0024237],[-1,0,-3,0],[800.105,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS robtarget pMeasurePos2Start:=[[792.878,14.0292,50.0659],[0.0030727,-0.708094,0.706107,-0.00242517],[-1,0,-3,0],[1896.26,9E+09,9E+09,9E+09,9E+09,9E+09]];
    PERS num off_Sensor1_Q1_In:= -772.211;
    PERS num off_Sensor2_Q1_In:= 792.974;
    
    !jointagerts
    CONST jointtarget pHomeJoint_StationXboor11:=[[-171.694,-8.62571,38.3752,13.4122,-43.8158,68.7807],[2201.06,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_StationXFrees11:=[[-45.5974,-8.45157,22.3078,92.4167,-96.0155,-67.1399],[500.019,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Station5boor11:=[[-6.50445,-9.81998,33.3839,-11.7819,-34.0027,-58.9608],[12590.8,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Station5Frees11:=[[-45.5974,-8.45157,22.3078,92.4167,-96.0155,-67.1399],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]];

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
        MoveJ RelTool(pGat11_331,0,0,-150),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        MoveL RelTool(pGat11_331,0,0,-5),v2000,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_331,0,0,-150),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
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
        MoveJ RelTool(pGat11_331,0,0,-150),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        MoveL RelTool(pGat11_331,0,0,-5),v2000,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_331,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,110), vBoren_11_190, fine, boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_331,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
        !		
        !rStop_Spindle;
        MoveL RelTool(pGat11_330,0,0,-150),v2000,fine,boor_11mm_L190\WObj:=wobj_Active;
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
        MoveL RelTool(pGat11_332,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
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
        rStart_Spindle;
        MoveL RelTool(pGat11_332,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_332,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,20),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,85),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,110), vBoren_11_190, fine, boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_332,0,0,-30),vBoren_aanzet,z5,boor_11mm_L190\WObj:=wobj_Active;
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
        !
        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !MoveL pGatCenter_330,v50,fine,tFrees_10\WObj:=wobj_Active;
        !
        rStart_Spindle;
        !
        MoveL Offs(pGatCenter_330,18.65,10,0),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,18.65,3,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        !in stuk (stuk doorboren)
        MoveL Offs(pGatCenter_330,18.65,-10,0),vBorenMetFrees,fine,tFrees_10\WObj:=wobj_Active;
        !gat frezen
        MoveC Offs(pGatCenter_330,0,-10,18.65),Offs(pGatCenter_330,-18.65,-10,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,0,-10,-18.65),Offs(pGatCenter_330,18.65,-10,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,18.65,10,0),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
        !weg van stuk 
        MoveL RelTool(pGatCenter_330,0,0,-30),v150,z5,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
        MoveL RelTool(pGatCenter_330,0,0,-200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !		   
    ENDPROC

    PROC rFrezen_Gat_35mm_Dwarsbalk_330(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        !
        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGatCenter_330,0,0,-200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !MoveL pGatCenter_330,v50,fine,tFrees_10\WObj:=wobj_Active;
        !
        rStart_Spindle;
        !
        MoveL Offs(pGatCenter_330,13.65,10,0),v200,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,13.65,3,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        !in stuk (stuk doorboren)
        MoveL Offs(pGatCenter_330,13.65,-10,0),vBorenMetFrees,fine,tFrees_10\WObj:=wobj_Active;
        !gat frezen
        MoveC Offs(pGatCenter_330,0,-10,13.65),Offs(pGatCenter_330,-13.65,-10,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveC Offs(pGatCenter_330,0,-10,-13.65),Offs(pGatCenter_330,13.65,-10,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveL Offs(pGatCenter_330,13.65,10,0),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
        !weg van stuk 
        MoveL RelTool(pGatCenter_330,0,0,-30),v150,z5,tFrees_10\WObj:=wobj_Active;
        !		
        rStop_Spindle;
        !
        MoveL RelTool(pGatCenter_330,0,0,-200),v200,fine,tFrees_10\WObj:=wobj_Active;
        !	
    ENDPROC

    
    PROC rFrezen_10mm_Flens_515x60Links(
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
        !Frezen flens links 
        MoveJ Offs(pFrees_332,-1230,200,-2),v200,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,-1230,5,-2),v150,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,-1230,-10,-2),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
        !in stuk
        MoveL [[-786.29,-75.99,57.48],[0.674806,0.674821,0.211281,-0.211223],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], vFrezen, fine, tFrees_10\WObj:=wobj_Active;
        MoveC [[-773.33,-75.97,59.84],[0.67479,0.674847,0.211266,-0.211207],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], [[-765.09,-75.98,66.37],[0.674799,0.674833,0.211276,-0.211213],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], vFrezen, z0, tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,-730,-10,41.5),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        !tool omhoog
        Movel Offs(pFrees_332,-730,60,41.5),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,-730,200,41.5),v150,fine,tFrees_10\WObj:=wobj_Active;
	    !tool plat leggen richting uitsparing
        Movej Offs(pFrees_332_1L,0,200,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332_1L,0,50,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        !instuk
        Movel pFrees_332_1L,vFrezen,z0,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332_1L,0,-50,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        !in tool naar achter in Z
        Movel reltool(Offs(pFrees_332_1L,0,-50,0),0,0,-30),vFrezen,z0,tFrees_10\WObj:=wobj_Active;
        Movel reltool(Offs(pFrees_332_1L,0,400,0),0,0,-30),v150,fine,tFrees_10\WObj:=wobj_Active;
        MoveJ [[-1170.12,740.21,587.66],[0.517001,-0.597869,-0.0744164,0.60805],[-1,1,-3,0],[12677.3,9E+09,9E+09,9E+09,9E+09,9E+09]], v150, z200, tFrees_10\WObj:=wobj_Active;
        MoveJ [[-201.00,559.64,533.43],[0.623101,0.14796,0.58587,0.496599],[-1,1,-1,0],[12677.3,9E+09,9E+09,9E+09,9E+09,9E+09]], v150, z200, tFrees_10\WObj:=wobj_Active;
        Movej Offs(pFrees_332,-705,200,41.5),v150,z200,tFrees_10\WObj:=wobj_Active;
        !
        rStop_Spindle;
        !
    ENDPROC
    
    PROC rFrezen_10mm_Flens_515x60Rechts(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track+2000,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        rStart_Spindle; 
        !
        !Frezen flens rechts 
        Movel Offs(pFrees_332,716,200,41.5),v200,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,716,60,41.5), v150, fine, tFrees_10\WObj:=wobj_Active;
        !in stuk
        Movel Offs(pFrees_332,716, 50,41.5), vFrees_aanzet, z10, tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332,716,-10,41.5),vFrezen,z10,tFrees_10\WObj:=wobj_Active;
        MoveL [[749.23,-75.97,67.01],[0.674802,0.674829,0.211271,-0.211219],[-1,0,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], vFrezen, z0, tFrees_10\WObj:=wobj_Active;
        MoveC [[760.88,-75.96,58.64],[0.674796,0.674841,0.211263,-0.211209],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], [[777.33,-75.96,58.63],[0.674793,0.674847,0.21126,-0.211205],[-1,1,-1,0],[12300,9E+09,9E+09,9E+09,9E+09,9E+09]], vFrezen, z0, tFrees_10\WObj:=wobj_Active;
        
        
        Movel Offs(pFrees_332,1230,-10,-2),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        !uit stuk
        Movel Offs(pFrees_332,1230,5,-2),v150,fine,tFrees_10\WObj:=wobj_Active;
        MoveJ Offs(pFrees_332,1230,200,-2),v200,fine,tFrees_10\WObj:=wobj_Active;
        !terug naar flens
        Movej Offs(pFrees_332,730,200,41.5),v200,fine,tFrees_10\WObj:=wobj_Active;
        !tool plat leggen richting uitsparing
        Movej Offs(pFrees_332_1R,0,200,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332_1R,0,50,0),v150,fine,tFrees_10\WObj:=wobj_Active;
        !instuk
        Movel pFrees_332_1R,vFrezen,z0,tFrees_10\WObj:=wobj_Active;
        Movel Offs(pFrees_332_1R,0,-50,0),vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        !in tool naar achter in Z
        Movel reltool(Offs(pFrees_332_1R,0,-50,0),0,0,-30),vFrees_aanzet,z0,tFrees_10\WObj:=wobj_Active;
        Movel reltool(Offs(pFrees_332_1R,0,400,0),0,0,-30),v150,fine,tFrees_10\WObj:=wobj_Active;
        !
        rStop_Spindle;
        !
    ENDPROC

  
  !===============================================================================================================
  !volledige dwarsbalk
  !===============================================================================================================

  
  PROC rDwarsbalk_Boren_5020330 (num nStation, wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(nStation);
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0; 
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_330_Enkel 0,0,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel -1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel -1202.5, -27.5, 0, trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel -1040,20,0,trackshift;

        
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
        rBoren_11mm_Dwarsbalk_330_Enkel 1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Enkel 1150,20,0,trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_330_Dubbel 1202.5,-27.5,0,trackshift;
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0; 
        !
    ENDPROC

  PROC rDwarsbalk_Boren_5020331(num nStation, wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(nStation);
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v5000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v5000,z50,tool0; 
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_331_Enkel 0,0,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Dubbel -1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Dubbel -1202.5,-27.5,0,trackshift;
       
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1150,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -1040,20,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -750,20,0,trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -690,-27.5,0,trackshift;
        
        !
        rBoren_11mm_Dwarsbalk_331_Enkel -350,20,0,trackshift;
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
        rBoren_11mm_Dwarsbalk_331_Dubbel 1202.5,27.5,0,trackshift;
        !
        rBoren_11mm_Dwarsbalk_331_Dubbel 1202.5,-27.5,0,trackshift;
        !
        rStop_Spindle;
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0; 
        !
    ENDPROC

  PROC rDwarsbalk_Boren_5020332() 

        !
        Set_Tool Boor_11m;
        !
        wobj_Active:=wobj_BalkStation5;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(5);
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5boor11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0; 
        !teach midden van balk 
        !rBoren_11mm_Dwarsbalk_332_Enkel 0,0,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel 1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel 1202.5,-27.5,0,0;
       
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel 690,-27.5,0,0;
        
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -690,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Enkel -690,-27.5,0,0;
        
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel -1202.5,27.5,0,0;
        !
        rBoren_11mm_Dwarsbalk_332_Dubbel -1202.5,-27.5,0,0;
        !
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0; 
        !
    ENDPROC
    
  PROC rDwarsbalk_Frezen_5020332()
        var num trackshift;
        !
        Set_Tool Frees;
        !
        wobj_Active:=wobj_BalkStation5;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(5);
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5Frees11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0; 
        !
        rFrezen_10mm_Flens_515x60links 0,0,0,0;
        !
        rFrezen_10mm_Flens_515x60Rechts 0,0,0,0;
        !
        MoveAbsJ pHomeJoint_Station5Frees11,v4000,z50,tool0; 
       !
    ENDPROC
    
  PROC rDwarsbalk_Frezen_5020330(num nStation, wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Frees;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(nStation);
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXFrees11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXFrees11,v4000,z50,tool0; 
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 -665,0,0,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 -224,0,0,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 0,0,0,0;
        !
        rFrezen_Gat_35mm_Dwarsbalk_330 224,0,0,0;
        !
        rFrezen_Gat_45mm_Dwarsbalk_330 665,0,0,0;
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXFrees11,v4000,z50,tool0; 
        !
    ENDPROC
    
  !===============================================================================================================
  !uitlijnen stations
  !===============================================================================================================
  PROC rSationx_uitlijnen (wobjdata WobjActiveStation) 
        var num trackshift;
        !
        Set_Tool Krasnaald;
        !
        wobj_Active:=WobjActiveStation;
        wobj_Active.uframe.trans.x :=  wobj_Active.uframe.trans.x-nStationOffset(2);
        trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
        !
        EOffsSet [trackshift,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_StationXboor11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0; 
        stop;
        !
        rUitlijnen_Stationx 0,27.5,0,trackshift,pGat11_330; 
        !
        rUitlijnen_Stationx 100,27.5,0,trackshift,pGat11_330;
        !
        rUitlijnen_Stationx -100,27.5,0,trackshift,pGat11_330;
        !
        !rUitlijnen_Stationx 0,27.5,0,trackshift,pGat11_330;      
        !
        !rUitlijnen_Stationx -700,27.5,0,trackshift,pGat11_330;
        !    
        !rUitlijnen_Stationx -1210,27.5,0,trackshift,pGat11_330;   
        !
        EOffsSet [trackshift+1300,0,0,0,0,0];
        MoveAbsJ pHomeJoint_StationXboor11,v4000,z50,tool0; 
        !
 ENDPROC
    
 PROC rSation5_uitlijnen() 

        !
        Set_Tool Krasnaald;
        !
        wobj_Active:=wobj_BalkStation5;
        EOffsSet [0,0,0,0,0,0];
        MoveAbsJ fArm_only(pHomeJoint_Station5boor11),v4000,z50,tool0; 
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0; 
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
        MoveAbsJ pHomeJoint_Station5boor11,v4000,z50,tool0; 
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
  
    
  !===============================================================================================================
  !sensor calibratie. 
  !===============================================================================================================
       PROC rTESTmeetSTation()
        
        WHILE TRUE DO 
        rMeasureStationOffset 1, wobj_BalkStation1;
        WaitTime 1;
        ENDWHILE
        !
        WHILE TRUE DO 
        rMeasureStationOffset 2, wobj_BalkStation2;
        WaitTime 1;
        ENDWHILE
        !
        WHILE TRUE DO 
        rMeasureStationOffset 3, wobj_BalkStation3;
        WaitTime 1;
        ENDWHILE
        !
        WHILE TRUE DO 
        rMeasureStationOffset 4, wobj_BalkStation4;
        WaitTime 1;
        ENDWHILE
        !
        WHILE TRUE DO 
        rMeasureStationOffset 5, wobj_BalkStation5;
        WaitTime 1;
        ENDWHILE
        !
    ENDPROC
    
    PROC rSensorSetup()
    !sensor calib proc.
    !leg een perfecte balk in sts1 deze balk heeft een center markering nodig die PERFECT is
    !gebruik de sts uitlijn proc en centreer de balk PERFECT in het station. (klemmen dicht.)   
    rSationx_uitlijnen wobj_BalkStation1;
    Set_Gripper GrijperTool;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    rMeasureStationOffset 1, wobj_BalkStation1 \SensorSetup;
    Stop;
    rMeasureStationOffset 1, wobj_BalkStation1;
   
    
    !loop for testing comps system 
    Stop;
    WHILE TRUE DO 
    rSetSationClamps 2, \open;
    Stop;
    rSetSationClamps 2, \close;
    Set_Gripper GrijperTool;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    rMeasureStationOffset 2, wobj_BalkStation2;
    Stop;    
    rSationx_uitlijnen wobj_BalkStation2;
      
    ENDWHILE    
    
    
     !
    ENDPROC
    
    FUNC num nStationOffset(num nStation)
        VAR num nNum;
        nNum :=Station{nStation}.xOffset;
        IF abs(nNum) > 10 THEN
            WHILE TRUE DO 
             Stop;
            ENDwhile
            RETURN 0;
        ENDIF 

        RETURN Station{nStation}.xOffset;
        !
    ENDFUNC     
    
    PROC rMeasureStationOffset(num nStation, Wobjdata WobjActiveStation \switch SensorSetup )
    !***************************************	    
    ! Proc: rMeasureStationOffset
    ! Description: x afwijking van station opmeten
    !**********************
      VAR num trackshift; 
      VAR robtarget TriggPos1;
      VAR robtarget TriggPos2;
      VAR robtarget PosDummy;
      VAR speeddata Vsearch := [2.5,500,5000,1000]; !zoeksnelheid 
      VAR num nSearchlength := 40; !de zoek functie begint nSearchlength/2 van de calib pos en eindig  nSearchlength/2 erna. default 20mm
      CONST num nBeamlength := 2440; !de nominale lengte van een balk
      VAR num XoffsetPos1;
      VAR num XoffsetPos2;
      VAR num XoffsetAvg;
      VAR num XoffsetLength;
      VAR string sLog;
      
      !
      wobj_Active:=WobjActiveStation;
      trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjActiveStation);
      EOffsSet [trackshift,0,0,0,0,0];
      !******************************************************************************************************************************************
      !naar start pos links 
      MoveL RelTool(pMeasurePos1Start,-140,0,0), v4000, z50, tGripper\WObj:=wobj_Active;

      !teach only Positie met de laser OP de balk. (in teach mode word deze nog verschoven naar het riggerpunt)
      !MoveL pMeasurePos1Start, v4000, fine, tGripper\WObj:=wobj_Active;
      !
      !PosDummy :=  RelTool(pMeasurePos1Start,0,-nSearchlength/2,0);
      PosDummy :=  Offs(pMeasurePos1Start,+nSearchlength/2,0,0);
      MoveL PosDummy, v4000, fine, tGripper\WObj:=wobj_Active;
      !meet links
      WaitTime \InPos, 1; 
      WaitRob \ZeroSpeed;
      CheckInput di_Sensor1_Q1_In,1, \Skip, \CheckTimeOut:=3,"Grijper sensor fout di_Sensor1_Q1_In not 1";
      SearchL\Stop, di_Sensor1_Q1_In \negflank , PosDummy,Offs(pMeasurePos1Start,-nSearchlength/2,0,0), Vsearch, tGripper\WObj:=wobj_Active;
      !
      IF Present(SensorSetup) THEN pMeasurePos1Start := PosDummy; ENDIF
      TriggPos1 := CRobT(\Tool:=tGripper,\WObj:=wobj_Active);
      !
      !******************************************************************************************************************************************
      !naar start pos rechts
      MoveL RelTool(pMeasurePos1Start,-140,10,0), v4000, z10, tGripper\WObj:=wobj_Active;
      MoveL RelTool(pMeasurePos2Start,-140,0,0), v4000, z10, tGripper\WObj:=wobj_Active;
      !teach only Positie met de laser OP de balk. (in teach mode word deze nog verschoven naar het riggerpunt)
      !MoveL pMeasurePos2Start, v4000, fine, tGripper\WObj:=wobj_Active;
      !
      PosDummy :=  Offs(pMeasurePos2Start,-nSearchlength/2,0,0);
      MoveL PosDummy, v4000, fine, tGripper\WObj:=wobj_Active;
      !meet rechts
      WaitTime \InPos, 1; 
      WaitRob \ZeroSpeed;
      CheckInput di_Sensor2_Q1_In,1, \Skip, \CheckTimeOut:=3,"Grijper sensor fout di_Sensor2_Q1_In not 1";
      SearchL\Stop, di_Sensor2_Q1_In \negflank, PosDummy, Offs(pMeasurePos2Start,+nSearchlength/2,0,0), Vsearch, tGripper\WObj:=wobj_Active;
      IF Present(SensorSetup) THEN pMeasurePos2Start := PosDummy; ENDIF
      TriggPos2:=CRobT(\Tool:=tGripper,\WObj:=wobj_Active); 
      !
      MoveL RelTool(pMeasurePos2Start,-140,-10,0), v4000, z10, tGripper\WObj:=wobj_Active;
      !gripper sensor offset calbiratie 
      IF Present(SensorSetup) THEN
          off_Sensor1_Q1_In := TriggPos1.trans.x;
          off_Sensor2_Q1_In := TriggPos2.trans.x;
      ENDIF
      !****************************************************************************************************************************************** 
      !bereken beam offset 
      XoffsetPos1 := (off_Sensor1_Q1_In - TriggPos1.trans.x);
      XoffsetPos2 := (off_Sensor2_Q1_In - TriggPos2.trans.x);
      XoffsetAvg := (XoffsetPos1+XoffsetPos2)/2;
      XoffsetLength := Abs(XoffsetPos1) - Abs(XoffsetPos2);
      !gebruik het gemiddelde om de offset te bepalen.
      Station{nStation}.xOffset := XoffsetAvg ;
      !
      sLog := "off:"+NumToStr(nStation,0)+" D=" + numtostr(XoffsetAvg,2) +  " x=" + numtostr(Station{nStation}.xOffset,2) + " n=" + numtostr(XoffsetLength,2)  + " P1=" + numtostr(TriggPos1.trans.x,2) + " P2=" + numtostr(TriggPos2.trans.x,2);
      TPWrite sLog;
      LoggProc "Offset",31,sLog;
      !Stop;
      !******************************************************************************************************************************************   
      !error handeler (zoek functie)
      ERROR
         TEST ERRNO 
            CASE ERR_WHLSEARCH:
            StorePath;
            MoveL  PosDummy, v100, fine, tGripper\WObj:=wobj_Active;
            RestoPath;
            ClearPath;
            StartMove;
            RETRY;
            !
           DEFAULT:
                Stop;
         ENDTEST
      !******************************************************************************************************************************************   
      Stop;
      !
ENDPROC 
   
    
ENDMODULE