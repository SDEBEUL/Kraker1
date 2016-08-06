MODULE mOnderRanden
    
    TASK PERS wobjdata wobj_Onderrand_L:=[FALSE,TRUE,"",[[785,-1400,300],[1,0,0,0]],[[0,0,-6],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_Frees_L:=[FALSE,TRUE,"",[[785,-1400,300],[1,0,0,0]],[[0,0,-6],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_R:=[FALSE,TRUE,"",[[14493.5,-1400,300],[0,0,0,1]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata wobj_Onderrand_Frees_R:=[FALSE,TRUE,"",[[14493.5,-1400,300],[0,0,0,1]],[[0,0,0],[1,0,0,0]]];
    
    CONST robtarget pGat11_R:=[[-0.77,-18.62,317.59],[0.0019007,0.999998,2.8729E-08,0.000697868],[-1,-1,0,0],[14172,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pGat11_L:=[[-0.77,15.48,319.21],[0.000595015,-1,-9.43398E-06,-0.00058483],[-1,1,-1,0],[1000.01,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand_R:=[[4.82,-49.59,245.16],[0.00183349,0.996226,-0.0867734,0.000871471],[-1,-1,0,0],[14172,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !CONST robtarget pFrees_Onderrand_L:=[[4.64,50.59,208.77],[9.48623E-05,-1,2.18639E-05,-2.53724E-05],[-1,1,-1,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pFrees_Onderrand_L:=[[4.63,48.31,243.55],[0.000111642,-1,3.36849E-05,-2.80698E-05],[-1,1,-1,0],[999.987,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
  !===============================================================================================================
  !boren bewerking
  !===============================================================================================================
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
        MoveJ RelTool(pGat11_L,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_L,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        !positie puntje boor net tegen stuk 
        MoveL pGat11_L,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,15),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,105),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        !diepte net 3 mm in onderste gat
        MoveL RelTool(pGat11_L,0,0,112),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !terug omhoog en snelheid maken
        MoveL RelTool(pGat11_L,0,0,111.8),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !doorboren
        MoveL RelTool(pGat11_L,0,0,126),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !uit stuk
        MoveL pGat11_L,vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_L,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        !
        MoveL RelTool(pGat11_L,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rBoren_11mm_Onderrand_NUL_R(
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
        MoveJ RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        MoveL pGat11_R,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        Stop;
        MoveL RelTool(pGat11_R,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-200),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !		
    ENDPROC

    PROC rBoren_11mm_Onderrand_Dubbel_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)

        PDispOff;
        Shift_Track:=-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ RelTool(pGat11_R,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        rStart_Spindle;
        rAutoOilPulse;
        MoveL RelTool(pGat11_R,0,0,-5),v200,z0,boor_11mm_L190\WObj:=wobj_Active;
        !positie puntje boor net tegen stuk 
        MoveL pGat11_R,vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,15),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,105),vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        !diepte net 3 mm in onderste gat
        MoveL RelTool(pGat11_R,0,0,112),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !terug omhoog en snelheid maken
        MoveL RelTool(pGat11_R,0,0,111.8),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !doorboren
        MoveL RelTool(pGat11_R,0,0,126),vBoren_11_190,fine,boor_11mm_L190\WObj:=wobj_Active;
        !uit stuk
        MoveL pGat11_R,vBoren_aanzet,fine,boor_11mm_L190\WObj:=wobj_Active;
        MoveL RelTool(pGat11_R,0,0,-30),v200,z5,boor_11mm_L190\WObj:=wobj_Active;
        !
        MoveL RelTool(pGat11_R,0,0,-100),v200,fine,boor_11mm_L190\WObj:=wobj_Active;
        !
    ENDPROC

  !===============================================================================================================
  !frezen bewerking
  !===============================================================================================================
    PROC rFrezen_10mm_Uitsp_635x45_L(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        VAR num nStep := -1;
        VAR num nMillDepth := -11;
        VAR num nPrecut := -0.7;
        VAR num nCurrStep;
        PDispOff;
        Shift_Track:=nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !
        MoveJ Offs(pFrees_Onderrand_L,0,0,100),v800,fine,tFrees_10\WObj:=wobj_Active;
        !
        rStart_Spindle;
        roiliNIT;
        !in stuk
        FOR nCurrStep FROM 0 TO nMillDepth STEP nStep DO  
        IF nCurrstep <= nMillDepth THEN nPrecut := 0;  ENDIF
            rAutoOilPulse \keepon ,\nPulseinterval:=3;
            MoveL Offs(pFrees_Onderrand_L,-5,5,15), v800, z0, tFrees_10\WObj:=wobj_Active;
            !instuk
            MoveL Offs(pFrees_Onderrand_L,-5,5,nCurrstep),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
            !frees met center op aanzet van uitsparing
            !MoveL pFrees_Onderrand_L,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
            MoveL Offs(pFrees_Onderrand_L,0+nPrecut,0-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            MoveL Offs(pFrees_Onderrand_L,78+nPrecut,-45-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            MoveL Offs(pFrees_Onderrand_L,557-nPrecut,-45-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            MoveL Offs(pFrees_Onderrand_L,635-nPrecut,0-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            WaitRob \InPos;
            roilOFF;
            !Uit stuk 
            MoveL Offs(pFrees_Onderrand_L,635,5,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            !uit stuk (return pos)
            MoveL Offs(pFrees_Onderrand_L,635,5,15),vFrees_aanzet,z5,tFrees_10\WObj:=wobj_Active;
            !
        ENDFOR
        !		
        MoveL Offs(pFrees_Onderrand_L,635,0,100),v800,fine,tFrees_10\WObj:=wobj_Active;
        !
    ENDPROC

    PROC rFrezen_10mm_Uitsp_635x45_R(
        num nShift_x,
        num nShift_y,
        num nShift_z,
        num Shift_Track)
        VAR num nStep := -1;
        VAR num nMillDepth := -11;
        VAR num nPrecut := -0.7;
        VAR num nCurrStep;
        PDispOff;
        Shift_Track:=-nShift_x;
        !
        EOffsSet [Shift_Track,0,0,0,0,0];
        wobj_Active.oframe.trans:=[nShift_x,nShift_y,nShift_z];
        !frees met center op aanzet van uitsparing
        !MoveL pFrees_Onderrand_R,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
        MoveJ Offs(pFrees_Onderrand_R,635,0,200),v800,fine,tFrees_10\WObj:=wobj_Active;
        !
        rStart_Spindle;
        roiliNIT;
        !in stuk
        FOR nCurrStep FROM -1 TO nMillDepth STEP nStep DO  
        IF nCurrstep >= nMillDepth THEN nPrecut := 0;  ENDIF
           rAutoOilPulse \keepon, \nPulseinterval:= 3;
            MoveL Offs(pFrees_Onderrand_R,635,-5,15),v800,z5,tFrees_10\WObj:=wobj_Active;
            !instuk
            MoveL Offs(pFrees_Onderrand_R,635,-5,nCurrStep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
            !frees met center op aanzet van uitsparing
            !MoveL pFrees_Onderrand_R,vFrezen,fine,tFrees_10\WObj:=wobj_Active;
           MoveL Offs(pFrees_Onderrand_R,635-nPrecut,0-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
           MoveL Offs(pFrees_Onderrand_R,557 - nPrecut,45 - nPrecut,nCurrStep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
           MoveL Offs(pFrees_Onderrand_R,78 + nPrecut,45 - nPrecut,nCurrStep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
           MoveL Offs(pFrees_Onderrand_R,0+nPrecut,0-nPrecut,nCurrstep),vFrezen,z5,tFrees_10\WObj:=wobj_Active;
           waitrob \InPos;
           roilOFF;
           !Uit stuk 
          MoveL Offs(pFrees_Onderrand_R,-5,-5,nCurrStep),vFrees_aanzet,fine,tFrees_10\WObj:=wobj_Active;
          !uit stuk (return pos)s
          MoveL Offs(pFrees_Onderrand_R,-5,-5,15), v800, z0, tFrees_10\WObj:=wobj_Active;
          !
        ENDFOR
        !
        MoveJ Offs(pFrees_Onderrand_R,0,0,200),v800,fine,tFrees_10\WObj:=wobj_Active;
        !
    ENDPROC
    
  !===============================================================================================================
  !Volledige balk 
  !===============================================================================================================
    
    PROC rOnderrand_Frezen_215537_602_L()
        !
        wobj_Active:=wobj_Onderrand_Frees_L;
        !
        go_home \Armonly;
        Set_Tool Frees;
        !
        !MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,tFrees_10\WObj:=wobj0;
        !
        rFrezen_10mm_Uitsp_635x45_L 2445-1.2-5,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 3755-1.5-5,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_L 5065-2.5-5,0,0,0;
        !
        rStop_Spindle;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,tFrees_10\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC

    PROC rOnderrand_Frezen_215537_603_R()
        !
        wobj_Active:=wobj_Onderrand_Frees_R;
        !
        go_home \Armonly;
        Set_Tool Frees;
        !
        !MoveAbsJ [[-90,0,10,0,-10,0],[14000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,tFrees_10\WObj:=wobj0;
        !
        rFrezen_10mm_Uitsp_635x45_R 2445-1.5-5,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 3755-1.5-5,0,0,0;
        !
        rFrezen_10mm_Uitsp_635x45_R 5065-2-5,0,0,0;
        !
        rStop_Spindle;
        !MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,tFrees_10\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC
        
    PROC rOnderrand_B_215537_602_Links()
        !
        wobj_Active:=wobj_Onderrand_L;
        !
        go_home \Armonly;
        Set_Tool Boor_11m;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        !7mm correctie op volle lengte voor krimp 
        rBoren_11mm_Onderrand_Dubbel_L 15-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 70-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 230-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 285-1,2,0,0;
        !5
        rBoren_11mm_Onderrand_Dubbel_L 460-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 515-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 670-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 725-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 960-1,2,0,0;
        !10
        rBoren_11mm_Onderrand_Dubbel_L 1015-1,2,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 1250-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1305-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1540-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1595-1+0.35,2,0,0;
        !15
        rBoren_11mm_Onderrand_Dubbel_L 1830-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1885-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2120-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2175-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2410-1+0.35,2,0,0;
        !20
        rBoren_11mm_Onderrand_Dubbel_L 2465-1+0.35,2,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 2735-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2790-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3060-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3115-1.5+0.7,1.9,0,0;
        !25
        rBoren_11mm_Onderrand_Dubbel_L 3390-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3445-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3720-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3775-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4045-1.5+0.7,1.9,0,0;
        !30
        rBoren_11mm_Onderrand_Dubbel_L 4100-1.5+0.7,1.9,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 4370-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4425-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4700-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4755-2.5+1,1.9,0,0;
        !35
        rBoren_11mm_Onderrand_Dubbel_L 5030-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5085-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5355-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5410-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5680-2.5+1,1.9,0,0;
        !40
        rBoren_11mm_Onderrand_Dubbel_L 5735-2.5+1,1.9,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 5945-2.5+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6000-2.7+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6230-1.4+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6285-3+1.4+1.4,1.7,0,0;
        !45
        rBoren_11mm_Onderrand_Dubbel_L 6836-3.1+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6891-3.3+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7032-3.6+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7087-3.8+1.4,1.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7507-4+1.4,1.6,0,0;
        !50
        rBoren_11mm_Onderrand_Dubbel_L 7562-4+1.4,1.6,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 7703-4.3+1.7,1.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7758-4.5+1.7,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8112.5-4.7+1.7,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8167.5-4.8+1.7,1.8,0,0;
        !55
        rBoren_11mm_Onderrand_Dubbel_L 8387.5-4.9+1.7,1.8,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8442.5-5+1.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8662.5-5.2+1.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8717.5-5.1+1.7,2.0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8942.5-5.2+1.7,2.0,0,0;
        !60
        rBoren_11mm_Onderrand_Dubbel_L 8997.5-5.5+1.7,2.1,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 9217.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9272.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9472.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9527.5-5.5+2.1,2.1,0,0;
        !65
        rBoren_11mm_Onderrand_Dubbel_L 9712.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9767.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9997.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10052.5-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10282.5-5.5+2.1,2.1,0,0;
        !70
        rBoren_11mm_Onderrand_Dubbel_L 10337.5-5.5+2.1,1.1,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 10567.5-5.5+2.4,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10622.5-5.5+2.4,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10852.5-5.5+2.4,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10907.5-5.5+2.4,1.1,0,0;
        !75
        rBoren_11mm_Onderrand_Dubbel_L 11137.5-5.5+2.4,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11192.5-5.5+2.4,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11402.5-5.5+2.4,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11462.5-5.5+2.4,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11517.5-5.5+2.4,1.4,0,0;
        !80
        rBoren_11mm_Onderrand_Dubbel_L 11577.5-5.5+2.4,1.4,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 11657.5-5.5+2.8,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11717.5-5.6+2.8,1.2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11772.5-5.6+2.8,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11832.5-5.7+2.8,1,0,0;
        !85
        rBoren_11mm_Onderrand_Dubbel_L 11912.5-5.7+2.8,0.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11972.5-5.7+2.8,0.8,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12027.5-5.7+2.8,0.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12087.5-5.8+2.8,0.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12167.5-5.8+2.8,0.5,0,0;
        !90
        rBoren_11mm_Onderrand_Dubbel_L 12227.5-5.8+2.8,0.4,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 12282.5-5.8+3.15,0.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12342.5-5.8+3.15,0.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12540-5.9+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12595-5.9+3.15,1.4,0,0;
        !95
        rBoren_11mm_Onderrand_Dubbel_L 12850-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12905-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13050-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13105-6.1+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13160-6.1+3.15,1.4,0,0;
        !100
        rBoren_11mm_Onderrand_Dubbel_L 13215-6+3.15,1.4,0,0;
        !
        rStop_Spindle;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC

    PROC rOnderrand_B_215537_603_Rechts()
        !
        wobj_Active:=wobj_Onderrand_R;
        !
        go_home \Armonly;
        Set_Tool Boor_11m;
        !
        !MoveAbsJ [[-90,0,0,-90,90,90],[14400,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        !
        rBoren_11mm_Onderrand_NUL_R 0,0,0,0;
        !7mm correctie op volle lengte voor krimp 
        rBoren_11mm_Onderrand_Dubbel_R 15,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 70-1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 230,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 285,0,0,0;
        !5
        rBoren_11mm_Onderrand_Dubbel_R 460-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 515-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 670-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 725-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 960-0.5,0,0,0;
        !10
        rBoren_11mm_Onderrand_Dubbel_R 1015-1,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 1250-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1305-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1540-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1595-1+0.35,0,0,0;
        !15
        rBoren_11mm_Onderrand_Dubbel_R 1830-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1885-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2120-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2175-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2410-1+0.35,0,0,0;
        !20
        rBoren_11mm_Onderrand_Dubbel_R 2465-1.5+0.35,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 2735-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2790-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3060-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3115-1.5+0.7,0,0,0;
        !25
        rBoren_11mm_Onderrand_Dubbel_R 3390-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3445-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3720-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3775-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4045-1.5+0.7,0,0,0;
        !30
        rBoren_11mm_Onderrand_Dubbel_R 4100-2+0.7,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 4370-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4425-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4700-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4755-2+1,0,0,0;
        !35
        rBoren_11mm_Onderrand_Dubbel_R 5030-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5085-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5355-2.5+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5410-2.5+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5680-2.5+1,0,0,0;
        !40
        rBoren_11mm_Onderrand_Dubbel_R 5735-2.5+1,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 5945-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6000-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6230-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6285-2.5+1.4,0,0,0;
        !45
        rBoren_11mm_Onderrand_Dubbel_R 6836-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6891-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7032-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7087-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7507-3+1.4,0,0,0;
        !50
        rBoren_11mm_Onderrand_Dubbel_R 7562-3+1.4,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 7703-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7758-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8112.5-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8167.5-5+1.7,0,0,0;
        !55
        rBoren_11mm_Onderrand_Dubbel_R 8387.5-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8442.5-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8662.5-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8717.5-5.5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8942.5-5.5+1.7,0,0,0;
        !60
        rBoren_11mm_Onderrand_Dubbel_R 8997.5-5.5+1.7,0,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_R 9217.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9272.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9472.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9527.5-5.5+2.1,0,0,0;
        !65
        rBoren_11mm_Onderrand_Dubbel_R 9712.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9767.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9997.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10052.5-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10282.5-5.5+2.1,0,0,0;
        !70
        rBoren_11mm_Onderrand_Dubbel_R 10337.5-5.5+2.1,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 10567.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10622.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10852.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10907.5-5.5+2.4,0,0,0;
        !75
        rBoren_11mm_Onderrand_Dubbel_R 11137.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11192.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11402.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11462.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11517.5-5.5+2.4,0,0,0;
        !80
        rBoren_11mm_Onderrand_Dubbel_R 11577.5-5.5+2.4,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 11657.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11717.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11772.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11832.5-5.5+2.7,0,0,0;
        !85
        rBoren_11mm_Onderrand_Dubbel_R 11912.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11972.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12027.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12087.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12167.5-5.5+2.7,0,0,0;
        !90
        rBoren_11mm_Onderrand_Dubbel_R 12227.5-5.5+2.7,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 12282.5-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12342.5-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12540-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12595-5.5+3.1,0,0,0;
        !95
        rBoren_11mm_Onderrand_Dubbel_R 12850-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12905-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13050-6+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13105-6+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13160-6+3.1,0,0,0;
        !100
        rBoren_11mm_Onderrand_Dubbel_R 13215-6+3.1,0,0,0;
        !
        rStop_Spindle;
        !MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC
    
!********************************************
!SPECIALE ONDERRANDEN
!********************************************
        PROC rOnderrand_B_216453_602_Links()
        !
        WHILE TRUE DO 
        Stop;
        !********************************************
        !SPECIALE ONDERRANDEN
        !********************************************
        endwhile
        wobj_Active:=wobj_Onderrand_L;
        !
        go_home \Armonly;
        Set_Tool Boor_11m;
        !
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        !7mm correctie op volle lengte voor krimp 
        rBoren_11mm_Onderrand_Dubbel_L 15-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 70-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 230-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 285-1,2,0,0;
        !5
        !START AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_L 515-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 570-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 815-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 870-1,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1130-1,2,0,0;
        !10
        rBoren_11mm_Onderrand_Dubbel_L 1185-1,2,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 1455-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1510-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1775-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 1830-1+0.35,2,0,0;
        !15
        rBoren_11mm_Onderrand_Dubbel_L 2065-1+0.35,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2120-1+0.35,2,0,0;
        !
        !EINDE AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_L 2410-1+0.35,2,0,0;
        !20
        rBoren_11mm_Onderrand_Dubbel_L 2465-1+0.35,2,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 2735-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 2790-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3060-1.5+0.7,2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3115-1.5+0.7,1.9,0,0;
        !25
        rBoren_11mm_Onderrand_Dubbel_L 3390-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3445-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3720-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 3775-1.5+0.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4045-1.5+0.7,1.9,0,0;
        !30
        rBoren_11mm_Onderrand_Dubbel_L 4100-1.5+0.7,1.9,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 4370-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4425-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4700-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 4755-2.5+1,1.9,0,0;
        !35
        rBoren_11mm_Onderrand_Dubbel_L 5030-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5085-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5355-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5410-2.5+1,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 5680-2.5+1,1.9,0,0;
        !40
        rBoren_11mm_Onderrand_Dubbel_L 5735-2.5+1,1.9,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 5945-2.5+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6000-2.7+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6230-1.4+1.4,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6285-3+1.4+1.4,1.7,0,0;
        !45
        rBoren_11mm_Onderrand_Dubbel_L 6836-3.1+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 6891-3.3+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7032-3.6+1.4,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7087-3.8+1.4,1.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7507-4+1.4,1.6,0,0;
        !50
        rBoren_11mm_Onderrand_Dubbel_L 7562-4+1.4,1.6,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 7703-4.3+1.7,1.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 7758-4.5+1.7,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8112.5-4.7+1.7,1.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8167.5-4.8+1.7,1.8,0,0;
        !55
        !START AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_L 8478-4.9+1.7,1.8,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8533-5+1.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8853-5.2+1.7,1.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 8908-5.1+1.7,2.0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9218-5.2+1.7,2.0,0,0;
        !60
        rBoren_11mm_Onderrand_Dubbel_L 9273-5.5+1.7,2.1,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_L 9473-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9528-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9768-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 9823-5.5+2.1,2.1,0,0;
        !65
        rBoren_11mm_Onderrand_Dubbel_L 10103-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10158-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10438-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10493-5.5+2.1,2.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 10773-5.5+2.1,2.1,0,0;
        !70
        rBoren_11mm_Onderrand_Dubbel_L 10828-5.5+2.1,1.1,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 11108-5.5+2.4,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11163-5.5+2.4,1.1,0,0;
        
        !
        !EINDE AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_L 11402.5-5.5+2.4,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11462.5-5.5+2.4,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11517.5-5.5+2.4,1.4,0,0;
        !80
        rBoren_11mm_Onderrand_Dubbel_L 11577.5-5.5+2.4,1.4,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 11657.5-5.5+2.8,1.3,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11717.5-5.6+2.8,1.2,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11772.5-5.6+2.8,1.1,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11832.5-5.7+2.8,1,0,0;
        !85
        rBoren_11mm_Onderrand_Dubbel_L 11912.5-5.7+2.8,0.9,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 11972.5-5.7+2.8,0.8,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12027.5-5.7+2.8,0.7,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12087.5-5.8+2.8,0.6,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12167.5-5.8+2.8,0.5,0,0;
        !90
        rBoren_11mm_Onderrand_Dubbel_L 12227.5-5.8+2.8,0.4,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_L 12282.5-5.8+3.15,0.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12342.5-5.8+3.15,0.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12540-5.9+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12595-5.9+3.15,1.4,0,0;
        !95
        rBoren_11mm_Onderrand_Dubbel_L 12850-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 12905-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13050-6+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13105-6.1+3.15,1.4,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_L 13160-6.1+3.15,1.4,0,0;
        !100
        rBoren_11mm_Onderrand_Dubbel_L 13215-6+3.15,1.4,0,0;
        !
        rStop_Spindle;
        MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC

    PROC rOnderrand_B_216453_603_Rechts()
        !
        WHILE TRUE DO 
        Stop;
        !********************************************
        !SPECIALE ONDERRANDEN
        !********************************************
        endwhile
        !
        wobj_Active:=wobj_Onderrand_R;
        !
        go_home \Armonly;
        Set_Tool Boor_11m;
        !
        !MoveAbsJ [[-90,0,0,-90,90,90],[14400,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        !
        rBoren_11mm_Onderrand_NUL_R 0,0,0,0;
        !7mm correctie op volle lengte voor krimp 
        rBoren_11mm_Onderrand_Dubbel_R 15,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 70-1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 230,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 285,0,0,0;
        !5
        !START AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_R 515-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 570-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 815-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 870-0.5,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1130-0.5,0,0,0;
        !10
        rBoren_11mm_Onderrand_Dubbel_R 1185-1,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 1455-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1510-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1775-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 1830-1+0.35,0,0,0;
        !15
        rBoren_11mm_Onderrand_Dubbel_R 2065-1+0.35,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2120-1+0.35,0,0,0;
        !
        !einde AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_R 2410-1+0.35,0,0,0;
        !20
        rBoren_11mm_Onderrand_Dubbel_R 2465-1.5+0.35,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 2735-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 2790-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3060-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3115-1.5+0.7,0,0,0;
        !25
        rBoren_11mm_Onderrand_Dubbel_R 3390-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3445-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3720-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 3775-1.5+0.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4045-1.5+0.7,0,0,0;
        !30
        rBoren_11mm_Onderrand_Dubbel_R 4100-2+0.7,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 4370-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4425-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4700-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 4755-2+1,0,0,0;
        !35
        rBoren_11mm_Onderrand_Dubbel_R 5030-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5085-2+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5355-2.5+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5410-2.5+1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 5680-2.5+1,0,0,0;
        !40
        rBoren_11mm_Onderrand_Dubbel_R 5735-2.5+1,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 5945-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6000-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6230-2.5+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6285-2.5+1.4,0,0,0;
        !45
        rBoren_11mm_Onderrand_Dubbel_R 6836-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 6891-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7032-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7087-3+1.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7507-3+1.4,0,0,0;
        !50
        rBoren_11mm_Onderrand_Dubbel_R 7562-3+1.4,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 7703-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 7758-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8112.5-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8167.5-5+1.7,0,0,0;
        !55
        !START AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_R 8478-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8533-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 8853-5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9273-5.5+1.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9473-5.5+1.7,0,0,0;
        !60
        rBoren_11mm_Onderrand_Dubbel_R 9528-5.5+1.7,0,0,0;
       
        !
        rBoren_11mm_Onderrand_Dubbel_R 9768-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 9823-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10103-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10158-5.5+2.1,0,0,0;
        !65
        rBoren_11mm_Onderrand_Dubbel_R 10438-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10438-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10493-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10773-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 10828-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11108-5.5+2.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11163-5.5+2.1,0,0,0;
      
        !EINDE AFWIJKEND 
        rBoren_11mm_Onderrand_Dubbel_R 11402.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11462.5-5.5+2.4,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11517.5-5.5+2.4,0,0,0;
        !80
        rBoren_11mm_Onderrand_Dubbel_R 11577.5-5.5+2.4,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 11657.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11717.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11772.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11832.5-5.5+2.7,0,0,0;
        !85
        rBoren_11mm_Onderrand_Dubbel_R 11912.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 11972.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12027.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12087.5-5.5+2.7,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12167.5-5.5+2.7,0,0,0;
        !90
        rBoren_11mm_Onderrand_Dubbel_R 12227.5-5.5+2.7,0,0,0;
        
        !
        rBoren_11mm_Onderrand_Dubbel_R 12282.5-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12342.5-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12540-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12595-5.5+3.1,0,0,0;
        !95
        rBoren_11mm_Onderrand_Dubbel_R 12850-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 12905-5.5+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13050-6+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13105-6+3.1,0,0,0;
        !
        rBoren_11mm_Onderrand_Dubbel_R 13160-6+3.1,0,0,0;
        !100
        rBoren_11mm_Onderrand_Dubbel_R 13215-6+3.1,0,0,0;
        !
        rStop_Spindle;
        !MoveAbsJ [[-90,0,0,0,0,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]]\NoEOffs,v4000,z50,boor_11mm_L190\WObj:=wobj0;
        go_home \Armonly;
        !
    ENDPROC
ENDMODULE