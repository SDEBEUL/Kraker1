MODULE mBuffer
  !Wobjdata
  !deze worden gebruikt voor zowel de boven en beneden buffer. (posities naar de buffer)
	TASK PERS wobjdata Wobj_Buffer1:=[FALSE,TRUE,"",[[0,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer2:=[FALSE,TRUE,"",[[2895,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer3:=[FALSE,TRUE,"",[[5800,0,15],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer4:=[FALSE,TRUE,"",[[8700,0,15],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer5:=[FALSE,TRUE,"",[[11604,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer6:=[FALSE,TRUE,"",[[14500,0,0],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
  !deze worden gebruikt en verschoven om het stuk te nemen 
	TASK PERS wobjdata Wobj_Buffer_Onder_1:=[FALSE,TRUE,"",[[965,1086,310],[1,0,0,0]],[[0,0,400],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_2:=[FALSE,TRUE,"",[[3860,1086,310],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_3:=[FALSE,TRUE,"",[[6765,1086,321],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_4:=[FALSE,TRUE,"",[[9665,1086,321],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_5:=[FALSE,TRUE,"",[[12569,1086,317],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Onder_6:=[FALSE,TRUE,"",[[15465,1086,310],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_1:=[FALSE,TRUE,"",[[965,1096,1400],[1,0,0,0]],[[0,516,200],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_2:=[FALSE,TRUE,"",[[3860,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_3:=[FALSE,TRUE,"",[[6765,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_4:=[FALSE,TRUE,"",[[9665,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_5:=[FALSE,TRUE,"",[[12569,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
	TASK PERS wobjdata Wobj_Buffer_Boven_6:=[FALSE,TRUE,"",[[15465,1096,1400],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

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

  !Jointtargets
    CONST jointtarget pHomeJoint_Bu_1:=[[0,-20,0,-180,-20,-90],[0,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_2:=[[0,-20,0,0,0,0],[2895,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_3:=[[0,-20,0,0,0,0],[5950,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_4:=[[0,-20,0,0,0,0],[8700,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_5:=[[0,-20,0,0,0,0],[11604,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_6:=[[0,-20,0,0,0,0],[14500,9E+09,9E+09,9E+09,9E+09,9E+09]];
   
    LOCAL pers num Shift_Track := 0;
    LOCAL pers num Shift_x := 0;
    LOCAL pers num Shift_y := 0;
    LOCAL pers num Shift_z := 0;
 
  

 PROC BUFFER_UIT(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer)
     !
     IF NOT InvoerBuffer{nBuffernum}.Veilig THEN
       Buffer_UIT_WithsafeCheck nBuffernum, WobjBufferx ,Pbuffer;
     ELSE
       Buffer_UIT_PickPart nBuffernum, WobjBufferx ,Pbuffer;
     ENDIF
     !
 ENDPROC
  
 PROC Buffer_UIT_WithsafeCheck(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer)
 !calc position
   VAR num xPos := 0;
   VAR num yPos := 0;
   VAR num zPos := 0;
   VAR num nLaag;
   VAR num nStuk;
   VAR btnres nAnswer; 
  !eerst naar een postie om te kijken of het rek er staat. 
   yPos := nYposPart(1);
   ZPos := nZposPart(5);
   wobj_Active:=WobjBufferx;
   wobj_Active.oframe.trans:=[xPos,ypos,zpos];
   rGripper_Open;
  lbl_retry:
   MoveL Offs(Pbuffer,0,-200,0),v2000,z50,tGripper\WObj:=wobj_Active;
   !postie waar de sensoren het rek zien.
   MoveL Offs(Pbuffer,0,-150,-150), v2000, fine, tGripper\WObj:=wobj_Active;   
    IF NOT fCheckGripperPart() THEN
       !NO RACK
        LoggProc "mBuffer",30,"Actieve invoerbuffer:"+NumToStr(nBuffernum,0)+ " niet gevonden";
        nAnswer := UIMessageBox(\Header:="REK NIET GEVONDEN!"\MsgArray:=["","Hier zou een rek moeten staan?","Druk OK om opnieuw te controlleren","Druk Cancel als dit rek is verwijderd"]
        ,\BtnArray:=["Cancel","","","","OK"]); 
       TEST nAnswer
         CASE 1:
          InvoerBuffer{nBuffernum}.Leeg := TRUE;
          MoveL Offs(Pbuffer,0,-150,0),v2000,z50,tGripper\WObj:=wobj_Active;
          MoveL Pbuffer,v2000,z50,tGripper\WObj:=wobj_Active;
          !ja en nu ... ? volgende buffer kiezen ? 
          Stop;
          RETURN;
         CASE 2:
          GOTO lbl_retry;
       ENDTEST
       RETURN;
    ENDIF
    MoveL Offs(Pbuffer,0,-200,0),v2000,z50,tGripper\WObj:=wobj_Active;
    !100 mm van stuk1 onderste rij
    MoveL Offs(Pbuffer,0,-80,0),v2000,z50,tGripper\WObj:=wobj_Active;
    !beweeg richting bovenste laag tot check range dan 1 laag omhoog
    FOR laag FROM 5 TO 1 STEP -1 DO
      MoveL Offs(Pbuffer,0,-80,nZposPart(laag)),v100,z0,tGripper\WObj:=wobj_Active;
      IF fCheckGripperNotInrange()  OR (laag = 1)THEN
          nLaag := laag;
        GOTO Lbl_laagGevonden;
      ENDIF
    ENDFOR
    
  Lbl_laagGevonden:

     FOR stuk FROM 1 TO 8 STEP 1 DO
       MoveL Offs(Pbuffer,0,-80+nYposPart(stuk),nZposPart(nLaag)),v100,z0,tGripper\WObj:=wobj_Active;
       IF (fCheckGripperNotInrange() = FALSE) OR (stuk = 8) THEN
           nStuk := stuk;
          GOTO Lbl_stukgevonden;
       ENDIF
     ENDFOR
     
   Lbl_stukgevonden:
        !laat nu de normale stuk uit routine ovenemen
       InvoerBuffer{nBuffernum}.ActiefStuk := nStuk;
       InvoerBuffer{nBuffernum}.Actievelaag := nLaag;
        !
        Buffer_UIT_PickPart nBuffernum, WobjBufferx ,Pbuffer;
        ! set safe
        InvoerBuffer{nBuffernum}.Veilig := TRUE;
        !
 ENDPROC
    
 PROC Buffer_UIT_PickPart(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer)
   !calc position
   VAR num xPos := 0;
   VAR num yPos := 0;
   VAR num zPos := 0;
 lbl_nextpart:
   yPos := nYposPart(InvoerBuffer{nBuffernum}.ActiefStuk);
   ZPos := nZposPart(InvoerBuffer{nBuffernum}.Actievelaag);
   !
      wobj_Active:=WobjBufferx;
      wobj_Active.oframe.trans:=[xPos,ypos,zpos];
      rGripper_Open;
    !
        MoveL Offs(Pbuffer,0,-75,0),v1000,z50,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer, v100, fine, tGripper\WObj:=wobj_Active;
        IF fCheckGripperPart() THEN
          rGripper_Close;
          rDecrInvoerbuffer nBuffernum;
        ELSE !part not in expected pos 
         !beweeg 1cm verder en kijk of het stuk er dan is 
          MoveL Offs(Pbuffer,0,10,0),v50,z10,tGripper\WObj:=wobj_Active;
          WaitTime \InPos, 2;
          IF fCheckGripperPart() THEN
           rGripper_Close;
           rDecrInvoerbuffer nBuffernum;
          ELSE !stuk nog steeds niet aanwezig = volgende stuk 
            IF yPos = 615 THEN !als dit laatste stuk in de rij was eerst naar achter
                MoveL Offs(Pbuffer,0,-750,0),v1000,z50,tGripper\WObj:=wobj_Active;
            ENDIF
          rDecrInvoerbuffer nBuffernum;
          goto lbl_nextPart; 
          ENDIF
        ENDIF 
        !stuk tegen aanslag en goed duwen 
          MoveL Offs(Pbuffer,10,0,0),v1000,fine,tGripper\WObj:=wobj_Active;
          rGripper_Open;
          MoveL Offs(Pbuffer,10,-10,0),v1000,z50,tGripper\WObj:=wobj_Active;
          MoveL Offs(Pbuffer,0,-10,0),v1000,z50,tGripper\WObj:=wobj_Active;
          MoveL Pbuffer, v1000, fine, tGripper\WObj:=wobj_Active;
          rGripper_CheckPart TRUE;
          rGripper_Close;
          rGripper_CheckPart TRUE \Supervision; 
        MoveL Offs(Pbuffer,-5,0,5),v1000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,-5,-5,5),v1000,z50,tGripper\WObj:=wobj_Active;
 ENDPROC
    
PROC Buffer_1_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
    BUFFER_UIT 1, Wobj_Buffer_Onder_1, pBuffer_Onder_1;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[973.50,866.47,863.12],[0.694052,-0.12894,0.133882,0.695515],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[1077.38,701.93,1307.07],[0.693619,-0.131098,0.136236,0.695087],[-1,-4,-2,0],[-0.00637549,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
ENDPROC

PROC Buffer_2_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_2\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
    BUFFER_UIT 2, Wobj_Buffer_Onder_2, pBuffer_Onder_2;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !    
ENDPROC

PROC Buffer_3_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5800;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_3\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !
    BUFFER_UIT 3, Wobj_Buffer_Onder_3, pBuffer_Onder_3;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    ! 
ENDPROC
    
PROC Buffer_4_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_4\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
    BUFFER_UIT 4, Wobj_Buffer_Onder_4, pBuffer_Onder_4;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !  
ENDPROC

PROC Buffer_5_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_5\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
    BUFFER_UIT 5, Wobj_Buffer_Onder_5, pBuffer_Onder_5;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !  
ENDPROC

PROC Buffer_6_Uit()
    ! Uitnemen dwarsbalk uit onderste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveAbsJ pHomeJoint_Bu_6\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1419.34,422.03,831.74],[0.686907,-0.15701,0.151426,0.693236],[-1,-4,-3,0],[-0.000517021,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.50,886.91,831.74],[0.686907,-0.157009,0.151423,0.693237],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[965.94,941.91,800.11],[0.706966,-0.000164395,-0.000372177,0.707248],[-1,-4,-3,0],[0,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
    BUFFER_UIT 6, Wobj_Buffer_Onder_6, pBuffer_Onder_6;
    ! 
    MoveL [[964.08,1081.20,842.98],[0.706832,-0.00207937,0.00739282,0.70734],[-1,-4,-3,0],[-0.00832831,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    !
ENDPROC

!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
!-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

  PROC BUFFER_IN(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer \switch SafeCheck)
     !
     IF present(Safecheck) THEN
       Buffer_In_safeCheck nBuffernum, WobjBufferx ,Pbuffer;
     ELSE
       Buffer_IN_PutPart nBuffernum, WobjBufferx ,Pbuffer;
     ENDIF
     !
 ENDPROC
 
 LOCAL PROC rResetUitvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rResetUitvoerbuffer
    ! Description: set het status vol van inbuffer
    !*************************************** 
   VAR PartType AantalPartsAanwezig; 
   AantalPartsAanwezig := UitvoerBuffer{nBuffer}.AantalPartsAanwezig;
   UitvoerBuffer{nBuffer}.leeg := true;
   AantalPartsAanwezig.Balk330 := 0;
   AantalPartsAanwezig.Balk331 := 0;
   AantalPartsAanwezig.Balk332 := 0;
   UitvoerBuffer{nBuffer}.AantalPartsAanwezig := AantalPartsAanwezig;
   UitvoerBuffer{nBuffer}.ActiefStuk := 8; !leeg rek = part8 rij5
   UitvoerBuffer{nBuffer}.Actievelaag := 5; !leeg rek = part8 rij5
   UitvoerBuffer{nBuffer}.Veilig := FALSE;
   !
ENDPROC
 
  PROC Buffer_IN_safeCheck(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer)
 !calc position
   VAR num xPos := 0;
   VAR num yPos := 0;
   VAR num zPos := 0;
   VAR num nLaag;
   VAR num nStuk;
   VAR btnres nAnswer; 
  !eerst naar een postie om te kijken of het rek er staat. 
   yPos := nYposPart(1);
   ZPos := nZposPart(5);
   wobj_Active:=WobjBufferx;
   wobj_Active.oframe.trans:=[xPos,ypos,zpos];
   rGripper_Open;
  lbl_retry:
   MoveL Offs(Pbuffer,0,-200,450),v1000,z50,tGripper\WObj:=wobj_Active;
   !postie waar de sensoren het rek zien.
   MoveL Offs(Pbuffer,0,-150,-150), v100, fine, tGripper\WObj:=wobj_Active;   
    IF NOT fCheckGripperPart() THEN
       !NO RACK
        LoggProc "mBuffer",30,"Actieve uitvoerbuffer:"+NumToStr(nBuffernum,0)+ " niet gevonden";
        nAnswer := UIMessageBox(\Header:="REK NIET GEVONDEN!"\MsgArray:=["","Hier zou een rek moeten staan?","Druk OK om opnieuw te controlleren","Druk Cancel als dit rek is verwijderd"]
        ,\BtnArray:=["Cancel","","","","OK"]); 
       TEST nAnswer
         CASE 1:
          UitvoerBuffer{nBuffernum}.vol := TRUE;
          MoveL Offs(Pbuffer,0,-150,0),v1000,z50,tGripper\WObj:=wobj_Active;
          MoveL Pbuffer,v1000,z50,tGripper\WObj:=wobj_Active;
          !ja en nu ... ? volgende buffer kiezen ? 
          Stop;
          RETURN;
         CASE 2:
          GOTO lbl_retry;
       ENDTEST
       RETURN;
    ENDIF
    MoveL Offs(Pbuffer,0,-200,0),v1000,z50,tGripper\WObj:=wobj_Active;
    !100 mm van stuk1 onderste rij
    MoveL Offs(Pbuffer,0,-80,0),v1000,z50,tGripper\WObj:=wobj_Active;
    !beweeg richting bovenste laag tot check range dan 1 laag omhoog
    FOR laag FROM 5 TO 1 STEP -1 DO
      MoveL Offs(Pbuffer,0,-80,nZposPart(laag)),v100,z0,tGripper\WObj:=wobj_Active;
      IF fCheckGripperNotInrange()  OR (laag = 1)THEN
          nLaag := laag;
        GOTO Lbl_laagGevonden;
      ENDIF
    ENDFOR
    
  Lbl_laagGevonden:

     FOR stuk FROM 1 TO 8 STEP 1 DO
       MoveL Offs(Pbuffer,0,-80+nYposPart(stuk),nZposPart(nLaag)),v100,z0,tGripper\WObj:=wobj_Active;
       IF (fCheckGripperNotInrange() = FALSE) OR (stuk = 8) THEN
          nStuk := stuk;
          GOTO Lbl_stukgevonden;
       ENDIF
     ENDFOR
     
Lbl_stukgevonden:
       UitvoerBuffer{nBuffernum}.ActiefStuk := nStuk;
       UitvoerBuffer{nBuffernum}.Actievelaag := nLaag;
!zoek nu tot je de balk effectief ziet liggen
lbl_nextpart:
   yPos := nYposPart(UitvoerBuffer{nBuffernum}.ActiefStuk);
   ZPos := nZposPart(UitvoerBuffer{nBuffernum}.Actievelaag);
   wobj_Active:=WobjBufferx;
   wobj_Active.oframe.trans:=[xPos,ypos,zpos];
   !
        MoveL Offs(Pbuffer,0,-75,0),v1000,z50,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer, v100, fine, tGripper\WObj:=wobj_Active;
        IF fCheckGripperPart() THEN
          !beweeg weg van het stuk
          MoveL Offs(Pbuffer,0,-75,0),v1000,z50,tGripper\WObj:=wobj_Active;
          MoveL Offs(Pbuffer,0,-100,5),v1000,z50,tGripper\WObj:=wobj_Active;
        ELSE !part not in expected pos 
         !beweeg 1cm verder en kijk of het stuk er dan is 
          MoveL Offs(Pbuffer,0,10,0),v50,z10,tGripper\WObj:=wobj_Active;
          WaitTime \InPos, 2;
          !
          IF fCheckGripperPart() THEN
             !beweeg weg van het stuk
             MoveL Offs(Pbuffer,0,-75,0),v1000,z50,tGripper\WObj:=wobj_Active;
             MoveL Offs(Pbuffer,0,-100,5),v1000,z50,tGripper\WObj:=wobj_Active;
          ELSE !stuk nog steeds niet aanwezig = volgende stuk of als laag 1 stuk 8 rek leeg 
              rDecrUitvoerbuffer(nBuffernum);
              TPWrite NumToStr(UitvoerBuffer{nBuffernum}.ActiefStuk,0) + " w " + NumToStr(UitvoerBuffer{nBuffernum}.Actievelaag,0);
              IF UitvoerBuffer{nBuffernum}.leeg  THEN
                  rResetUitvoerbuffer nBuffernum;
                  UitvoerBuffer{nBuffernum}.veilig :=TRUE;
                  RETURN;
              ENDIF 
              goto lbl_nextPart; 
          ENDIF
        ENDIF 
        ! 1 stuk minder dan active 
        rIncrUitvoerbuffer(nBuffernum);
        ! set safe
        UitvoerBuffer{nBuffernum}.Veilig := TRUE;
        !
 ENDPROC
 
 PROC Buffer_IN_PutPart(num nBuffernum, wobjdata WobjBufferx, robtarget Pbuffer)
   !calc position
   VAR num xPos := 0;
   VAR num yPos := 0;
   VAR num zPos := 0;
   yPos := nYposPart(Uitvoerbuffer{nBuffernum}.ActiefStuk);
   ZPos := nZposPart(Uitvoerbuffer{nBuffernum}.Actievelaag);
   !
    wobj_Active:=WobjBufferx;
    wobj_Active.oframe.trans:=[xPos,yPos,zPos];
    !
    MoveL offs(Pbuffer,0,-15,5),v1000,z50,tGripper\WObj:=wobj_Active;
    MoveL Pbuffer, v50, fine, tGripper\WObj:=wobj_Active;
    rGripper_PartSupervisionOff;
    rGripper_Open;
    MoveL offs(pBuffer_Boven_1,0,-90,0), v50, fine, tGripper\WObj:=wobj_Active;
    rGripper_CheckPart FALSE;
    MoveL offs(pBuffer_Boven_1,0,-120,0), v50, fine, tGripper\WObj:=wobj_Active;
   ! check part off  ? 
   rIncrUitvoerbuffer nBuffernum;
   !
 ENDPROC
    
PROC Buffer_1_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=0;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer1.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer1;
    !
    BUFFER_IN 1 , Wobj_Buffer_Boven_1 , pBuffer_Boven_1 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
ENDPROC

PROC Buffer_2_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=2895;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer2.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer2;
    !
    BUFFER_IN 2 , Wobj_Buffer_Boven_2 , pBuffer_Boven_2 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer2;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer2;
    !
ENDPROC

PROC Buffer_3_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=5800;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer3.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer3;
    !
    BUFFER_IN 3 , Wobj_Buffer_Boven_3 , pBuffer_Boven_3 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer3;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer3;
    !     
ENDPROC

PROC Buffer_4_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=8700;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer4.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer4;
    !
    BUFFER_IN 4 , Wobj_Buffer_Boven_4 , pBuffer_Boven_4 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer4;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer4;
    !
ENDPROC

PROC Buffer_5_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste buffer
    Shift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=11604;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer5.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer5;
    !
    Buffer_IN 5 , Wobj_Buffer_Boven_5 , pBuffer_Boven_5 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer5;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer5;
    !
ENDPROC

PROC Buffer_6_In(\switch Safecheck)
    ! Inleggen dwarsbalk bovenste bufferShift_x:=0;
    Shift_y:=0;
    Shift_z:=0;
    Shift_Track:=14500;
    !
    EOffsSet [Shift_Track,0,0,0,0,0];
    Wobj_Buffer6.oframe.trans:=[Shift_X,Shift_Y,Shift_z];
    !
    MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    MoveL [[987.73,1099.35,1995.24],[0.705506,0.0492272,-0.0438821,0.705629],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z0, tGripper\WObj:=Wobj_Buffer6;
    !
    BUFFER_IN 6 , Wobj_Buffer_Boven_6 , pBuffer_Boven_6 \SafeCheck?Safecheck;
    !
    MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z50, tGripper\WObj:=Wobj_Buffer6;
    MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]], v1000, z200, tGripper\WObj:=Wobj_Buffer1;
    MoveAbsJ pHomeJoint_Bu_1\NoEOffs, v1000, z50, tGripper\WObj:=Wobj_Buffer1;
    !
ENDPROC

ENDMODULE
