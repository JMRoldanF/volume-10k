      ******************************************************************
      * COPYBOOK ZKCL0006 (record)                                     *
      ******************************************************************
               03 ZKCL0006-REC.
                  05 CLAI-HOUSE-TYPE       PIC X(20).
                  05 CLAI-EXCESS           PIC S9(7)V99 COMP-3.
                  05 CLAI-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 CLAI-COLOUR           PIC S9(4) COMP.
                  05 CLAI-MODEL            PIC S9(7)V99 COMP-3.
                  05 CLAI-MAKE             PIC S9(4) COMP.
                  05 CLAI-VALUE            PIC S9(7)V99 COMP-3.
                  05 CLAI-BEDROOMS         PIC S9(4) COMP.
                  05 CLAI-SUM-ASSURED      PIC X(20).
                  05 CLAI-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
