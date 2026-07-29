      ******************************************************************
      * COPYBOOK ZKAG0002 (record)                                     *
      ******************************************************************
               03 ZKAG0002-REC.
                  05 AGEN-COLOUR           PIC X(10).
                  05 AGEN-TERM             PIC X(10).
                  05 AGEN-SUM-ASSURED      PIC X(10).
                  05 AGEN-VALUE            PIC X(10).
                  05 AGEN-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 AGEN-AGENT-CODE       PIC 9(8).
                  05 AGEN-MODEL            PIC S9(4) COMP.
                  05 AGEN-PREMIUM          PIC 9(8).
                  05 AGEN-TAX-BAND         PIC X(20).
                  05 AGEN-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
