MODULE WOBJ

  !
  PERS Wobjdata WobjTeach:=[FALSE,TRUE,"",[[1012.84,-362.32,268.26],[0.431103,-0.431543,-0.560733,-0.55991]],[[0,0,0],[1,0,0,0]]];
  !PERS Wobjdata Wobj1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[500,-1400,300],[0.707107,0,-0.707107,0]]];
  !PERS Wobjdata Wobj1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[500,-1400,300],[1,0,0,-3.70344E-05]]];
  PERS wobjdata Wobj1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[14000,-1400,300],[3.70344E-05,0,0,-1]]];
 
  !
  PROC rTeachWobjSTN1()
    VAR num TPanswer;

    CONST robtarget pX1:=[[14000,-1400,300],[1,0,0,0],[1,0,0,0],[14000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pX2:=[[500,-1401,300],[1,0,0,0],[1,0,0,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pY1:=[[14000,-2000,300],[1,0,0,0],[1,0,0,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint:=[[0,0,0,0,10,0],[1000,9E+09,9E+09,9E+09,9E+09,9E+09]];
    !
    VAR pose peFoundFrame;
    VAR pose peCalcFrame;
  
    wobjTeach.robhold:=FALSE;
    wobjTeach.ufprog:=TRUE;
    wobjTeach.ufmec:="";
    !wobjTeach.uframe:=1,0,0,0;
    wobjTeach.oframe:=[[0,0,0],[1,0,0,0]];
    !
    !
    MoveAbsJ pHomeJoint, v1000, fine, tool0;
    !
    Stop;
    MoveJ pX1,v1000,fine,tool0\WObj:=wobjTeach;
    Stop;
    MoveJ pX2,v1000,fine,tool0\WObj:=wobjTeach;
    Stop;
    MoveJ pY1,v1000,fine,tool0\WObj:=wobjTeach;
    Stop;
    !
    peFoundFrame:=DefFrame(pX1,pX2,pY1\Origin:=3);
    peCalcFrame:=peFoundFrame;
    peCalcFrame.rot:=peFoundFrame.rot*OrientZYX(0,0,0);
    !
    Wobj1.robhold:=FALSE;
    Wobj1.ufprog:=TRUE;
    Wobj1.ufmec:="";
    Wobj1.oframe:=peCalcFrame;
    Wobj1.uframe:=[[0,0,0],[1,0,0,0]];
    !  
    !
    !END
  ENDPROC

ENDMODULE