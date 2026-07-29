      ******************************************************************
      * COPYBOOK ZKCL0002 (record)                                     *
      ******************************************************************
               03 ZKCL0002-REC.
                  05 CLAI-WITH-PROFITS     PIC X(10).
                  05 CLAI-CC-RATING        PIC S9(4) COMP.
                  05 CLAI-EXCESS           PIC S9(4) COMP.
                  05 CLAI-TERM             PIC S9(4) COMP.
                  05 CLAI-MODEL            PIC S9(4) COMP.
                  05 CLAI-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 CLAI-STATUS-CODE      PIC X(20).
                  05 CLAI-MANAGED-FUND     PIC S9(4) COMP.
                  05 CLAI-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 CLAI-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
