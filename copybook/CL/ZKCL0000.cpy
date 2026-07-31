      ******************************************************************
      * COPYBOOK ZKCL0000 (record)                                     *
      ******************************************************************
               03 ZKCL0000-REC.
                  05 CLAI-MAKE             PIC S9(4) COMP.
                  05 CLAI-MODEL            PIC 9(8).
                  05 CLAI-TAX-BAND         PIC S9(4) COMP.
                  05 CLAI-CC-RATING        PIC X(10).
                  05 CLAI-AGENT-CODE       PIC 9(8).
                  05 CLAI-HOUSE-TYPE       PIC X(20).
                  05 CLAI-ROOF-TYPE        PIC S9(4) COMP.
                  05 CLAI-VALUE            PIC X(10).
                  05 CLAI-COLOUR           PIC S9(7)V99 COMP-3.
                  05 CLAI-REG-NUMBER       PIC S9(4) COMP.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
