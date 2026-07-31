      ******************************************************************
      * COPYBOOK ZKEN0006 (record)                                     *
      ******************************************************************
               03 ZKEN0006-REC.
                  05 ENDO-NCD-YEARS        PIC X(20).
                  05 ENDO-REG-NUMBER       PIC S9(4) COMP.
                  05 ENDO-CC-RATING        PIC 9(8).
                  05 ENDO-ROOF-TYPE        PIC S9(4) COMP.
                  05 ENDO-HOUSE-TYPE       PIC X(10).
                  05 ENDO-MANAGED-FUND     PIC X(10).
                  05 ENDO-BROKER-ID        PIC 9(8).
                  05 ENDO-EXCESS           PIC 9(8).
                  05 ENDO-COLOUR           PIC X(20).
                  05 ENDO-MODEL            PIC S9(4) COMP.
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
