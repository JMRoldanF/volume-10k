      ******************************************************************
      * COPYBOOK ZKEN0009 (record)                                     *
      ******************************************************************
               03 ZKEN0009-REC.
                  05 ENDO-HOUSE-TYPE       PIC X(10).
                  05 ENDO-WITH-PROFITS     PIC 9(8).
                  05 ENDO-MAKE             PIC S9(7)V99 COMP-3.
                  05 ENDO-SUM-ASSURED      PIC X(20).
                  05 ENDO-TERM             PIC X(20).
                  05 ENDO-EXCESS           PIC X(10).
                  05 ENDO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 ENDO-MANAGED-FUND     PIC X(10).
                  05 ENDO-TAX-BAND         PIC 9(8).
                  05 ENDO-EQUITIES         PIC 9(8).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
