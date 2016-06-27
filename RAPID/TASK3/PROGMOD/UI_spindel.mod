MODULE UI_spindel
  

    
 PROC rSpindelToolUI() 
        VAR btnres nAnswer;
      lbl_begin:
        nAnswer:=UIMessageBox(\Header:="SpindelTools"
        \MsgArray:=["Dit zijn de tools die de spindel kan gebruiken","selecteer een tool om iets te veranderen"],
        \BtnArray:=[Spindeltool{1}.toolnaam,Spindeltool{2}.toolnaam,Spindeltool{3}.toolnaam,"meer","Terug"]);
        TEST nAnswer
        CASE 1:
         rSetSpindelTool(1);
         GOTO lbl_begin;
        CASE 2:
         rSetSpindelTool(2);
         GOTO lbl_begin;
        CASE 3:
         rSetSpindelTool(3);
         GOTO lbl_begin;
        CASE 4:
        nAnswer:=UIMessageBox(\Header:="SpindelTools"
        \MsgArray:=["Dit zijn de tools die de spindel kan gebruiken","selecteer een tool om iets te veranderen"],
         \BtnArray:=[Spindeltool{4}.toolnaam,Spindeltool{5}.toolnaam,Spindeltool{6}.toolnaam,"meer","Terug"]);
        TEST nAnswer
        CASE 1:
         rSetSpindelTool(4);
         GOTO lbl_begin;
        CASE 2:
         rSetSpindelTool(5);
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
   
  PROC rSetSpindelTool(num toolnum)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="status voor de tool"+NumToStr(toolnum,0)
        \MsgArray:=["Deze tool heeft momenteel volgende parameters",""]
        \BtnArray:=["Parameters","","","","Terug"]);
        TEST nAnswer
        CASE 1:
          rlistToolParams(toolnum);
          GOTO lbl_begin;
        CASE 2:

          GOTO lbl_begin;
        CASE 3:

          GOTO lbl_begin;
        CASE 4:

          GOTO lbl_begin;
        CASE 5:
           GOTO lblExit;
        ENDTEST  
       lblExit:
ENDPROC


PROC rlistToolParams(Num toolnum)
VAR listitem ParmList{5} := [["","defaultspeed"], ["","Boorsnelheid"], ["","Freessnelheid"], ["","BoorsnelheidAanzet"], ["","FreessnelheidAanzet"]];
VAR num list_item;
VAR speeddata SpeedDummy;
list_item := UIListView( \Header:="Selecteer de parameter die u wilt aanpassen",ParmList \Icon:=iconInfo);
    TEST list_item
      CASE 1:
       Spindeltool{toolnum}.defaultspeed := nGetSetting(ParmList{list_item}.text,Spindeltool{toolnum}.defaultspeed,1800,24000);
      CASE 2:
          SpeedDummy := Spindeltool{toolnum}.Boorsnelheid;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.Boorsnelheid := SpeedDummy;
      CASE 3:
          SpeedDummy := Spindeltool{toolnum}.Freessnelheid;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.Freessnelheid := SpeedDummy;
      CASE 4:
          SpeedDummy := Spindeltool{toolnum}.BoorsnelheidAanzet;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.BoorsnelheidAanzet := SpeedDummy;
      CASE 5:
          SpeedDummy := Spindeltool{toolnum}.FreessnelheidAanzet;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.FreessnelheidAanzet := SpeedDummy;
    ENDTEST
ENDPROC

LOCAL FUNC num  nGetSetting(string sParm, num CurrentValue, num MinValue, num MaxValue)
VAR num answer;
answer := UINumEntry (\Header:= "Stel de parameter in tussen de toegelaten waarden"
\Message:="Parameter: " + sParm \Icon:=iconInfo
\InitValue:=CurrentValue \MinValue:=MinValue \MaxValue:=MaxValue);
RETURN answer;
ENDFUNC

ENDMODULE