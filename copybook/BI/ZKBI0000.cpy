      ******************************************************************
      * COPYBOOK ZKBI0000 (record)                                     *
      ******************************************************************
               03 ZKBI0000-REC.
                  05 BILL-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 BILL-BROKER-ID        PIC X(10).
                  05 BILL-BEDROOMS         PIC X(20).
                  05 BILL-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 BILL-TAX-BAND         PIC X(10).
                  05 BILL-EQUITIES         PIC X(20).
                  05 BILL-EXCESS           PIC 9(8).
                  05 BILL-TERM             PIC 9(8).
                  05 BILL-CC-RATING        PIC S9(4) COMP.
                  05 BILL-MANAGED-FUND     PIC X(20).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
