MODULE UI_Buffers

  PROC rSetBufferIn()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken INVOERBUFFER"
        \MsgArray:=["Dit zijn de buffers waar de nieuwe balken uit genomen worden","selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","Buffer4","Buffer5"]);
        TEST nAnswer
        CASE 1:
         rSetInVoerbufferStatus(1);
        CASE 2:
         rSetInVoerbufferStatus(2);
        CASE 3:
         rSetInVoerbufferStatus(3);
        CASE 4:
         rSetInVoerbufferStatus(4);
        CASE 5:
         rSetInVoerbufferStatus(5);
        ENDTEST  
       lblExit:
   ENDPROC
   
   PROC rSetBufferOut()
        VAR btnres nAnswer;
        nAnswer:=UIMessageBox(\Header:="Dwarsbalken UITVOERBUFFER"
        \MsgArray:=["Dit zijn de buffers waar de afgewerkte balken naar toe moeten","selecteer een buffer om het status te veranderen"],
        \BtnArray:=["Buffer1","Buffer2","Buffer3","Buffer4","Buffer5"]);
        TEST nAnswer
        CASE 1:
         rSetUitvoerbufferStatus(1);
        CASE 2:
         rSetUitvoerbufferStatus(2);
        CASE 3:
         rSetUitvoerbufferStatus(3);
        CASE 4:
         rSetUitvoerbufferStatus(4);
        CASE 5:
         rSetUitvoerbufferStatus(5);
        ENDTEST  
       lblExit:
   ENDPROC
    
    
PROC rSetInVoerbufferStatus(num nBuffer)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="INVOERBUFFER status voor buffer"+NumToStr(nBuffer,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status",
         "indienst="+sBooltoString(invoerbuffer{nBuffer}.indienst),
         "buffervol="+sBooltoString(InvoerBuffer{nBuffer}.vol),
         "bufferleeg="+sBooltoString(InvoerBuffer{nBuffer}.leeg),
         "aantalstukken="+NumToStr((InvoerBuffer{nBuffer}.actiefstuk*InvoerBuffer{nBuffer}.actievelaag),0),
         "actievelaag="+NumToStr(InvoerBuffer{nBuffer}.actievelaag,0), 
         "actiefstuk="+NumToStr(InvoerBuffer{nBuffer}.actiefstuk,0)],
        \BtnArray:=["InDienst","UitDienst","VOL","","Terug"]);
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
        ENDTEST  
       lblExit:
       !
ENDPROC

PROC rSetUitvoerbufferStatus(num nBuffer)
        VAR btnres nAnswer;
        lbl_begin:
        nAnswer:=UIMessageBox(\Header:="UITVOERBUFFER status voor buffer"+NumToStr(nBuffer,0)
        \MsgArray:=["Deze buffer heeft momenteel het volgende status",
         "indienst="+sBooltoString(invoerbuffer{nBuffer}.indienst),
         "buffervol="+sBooltoString(InvoerBuffer{nBuffer}.vol),
         "bufferleeg="+sBooltoString(InvoerBuffer{nBuffer}.leeg),
         "aantalstukken="+NumToStr((InvoerBuffer{nBuffer}.actiefstuk*InvoerBuffer{nBuffer}.actievelaag),0),
         "actievelaag="+NumToStr(InvoerBuffer{nBuffer}.actievelaag,0), 
         "actiefstuk="+NumToStr(InvoerBuffer{nBuffer}.actiefstuk,0)],
         \BtnArray:=["InDienst","UitDienst","LEEG","Aanvraag","Terug"]);
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
        ENDTEST  
       lblExit:
       !
ENDPROC

LOCAL PROC rSetRequest(Num nbuffer)
   VAR PartType AantalPartsGewenst; 
   AantalPartsGewenst := UitvoerBuffer{nBuffer}.AantalPartsGewenst;
   UitvoerBuffer{nBuffer}.leeg := true;
   AantalPartsGewenst.Balk330 := 1;
   AantalPartsGewenst.Balk331 := 1;
   AantalPartsGewenst.Balk332 := 1;
   UitvoerBuffer{nBuffer}.AantalPartsGewenst := AantalPartsGewenst;
   !
endproc
  
LOCAL PROC rResetInvoerbuffer(num nBuffer)
    !***************************************	    
    ! Func: rResetInvoerbuffer
    ! Description: set het status vol van inbuffer
    !***************************************  
    InvoerBuffer{nBuffer}.vol := true;
    InvoerBuffer{nBuffer}.Actiefstuk := 1; !vol rek = part1 rij1  
    InvoerBuffer{nBuffer}.Actievelaag := 1; !vol rek = part1 rij1  
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
   !
ENDPROC
   
ENDMODULE