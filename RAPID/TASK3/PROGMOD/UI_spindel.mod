MODULE UI_spindel
    VAR intnum Int3ManUnlock := 3;

    
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
        nAnswer:=UIMessageBox(\Header:="status voor de tool:"+NumToStr(toolnum,0)+ " ("+Spindeltool{toolnum}.toolnaam+")"
        \MsgArray:=["Deze tool heeft momenteel volgende parameters",
        "Toerental           = "+NumToStr(Spindeltool{toolnum}.Toerental,0) +" RPM",
        "VoedingBoren        = "+NumToStr(ftcpSpeed(Spindeltool{toolnum}.VoedingBoren),2) +" mm/s", 
        "VoedingFrezen       = "+NumToStr(ftcpSpeed(Spindeltool{toolnum}.VoedingFrezen),2) +" mm/s", 
        "VoedingAanzetBoren  = "+NumToStr(ftcpSpeed(Spindeltool{toolnum}.VoedingAanzetBoren),2) +" mm/s", 
        "VoedingAanzetFrezen = "+NumToStr(ftcpSpeed(Spindeltool{toolnum}.VoedingAanzetFrezen),2) +" mm/s", 
        "FreesStap           = "+NumToStr(Spindeltool{toolnum}.nFreesStap,2) +" mm",
        "VoorFreesStap       = "+NumToStr(Spindeltool{toolnum}.nFreesPrecut,2) +" mm",    
            ""]
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
VAR listitem ParmList{7} := [["","Toerental"], ["","VoedingBoren"], ["","VoedingFrezen"], ["","VoedingAanzetBoren"], ["","VoedingAanzetFrezen"], ["","FreesStap"], ["","VoorFreesStap"]];
VAR num list_item;
VAR speeddata SpeedDummy;
list_item := UIListView( \Header:="Selecteer de parameter die u wilt aanpassen",ParmList \Icon:=iconInfo);
    TEST list_item
      CASE 1:
           Spindeltool{toolnum}.Toerental := nGetSetting(ParmList{list_item}.text,Spindeltool{toolnum}.Toerental,1800,24000);
      CASE 2:
          SpeedDummy := Spindeltool{toolnum}.VoedingBoren;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.VoedingBoren := SpeedDummy;
      CASE 3:
          SpeedDummy := Spindeltool{toolnum}.VoedingFrezen;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,25);
          Spindeltool{toolnum}.VoedingFrezen := SpeedDummy;
      CASE 4:
          SpeedDummy := Spindeltool{toolnum}.VoedingAanzetBoren;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,100);
          Spindeltool{toolnum}.VoedingAanzetBoren := SpeedDummy;
      CASE 5:
          SpeedDummy := Spindeltool{toolnum}.VoedingAanzetFrezen;
          SpeedDummy.v_tcp := nGetSetting(ParmList{list_item}.text, SpeedDummy.v_tcp,0.1,100);
          Spindeltool{toolnum}.VoedingAanzetFrezen := SpeedDummy;
      CASE 6:
          Spindeltool{toolnum}.nFreesStap := nGetSetting(ParmList{list_item}.text,Spindeltool{toolnum}.nFreesStap,-5,0.1);
      CASE 7:
          Spindeltool{toolnum}.nFreesPrecut := nGetSetting(ParmList{list_item}.text,Spindeltool{toolnum}.nFreesPrecut,-2,0.1); 
    ENDTEST
ENDPROC

LOCAL FUNC num  nGetSetting(string sParm, num CurrentValue, num MinValue, num MaxValue)
    VAR num answer;
    IF CurrentValue < minvalue OR CurrentValue > maxvalue THEN 
        currentvalue := minvalue;
    ENDIF
    answer := UINumEntry (\Header:= "Stel de parameter in tussen de toegelaten waarden"
    \Message:="Parameter: " + sParm \Icon:=iconInfo
    \InitValue:=CurrentValue \MinValue:=MinValue \MaxValue:=MaxValue);
    RETURN answer;
ENDFUNC

FUNC num ftcpSpeed(speeddata speed)
    RETURN speed.v_tcp;
ENDFUNC

PROC rSpindelManUnlock(bool bEnable \switch init)
    !***************************************	    
    ! Trap: rSpindelManUnlock
    ! Description: supervision for spindle  
    ! check if spindel is not stopped
    !***************************************        
     IF Present(init) THEN   
      IDelete Int3ManUnlock;  
      CONNECT Int3ManUnlock WITH tSpindelManUnlock;
      ISignalDI diSpindle_Button,1,Int3ManUnlock;
      ISleep Int3ManUnlock;
     ENDIF
     
     IF bEnable THEN
      IWatch Int3ManUnlock;
     ELSE
      ISleep Int3ManUnlock;
     ENDIF
    ENDPROC

  TRAP tSpindelManUnlock
    !***************************************	    
    ! Trap: tSpindelManUnlock
    ! Description: unlock spindel with buton 
    ! stops robot with alarm message 
    ! Connected in rSpindelSprVsn
    !***************************************	    
        WaitTime 3;
        IF TestDI(diSpindle_Button) THEN
            SetDO doSpindle_Air_On,1;
            Reset doSpindle_Lock;
            SetDO doSpindle_Release,1;
          
            WaitDI diSpindle_Button, 0;
            
            SetDO doSpindle_Air_On,1;
            Reset doSpindle_Release;
            SetDO doSpindle_Lock,1;
            IWatch Int3ManUnlock;
        ENDIF
  ENDTRAP


ENDMODULE