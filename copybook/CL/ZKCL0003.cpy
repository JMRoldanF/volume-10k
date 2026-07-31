      ******************************************************************
      * COPYBOOK ZKCL0003 (record)                                     *
      ******************************************************************
               03 ZKCL0003-REC.
                  05 CLAI-EXCESS           PIC S9(4) COMP.
                  05 CLAI-CC-RATING        PIC S9(4) COMP.
                  05 CLAI-COLOUR           PIC S9(4) COMP.
                  05 CLAI-ROOF-TYPE        PIC X(10).
                  05 CLAI-VALUE            PIC 9(8).
                  05 CLAI-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 CLAI-BEDROOMS         PIC S9(4) COMP.
                  05 CLAI-AGENT-CODE       PIC X(20).
                  05 CLAI-STATUS-CODE      PIC S9(4) COMP.
                  05 CLAI-MODEL            PIC 9(8).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
