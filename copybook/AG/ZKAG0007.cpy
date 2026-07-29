      ******************************************************************
      * COPYBOOK ZKAG0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0007-REC.
                  05 AGEN-STATUS-CODE      PIC X(10).
                  05 AGEN-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 AGEN-PREMIUM          PIC X(10).
                  05 AGEN-ROOF-TYPE        PIC 9(8).
                  05 AGEN-EXCESS           PIC S9(7)V99 COMP-3.
                  05 AGEN-COLOUR           PIC 9(8).
                  05 AGEN-EQUITIES         PIC X(10).
                  05 AGEN-TAX-BAND         PIC 9(8).
                  05 AGEN-MODEL            PIC S9(4) COMP.
                  05 AGEN-REG-NUMBER       PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
