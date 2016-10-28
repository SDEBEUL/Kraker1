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
    TASK PERS wobjdata Wobj_Buffer_Onder_1:=[FALSE,TRUE,"",[[965,1086,280],[1,0,0,0]],[[0,0,400],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Onder_2:=[FALSE,TRUE,"",[[3860,1086,280],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Onder_3:=[FALSE,TRUE,"",[[6765,1086,290],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Onder_4:=[FALSE,TRUE,"",[[9665,1086,290],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Onder_5:=[FALSE,TRUE,"",[[12569,1086,287],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Onder_6:=[FALSE,TRUE,"",[[15465,1086,280],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_1:=[FALSE,TRUE,"",[[965,1096,1370],[1,0,0,0]],[[0,516,200],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_2:=[FALSE,TRUE,"",[[3860,1096,1370],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_3:=[FALSE,TRUE,"",[[6765,1096,1370],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_4:=[FALSE,TRUE,"",[[9665,1096,1370],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_5:=[FALSE,TRUE,"",[[12569,1096,1370],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];
    TASK PERS wobjdata Wobj_Buffer_Boven_6:=[FALSE,TRUE,"",[[15465,1096,1370],[1,0,0,0]],[[0,0,0],[1,0,0,0]]];

    !Robtargets  
    CONST robtarget pBuffer_Onder_1:=[[30.3,10.6,2.6],[0.70822,0.0,0.00881,0.70594],[-1,-4,-3,0],[-0.00539908,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Onder_2:=[[33,4.71,7],[0.708236,-0.00140196,0.0073905,0.705936],[-1,-4,-3,0],[-0.000238419,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Onder_3:=[[34,8.75,5],[0.708174,0.000699642,0.00952727,0.705973],[-1,-4,-3,0],[-0.00953674,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Onder_4:=[[32.8,3.27,6.63],[0.707499,0.0013891,0.0102455,0.706638],[-1,-4,-3,0],[0.0038147,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Onder_5:=[[33,6.09,4.08],[0.706787,0.00139,0.0102321,0.707351],[-1,-4,-3,0],[-0.00572205,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Onder_6:=[[34,9.39,4.28],[0.707494,0.00140294,0.0102322,0.706643],[-1,-4,-3,0],[-0.0038147,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_1:=[[29.29,-3.29,7.10],[0.709398,0.00521553,0.00308932,0.704782],[-1,-4,-3,0],[-0.00638844,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_2:=[[29.25,-6.24,16],[0.706572,0.00520437,0.00310873,0.707615],[-1,-4,-3,0],[-0.00572205,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_3:=[[29.29,-2,19],[0.707281,0.00598363,0.00366256,0.706897],[-1,-4,-3,0],[-0.00476837,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_4:=[[29.27,-3.13,22],[0.707277,0.00662564,0.00450735,0.706891],[-1,-4,-3,0],[-0.00572205,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_5:=[[29.27,-3.67,19],[0.706574,0.00592128,0.00380263,0.707604],[-1,-4,-3,0],[-0.00572205,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_6:=[[29.25,-2.39,12],[0.706546,0.00730747,0.00520545,0.707611],[-1,-4,-3,0],[-0.00762939,9E+09,9E+09,9E+09,9E+09,9E+09]];

    CONST robtarget pBuffer_Boven_Appr_1:=[[987.75,1105.34,1939.99],[0.707503,0.0533245,-0.0454197,0.70323],[-1,-3,-2,0],[-0.0321006,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_Appr_2:=[[987.75,1128.15,1961.57],[0.704683,0.0534987,-0.0452,0.706057],[-1,-3,-2,0],[-0.0319481,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_Appr_3:=[[987.76,1134.34,1958.99],[0.704775,0.0549183,-0.043796,0.705945],[-1,-3,-2,0],[-0.0319481,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_Appr_4:=[[987.76,1135.54,1959.79],[0.706801,0.0533723,-0.0453677,0.703936],[-1,-3,-2,0],[-0.0324249,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_Appr_5:=[[987.77,1135.14,1971.59],[0.706186,0.054825,-0.0438996,0.704534],[-1,-3,-2,0],[-0.0324249,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST robtarget pBuffer_Boven_Appr_6:=[[987.80,1131.14,1970.99],[0.707503,0.0533253,-0.0454203,0.70323],[-1,-3,-2,0],[-0.0324249,9E+09,9E+09,9E+09,9E+09,9E+09]];

    !Jointtargets
    CONST jointtarget pHomeJoint_Bu_1:=[[-10.0185,8.36448,2.18467,-178.376,-17.8222,-91.7198],[218.92,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_2:=[[-10,-19.971,9.60894E-05,-180,-20.0009,-90.0009],[2895,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_3:=[[-10,-19.971,9.60894E-05,-180,-20.0009,-90.0009],[5950,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_4:=[[-10,-19.971,9.60894E-05,-180,-20.0009,-90.0009],[8700,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_5:=[[-10,-19.971,9.60894E-05,-180,-20.0009,-90.0009],[11604,9E+09,9E+09,9E+09,9E+09,9E+09]];
    CONST jointtarget pHomeJoint_Bu_6:=[[-10,-19.971,9.60894E-05,-180,-20.0009,-90.0009],[14500,9E+09,9E+09,9E+09,9E+09,9E+09]];

    LOCAL pers num Shift_Track:=5800;
    LOCAL pers num Shift_x:=0;
    LOCAL pers num Shift_y:=0;
    LOCAL pers num Shift_z:=0;

    PROC TestBuffers()

        rResetBufferSafe;

        FOR i FROM 1 TO 6 DO
            Putpart i\Safecheck;
            WHILE (NOT InvoerBuffer{i}.leeg)AND (NOT UitvoerBuffer{i}.vol) DO
                Getpart(i);
                IF i=6 THEN
                    rLoadStation 5\NoMeasure;
                    rUnloadStation 5;
                ELSE
                    rLoadStation i\NoMeasure;
                    rUnloadStation i;
                ENDIF
                Putpart(i);
            ENDWHILE
            !
        ENDFOR

        !Stop;
    ENDPROC

    PROC TeachBuffers()
        !BUFFER_UIT
        !1
        wobj_Active:=Wobj_Buffer_Onder_1;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [0,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_1,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_1,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_1,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !2
        wobj_Active:=Wobj_Buffer_Onder_2;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [2895,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_2,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_2,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_2,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !3
        wobj_Active:=Wobj_Buffer_Onder_3;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [5800,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_3,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_3,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_3,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !4
        wobj_Active:=Wobj_Buffer_Onder_4;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [8700,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_4,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_4,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_4,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !5
        wobj_Active:=Wobj_Buffer_Onder_5;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [11604,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_5,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_5,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_5,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !6
        wobj_Active:=Wobj_Buffer_Onder_6;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [14500,0,0,0,0,0];
        rGripper_Open;
        MoveJ Offs(pBuffer_Onder_6,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Onder_6,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Onder_6,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;

        !BUFFER_IN
        !1
        wobj_Active:=Wobj_Buffer_Boven_1;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [0,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_1,v4000,z20,tGripper\WObj:=Wobj_Buffer1;
        MoveL Offs(pBuffer_Boven_1,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_1,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_1,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_1,v4000,z20,tGripper\WObj:=Wobj_Buffer1;

        !2
        wobj_Active:=Wobj_Buffer_Boven_2;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [2895,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_2,v4000,z20,tGripper\WObj:=Wobj_Buffer2;
        MoveL Offs(pBuffer_Boven_2,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_2,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_2,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_2,v4000,z20,tGripper\WObj:=Wobj_Buffer2;

        !3
        wobj_Active:=Wobj_Buffer_Boven_3;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [5800,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_3,v4000,z20,tGripper\WObj:=Wobj_Buffer3;
        MoveL Offs(pBuffer_Boven_3,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_3,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_3,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_3,v4000,z20,tGripper\WObj:=Wobj_Buffer3;

        !4
        wobj_Active:=Wobj_Buffer_Boven_4;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [8700,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_4,v4000,z20,tGripper\WObj:=Wobj_Buffer4;
        MoveL Offs(pBuffer_Boven_4,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_4,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_4,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_4,v4000,z20,tGripper\WObj:=Wobj_Buffer4;

        !5
        wobj_Active:=Wobj_Buffer_Boven_5;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [11604,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_5,v4000,z20,tGripper\WObj:=Wobj_Buffer5;
        MoveL Offs(pBuffer_Boven_5,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_5,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_5,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_5,v4000,z20,tGripper\WObj:=Wobj_Buffer5;

        !6
        wobj_Active:=Wobj_Buffer_Boven_6;
        wobj_Active.oframe.trans:=[0,0,0];
        EOffsSet [14500,0,0,0,0,0];
        MoveJ pBuffer_Boven_Appr_6,v4000,z20,tGripper\WObj:=Wobj_Buffer6;
        MoveL Offs(pBuffer_Boven_6,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_6,v100,fine,tGripper\WObj:=wobj_Active;
        MoveL Offs(pBuffer_Boven_6,0,30,445),v4000,z20,tGripper\WObj:=wobj_Active;
        MoveL pBuffer_Boven_Appr_6,v4000,z20,tGripper\WObj:=Wobj_Buffer6;
    ENDPROC

    PROC BUFFER_UIT(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer)
        !
        IF NOT InvoerBuffer{nBuffernum}.Veilig THEN
            Buffer_UIT_WithsafeCheck nBuffernum,WobjBufferx,Pbuffer;
        ELSE
            Buffer_UIT_PickPart nBuffernum,WobjBufferx,Pbuffer;
        ENDIF
        !
    ENDPROC

    PROC Buffer_UIT_WithsafeCheck(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer)
        !calc position
        VAR num xPos:=0;
        VAR num yPos:=0;
        VAR num zPos:=0;
        VAR num nLaag;
        VAR num nStuk;
        !eerst naar een postie om te kijken of het rek er staat. 
        yPos:=nYposPart(1);
        ZPos:=nZposPart(5);
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[xPos,ypos,zpos];
        rGripper_Open;
        lbl_retry:
        MoveL Offs(Pbuffer,0,-200,0),v2000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-170,-148),v2000,z50,tGripper\WObj:=wobj_Active;
        !postie waar de sensoren het rek zien.
        MoveL Offs(Pbuffer,0,-148,-148),v2000,fine,tGripper\WObj:=wobj_Active;
        WaitRob\ZeroSpeed;
        WaitTime 2;
        IF NOT fCheckGripperPart(\nExpection:=1) THEN
            !NO RACK
            LoggProc "mBuffer",30,"Actieve invoerbuffer:"+NumToStr(nBuffernum,0)+" niet gevonden";
            InvoerBuffer{nBuffernum}.leeg:=TRUE;
            MoveL Offs(Pbuffer,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
            MoveL Offs(Pbuffer,0,-200,450),v4000,z50,tGripper\WObj:=wobj_Active;
            InvoerBuffer{nBuffernum}.Veilig:=TRUE;
            RETURN ;
        ENDIF
        MoveL Offs(Pbuffer,0,-170,-148),v2000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-200,0),v2000,z50,tGripper\WObj:=wobj_Active;
        !100 mm van stuk1 onderste rij
        MoveL Offs(Pbuffer,0,-115,0),v2000,z50,tGripper\WObj:=wobj_Active;
        !beweeg richting bovenste laag tot check range dan 1 laag omhoog
        FOR laag FROM 5 TO 1 STEP -1 DO
            MoveL Offs(Pbuffer,0,-115,nZposPart(laag)),v100,z0,tGripper\WObj:=wobj_Active;
            IF fCheckGripperNotInrange()OR (laag=1) THEN
                nLaag:=laag;
                GOTO Lbl_laagGevonden;
            ENDIF
        ENDFOR

        Lbl_laagGevonden:

        FOR stuk FROM 1 TO 8 STEP 1 DO
            MoveL Offs(Pbuffer,0,-115+nYposPart(stuk),nZposPart(nLaag)),v100,z0,tGripper\WObj:=wobj_Active;
            IF (fCheckGripperNotInrange()=FALSE)OR (stuk=8) THEN
                nStuk:=stuk;
                GOTO Lbl_stukgevonden;
            ENDIF
        ENDFOR

        Lbl_stukgevonden:
        !laat nu de normale stuk uit routine ovenemen
        InvoerBuffer{nBuffernum}.ActiefStuk:=nStuk;
        InvoerBuffer{nBuffernum}.Actievelaag:=nLaag;
        IF (nStuk=8)AND (nLaag=5) THEN
            InvoerBuffer{nBuffernum}.leeg:=TRUE;
        ELSE
            InvoerBuffer{nBuffernum}.leeg:=FALSE;
        ENDIF
        !
        Buffer_UIT_PickPart nBuffernum,WobjBufferx,Pbuffer;
        ! set safe
        InvoerBuffer{nBuffernum}.Veilig:=TRUE;
        !
    ENDPROC

    PROC Buffer_UIT_PickPart(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer)
        !calc position
        VAR num xPos:=0;
        VAR num yPos:=0;
        VAR num zPos:=0;
        IF InvoerBuffer{nBuffernum}.leeg THEN
            RETURN ;
        ENDIF
        lbl_nextpart:
        yPos:=nYposPart(InvoerBuffer{nBuffernum}.ActiefStuk);
        ZPos:=nZposPart(InvoerBuffer{nBuffernum}.Actievelaag);
        !
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[xPos,ypos,zpos];
        rGripper_Open;
        !
        MoveL Offs(Pbuffer,0,-75,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer,v100,fine,tGripper\WObj:=wobj_Active;
        IF fCheckGripperPart() THEN
            rGripper_Close;
            rDecrInvoerbuffer nBuffernum;
        ELSE
            !part not in expected pos 
            !beweeg 1cm verder en kijk of het stuk er dan is 
            MoveL Offs(Pbuffer,0,10,0),v50,z10,tGripper\WObj:=wobj_Active;
            waitrob\InPos;
            IF fCheckGripperPart() THEN
                rGripper_Close;
                rDecrInvoerbuffer nBuffernum;
            ELSE
                !stuk nog steeds niet aanwezig = volgende stuk 
                IF (InvoerBuffer{nBuffernum}.ActiefStuk=8) THEN
                    !als dit laatste stuk in de rij was eerst naar achter
                    MoveL Offs(Pbuffer,0,-750,0),v4000,z50,tGripper\WObj:=wobj_Active;
                    rDecrInvoerbuffer nBuffernum;
                    IF InvoerBuffer{nBuffernum}.Leeg THEN
                        RETURN ;
                    ELSE
                        goto lbl_nextPart;
                    ENDIF
                ELSE
                    rDecrInvoerbuffer nBuffernum;
                    goto lbl_nextPart;
                ENDIF
            ENDIF
        ENDIF
        !stuk tegen aanslag en goed duwen 
        MoveL Offs(Pbuffer,10,0,0),v4000,fine,tGripper\WObj:=wobj_Active;
        rGripper_Open;
        MoveL Offs(Pbuffer,10,-10,0),v800,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-10,0),v800,z50,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer,v100,fine,tGripper\WObj:=wobj_Active;
        rGripper_CheckPart TRUE;
        rGripper_Close;
        rGripper_CheckPart TRUE\Supervision;
        MoveL Offs(Pbuffer,-5,0,5),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,-5,0,85),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,-5,-5,85),v4000,z50,tGripper\WObj:=wobj_Active;
        !ga naar vaste positie 
        wobj_Active.oframe.trans:=[0,0,0];
        MoveL Offs(Pbuffer,-5,0,555),v4000,z50,tGripper\WObj:=wobj_Active;
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
        MoveAbsJ pHomeJoint_Bu_1\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        !
        BUFFER_UIT 1,Wobj_Buffer_Onder_1,pBuffer_Onder_1;
        ! 
        MoveL [[964.01,1081.00,841.01],[0.706797,0.000717575,0.0102535,0.707342],[-1,-4,-3,0],[-0.0089922,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer1;
        MoveL [[973.50,866.47,863.12],[0.694052,-0.12894,0.133882,0.695515],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer1;
        Movej [[1077.38,701.93,1307.07],[0.693619,-0.131098,0.136236,0.695087],[-1,-4,-2,0],[-0.00637549,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer1;
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
        MoveAbsJ pHomeJoint_Bu_2\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        !
        BUFFER_UIT 2,Wobj_Buffer_Onder_2,pBuffer_Onder_2;
        ! 
        MoveL [[964.01,1081.00,849.01],[0.706817,-0.00074224,0.00888731,0.70734],[-1,-4,-3,0],[-0.00810623,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer2;
        MoveL [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer2;
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
        MoveAbsJ pHomeJoint_Bu_3\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        !
        BUFFER_UIT 3,Wobj_Buffer_Onder_3,pBuffer_Onder_3;
        ! 
        MoveL [[964.01,1081.00,840.01],[0.706797,0.000638517,0.0103426,0.70734],[-1,-4,-3,0],[-0.00762939,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer3;
        MoveL [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer3;
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
        MoveAbsJ pHomeJoint_Bu_4\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        !
        BUFFER_UIT 4,Wobj_Buffer_Onder_4,pBuffer_Onder_4;
        ! 
        MoveL [[964.00,1081.00,840.01],[0.706796,0.00075051,0.0102197,0.707344],[-1,-4,-3,0],[-0.00762939,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer4;
        MoveL [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer4;
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
        MoveAbsJ pHomeJoint_Bu_5\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        !
        BUFFER_UIT 5,Wobj_Buffer_Onder_5,pBuffer_Onder_5;
        ! 
        MoveL [[964.01,1081.00,848.40],[0.706798,0.00074949,0.0102191,0.707341],[-1,-4,-3,0],[-0.0104904,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer5;
        MoveL [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer5;
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
        MoveAbsJ pHomeJoint_Bu_6\NoEOffs,vFastTrack,z50,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[1651.25,-685.86,2349.66],[0.850394,0.0649746,-0.511807,-0.103256],[-1,-2,-3,0],[-0.00279531,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[1419.37,422.00,831.75],[0.870237,0.0688476,0.255949,0.415256],[-1,-4,-2,0],[-0.0018189,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[1259.95,829.12,876.64],[0.806798,-0.1922,0.159569,0.53542],[0,-4,-3,0],[0.00174832,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[965.95,941.91,800.11],[0.699084,-0.105843,0.105271,0.699283],[-1,-4,-3,0],[0.000784861,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        !
        BUFFER_UIT 6,Wobj_Buffer_Onder_6,pBuffer_Onder_6;
        ! 
        MoveL [[964.01,1081.00,842.91],[0.706794,0.000934913,0.0104041,0.707342],[-1,-4,-3,0],[-0.00858307,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer6;
        MoveL [[964.08,859.22,842.98],[0.706872,0.00536178,-3.72045E-05,0.707321],[-1,-4,-3,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z50,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[966.30,636.73,1307.08],[0.706872,0.00536242,-4.20536E-05,0.707321],[-1,-4,-3,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[980.56,16.39,2883.35],[0.582481,0.418994,-0.479568,0.505147],[-1,-3,-2,0],[-0.00897925,9E+09,9E+09,9E+09,9E+09,9E+09]],v7000,z200,tGripper\WObj:=Wobj_Buffer6;
        !
    ENDPROC

    !-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
    !-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------

    PROC BUFFER_IN(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer\switch SafeCheck)
        !
        IF present(Safecheck) THEN
            Buffer_In_safeCheck nBuffernum,WobjBufferx,Pbuffer;
        ELSE
            Buffer_IN_PutPart nBuffernum,WobjBufferx,Pbuffer;
        ENDIF
        !
    ENDPROC


    PROC Buffer_IN_safeCheck(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer)
        !calc position
        VAR num xPos:=0;
        VAR num yPos:=0;
        VAR num zPos:=0;
        VAR num nLaag;
        VAR num nStuk;
        VAR bool bMemory:=FALSE;
        !eerst naar een postie om te kijken of het rek er staat. 
        yPos:=nYposPart(1,\Drop);
        ZPos:=nZposPart(5);
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[xPos,ypos,zpos];
        rGripper_Open;
        lbl_retry:
        MoveL Offs(Pbuffer,0,-200,430),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-170,-150),v4000,z50,tGripper\WObj:=wobj_Active;
        !postie waar de sensoren het rek zien.
        MoveL Offs(Pbuffer,0,-145,-150),v4000,fine,tGripper\WObj:=wobj_Active;
        WaitTime 2;
        IF NOT fCheckGripperPart(\nExpection:=1) THEN
            !NO RACK
            LoggProc "mBuffer",30,"Actieve uitvoerbuffer:"+NumToStr(nBuffernum,0)+" niet gevonden";
            UitvoerBuffer{nBuffernum}.vol:=TRUE;
            MoveL Offs(Pbuffer,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
            MoveL Offs(Pbuffer,0,-200,450),v4000,z50,tGripper\WObj:=wobj_Active;
            UitvoerBuffer{nBuffernum}.veilig:=TRUE;
            RETURN ;
        ENDIF
        MoveL Offs(Pbuffer,0,-170,-150),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-200,0),v4000,z50,tGripper\WObj:=wobj_Active;
        !100 mm van stuk1 onderste rij
        MoveL Offs(Pbuffer,0,-115,0),v4000,z50,tGripper\WObj:=wobj_Active;
        !beweeg richting bovenste laag tot check range dan 1 laag omhoog
        FOR laag FROM 5 TO 1 STEP -1 DO
            MoveL Offs(Pbuffer,0,-115,nZposPart(laag)),v100,z0,tGripper\WObj:=wobj_Active;
            IF fCheckGripperNotInrange()OR (laag=1) THEN
                nLaag:=laag;
                GOTO Lbl_laagGevonden;
            ENDIF
        ENDFOR

        Lbl_laagGevonden:

        FOR stuk FROM 1 TO 8 STEP 1 DO
            MoveL Offs(Pbuffer,0,-115+nYposPart(stuk,\Drop),nZposPart(nLaag)),v100,z0,tGripper\WObj:=wobj_Active;
            IF fCheckGripperNotInrange()=FALSE THEN
                nStuk:=stuk;
                GOTO Lbl_stukgevonden;
            ELSEIF stuk=8 THEN
                !CRASH CRASH 
                !als stuk = 8 EERST naar achter. anders in geval van volle rij crash 
                MoveL Offs(Pbuffer,0,-80+nYposPart(1,\Drop),nZposPart(nLaag)),v100,z0,tGripper\WObj:=wobj_Active;
                nStuk:=1;
                IF nLaag=5 THEN
                    rResetUitvoerbuffer nBuffernum;
                    UitvoerBuffer{nBuffernum}.veilig:=TRUE;
                    RETURN ;
                ELSE
                    incr nLaag;
                endif
            ENDIF
        ENDFOR

        Lbl_stukgevonden:
        UitvoerBuffer{nBuffernum}.ActiefStuk:=nStuk;
        UitvoerBuffer{nBuffernum}.Actievelaag:=nLaag;
        !zoek nu tot je de balk effectief ziet liggen
        lbl_nextpart:
        yPos:=nYposPart(UitvoerBuffer{nBuffernum}.ActiefStuk,\Drop);
        ZPos:=nZposPart(UitvoerBuffer{nBuffernum}.Actievelaag);
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[xPos,ypos,zpos];
        !
        MoveL Offs(Pbuffer,0,-75,0),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer,v100,fine,tGripper\WObj:=wobj_Active;
        IF fCheckGripperPart() THEN
            !beweeg weg van het stuk
            MoveL Offs(Pbuffer,0,-75,0),v4000,z50,tGripper\WObj:=wobj_Active;
            MoveL Offs(Pbuffer,0,-100,5),v4000,z50,tGripper\WObj:=wobj_Active;
        ELSE
            !part not in expected pos 
            !beweeg 1cm verder en kijk of het stuk er dan is 
            MoveL Offs(Pbuffer,0,10,0),v50,z10,tGripper\WObj:=wobj_Active;
            WaitTime\InPos,2;
            !
            IF fCheckGripperPart() THEN
                !beweeg weg van het stuk
                MoveL Offs(Pbuffer,0,-75,0),v4000,z50,tGripper\WObj:=wobj_Active;
                MoveL Offs(Pbuffer,0,-100,5),v4000,z50,tGripper\WObj:=wobj_Active;
            ELSE
                !stuk nog steeds niet aanwezig = volgende stuk of als laag 1 stuk 8 rek leeg 
                rDecrUitvoerbuffer(nBuffernum);
                TPWrite NumToStr(UitvoerBuffer{nBuffernum}.ActiefStuk,0)+" w "+NumToStr(UitvoerBuffer{nBuffernum}.Actievelaag,0);
                IF UitvoerBuffer{nBuffernum}.ActiefStuk=8 and UitvoerBuffer{nBuffernum}.Actievelaag=5 THEN
                    IF bMemory=FALSE THEN
                        bMemory:=TRUE;
                        goto lbl_nextPart;
                    ENDIF
                    rResetUitvoerbuffer nBuffernum;
                    UitvoerBuffer{nBuffernum}.veilig:=TRUE;
                    RETURN ;
                ENDIF
                goto lbl_nextPart;
            ENDIF
        ENDIF
        ! 1 stuk minder dan active 
        rIncrUitvoerbuffer(nBuffernum);
        ! set safe
        UitvoerBuffer{nBuffernum}.Veilig:=TRUE;
        !
    ENDPROC

    PROC Buffer_IN_PutPart(num nBuffernum,wobjdata WobjBufferx,robtarget Pbuffer)
        !calc position
        VAR num xPos:=0;
        VAR num yPos:=0;
        VAR num zPos:=0;
        yPos:=nYposPart(Uitvoerbuffer{nBuffernum}.ActiefStuk,\Drop);
        ZPos:=nZposPart(Uitvoerbuffer{nBuffernum}.Actievelaag);
        !go to fixed pos
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[0,0,0];
        MoveL Offs(Pbuffer,0,30,445),v4000,z1,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,30,410),v4000,z0,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,0,410),v200,fine,tGripper\WObj:=wobj_Active;
        !
        wobj_Active:=WobjBufferx;
        wobj_Active.oframe.trans:=[xPos,yPos,zPos];
        !
        MoveL Offs(Pbuffer,0,-10,10),v4000,z50,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-10,5),v1000,z20,tGripper\WObj:=wobj_Active;
        MoveL Offs(Pbuffer,0,-5,0),v200,z1,tGripper\WObj:=wobj_Active;
        MoveL Pbuffer,v50,fine,tGripper\WObj:=wobj_Active;
        rGripper_PartSupervisionOff;
        rGripper_Open;
        !if part 2 then push to make room for part 1
        IF Uitvoerbuffer{nBuffernum}.ActiefStuk=2 THEN
            !Stop; 
            MoveL Offs(Pbuffer,0,20,0),v50,fine,tGripper\WObj:=wobj_Active;
        ENDIF
        !
        MoveL Offs(Pbuffer,0,-90,0),v50,fine,tGripper\WObj:=wobj_Active;
        rGripper_CheckPart FALSE;
        MoveL Offs(Pbuffer,0,-120,10),v50,fine,tGripper\WObj:=wobj_Active;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveL pBuffer_Boven_Appr_1,v4000,z20,tGripper\WObj:=Wobj_Buffer1;
        !
        BUFFER_IN 1,Wobj_Buffer_Boven_1,pBuffer_Boven_1\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer1;
        MoveAbsJ pHomeJoint_Bu_1\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer1;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveL pBuffer_Boven_Appr_2,v4000,z50,tGripper\WObj:=Wobj_Buffer2;
        !
        BUFFER_IN 2,Wobj_Buffer_Boven_2,pBuffer_Boven_2\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer2;
        MoveAbsJ pHomeJoint_Bu_2\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer2;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveL pBuffer_Boven_Appr_3,v4000,z50,tGripper\WObj:=Wobj_Buffer3;
        !
        BUFFER_IN 3,Wobj_Buffer_Boven_3,pBuffer_Boven_3\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer3;
        MoveAbsJ pHomeJoint_Bu_3\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer3;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveL pBuffer_Boven_Appr_4,v4000,z50,tGripper\WObj:=Wobj_Buffer4;
        !
        BUFFER_IN 4,Wobj_Buffer_Boven_4,pBuffer_Boven_4\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer4;
        MoveAbsJ pHomeJoint_Bu_4\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer4;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveL pBuffer_Boven_Appr_5,v4000,z50,tGripper\WObj:=Wobj_Buffer5;
        !
        Buffer_IN 5,Wobj_Buffer_Boven_5,pBuffer_Boven_5\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer5;
        MoveAbsJ pHomeJoint_Bu_5\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer5;
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
        MoveJ [[960.71,-123.84,2956.18],[0.530631,0.457529,-0.512371,0.496562],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],vFastTrack,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[964.88,730.22,1995.24],[0.704814,0.0592514,-0.0539032,0.704856],[-1,-3,-2,0],[-0.00702643,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveL pBuffer_Boven_Appr_6,v4000,z50,tGripper\WObj:=Wobj_Buffer6;
        !
        BUFFER_IN 6,Wobj_Buffer_Boven_6,pBuffer_Boven_6\SafeCheck ?Safecheck;
        !
        MoveL [[987.74,1099.35,1995.24],[0.705507,0.049229,-0.0438808,0.705628],[-1,-3,-2,0],[-0.00767737,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveJ [[1154.17,653.84,1935.53],[0.718939,0.059201,-0.0712691,0.68887],[-1,-3,-2,0],[-0.00116796,9E+09,9E+09,9E+09,9E+09,9E+09]],v4000,z200,tGripper\WObj:=Wobj_Buffer6;
        MoveAbsJ pHomeJoint_Bu_6\NoEOffs,v7000,z50,tGripper\WObj:=Wobj_Buffer6;
        !
    ENDPROC

ENDMODULE
