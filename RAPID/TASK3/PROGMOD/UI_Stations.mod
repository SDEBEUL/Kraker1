MODULE UI_Stations
    
  PROC rSetStations()
        VAR btnres nAnswer;
      lbl_begin:
        nAnswer:=UIMessageBox(\Header:="Stations"
        \MsgArray:=["Dit zijn de stations waar de nieuwe balken gemaakt worden","selecteer een station om het status te veranderen"],
        \BtnArray:=["Station1","Station2","Station3","meer","Terug"]);
        TEST nAnswer
        CASE 1:
         rSetStationStatus(1);
         GOTO lbl_begin;
        CASE 2:
         rSetStationStatus(2);
         GOTO lbl_begin;
        CASE 3:
         rSetStationStatus(3);
         GOTO lbl_begin;
        CASE 4:
        nAnswer:=UIMessageBox(\Header:="Stations"
        \MsgArray:=["Dit zijn de stations waar de nieuwe balken gemaakt worden","selecteer een station om het status te veranderen"],
        \BtnArray:=["Station4","Station5","","meer","Terug"]);
        TEST nAnswer
        CASE 1:
         rSetStationStatus(4);
         GOTO lbl_begin;
        CASE 2:
         rSetStationStatus(5);
         GOTO lbl_begin;
        CASE 3:
         !leeg
        CASE 4:
         GOTO lbl_begin; 
        CASE 5:
         GOTO lblExit;
        ENDTEST
        
        CASE 5:
         GOTO lblExit;
        ENDTEST  
       lblExit:
   ENDPROC

PROC rSetStationStatus(num stationnum)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="status voor station"+NumToStr(stationnum,0)
        \MsgArray:=["Dit Station heeft momenteel het volgende status",
         "indienst="+sBooltoString(Station{stationnum}.indienst),
         "Lading="+sPartTypetoString(Station{stationnum}.Lading),
         "Bewerkingsstap="+NumToStr(Station{stationnum}.Bewerkingsstap,0),
         "Opdracht="+sPartTypetoString(Station{stationnum}.Opdracht),
         "xOffset="+NumToStr(Station{stationnum}.xOffset,0)]
        \BtnArray:=["Indienst","Uitdienst","Lading","Klemmen","Terug"]);
        !moet andere statussen nog verder aanvullen 
        TEST nAnswer
        CASE 1:
          station{stationnum}.inDienst := TRUE;
          GOTO lbl_begin;
        CASE 2:
          station{stationnum}.inDienst := FALSE;
          GOTO lbl_begin;
        CASE 3:
          !StationStatus{stationnum} := DwarsbalkScrap;
          GOTO lbl_begin;
        CASE 4:
          rSetStationClamps(stationnum);
          GOTO lbl_begin;
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
ENDPROC

PROC rSetStationClamps(num stationnum)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="Station klemmen voor station"+NumToStr(stationnum,0)
        \MsgArray:=["PAS OP MET HET BEDIENEN VAN DE KLEMMEN!"],
        \BtnArray:=["OPEN","","CLOSE","","Terug"]);
        TEST nAnswer
        CASE 1:
          !open klemmen
          rSetSationClamps stationnum \open \nWaittime:=0;
          GOTO lbl_begin;
        CASE 2:
           !leeg
        CASE 3:
          !sluit klemmen
           rSetSationClamps stationnum \close \nWaittime:=0;
          GOTO lbl_begin;
        CASE 4:
          !leeg
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
ENDPROC

PROC rSetSationClamps(num nStation,\switch open \switch close, \num nWaittime)
    !***************************************	    
    ! Proc: rSetSationClamps
    ! Description: open of sluit klemmen 
    !***************************************
    VAR num nState;
    IF Present(close) THEN
        nState := 0;
    endif
    IF Present(open) THEN
        nState := 1;
    ENDIF
    IF Present(close) AND Present(open) THEN
        RETURN;
    ENDIF
    TEST nStation
          CASE 1:
              SetDO doKP_1_Ventiel,nState;
          CASE 2:
              SetDO doKP_2_Ventiel,nState;
          CASE 3:
              SetDO doKP_3_Ventiel,nState;
          CASE 4:
              SetDO doKP_4_Ventiel,nState;
          CASE 5:
              SetDO doKP_5_Ventiel,nState;   
    ENDTEST   
    IF Present(nWaittime) THEN
      WaitTime nWaittime;
    ELSE
       WaitTime 3;
    ENDIF
    !

ENDPROC
ENDMODULE