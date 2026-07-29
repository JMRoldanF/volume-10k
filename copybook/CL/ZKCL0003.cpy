      ******************************************************************
      * COPYBOOK ZKCL0003 (record)                                     *
      ******************************************************************
               03 ZKCL0003-REC.
                  05 CLAI-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 CLAI-ROOF-TYPE        PIC 9(8).
                  05 CLAI-CC-RATING        PIC 9(8).
                  05 CLAI-TAX-BAND         PIC X(10).
                  05 CLAI-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 CLAI-TERM             PIC S9(7)V99 COMP-3.
                  05 CLAI-REG-NUMBER       PIC 9(8).
                  05 CLAI-MANAGED-FUND     PIC X(20).
                  05 CLAI-SUM-ASSURED      PIC S9(4) COMP.
                  05 CLAI-WITH-PROFITS     PIC X(20).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
