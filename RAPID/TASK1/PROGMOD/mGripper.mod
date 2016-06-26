MODULE mGripper
!Module voor inleggen en uithalen van dwarsliggers
!9-5-2016
!G.Peters

  !Tooldata
	PERS tooldata tGripper:=[TRUE,[[0,220.75,942],[0.5,0.5,-0.5,0.5]],[100,[0,175,400],[1,0,0,0],0,0,0]];

  !Wobjdata
	TASK PERS wobjdata Wobj_Buffer1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer2:=[FALSE,TRUE,"",[[2895,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer3:=[FALSE,TRUE,"",[[5800,0,15],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer4:=[FALSE,TRUE,"",[[8700,0,15],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer5:=[FALSE,TRUE,"",[[11604,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer6:=[FALSE,TRUE,"",[[14500,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_1:=[FALSE,TRUE,"",[[965,1086,310],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_2:=[FALSE,TRUE,"",[[3860,1086,310],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_3:=[FALSE,TRUE,"",[[6765,1086,321],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_4:=[FALSE,TRUE,"",[[9665,1086,321],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_5:=[FALSE,TRUE,"",[[12569,1086,317],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_6:=[FALSE,TRUE,"",[[15465,1086,310],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_1:=[FALSE,TRUE,"",[[965,1096,1400],[1,0,0,0]],[[0,370,100],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_2:=[FALSE,TRUE,"",[[3860,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_3:=[FALSE,TRUE,"",[[6765,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_4:=[FALSE,TRUE,"",[[9665,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_5:=[FALSE,TRUE,"",[[12569,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_6:=[FALSE,TRUE,"",[[15465,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station2:=[FALSE,TRUE,"",[[2975,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station3:=[FALSE,TRUE,"",[[5995,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station4:=[FALSE,TRUE,"",[[8992,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Station5:=[FALSE,TRUE,"",[[11992.5,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

  
  !Robtargets  
	CONST robtarget pBuffer_Onder_1:=[[30.3,0,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Onder_2:=[[31.8,-6.51,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Onder_3:=[[33.5,-6.51,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Onder_4:=[[32.3,-6.51,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Onder_5:=[[33.6,-6.51,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Onder_6:=[[34.6,-6.51,2.69],[0.706828,-0.00208267,0.00740312,0.707344],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_1:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_2:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_3:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_4:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_5:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pBuffer_Boven_6:=[[29.32,-6.51,7.59],[0.709401,0.00311641,0.000945133,0.704797],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_1:=[[1938.3,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_2:=[[1963,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_3:=[[1941.8,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_4:=[[1944.3,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	CONST robtarget pStation_5:=[[1944.8,-1098.56,517.6],[0.502707,-0.498405,0.501191,0.497681],[-1,0,-3,0],[800,9E+09,9E+09,9E+09,9E+09,9E+09]];
	
  !Jointtargets
    CONST jointtarget pHomeJoint_Bu_1:=[[0,-20,0,-180,-20,-90],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_2:=[[0,-20,0,0,0,0],[2895,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_3:=[[0,-20,0,0,0,0],[5950,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_4:=[[0,-20,0,0,0,0],[8700,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_5:=[[0,-20,0,0,0,0],[11604,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_6:=[[0,-20,0,0,0,0],[14500,9E+09,9E+09,9E+09,9E+09,9E+09]];
  
  
  !Speedata
  
  !Numdata
    PERS num TrackPos;
    LOCAL PERS Num Shift_x:=0;
    LOCAL PERS Num Shift_y:=0;
    LOCAL PERS Num Shift_z:=0;
    LOCAL PERS Num Shift_Track:=5600;
    PERS Num Shift_x_Buffer1_O;
    PERS Num Shift_y_Buffer1_O;
    PERS Num Shift_z_Buffer1_O;
    PERS Num Shift_x_Buffer1_B;
    PERS Num Shift_y_Buffer1_B;
    PERS Num Shift_z_Buffer1_B;
    PERS Num Shift_x_Buffer2_O;
    PERS Num Shift_y_Buffer2_O;
    PERS Num Shift_z_Buffer2_O;
    PERS Num Shift_x_Buffer2_B;
    PERS Num Shift_y_Buffer2_B;
    PERS Num Shift_z_Buffer2_B;
    PERS Num Shift_x_Buffer3_O;
    PERS Num Shift_y_Buffer3_O;
    PERS Num Shift_z_Buffer3_O;
    PERS Num Shift_x_Buffer3_B;
    PERS Num Shift_y_Buffer3_B;
    PERS Num Shift_z_Buffer3_B;
    PERS Num Shift_x_Buffer4_O;
    PERS Num Shift_y_Buffer4_O;
    PERS Num Shift_z_Buffer4_O;
    PERS Num Shift_x_Buffer4_B;
    PERS Num Shift_y_Buffer4_B;
    PERS Num Shift_z_Buffer4_B;
    PERS Num Shift_x_Buffer5_O;
    PERS Num Shift_y_Buffer5_O;
    PERS Num Shift_z_Buffer5_O;
    PERS Num Shift_x_Buffer5_B;
    PERS Num Shift_y_Buffer5_B;
    PERS Num Shift_z_Buffer5_B;
    PERS Num Shift_x_Buffer6_O;
    PERS Num Shift_y_Buffer6_O;
    PERS Num Shift_z_Buffer6_O;
    PERS Num Shift_x_Buffer6_B;
    PERS Num Shift_y_Buffer6_B;
    PERS Num Shift_z_Buffer6_B;
    PERS Num nAantal_Balk1_Uit;
    PERS Num nAantal_Balk2_Uit;
    PERS Num nAantal_Balk3_Uit;
    PERS Num nAantal_Balk4_Uit;
    PERS Num nAantal_Balk5_Uit;
    PERS Num nAantal_Balk6_Uit;
    PERS Num nAantal_Balk1_In;
    PERS Num nAantal_Balk2_In;
    PERS Num nAantal_Balk3_In;
    PERS Num nAantal_Balk4_In;
    PERS Num nAantal_Balk5_In;
    PERS Num nAantal_Balk6_In;
    PERS Num nAantal_Laag1_In:=2;
    PERS Num nAantal_Laag2_In:=1;
    PERS Num nAantal_Laag3_In:=0;
    PERS Num nAantal_Laag4_In:=0;
    PERS Num nAantal_Laag5_In:=0;
    PERS Num nAantal_Laag6_In:=0;
    PERS Num nAantal_Laag1_Uit:=3;
    PERS Num nAantal_Laag2_Uit:=5;
    PERS Num nAantal_Laag3_Uit:=5;
    PERS Num nAantal_Laag4_Uit:=5;
    PERS Num nAantal_Laag5_Uit:=5;
    PERS Num nAantal_Laag6_Uit:=5;
    PERS num nBuffernummer:=1;
    
  !Boolians
    PERS bool bBalk_Gevonden:=TRUE;
    PERS bool bOpnieuw:=FALSE;

  !Stringdata
    PERS string strActive_Buffer:="Buffer1";
    CONST string Buttons_1a{5}:=["Buffer1","Buffer2","Buffer3","MEER",""];
    CONST string Buttons_1b{5}:=["Buffer4","Buffer5","Buffer6","",""];
    CONST string Buttons_2{5}:=["JA","","","","Nee"];
    CONST string Buttons_3{5}:=["ONDER","","","","BOVEN"];
    CONST string Buttons_5a{5}:=["Buffer1","Buffer2","Buffer3","MEER",""];
    CONST string Buttons_5b{5}:=["Buffer4","Buffer5","Buffer6","",""];
    VAR string Message{5}:= ["","","","",""];

  !Variabelen
    VAR btnres Answer;


    PROC RESET_Buffer()
        Answer:= UIMessageBox (\Header:= "Buffer Resetten?"
            \Message:="Welke buffer ?" 
            \BtnArray:=Buttons_3
            \Icon:=iconInfo);
            
        TEST Answer
            CASE 1:
                
                Answer:= UIMessageBox (\Header:= "Buffer Resetten?"
                \Message:="Welk buffer nummer?" 
                \BtnArray:=Buttons_1a
                \Icon:=iconInfo);

                TEST Answer
                    CASE 1:
                        nAantal_Laag1_Uit:=5;
                        nAantal_Balk1_Uit:=0;
                    CASE 2:
                        nAantal_Laag2_Uit:=5;
                        nAantal_Balk2_Uit:=0;
                    CASE 3:
                        nAantal_Laag3_Uit:=5;
                        nAantal_Balk3_Uit:=0;
                    CASE 4:
                        Answer:= UIMessageBox (\Header:= "?"
                        \Message:="Welke buffer ?" 
                        \BtnArray:=Buttons_1b
                        \Icon:=iconInfo);
            
                        TEST Answer
                            CASE 1:
                                nAantal_Laag4_Uit:=5;
                                nAantal_Balk4_Uit:=0;
                            CASE 2:
                                nAantal_Laag5_Uit:=5;
                                nAantal_Balk5_Uit:=0;
                            CASE 3:
                                nAantal_Laag6_Uit:=5;
                                nAantal_Balk6_Uit:=0;
                            
                            DEFAULT:
                        ENDTEST
                ENDTEST

            CASE 5:
                
                Answer:= UIMessageBox (\Header:= "Buffer Resetten?"
                \Message:="Welk buffer nummer?" 
                \BtnArray:=Buttons_5a
                \Icon:=iconInfo);

                TEST Answer
                    CASE 1:
                        nAantal_Laag1_In:=1;
                        nAantal_Balk1_In:=0;
                    CASE 2:
                        nAantal_Laag2_In:=1;
                        nAantal_Balk2_In:=0;
                    CASE 3:
                        nAantal_Laag3_In:=1;
                        nAantal_Balk3_In:=0;
                    CASE 4:
                        Answer:= UIMessageBox (\Header:= "?"
                        \Message:="Welke buffer ?" 
                        \BtnArray:=Buttons_5b
                        \Icon:=iconInfo);
            
                        TEST Answer
                            CASE 1:
                                nAantal_Laag4_In:=1;
                                nAantal_Balk4_In:=0;
                            CASE 2:
                                nAantal_Laag5_In:=1;
                                nAantal_Balk5_In:=0;
                            CASE 3:
                                nAantal_Laag6_In:=1;
                                nAantal_Balk6_In:=0;
                            
                            DEFAULT:
                ENDTEST
            ENDTEST
        ENDTEST
    
    ENDPROC

    PROC Lege_Buffer()

        Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Welke Buffer nu gebruiken ?" 
            \BtnArray:=Buttons_1a
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Buffer_1_Uit;
            CASE 2:
                Buffer_2_Uit;
            CASE 3:
                Buffer_3_Uit;
            CASE 4:
                !
        Answer:= UIMessageBox (\Header:= "?"
            \Message:="Welke Buffer nu gebruiken ?" 
            \BtnArray:=Buttons_1b
            \Icon:=iconInfo);
        TEST Answer
            CASE 1:
                Buffer_4_Uit;
            CASE 2:
                Buffer_5_Uit;
            CASE 3:
                Buffer_6_Uit;
            DEFAULT:
                EXIT;
         ENDTEST
        ENDTEST

    ENDPROC

    PROC Volle_Buffer()

        Answer:= UIMessageBox (\Header:= "Pallet vol?"
            \Message:="Welke Buffer nu gebruiken ?" 
            \BtnArray:=Buttons_1a
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Buffer_1_In;
            CASE 2:
                Buffer_2_In;
            CASE 3:
                Buffer_3_In;
            CASE 4:
                !
        Answer:= UIMessageBox (\Header:= "?"
            \Message:="Welke Buffer nu gebruiken ?" 
            \BtnArray:=Buttons_1b
            \Icon:=iconInfo);
        TEST Answer
            CASE 1:
                Buffer_4_In;
            CASE 2:
                Buffer_5_In;
            CASE 3:
                Buffer_6_In;
            DEFAULT:
                EXIT;
         ENDTEST
        ENDTEST

    ENDPROC



PROC Buffer_1_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=1;
    bOpnieuw:=FALSE;
    !
    IF nAantal_Balk1_Uit >= 8 OR nAantal_Balk1_Uit < 0 
    THEN nAantal_Balk1_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk1_Uit
        CASE 0:
            Shift_x_Buffer1_O:=0;
            Shift_y_Buffer1_O:=0;
            Shift_z_Buffer1_O:=0;

        CASE 1:
            Shift_y_Buffer1_O:=90;

        CASE 2:
            Shift_y_Buffer1_O:=180;

        CASE 3:
            Shift_y_Buffer1_O:=270;

        CASE 4:
            Shift_y_Buffer1_O:=357;

        CASE 5:
            Shift_y_Buffer1_O:=443;

        CASE 6:
            Shift_y_Buffer1_O:=529;

        CASE 7:
            Shift_y_Buffer1_O:=615;

    ENDTEST
    
    TEST nAantal_Laag1_Uit

        CASE 1:
            Shift_z_Buffer1_O:=0;

        CASE 2:
            Shift_z_Buffer1_O:=100;

        CASE 3:
            Shift_z_Buffer1_O:=200;

        CASE 4:
            Shift_z_Buffer1_O:=300;

        CASE 5:
            Shift_z_Buffer1_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
        ENDTEST        
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_1.oframe.trans:=[Shift_x_Buffer1_O,Shift_y_Buffer1_O,Shift_z_Buffer1_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1259.62,809.87,853.54],[0.799965,-0.215234,0.1609,0.536508],[0,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL Offs(pBuffer_Onder_1,0,-75,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        MoveL pBuffer_Onder_1, v100, fine, tGripper\WObj:=Wobj_Buffer_Onder_1;
        WaitTime 0.5;

          rBalk_Uit;
            IF bOpnieuw=TRUE THEN 
                GOTO START;
            ENDIF
          rGripper_Close;
        MoveL Offs(pBuffer_Onder_1,10,0,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_1;
          rGripper_Open;
        MoveL pBuffer_Onder_1, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_1;
          rGripper_Close;
        MoveL Offs(pBuffer_Onder_1,-5,0,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        MoveL Offs(pBuffer_Onder_1,-5,-5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        !
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[973.50,866.47,863.12],[0.694052,-0.12894,0.133882,0.695515],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[1077.38,701.93,1307.07],[0.693619,-0.131098,0.136236,0.695087],[-1,-4,-2,0],[-0.00637549,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
        Incr nAantal_Balk1_Uit;
        !
    IF nAantal_Balk1_Uit = 8 THEN
        Decr nAantal_Laag1_Uit;
        !
    ENDIF
        
ENDPROC

PROC Buffer_2_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=2;
    bOpnieuw:=FALSE;
    !

    IF nAantal_Balk2_Uit >= 8 OR nAantal_Balk2_Uit < 0 
    THEN nAantal_Balk2_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk2_Uit
        CASE 0:
            Shift_x_Buffer2_O:=0;
            Shift_y_Buffer2_O:=0;
            Shift_z_Buffer2_O:=0;

        CASE 1:
            Shift_y_Buffer2_O:=90;

        CASE 2:
            Shift_y_Buffer2_O:=180;

        CASE 3:
            Shift_y_Buffer2_O:=270;

        CASE 4:
            Shift_y_Buffer2_O:=357;

        CASE 5:
            Shift_y_Buffer2_O:=443;

        CASE 6:
            Shift_y_Buffer2_O:=529;

        CASE 7:
            Shift_y_Buffer2_O:=615;

    ENDTEST
    
    TEST nAantal_Laag2_Uit

        CASE 1:
            Shift_z_Buffer2_O:=0;

        CASE 2:
            Shift_z_Buffer2_O:=100;

        CASE 3:
            Shift_z_Buffer2_O:=200;

        CASE 4:
            Shift_z_Buffer2_O:=300;

        CASE 5:
            Shift_z_Buffer2_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
        ENDTEST    
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_2.oframe.trans:=[Shift_x_Buffer2_O,Shift_y_Buffer2_O,Shift_z_Buffer2_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_2,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
        MoveL pBuffer_Onder_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_2;
          rBalk_Uit;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_2,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_2;
          rGripper_Open;
        MoveL pBuffer_Onder_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_2;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_2,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
        MoveL reltool(pBuffer_Onder_2,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
        Incr nAantal_Balk2_Uit;
    IF nAantal_Balk2_Uit = 8 THEN
        Decr nAantal_Laag2_Uit;
    ENDIF    
        
ENDPROC

PROC Buffer_3_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=3;
    bOpnieuw:=FALSE;
    !
    IF nAantal_Balk3_Uit >= 8 OR nAantal_Balk3_Uit < 0 
    THEN nAantal_Balk3_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk3_Uit
        CASE 0:
            Shift_x_Buffer3_O:=0;
            Shift_y_Buffer3_O:=0;
            Shift_z_Buffer3_O:=0;

        CASE 1:
            Shift_y_Buffer3_O:=90;

        CASE 2:
            Shift_y_Buffer3_O:=180;

        CASE 3:
            Shift_y_Buffer3_O:=270;

        CASE 4:
            Shift_y_Buffer3_O:=357;

        CASE 5:
            Shift_y_Buffer3_O:=443;

        CASE 6:
            Shift_y_Buffer3_O:=529;

        CASE 7:
            Shift_y_Buffer3_O:=615;

    ENDTEST
    
    TEST nAantal_Laag3_Uit

        CASE 1:
            Shift_z_Buffer3_O:=0;

        CASE 2:
            Shift_z_Buffer3_O:=100;

        CASE 3:
            Shift_z_Buffer3_O:=200;

        CASE 4:
            Shift_z_Buffer3_O:=300;

        CASE 5:
            Shift_z_Buffer3_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
        ENDTEST        
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5800;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_3.oframe.trans:=[Shift_x_Buffer3_O,Shift_y_Buffer3_O,Shift_z_Buffer3_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_3,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
        MoveL pBuffer_Onder_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_3;
          rBalk_Uit;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_3,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_3;
          rGripper_Open;
        MoveL pBuffer_Onder_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_3;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_3,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
        MoveL reltool(pBuffer_Onder_3,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !
        Incr nAantal_Balk3_Uit;
    IF nAantal_Balk3_Uit = 8 THEN
        Decr nAantal_Laag3_Uit;
    ENDIF    
        
ENDPROC
    
PROC Buffer_4_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=4;
    bOpnieuw:=FALSE;
    !
    IF nAantal_Balk4_Uit >= 8 OR nAantal_Balk4_Uit < 0 
    THEN nAantal_Balk4_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk4_Uit
        CASE 0:
            Shift_x_Buffer4_O:=0;
            Shift_y_Buffer4_O:=0;
            Shift_z_Buffer4_O:=0;

        CASE 1:
            Shift_y_Buffer4_O:=90;

        CASE 2:
            Shift_y_Buffer4_O:=180;

        CASE 3:
            Shift_y_Buffer4_O:=270;

        CASE 4:
            Shift_y_Buffer4_O:=357;

        CASE 5:
            Shift_y_Buffer4_O:=443;

        CASE 6:
            Shift_y_Buffer4_O:=529;

        CASE 7:
            Shift_y_Buffer4_O:=615;

    ENDTEST
    
    TEST nAantal_Laag4_Uit

        CASE 1:
            Shift_z_Buffer4_O:=0;

        CASE 2:
            Shift_z_Buffer4_O:=100;

        CASE 3:
            Shift_z_Buffer4_O:=200;

        CASE 4:
            Shift_z_Buffer4_O:=300;

        CASE 5:
            Shift_z_Buffer4_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
        ENDTEST        
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_4.oframe.trans:=[Shift_x_Buffer4_O,Shift_y_Buffer4_O,Shift_z_Buffer4_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_4,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
        MoveL pBuffer_Onder_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_4;
          rBalk_Uit;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_4,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_4;
          rGripper_Open;
        MoveL pBuffer_Onder_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_4;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_4,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
        MoveL reltool(pBuffer_Onder_4,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
        Incr nAantal_Balk4_Uit;
    IF nAantal_Balk4_Uit = 8 THEN
        Decr nAantal_Laag4_Uit;
    ENDIF    
        
ENDPROC

PROC Buffer_5_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=5;
    bOpnieuw:=FALSE;
    !
    IF nAantal_Balk5_Uit >= 8 OR nAantal_Balk5_Uit < 0 
    THEN nAantal_Balk5_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk5_Uit
        CASE 0:
            Shift_x_Buffer5_O:=0;
            Shift_y_Buffer5_O:=0;
            Shift_z_Buffer5_O:=0;

        CASE 1:
            Shift_y_Buffer5_O:=90;

        CASE 2:
            Shift_y_Buffer5_O:=180;

        CASE 3:
            Shift_y_Buffer5_O:=270;

        CASE 4:
            Shift_y_Buffer5_O:=357;

        CASE 5:
            Shift_y_Buffer5_O:=443;

        CASE 6:
            Shift_y_Buffer5_O:=529;

        CASE 7:
            Shift_y_Buffer5_O:=615;

    ENDTEST
    
    TEST nAantal_Laag5_Uit

        CASE 1:
            Shift_z_Buffer5_O:=0;

        CASE 2:
            Shift_z_Buffer5_O:=100;

        CASE 3:
            Shift_z_Buffer5_O:=200;

        CASE 4:
            Shift_z_Buffer5_O:=300;

        CASE 5:
            Shift_z_Buffer5_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
        ENDTEST        
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_5.oframe.trans:=[Shift_x_Buffer5_O,Shift_y_Buffer5_O,Shift_z_Buffer5_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_5,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
        MoveL pBuffer_Onder_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_5;
          rBalk_Uit;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_5,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_5;
          rGripper_Open;
        MoveL pBuffer_Onder_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_5;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_5,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
        MoveL reltool(pBuffer_Onder_5,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
        Incr nAantal_Balk5_Uit;
    IF nAantal_Balk5_Uit = 8 THEN
        Decr nAantal_Laag5_Uit;
    ENDIF    
        
ENDPROC

PROC Buffer_6_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    nBuffernummer:=6;
    bOpnieuw:=FALSE;
    !
    IF nAantal_Balk6_Uit >= 8 OR nAantal_Balk6_Uit < 0 
    THEN nAantal_Balk6_Uit:= 0;
    ENDIF
    !   
    TEST nAantal_Balk6_Uit
        CASE 0:
            Shift_x_Buffer6_O:=0;
            Shift_y_Buffer6_O:=0;
            Shift_z_Buffer6_O:=0;

        CASE 1:
            Shift_y_Buffer6_O:=90;

        CASE 2:
            Shift_y_Buffer6_O:=180;

        CASE 3:
            Shift_y_Buffer6_O:=270;

        CASE 4:
            Shift_y_Buffer6_O:=357;

        CASE 5:
            Shift_y_Buffer6_O:=443;

        CASE 6:
            Shift_y_Buffer6_O:=529;

        CASE 7:
            Shift_y_Buffer6_O:=615;

    ENDTEST
    
    TEST nAantal_Laag6_Uit

        CASE 1:
            Shift_z_Buffer6_O:=0;

        CASE 2:
            Shift_z_Buffer6_O:=100;

        CASE 3:
            Shift_z_Buffer6_O:=200;

        CASE 4:
            Shift_z_Buffer6_O:=300;

        CASE 5:
            Shift_z_Buffer6_O:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet leeg", "Plaats een volle pallet";
            Answer:= UIMessageBox (\Header:= "Pallet leeg?"
            \Message:="Druk op 'JA' om verder te gaan, druk op 'NEE' om de robot te resetten." 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        TEST Answer
            CASE 1:
                Lege_Buffer;
            CASE 5:
                nAantal_Laag1_Uit:=5;
                nAantal_Balk1_Uit:=0;
                GOTO START;
                
        ENDTEST
    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_6.oframe.trans:=[Shift_x_Buffer6_O,Shift_y_Buffer6_O,Shift_z_Buffer6_O];

    IF bBalk_Gevonden=FALSE THEN
        GOTO OPNIEUW;
    ENDIF
    
    MoveAbsJ pHomeJoint_Bu_6\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_6,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
        MoveL pBuffer_Onder_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_6;
          rBalk_Uit;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_6,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_6;
          rGripper_Open;
        MoveL pBuffer_Onder_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_6;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_6,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
        MoveL reltool(pBuffer_Onder_6,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
        Incr nAantal_Balk6_Uit;
    IF nAantal_Balk6_Uit = 8 THEN
        Decr nAantal_Laag6_Uit;
    ENDIF    
        
ENDPROC

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PROC Buffer_1_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    START:
    rGet_Gripper;
    !
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_1.oframe.trans:=[Shift_x_Buffer1_O,Shift_y_Buffer1_O,Shift_z_Buffer1_O];

    
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1259.62,809.87,853.54],[0.799965,-0.215234,0.1609,0.536508],[0,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL Offs(pBuffer_Onder_1,0,-75,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        MoveL pBuffer_Onder_1, v100, fine, tGripper\WObj:=Wobj_Buffer_Onder_1;
        WaitTime 0.5;
          Stop;
          rGripper_Close;
        MoveL Offs(pBuffer_Onder_1,10,0,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_1;
          rGripper_Open;
        MoveL pBuffer_Onder_1, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_1;
          rGripper_Close;
        MoveL Offs(pBuffer_Onder_1,-5,0,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        MoveL Offs(pBuffer_Onder_1,-5,-5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
        !
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[973.50,866.47,863.12],[0.694052,-0.12894,0.133882,0.695515],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[1077.38,701.93,1307.07],[0.693619,-0.131098,0.136236,0.695087],[-1,-4,-2,0],[-0.00637549,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
ENDPROC

PROC Buffer_2_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    rGet_Gripper;
    !
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_2.oframe.trans:=[Shift_x_Buffer2_O,Shift_y_Buffer2_O,Shift_z_Buffer2_O];

    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_2,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
        MoveL pBuffer_Onder_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_2;
        Stop;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_2,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_2;
          rGripper_Open;
        MoveL pBuffer_Onder_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_2;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_2,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
        MoveL reltool(pBuffer_Onder_2,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_2;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
        
ENDPROC

PROC Buffer_3_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5600;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_3.oframe.trans:=[Shift_x_Buffer3_O,Shift_y_Buffer3_O,Shift_z_Buffer3_O];

    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_3,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
        MoveL pBuffer_Onder_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_3;
        Stop;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_3,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_3;
          rGripper_Open;
        MoveL pBuffer_Onder_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_3;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_3,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
        MoveL reltool(pBuffer_Onder_3,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_3;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !
ENDPROC
    
PROC Buffer_4_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_4.oframe.trans:=[Shift_x_Buffer4_O,Shift_y_Buffer4_O,Shift_z_Buffer4_O];

    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_4,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
        MoveL pBuffer_Onder_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_4;
        Stop;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_4,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_4;
          rGripper_Open;
        MoveL pBuffer_Onder_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_4;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_4,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
        MoveL reltool(pBuffer_Onder_4,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_4;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
ENDPROC

PROC Buffer_5_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_5.oframe.trans:=[Shift_x_Buffer5_O,Shift_y_Buffer5_O,Shift_z_Buffer5_O];

    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_5,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
        MoveL pBuffer_Onder_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_5;
        Stop;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_5,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_5;
          rGripper_Open;
        MoveL pBuffer_Onder_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_5;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_5,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
        MoveL reltool(pBuffer_Onder_5,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_5;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
ENDPROC

PROC Buffer_6_Uit_MAN()
    ! Uitnemen dwarsbalk uit onderste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Onder_6.oframe.trans:=[Shift_x_Buffer6_O,Shift_y_Buffer6_O,Shift_z_Buffer6_O];

    MoveAbsJ pHomeJoint_Bu_6\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
    OPNIEUW:
    rGripper_Open;
    !
        MoveL reltool(pBuffer_Onder_6,-75,0,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
        MoveL pBuffer_Onder_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_6;
        Stop;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_6,0,-10,0),v1000,fine,tGripper\WObj:=Wobj_Buffer_Onder_6;
          rGripper_Open;
        MoveL pBuffer_Onder_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Onder_6;
          rGripper_Close;
        MoveL reltool(pBuffer_Onder_6,0,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
        MoveL reltool(pBuffer_Onder_6,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_6;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
ENDPROC

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PROC Buffer_1_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk1_In >= 8 OR nAantal_Balk1_In < 0 
    THEN nAantal_Balk1_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk1_In
        CASE 0:
            Shift_x_Buffer1_B:=0;
            Shift_y_Buffer1_B:=602;
            Shift_z_Buffer1_B:=0;

        CASE 1:
            Shift_y_Buffer1_B:=516;

        CASE 2:
            Shift_y_Buffer1_B:=430;

        CASE 3:
            Shift_y_Buffer1_B:=370;

        CASE 4:
            Shift_y_Buffer1_B:=228;

        CASE 5:
            Shift_y_Buffer1_B:=172;

        CASE 6:
            Shift_y_Buffer1_B:=86;

        CASE 7:
            Shift_y_Buffer1_B:=0;

    ENDTEST
    
    TEST nAantal_Laag1_In

        CASE 1:
            Shift_z_Buffer1_B:=0;

        CASE 2:
            Shift_z_Buffer1_B:=100;

        CASE 3:
            Shift_z_Buffer1_B:=200;

        CASE 4:
            Shift_z_Buffer1_B:=300;

        CASE 5:
            Shift_z_Buffer1_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_1.oframe.trans:=[Shift_x_Buffer1_B,Shift_y_Buffer1_B,Shift_z_Buffer1_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    !
        MoveL offs(pBuffer_Boven_1,0,-15,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_1;
        MoveL pBuffer_Boven_1, v50, fine, tGripper\WObj:=Wobj_Buffer_Boven_1;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_1,0,-75,0), v50, fine, tGripper\WObj:=Wobj_Buffer_Boven_1;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;

    !
        Incr nAantal_Balk1_In;
    IF nAantal_Balk1_In = 8 THEN
        Incr nAantal_Laag1_In;
    ENDIF    
    
ENDPROC

PROC Buffer_2_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk2_In >= 8 OR nAantal_Balk2_In < 0 
    THEN nAantal_Balk2_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk2_In
        CASE 0:
            Shift_x_Buffer2_B:=0;
            Shift_y_Buffer2_B:=602;
            Shift_z_Buffer2_B:=0;

        CASE 1:
            Shift_y_Buffer2_B:=516;

        CASE 2:
            Shift_y_Buffer2_B:=430;

        CASE 3:
            Shift_y_Buffer2_B:=370;

        CASE 4:
            Shift_y_Buffer2_B:=228;

        CASE 5:
            Shift_y_Buffer2_B:=172;

        CASE 6:
            Shift_y_Buffer2_B:=86;

        CASE 7:
            Shift_y_Buffer2_B:=0;

    ENDTEST
    
    TEST nAantal_Laag2_In

        CASE 1:
            Shift_z_Buffer2_B:=0;

        CASE 2:
            Shift_z_Buffer2_B:=100;

        CASE 3:
            Shift_z_Buffer2_B:=200;

        CASE 4:
            Shift_z_Buffer2_B:=300;

        CASE 5:
            Shift_z_Buffer2_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_2.oframe.trans:=[Shift_x_Buffer2_B,Shift_y_Buffer2_B,Shift_z_Buffer2_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    !
        MoveL offs(pBuffer_Boven_1,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_2;
        MoveL pBuffer_Boven_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_2;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_1,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_2;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer2;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;

    !
        Incr nAantal_Balk2_In;
    IF nAantal_Balk2_In = 8 THEN
        Incr nAantal_Laag2_In;
    ENDIF    
    
    
ENDPROC

PROC Buffer_3_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk3_In >= 8 OR nAantal_Balk3_In < 0 
    THEN nAantal_Balk3_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk3_In
        CASE 0:
            Shift_x_Buffer3_B:=0;
            Shift_y_Buffer3_B:=602;
            Shift_z_Buffer3_B:=0;

        CASE 1:
            Shift_y_Buffer3_B:=516;

        CASE 2:
            Shift_y_Buffer3_B:=430;

        CASE 3:
            Shift_y_Buffer3_B:=370;

        CASE 4:
            Shift_y_Buffer3_B:=228;

        CASE 5:
            Shift_y_Buffer3_B:=172;

        CASE 6:
            Shift_y_Buffer3_B:=86;

        CASE 7:
            Shift_y_Buffer3_B:=0;

    ENDTEST
    
    TEST nAantal_Laag3_In

        CASE 1:
            Shift_z_Buffer3_B:=0;

        CASE 2:
            Shift_z_Buffer3_B:=100;

        CASE 3:
            Shift_z_Buffer3_B:=200;

        CASE 4:
            Shift_z_Buffer3_B:=300;

        CASE 5:
            Shift_z_Buffer3_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5800;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_3.oframe.trans:=[Shift_x_Buffer3_B,Shift_y_Buffer3_B,Shift_z_Buffer3_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    !
        MoveL offs(pBuffer_Boven_3,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_3;
        MoveL pBuffer_Boven_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_3;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_3,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_3;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer3;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;

    !
        Incr nAantal_Balk3_In;
    IF nAantal_Balk3_In = 8 THEN
        Incr nAantal_Laag3_In;
    ENDIF    
    
    
ENDPROC

PROC Buffer_4_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk4_In >= 8 OR nAantal_Balk4_In < 0 
    THEN nAantal_Balk4_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk4_In
        CASE 0:
            Shift_x_Buffer4_B:=0;
            Shift_y_Buffer4_B:=602;
            Shift_z_Buffer4_B:=0;

        CASE 1:
            Shift_y_Buffer4_B:=516;

        CASE 2:
            Shift_y_Buffer4_B:=430;

        CASE 3:
            Shift_y_Buffer4_B:=370;

        CASE 4:
            Shift_y_Buffer4_B:=228;

        CASE 5:
            Shift_y_Buffer4_B:=172;

        CASE 6:
            Shift_y_Buffer4_B:=86;

        CASE 7:
            Shift_y_Buffer4_B:=0;

    ENDTEST
    
    TEST nAantal_Laag4_In

        CASE 1:
            Shift_z_Buffer4_B:=0;

        CASE 2:
            Shift_z_Buffer4_B:=100;

        CASE 3:
            Shift_z_Buffer4_B:=200;

        CASE 4:
            Shift_z_Buffer4_B:=300;

        CASE 5:
            Shift_z_Buffer4_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_4.oframe.trans:=[Shift_x_Buffer4_B,Shift_y_Buffer4_B,Shift_z_Buffer4_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    !
        MoveL offs(pBuffer_Boven_4,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_4;
        MoveL pBuffer_Boven_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_4;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_4,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_4;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer4;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;

    !
        Incr nAantal_Balk4_In;
    IF nAantal_Balk4_In = 8 THEN
        Incr nAantal_Laag4_In;
    ENDIF    
    
    
ENDPROC

PROC Buffer_5_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk5_In >= 8 OR nAantal_Balk5_In < 0 
    THEN nAantal_Balk5_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk5_In
        CASE 0:
            Shift_x_Buffer5_B:=0;
            Shift_y_Buffer5_B:=602;
            Shift_z_Buffer5_B:=0;

        CASE 1:
            Shift_y_Buffer5_B:=516;

        CASE 2:
            Shift_y_Buffer5_B:=430;

        CASE 3:
            Shift_y_Buffer5_B:=370;

        CASE 4:
            Shift_y_Buffer5_B:=228;

        CASE 5:
            Shift_y_Buffer5_B:=172;

        CASE 6:
            Shift_y_Buffer5_B:=86;

        CASE 7:
            Shift_y_Buffer5_B:=0;

    ENDTEST
    
    TEST nAantal_Laag5_In

        CASE 1:
            Shift_z_Buffer5_B:=0;

        CASE 2:
            Shift_z_Buffer5_B:=100;

        CASE 3:
            Shift_z_Buffer5_B:=200;

        CASE 4:
            Shift_z_Buffer5_B:=300;

        CASE 5:
            Shift_z_Buffer5_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_5.oframe.trans:=[Shift_x_Buffer5_B,Shift_y_Buffer5_B,Shift_z_Buffer5_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    !
        MoveL offs(pBuffer_Boven_5,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_5;
        MoveL pBuffer_Boven_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_5;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_5,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_5;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer5;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;

    !
        Incr nAantal_Balk5_In;
    IF nAantal_Balk5_In = 8 THEN
        Incr nAantal_Laag5_In;
    ENDIF    
    

ENDPROC

PROC Buffer_6_In()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    IF nAantal_Balk6_In >= 8 OR nAantal_Balk6_In < 0 
    THEN nAantal_Balk6_In:= 0;
    ENDIF
    !   
    TEST nAantal_Balk6_In
        CASE 0:
            Shift_x_Buffer6_B:=0;
            Shift_y_Buffer6_B:=602;
            Shift_z_Buffer6_B:=0;

        CASE 1:
            Shift_y_Buffer6_B:=516;

        CASE 2:
            Shift_y_Buffer6_B:=430;

        CASE 3:
            Shift_y_Buffer6_B:=370;

        CASE 4:
            Shift_y_Buffer6_B:=228;

        CASE 5:
            Shift_y_Buffer6_B:=172;

        CASE 6:
            Shift_y_Buffer6_B:=86;

        CASE 7:
            Shift_y_Buffer6_B:=0;

    ENDTEST
    
    TEST nAantal_Laag6_In

        CASE 1:
            Shift_z_Buffer6_B:=0;

        CASE 2:
            Shift_z_Buffer6_B:=100;

        CASE 3:
            Shift_z_Buffer6_B:=200;

        CASE 4:
            Shift_z_Buffer6_B:=300;

        CASE 5:
            Shift_z_Buffer6_B:=400;

        DEFAULT:
       	    UIMsgBox\Header:="Pallet vol", "Plaats een lege pallet";
            Answer:= UIMessageBox (\Header:= "Buffer vol?"
            \Message:="Druk op'JA'om verder te gaan, druk op'NEE'om de robot te resetten " 
            \BtnArray:=Buttons_2
            \Icon:=iconInfo);

        FOUT:
        TEST Answer
            CASE 1:
                Volle_Buffer;
            CASE 5:
                nAantal_Laag2_In:=1;
                nAantal_Balk2_In:=0;
           	    UIMsgBox\Header:="Pallet niet vol?", "Plaats een toch een lege pallet";
                Answer:= UIMessageBox (\Header:= "CRASH gevaar!!! Lege pallet geplaatst?"
                \Message:="Druk op'JA'om verder te gaan of druk op'NEE'?" 
                \BtnArray:=Buttons_2
                \Icon:=iconInfo);
                GOTO FOUT;
        ENDTEST

    ENDTEST
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_6.oframe.trans:=[Shift_x_Buffer6_B,Shift_y_Buffer6_B,Shift_z_Buffer6_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    !
        MoveL offs(pBuffer_Boven_6,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_6;
        MoveL pBuffer_Boven_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_6;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_6,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_6;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;

    !
        Incr nAantal_Balk6_In;
    IF nAantal_Balk6_In = 8 THEN
        Incr nAantal_Laag6_In;
    ENDIF    
    
    
ENDPROC

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

PROC Buffer_1_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_1.oframe.trans:=[Shift_x_Buffer1_B,Shift_y_Buffer1_B,Shift_z_Buffer1_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    !
        MoveL offs(pBuffer_Boven_1,0,-15,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_1;
        MoveL pBuffer_Boven_1, v50, fine, tGripper\WObj:=Wobj_Buffer_Boven_1;
        Stop;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_1,0,-75,0), v50, fine, tGripper\WObj:=Wobj_Buffer_Boven_1;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;

    !
        Incr nAantal_Balk1_In;
    IF nAantal_Balk1_In = 8 THEN
        Incr nAantal_Laag1_In;
    ENDIF    
    
ENDPROC

PROC Buffer_2_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_2.oframe.trans:=[Shift_x_Buffer2_B,Shift_y_Buffer2_B,Shift_z_Buffer2_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    !
        MoveL offs(pBuffer_Boven_1,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_2;
        MoveL pBuffer_Boven_2, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_2;
        Stop;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_1,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_2;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer2;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;

    !
        Incr nAantal_Balk2_In;
    IF nAantal_Balk2_In = 8 THEN
        Incr nAantal_Laag2_In;
    ENDIF    
    
    
ENDPROC

PROC Buffer_3_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5800;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_3.oframe.trans:=[Shift_x_Buffer3_B,Shift_y_Buffer3_B,Shift_z_Buffer3_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    !
        MoveL offs(pBuffer_Boven_3,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_3;
        MoveL pBuffer_Boven_3, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_3;
        Stop;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_3,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_3;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer3;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;

    !
ENDPROC

PROC Buffer_4_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
    !
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_4.oframe.trans:=[Shift_x_Buffer4_B,Shift_y_Buffer4_B,Shift_z_Buffer4_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    !
        MoveL offs(pBuffer_Boven_4,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_4;
        MoveL pBuffer_Boven_4, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_4;
        Stop;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_4,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_4;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer4;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;

    !
ENDPROC

PROC Buffer_5_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_5.oframe.trans:=[Shift_x_Buffer5_B,Shift_y_Buffer5_B,Shift_z_Buffer5_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    !
        MoveL offs(pBuffer_Boven_5,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_5;
        MoveL pBuffer_Boven_5, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_5;
        Stop;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_5,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_5;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer5;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;

    !
ENDPROC

PROC Buffer_6_In_MAN()
    ! Inleggen dwarsbalk bovenste buffer
    rGet_Gripper;
!
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    Wobj_Buffer_Boven_6.oframe.trans:=[Shift_x_Buffer6_B,Shift_y_Buffer6_B,Shift_z_Buffer6_B];


    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    !
        MoveL offs(pBuffer_Boven_6,-3,5,5),v1000,z50,tGripper\WObj:=Wobj_Buffer_Boven_6;
        MoveL pBuffer_Boven_6, v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_6;
          rGripper_Open;
        MoveL offs(pBuffer_Boven_6,-75,0,0), v1000, fine, tGripper\WObj:=Wobj_Buffer_Boven_6;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;

    !
ENDPROC

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
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

    ! Inleggen dwarsbalk in mal pos 1

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

! Inleggen dwarsbalk in mal pos 1

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

! Inleggen dwarsbalk in mal pos 1

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

! Inleggen dwarsbalk in mal pos 1

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
    rGet_Gripper;
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
! Uithalen dwarsbalk in mal pos 1
    rGet_Gripper;
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

! Uithalen dwarsbalk in mal pos 1
    rGet_Gripper;
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

! Uithalen dwarsbalk in mal pos 1
    rGet_Gripper;
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

! Uithalen dwarsbalk in mal pos 1
    rGet_Gripper;
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

    PROC rGet_Gripper()
        !
        IF TestDI(si_Changer_Test_Grijper)=FALSE THEN
            rAttach_Gripper;
        ELSE
            RETURN;
        ENDIF
        !    
    ENDPROC    
    
    PROC rRelease_Gripper()
        !
        IF TestDI(si_Changer_Test_Grijper)=TRUE THEN
            rDetach_Gripper;
        ELSE
            RETURN;
        ENDIF
        !    
    ENDPROC    

    
    PROC Station()
!    IF sToHomeOffs = "" THEN
!      ELSE
        !
        Message{1}:="";
        Message{2}:="";
        Message{3}:="";
        Message{4}:="";
        Message{5}:="";
        !
        answer := UIMessageBox (\Header:="Uit welke buffer moeten de dwarsbalken gepakt worden?",
        \MsgArray:=Message
        \BtnArray:=Buttons_1a
        \Icon:=iconInfo);
        !
        IF answer = 1 THEN
          Stop;
          Buffer_1_Uit;
        ELSEIF answer = 2 THEN
          Buffer_2_Uit;  
        ELSEIF answer = 3 THEN
          Buffer_2_Uit;  
          EXIT;
        ENDIF
!      ENDIF
    ENDPROC
    
    PROC rBalk_Uit()
    !
        IF si_Balk_Gevonden=1 THEN
          bBalk_Gevonden:=TRUE;
        ELSE
          bBalk_Gevonden:=FALSE;
        ENDIF  
        !
        IF bBalk_Gevonden=FALSE THEN
          
            TEST nBuffernummer
                CASE 1:
                    !
                    Incr nAantal_Balk1_Uit;
                      IF nAantal_Balk1_Uit = 8 THEN
                          MoveL Offs(pBuffer_Onder_1,0,-750,0),v1000,z50,tGripper\WObj:=Wobj_Buffer_Onder_1;
                        Decr nAantal_Laag1_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
                CASE 2:
                    !
                    Incr nAantal_Balk2_Uit;
                      IF nAantal_Balk2_Uit = 8 THEN
                        Decr nAantal_Laag2_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
                CASE 3:
                    !
                    Incr nAantal_Balk3_Uit;
                      IF nAantal_Balk3_Uit = 8 THEN
                        Decr nAantal_Laag3_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
                CASE 4:
                    !
                    Incr nAantal_Balk4_Uit;
                      IF nAantal_Balk4_Uit = 8 THEN
                        Decr nAantal_Laag4_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
                CASE 5:
                    !
                    Incr nAantal_Balk5_Uit;
                      IF nAantal_Balk5_Uit = 8 THEN
                        Decr nAantal_Laag5_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
                CASE 6:
                    !
                    Incr nAantal_Balk6_Uit;
                      IF nAantal_Balk6_Uit = 8 THEN
                        Decr nAantal_Laag6_Uit;
                      ENDIF    
                    bOpnieuw:=TRUE;
            ENDTEST
        ENDIF    
        
    ENDPROC

    PROC rBalk_In()
    !
        IF TestDI(si_Balk_Gevonden)=TRUE THEN
          bBalk_Gevonden:=TRUE;
          RETURN;
        ELSE
          bBalk_Gevonden:=FALSE;
        ENDIF  
        !
        IF bBalk_Gevonden=FALSE THEN
          
            TEST nBuffernummer
                CASE 1:
                    !
                    Incr nAantal_Balk1_In;
                      IF nAantal_Balk1_In = 8 THEN
                        Incr nAantal_Laag1_In;
                      ENDIF    
                    Buffer_1_In;
                CASE 2:
                    !
                    Incr nAantal_Balk2_In;
                      IF nAantal_Balk2_In = 8 THEN
                        Incr nAantal_Laag2_In;
                      ENDIF    
                    Buffer_2_In;
                CASE 3:
                    !
                    Incr nAantal_Balk3_In;
                      IF nAantal_Balk3_In = 8 THEN
                        Incr nAantal_Laag3_In;
                      ENDIF    
                    Buffer_3_In;
                CASE 4:
                    !
                    Incr nAantal_Balk4_In;
                      IF nAantal_Balk4_In = 8 THEN
                        Incr nAantal_Laag4_In;
                      ENDIF    
                    Buffer_4_In;
                CASE 5:
                    !
                    Incr nAantal_Balk5_In;
                      IF nAantal_Balk5_In = 8 THEN
                        Incr nAantal_Laag5_In;
                      ENDIF    
                    Buffer_5_In;
                CASE 6:
                    !
                    Incr nAantal_Balk6_In;
                      IF nAantal_Balk6_In = 8 THEN
                        Incr nAantal_Laag6_In;
                      ENDIF    
                    Buffer_6_In;
            ENDTEST
        ELSE
           RETURN;  
        ENDIF    
        
    ENDPROC

ENDMODULE