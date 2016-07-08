MODULE mStation


    TASK PERS wobjdata Wobj_Station1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station2:=[FALSE,TRUE,"",[[2975,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station3:=[FALSE,TRUE,"",[[5995,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station4:=[FALSE,TRUE,"",[[8992,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station5:=[FALSE,TRUE,"",[[11992.5,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  CONST robtarget pStation_x:=[[10.97,1.84,61.38],[0.00529898,-0.707562,0.706621,-0.00399822],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
  VAR num Shift_Track;
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
PROC rPutPartInStation(Num nStation, Wobjdata WobjStation)
    VAR num trackshift;
    VAR bool rePos;
    rePos := FALSE;
    !
    rSetSationClamps nStation, \open;
    !
    wobj_Active:=WobjStation;
    trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjStation);
    !
    EOffsSet [trackshift,0,0,0,0,0];
    !
    MoveL reltool(pStation_x,-250,0,50),v4000,z50,tGripper\WObj:=wobj_Active;
    MoveL pStation_x, v4000, fine, tGripper\WObj:=wobj_Active;
    !
    rGripper_PartSupervisionOff;
    rGripper_Open;
    !
    MoveL reltool(pStation_x,-100,0,0),v4000,z50,tGripper\WObj:=wobj_Active;
    rGripper_CheckPart FALSE;
    rSetSationClamps nStation,\close;
    MoveL reltool(pStation_x,-250,0,0),v4000,z50,tGripper\WObj:=wobj_Active;
    !
lbl_measure:
    rMeasureStationOffset nStation, WobjStation;
    !
    IF  abs(Station{nStation}.xOffset) > 10 THEN 
      IF rePos = FALSE AND abs(Station{nStation}.xOffset) < 50 then
          LoggProc "Offset",31,"hermeeting";
          rePos := TRUE;
          !
          rSetSationClamps nStation, \open;
          rGripper_Open;
          !
          wobj_Active:=WobjStation;
          trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjStation);
          !
          EOffsSet [trackshift,0,0,0,0,0];
          !
          MoveL reltool(pStation_x,-250,0,50),v4000,z50,tGripper\WObj:=wobj_Active;
          MoveL pStation_x, v4000, fine, tGripper\WObj:=wobj_Active;
          !
          rGripper_CheckPart TRUE;
          rGripper_close;
          MoveL reltool(pStation_x,-10,0,0),v100,fine,tGripper\WObj:=wobj_Active;
          MoveL reltool(pStation_x,-10,-Station{nStation}.xOffset,0),v100,fine,tGripper\WObj:=wobj_Active;
          rGripper_Open;
          !
          MoveL reltool(pStation_x,-100,-Station{nStation}.xOffset,0),v100,fine,tGripper\WObj:=wobj_Active;
          rGripper_CheckPart FALSE;
          rSetSationClamps nStation,\close;
          MoveL reltool(pStation_x,-250,0,0),v4000,z50,tGripper\WObj:=wobj_Active;
          GOTO lbl_measure;
      ELSE
         !ask part out 
         Station{nStation}.InDienst := FALSE;
         LoggProc "Offset",31,"hermeeting NOK OUT OF USE";
         WHILE TRUE DO 
          Stop;
         ENDWHILE 
      endif
    ENDIF
    !
ENDPROC

PROC rGetPartInStation(Num nStation, Wobjdata WobjStation)
    VAR num trackshift;
    !
    wobj_Active:=WobjStation;
    trackshift := nXdistanceBetweenWobj(wobj_BalkStation1,WobjStation);
    !
    EOffsSet [trackshift,0,0,0,0,0];
    !
    rGripper_Open;
    rSetSationClamps nStation, \open;
    MoveJ reltool(pStation_x,-250,0,0),v4000,z50,tGripper\WObj:=wobj_Active;
    MoveL pStation_x, v4000, fine, tGripper\WObj:=wobj_Active;
    !
    rGripper_CheckPart TRUE;
    rGripper_Close;
    rGripper_CheckPart TRUE, \Supervision;
    !
    MoveL reltool(pStation_x,-250,0,50),v4000,fine,tGripper\WObj:=wobj_Active;
    !
    rSetSationClamps nStation, \close, \nWaittime :=0;
    !
ENDPROC

  
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
      CheckInput di_Sensor1_Q1_In,1, \Skip, \CheckTimeOut:=3,"Grijper sensor fout di_Sensor1_Q1_In not 1 (controller balk positie!)";
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
      CheckInput di_Sensor2_Q1_In,1, \Skip, \CheckTimeOut:=3,"Grijper sensor fout di_Sensor2_Q1_In not 1 (controller balk positie!)";
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
      !
      Station{nStation}.xOffset := XoffsetAvg ;
      Station{nStation}.nOffset := XoffsetPos1;
      Station{nStation}.pOffset := XoffsetPos2;
      !
      sLog := "off:"+NumToStr(nStation,0)+" x=" +  numtostr(Station{nStation}.xOffset,2) + " n=" + numtostr(Station{nStation}.nOffset,2)  
      + " p=" + numtostr(Station{nStation}.pOffset,2)  + " P1=" + numtostr(TriggPos1.trans.x,2) + " P2=" + numtostr(TriggPos2.trans.x,2);
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

  !===============================================================================================================
  !sensor calibratie. 
  !===============================================================================================================
    
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
    Stop; 
    RETURN;
    Stop;
    !
    rTestOffsets;
    !
ENDPROC

PROC rTestOffsets()
    !
    VAR wobjdata wobjTemp; 
    VAR num nStationTemp := 2;
    wobjTemp :=  wobj_BalkStation2;
    !
    WHILE TRUE DO 
        rSetSationClamps nStationTemp, \open;
        Stop;
        rSetSationClamps nStationTemp, \close;
        Set_Gripper GrijperTool;
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=wobj_BalkStation1;
        MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=wobj_BalkStation1;
        MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=wobj_BalkStation1;
        rMeasureStationOffset nStationTemp, wobjTemp;
        Stop;    
        rSationx_uitlijnen wobjTemp \UseStationOffsets:= nStationTemp; 
    ENDWHILE
    !
ENDPROC 

!===============================================================================================================
!uitlijnen stations
!===============================================================================================================
  PROC rSationx_uitlijnen (wobjdata WobjActiveStation, \num UseStationOffsets ) 
        var num trackshift;
        !
        Set_Tool Krasnaald;
        !
        wobj_Active:=WobjActiveStation;
        IF Present(UseStationOffsets) THEN 
          wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(UseStationOffsets);
        ENDIF
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
        !set offset to positieve 
        IF Present(UseStationOffsets) THEN 
          wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(UseStationOffsets\Positive );
        ENDIF
        rUitlijnen_Stationx 1220,27.5,0,trackshift,pGat11_330;      
         !set offset to negative  
         IF Present(UseStationOffsets) THEN 
          wobj_Active.uframe.trans.x :=  WobjActiveStation.uframe.trans.x-nStationOffset(UseStationOffsets\Negeative);
        ENDIF
        rUitlijnen_Stationx -1220,27.5,0,trackshift,pGat11_330;
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
  
    
PROC Station_1_In(\switch Safecheck)
! Inleggen dwarsbalk in mal pos 1
    Shift_Track:=0;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    !
    rPutPartInStation 1, wobj_BalkStation1;
    !
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station1;
    !  
ENDPROC

PROC Station_2_In(\switch Safecheck)
    ! Inleggen dwarsbalk in mal pos 
    Shift_Track:=3000;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    !
    rPutPartInStation 2, wobj_BalkStation2;
    !
    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station2;
    ! 
ENDPROC

PROC Station_3_In(\switch Safecheck)
! Inleggen dwarsbalk in mal pos 3
    Shift_Track:=5950;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    !
   rPutPartInStation 3, wobj_BalkStation3;
    !
    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station3;
    !
ENDPROC

PROC Station_4_In(\switch Safecheck)
! Inleggen dwarsbalk in mal pos 4
    Shift_Track:=8993;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    !
    rPutPartInStation 4, wobj_BalkStation4; 
    !
    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station4;
    !
ENDPROC

PROC Station_5_In(\switch Safecheck)
! Inleggen dwarsbalk in mal pos 5
    Shift_Track:=11990;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveJ [[574.72,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00667572,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1561.14,-1046.04,1111.32],[0.164584,-0.688201,0.687891,0.161549],[0,-1,-2,0],[425.016,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    !
    rPutPartInStation 5, wobj_BalkStation5;
    !
    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station5;
    ! 
ENDPROC

PROC Station_1_Uit()
! Uithalen dwarsbalk in mal pos 1
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=0;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station1;
    !
    rGetPartInStation 1,wobj_BalkStation1;
    !
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z200, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z200, tGripper\WObj:=Wobj_Station1;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station1;
    ! 
ENDPROC

PROC Station_2_Uit()
! Uithalen dwarsbalk in mal pos 2
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=3000;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station2;
    !
     rGetPartInStation 2,wobj_BalkStation2;  
    !
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station2;
    ! 
ENDPROC

PROC Station_3_Uit()
! Uithalen dwarsbalk in mal pos 3
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=6150;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station3;
    !
    rGetPartInStation 3,wobj_BalkStation3;
    !
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[170,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station3;
    !   
ENDPROC

PROC Station_4_Uit()
! Uithalen dwarsbalk in mal pos 4
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=8993;
    EOffsSet [Shift_Track,0,0,0,0,0];
    !
    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station4;
    !
    rGetPartInStation 4,wobj_BalkStation4;
    !
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station4;
    !
ENDPROC

PROC Station_5_Uit()
! Uithalen dwarsbalk in mal pos 5
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=11990;
    EOffsSet [Shift_Track,0,0,0,0,0];
    ! 
    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v4000, z50, tGripper\WObj:=Wobj_Station5;
    !
    rGetPartInStation 5,wobj_BalkStation5;
    !
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v4000, z50, tGripper\WObj:=Wobj_Station5;
    ! 
ENDPROC

ENDMODULE