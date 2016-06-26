MODULE UI_Stations
    
  PROC rSetStations()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Stations"
        \MsgArray:=["Dit zijn de stations waar de nieuwe balken gemaakt worden","selecteer een station om het status te veranderen"],
        \BtnArray:=["Station1","Station2","Station3","Station4","Station5"]);
        TEST nAnswer
        CASE 1:
         rSetStationStatus(1);
        CASE 2:
         rSetStationStatus(2);
        CASE 3:
         rSetStationStatus(3);
        CASE 4:
         rSetStationStatus(4);
        CASE 5:
         rSetStationStatus(5);
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
        \MsgArray:=["Dit Station heeft momenteel het volgende status"
        ,"klemmen= xx",
        "open=1 close = 0"],
        \BtnArray:=["OPEN","","CLOSE","","Terug"]);
        TEST nAnswer
        CASE 1:
          !open klemmen
          !rSetSationClamps stationnum, FALSE,\nWaittime:=0;
          GOTO lbl_begin;
        CASE 2:
           !leeg
        CASE 3:
          !sluit klemmen
          !rSetSationClamps stationnum, TRUE,\nWaittime:=0;
          GOTO lbl_begin;
        CASE 4:
          !leeg
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
ENDPROC

ENDMODULE