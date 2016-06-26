MODULE mStation

    
    TASK PERS wobjdata Wobj_Station1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station2:=[FALSE,TRUE,"",[[2975,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station3:=[FALSE,TRUE,"",[[5995,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station4:=[FALSE,TRUE,"",[[8992,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station5:=[FALSE,TRUE,"",[[11992.5,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    CONST robtarget pStation_1:=[[1938.3,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_2:=[[1963,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_3:=[[1941.8,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_4:=[[1944.3,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_5:=[[1944.8,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
    
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    LOCAL PERS Num Shift_x:=0;
    LOCAL PERS Num Shift_y:=0;
    LOCAL PERS Num Shift_z:=0;
    LOCAL PERS Num Shift_Track:=11990;
    
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    
PROC Station_1_In()

! Inleggen dwarsbalk in mal pos 1

    Shift_Track:=0;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station1;
      SetDO doKP_1_Ventiel,1;
    MoveL reltool(pStation_1,-250,0,50),v1000,z50,tGripper\WObj:=Wobj_Station1;
    MoveL pStation_1, v1000, fine, tGripper\WObj:=Wobj_Station1;
    !Stop;
      !  
      SetDO doKP_1_Ventiel,0;
      !
      WaitTime 5;
          rGripper_Open;
      !
      MoveL reltool(pStation_1,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station1;
      
ENDPROC

PROC Station_2_In()

    ! Inleggen dwarsbalk in mal pos 2

    Shift_Track:=3000;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
      SetDO doKP_2_Ventiel, 1;
    MoveL reltool(pStation_2,-250,0,50),v1000,z50,tGripper\WObj:=Wobj_Station2;
    MoveL pStation_2, v1000, fine, tGripper\WObj:=Wobj_Station2;
    !Stop;
      !  
      SetDO doKP_2_Ventiel, 0;
      !
      WaitTime 5;
          rGripper_Open;
      !
    MoveL reltool(pStation_2,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station2;
    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station2;
      

      
ENDPROC

PROC Station_3_In()

! Inleggen dwarsbalk in mal pos 3

    Shift_Track:=5950;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
      SetDO doKP_3_Ventiel, 1;
    MoveL reltool(pStation_3,-250,0,50),v1000,z50,tGripper\WObj:=Wobj_Station3;
    MoveL pStation_3, v1000, fine, tGripper\WObj:=Wobj_Station3;
      !  
      SetDO doKP_3_Ventiel, 0;
      !Stop;
      !
      WaitTime 5;
          rGripper_Open;
      !
    MoveL reltool(pStation_3,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station3;
    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station3;
      
      
ENDPROC

PROC Station_4_In()

! Inleggen dwarsbalk in mal pos 4

    Shift_Track:=8993;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1947.15,-1046.04,1111.32],[0.164581,-0.688201,0.687891,0.16155],[0,-1,-2,0],[425.015,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
      SetDO doKP_4_Ventiel, 1;
    MoveL reltool(pStation_4,-250,0,50),v1000,z50,tGripper\WObj:=Wobj_Station4;
    MoveL pStation_4, v1000, fine, tGripper\WObj:=Wobj_Station4;
      !  
      SetDO doKP_4_Ventiel, 0;
      !Stop;
      !
      WaitTime 5;
          rGripper_Open;
      !
    MoveL reltool(pStation_4,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station4;
    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station4;
      

ENDPROC

PROC Station_5_In()

! Inleggen dwarsbalk in mal pos 5

    Shift_Track:=11990;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveJ [[574.72,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00667572,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1561.14,-1046.04,1111.32],[0.164584,-0.688201,0.687891,0.161549],[0,-1,-2,0],[425.016,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
      SetDO doKP_5_Ventiel, 1;
    MoveL reltool(pStation_5,-250,0,50),v1000,z50,tGripper\WObj:=Wobj_Station5;
    MoveL pStation_5, v1000, fine, tGripper\WObj:=Wobj_Station5;
      !  
      SetDO doKP_5_Ventiel, 0;
      !
      WaitTime 5;
          rGripper_Open;
      !
    MoveL reltool(pStation_5,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station5;
    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station5;
      
      
ENDPROC

PROC Station_1_Uit()

! Uithalen dwarsbalk in mal pos 1
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=0;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station1;
      SetDO doKP_1_Ventiel,1;
          rGripper_Open;
    MoveJ reltool(pStation_1,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station1;
    MoveL pStation_1, v1000, fine, tGripper\WObj:=Wobj_Station1;
      !  
          rGripper_Close;
      !
    MoveL reltool(pStation_1,-250,0,50),v1000,fine,tGripper\WObj:=Wobj_Station1;
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Station1;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Station1;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station1;
      
ENDPROC

PROC Station_2_Uit()
    
! Uithalen dwarsbalk in mal pos 2
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=3000;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station2;
      SetDO doKP_2_Ventiel,1;
          rGripper_Open;
    MoveJ reltool(pStation_2,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station2;
    MoveL pStation_2, v1000, fine, tGripper\WObj:=Wobj_Station2;
      !  
          rGripper_Close;
      !
    MoveL reltool(pStation_2,-250,0,50),v1000,fine,tGripper\WObj:=Wobj_Station2;
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station2;
      

      
ENDPROC

PROC Station_3_Uit()

! Uithalen dwarsbalk in mal pos 3
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=6150;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station3;
      SetDO doKP_3_Ventiel,1;
          rGripper_Open;
    MoveJ reltool(pStation_3,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station3;
    MoveL pStation_3, v1000, fine, tGripper\WObj:=Wobj_Station3;
      !  
          rGripper_Close;
      !
    MoveL reltool(pStation_3,-250,0,50),v1000,fine,tGripper\WObj:=Wobj_Station3;
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[170,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station3;
      
      
ENDPROC

PROC Station_4_Uit()

! Uithalen dwarsbalk in mal pos 4
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=8993;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station4;
      SetDO doKP_4_Ventiel,1;
          rGripper_Open;
    MoveJ reltool(pStation_4,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station4;
    MoveL pStation_4, v1000, fine, tGripper\WObj:=Wobj_Station4;
      !  
          rGripper_Close;
      !
    MoveL reltool(pStation_4,-250,0,50),v1000,fine,tGripper\WObj:=Wobj_Station4;
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station4;
      

ENDPROC

PROC Station_5_Uit()

! Uithalen dwarsbalk in mal pos 5
    Set_Gripper(GrijperTool);
    !
    Shift_Track:=11990;
    
    EOffsSet [Shift_Track,0,0,0,0,0];

    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Station5;
      SetDO doKP_5_Ventiel,1;
          rGripper_Open;
    MoveJ reltool(pStation_5,-250,0,0),v1000,z50,tGripper\WObj:=Wobj_Station5;
    MoveL pStation_5, v1000, fine, tGripper\WObj:=Wobj_Station5;
      !  
          rGripper_Close;
      !
    MoveL reltool(pStation_5,-250,0,50),v1000,fine,tGripper\WObj:=Wobj_Station5;
    MoveL [[1947.16,-1046.04,1111.32],[0.161998,-0.688802,0.688503,0.15897],[0,-1,-2,0],[164.998,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[1041.14,-1141.82,1905.77],[0.00246873,-0.706909,0.7073,-0.000500827],[0,-1,-2,0],[0.00013392,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457527,-0.512372,0.496563],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Station5;
      
      
ENDPROC


ENDMODULE