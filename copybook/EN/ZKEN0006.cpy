      ******************************************************************
      * COPYBOOK ZKEN0006 (record)                                     *
      ******************************************************************
               03 ZKEN0006-REC.
                  05 ENDO-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 ENDO-HOUSE-TYPE       PIC S9(4) COMP.
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 ENDO-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 ENDO-MANAGED-FUND     PIC 9(8).
                  05 ENDO-EXCESS           PIC S9(4) COMP.
                  05 ENDO-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 ENDO-SUM-ASSURED      PIC X(10).
                  05 ENDO-MODEL            PIC S9(4) COMP.
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
