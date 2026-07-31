      ******************************************************************
      * COPYBOOK ZKCL0002 (record)                                     *
      ******************************************************************
               03 ZKCL0002-REC.
                  05 CLAI-EXCESS           PIC X(10).
                  05 CLAI-MANAGED-FUND     PIC X(20).
                  05 CLAI-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 CLAI-TERM             PIC 9(8).
                  05 CLAI-BEDROOMS         PIC X(20).
                  05 CLAI-MODEL            PIC X(20).
                  05 CLAI-POSTCODE         PIC X(10).
                  05 CLAI-REG-NUMBER       PIC S9(4) COMP.
                  05 CLAI-HOUSE-TYPE       PIC X(20).
                  05 CLAI-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
