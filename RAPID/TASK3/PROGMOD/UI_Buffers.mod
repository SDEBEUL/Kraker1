MODULE UI_Buffers

  PROC rDwarsBalken()
        VAR btnres nAnswer;
        VAR errnum err_var;
        lblBegin:
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken"
        \MsgArray:=["CONTROLLER WELKE BUFFERS ACTIEF ZIJN!",
        "InVoerBuffer  => Lastused" + NumToStr(nLastInvoerbuffer,0) + "  (voor nieuwe balken) ",
        "UitVoerBuffer => Lastused:" +  NumToStr(nLastUitvoerbuffer,0)  +"  (voor afgewerkte balken)",
        "Start => begin met procutie (Huidige status: " + sBooltoString( Production.Dwarsbalken) +")"],
        \BtnArray:=["Start","Stop","InVoerBuffer","UitVoerBuffer","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
               Production.Dwarsbalken := TRUE;
               GOTO lblBegin;
            CASE 2:
               Production.Dwarsbalken := FALSE;
              GOTO lblBegin;
            CASE 3:
              rSetBufferIn;
              GOTO lblBegin;
            CASE 4:
              rSetBufferOut;
              GOTO lblBegin;
            CASE 5:
              GOTO lblExit;
            DEFAULT:
              IF err_var = ERR_TP_DOBREAK THEN
                 SetDO SO_UI_refresh, 0;
                 GOTO lblBegin;
              ENDIF
        ENDTEST  
       lblExit:
  ENDPROC  
    
  LOCAL PROC rSetBufferIn()
        VAR btnres nAnswer;
        VAR errnum err_var;
      lbl_begin:
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken INVOERBUFFER"
        \MsgArray:=["Dit zijn de buffers waar de nieuwe balken uit genomen worden"
        ,"selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","meer","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
             rSetInVoerbufferStatus(1);
             GOTO lbl_begin;
            CASE 2:
             rSetInVoerbufferStatus(2);
             GOTO lbl_begin;
            CASE 3:
             rSetInVoerbufferStatus(3);
             GOTO lbl_begin;
            CASE 4:
                nAnswer:=UIMessageBox(\Header:="Dwarsbalken INVOERBUFFER"
                \MsgArray:=["Dit zijn de buffers waar de nieuwe balken uit genomen worden","selecteer een buffer om het status te veranderen"],
                \BtnArray:=["Buffer4","Buffer5","Buffer6","meer","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
                TEST nAnswer
                    CASE 1:
                     rSetInVoerbufferStatus(4);
                     GOTO lbl_begin;
                    CASE 2:
                     rSetInVoerbufferStatus(5);
                     GOTO lbl_begin;
                    CASE 3:
                     rSetInVoerbufferStatus(6);
                     GOTO lbl_begin;
                    CASE 4:
                      GOTO lbl_begin;
                    CASE 5:
                     GOTO lblExit;
                    DEFAULT:
                      IF err_var = ERR_TP_DOBREAK THEN
                        SetDO SO_UI_refresh, 0;
                        GOTO lbl_begin;
                      ENDIF
                ENDTEST  
            CASE 5:
             GOTO lblExit;
            DEFAULT:
              IF err_var = ERR_TP_DOBREAK THEN
                 SetDO SO_UI_refresh, 0;
                 GOTO lbl_begin;
              ENDIF
        ENDTEST  
       lblExit:
   ENDPROC
   
 LOCAL PROC rSetBufferOut()
        VAR btnres nAnswer;
        VAR errnum err_var;
        VAR PartType AantalPartsGewenst;
        VAR PartType AantalPartsAanwezig;
        VAR string sPart{3} := ["","",""];
      lbl_begin:
      IF nLastUitvoerbuffer <> 0 THEN
        AantalPartsGewenst := UitvoerBuffer{nLastUitvoerbuffer}.AantalPartsGewenst;
        AantalPartsAanwezig := UitvoerBuffer{nLastUitvoerbuffer}.AantalPartsAanwezig;
        sPart := [
        "Aantal Balk330= "+NumToStr(AantalPartsAanwezig.Balk330,0)+"/"+NumToStr(AantalPartsGewenst.Balk330,0),
        "Aantal Balk331= "+NumToStr(AantalPartsAanwezig.Balk331,0)+"/"+NumToStr(AantalPartsGewenst.Balk331,0),
        "Aantal Balk332= "+NumToStr(AantalPartsAanwezig.Balk332,0)+"/"+NumToStr(AantalPartsGewenst.Balk332,0)];
      ELSE
       sPart := ["geen buffer beschikbaar","",""];
      ENDIF 
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken UITVOERBUFFER"
        \MsgArray:=["Dit zijn de buffers waar de afgewerkte balken naar toe moeten",
        "Last used buffer: " + NumToStr(nLastUitvoerbuffer,0),
        "-----------------------------------",
        sPart{1},
        sPart{2},
        sPart{3},
        "",
        "",
        "",
        "",
        "selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","meer","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
             rSetUitvoerbufferStatus(1);
             GOTO lbl_begin;
            CASE 2:
             rSetUitvoerbufferStatus(2);
             GOTO lbl_begin;
            CASE 3:
             rSetUitvoerbufferStatus(3);
             GOTO lbl_begin;
            CASE 4:
                 nAnswer:=UIMessageBox(\Header:="Dwarsbalken UITVOERBUFFER"
                \MsgArray:=["Dit zijn de buffers waar de afgewerkte balken naar toe moeten",
                "Last used buffer: " + NumToStr(nLastUitvoerbuffer,0),
                "-----------------------------------",
                sPart{1},
                sPart{2},
                sPart{3},
                "",
                "",
                "",
                "",
                "selecteer een buffer om het status te veranderen"],
                \BtnArray:=["Buffer4","Buffer5","Buffer6","meer","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
                TEST nAnswer
                    CASE 1:
                     rSetUitvoerbufferStatus(4);
                     GOTO lbl_begin;
                    CASE 2:
                     rSetUitvoerbufferStatus(5);
                     GOTO lbl_begin;
                    CASE 3:
                     rSetUitvoerbufferStatus(6);
                     GOTO lbl_begin;
                    CASE 4:
                      GOTO lbl_begin;
                    CASE 5:
                     GOTO lblExit;
                    DEFAULT:
                      IF err_var = ERR_TP_DOBREAK THEN
                        SetDO SO_UI_refresh, 0;
                        GOTO lbl_begin;
                      ENDIF
                ENDTEST  
            CASE 5:
             GOTO lblExit;
            DEFAULT:
              IF err_var = ERR_TP_DOBREAK THEN
                 SetDO SO_UI_refresh, 0;
                 GOTO lbl_begin;
              ENDIF
        ENDTEST  
       lblExit:
   ENDPROC
    
    
LOCAL PROC rSetInVoerbufferStatus(num nBuffer)
        VAR btnres nAnswer;
        VAR errnum err_var;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="INVOERBUFFER status voor buffer"+NumToStr(nBuffer,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status",
         "indienst="+sBooltoString(invoerbuffer{nBuffer}.indienst),
         "buffervol="+sBooltoString(InvoerBuffer{nBuffer}.vol),
         "bufferleeg="+sBooltoString(InvoerBuffer{nBuffer}.leeg),
         "bufferVeilig="+sBooltoString(InvoerBuffer{nBuffer}.veilig),
         "aantalstukken="+NumToStr((InvoerBuffer{nBuffer}.actiefstuk*InvoerBuffer{nBuffer}.actievelaag),0),
         "actievelaag="+NumToStr(InvoerBuffer{nBuffer}.actievelaag,0), 
         "actiefstuk="+NumToStr(InvoerBuffer{nBuffer}.actiefstuk,0)],
        \BtnArray:=["InDienst","UitDienst","RESET","","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
              InvoerBuffer{nBuffer}.indienst := true;
              GOTO lbl_begin;
            CASE 2:
              InvoerBuffer{nBuffer}.indienst := false;
              GOTO lbl_begin;
            CASE 3:
              rResetInvoerbuffer(nBuffer);
              GOTO lbl_begin;
            CASE 4:
              !leeg
            CASE 5:
               GOTO lblExit;
            DEFAULT:
              IF err_var = ERR_TP_DOBREAK THEN
                SetDO SO_UI_refresh, 0;
                GOTO lbl_begin;
              ENDIF
        ENDTEST  
       lblExit:
       !
ENDPROC

LOCAL PROC rSetUitvoerbufferStatus(num nBuffer)
        VAR btnres nAnswer;
        VAR errnum err_var;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="UITVOERBUFFER status voor buffer"+NumToStr(nBuffer,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status",
         "indienst="+sBooltoString(UitvoerBuffer{nBuffer}.indienst),
         "buffervol="+sBooltoString(UitvoerBuffer{nBuffer}.vol),
         "bufferleeg="+sBooltoString(UitvoerBuffer{nBuffer}.leeg),
         "bufferVeilig="+sBooltoString(UitvoerBuffer{nBuffer}.veilig),
         "aantalstukken="+NumToStr((UitvoerBuffer{nBuffer}.actiefstuk*UitvoerBuffer{nBuffer}.actievelaag),0),
         "actievelaag="+NumToStr(UitvoerBuffer{nBuffer}.actievelaag,0), 
         "actiefstuk="+NumToStr(UitvoerBuffer{nBuffer}.actiefstuk,0)],
         \BtnArray:=["InDienst","UitDienst","RESET","Aanvraag","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
              UitvoerBuffer{nBuffer}.indienst := true;
              GOTO lbl_begin;
            CASE 2:
              UitvoerBuffer{nBuffer}.indienst := false;
              GOTO lbl_begin;
            CASE 3:
               rResetUitvoerbuffer(nBuffer);
              GOTO lbl_begin;
            CASE 4:
              rSetRequest(nbuffer);
              GOTO lbl_begin;
            CASE 5:
               GOTO lblExit;
            DEFAULT:
             IF err_var = ERR_TP_DOBREAK THEN
               SetDO SO_UI_refresh, 0;
               GOTO lbl_begin;
             ENDIF
        ENDTEST  
       lblExit:
       !
ENDPROC

LOCAL PROC rSetRequest(Num nbuffer)
        VAR btnres nAnswer;
        VAR errnum err_var;
        VAR PartType AantalPartsGewenst;
        VAR PartType AantalPartsAanwezig;
      lbl_begin:
        AantalPartsGewenst := UitvoerBuffer{nBuffer}.AantalPartsGewenst;
        AantalPartsAanwezig := UitvoerBuffer{nBuffer}.AantalPartsAanwezig;
        nAnswer:=UIMessageBox(\Header:="Aanvraag status voor buffer"+NumToStr(nBuffer,0)
        \MsgArray:=["Deze buffer ontvangt momenteel deze combinatie van stukken",
         "Aantal Balk330="+NumToStr(AantalPartsGewenst.Balk330,0),
         "Aantal Balk331="+NumToStr(AantalPartsGewenst.Balk331,0),
         "Aantal Balk332="+NumToStr(AantalPartsGewenst.Balk332,0),
         "-------------------------------------------------------",
         "Dit zijn de balken die zich nu in de buffer bevinden",
         "Aantal Balk330="+NumToStr(AantalPartsAanwezig.Balk330,0),
         "Aantal Balk331="+NumToStr(AantalPartsAanwezig.Balk331,0),
         "Aantal Balk332="+NumToStr(AantalPartsAanwezig.Balk332,0),
         
         "Selecteer een type om het aantal aan te passen"],
         \BtnArray:=["Balk330","Balk331","Balk332","Set0","Terug"],\DOBreak := so_ui_refresh,\BreakFlag:=err_var );
        TEST nAnswer
            CASE 1:
              AantalPartsGewenst.Balk330 := nGetaantal(part.Balk330, AantalPartsGewenst.Balk330, (40-AantalPartsGewenst.Balk331+AantalPartsGewenst.Balk332));
              UitvoerBuffer{nBuffer}.AantalPartsGewenst := AantalPartsGewenst;
              GOTO lbl_begin;
            CASE 2:
              AantalPartsGewenst.Balk331 := nGetaantal(part.Balk331, AantalPartsGewenst.Balk331, (40-AantalPartsGewenst.Balk330+AantalPartsGewenst.Balk332));
              UitvoerBuffer{nBuffer}.AantalPartsGewenst := AantalPartsGewenst;
              GOTO lbl_begin;
            CASE 3:
              AantalPartsGewenst.Balk332 := nGetaantal(part.Balk332, AantalPartsGewenst.Balk332, (40-AantalPartsGewenst.Balk330+AantalPartsGewenst.Balk331));
              UitvoerBuffer{nBuffer}.AantalPartsGewenst := AantalPartsGewenst;
              GOTO lbl_begin;
            CASE 4:
              AantalPartsGewenst.Balk330 := 0;
              AantalPartsGewenst.Balk331 := 0;
              AantalPartsGewenst.Balk332 := 0;
              UitvoerBuffer{nBuffer}.AantalPartsGewenst := AantalPartsGewenst;
              GOTO lbl_begin;
            CASE 5:
               GOTO lblExit;
            DEFAULT:
              IF err_var = ERR_TP_DOBREAK THEN
                SetDO SO_UI_refresh, 0;
                GOTO lbl_begin;
              ENDIF
        ENDTEST  
       lblExit:
       !
endproc

LOCAL FUNC num  nGetaantal(num nPartType, num CurrentValue, num MaxValue)
VAR num answer;
answer := UINumEntry (\Header:= "Hoeveel stukken mogen in deze buffer?"
\Message:="Gewenst aantal stukken voor: " + sPartTypetoString(nPartType) \Icon:=iconInfo
\InitValue:=CurrentValue \MinValue:=0 \MaxValue:=MaxValue);
RETURN answer;
ENDFUNC
  
LOCAL PROC rResetInvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rResetInvoerbuffer
    ! Description: set het status vol van inbuffer
    !***************************************  
    InvoerBuffer{nBuffer}.vol := true;
    InvoerBuffer{nBuffer}.leeg := FALSE;
    InvoerBuffer{nBuffer}.Actiefstuk := 1; !vol rek = part1 rij1  
    InvoerBuffer{nBuffer}.Actievelaag := 1; !vol rek = part1 rij1  
    InvoerBuffer{nBuffer}.veilig := FALSE;
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
   UitvoerBuffer{nBuffer}.vol := false;
   AantalPartsAanwezig.Balk330 := 0;
   AantalPartsAanwezig.Balk331 := 0;
   AantalPartsAanwezig.Balk332 := 0;
   UitvoerBuffer{nBuffer}.AantalPartsAanwezig := AantalPartsAanwezig;
   UitvoerBuffer{nBuffer}.ActiefStuk := 8; !leeg rek = part8 rij5
   UitvoerBuffer{nBuffer}.Actievelaag := 5; !leeg rek = part8 rij5
   UitvoerBuffer{nBuffer}.Veilig := FALSE;
   !
ENDPROC
   
ENDMODULE