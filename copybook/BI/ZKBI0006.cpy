      ******************************************************************
      * COPYBOOK ZKBI0006 (record)                                     *
      ******************************************************************
               03 ZKBI0006-REC.
                  05 BILL-WITH-PROFITS     PIC 9(8).
                  05 BILL-STATUS-CODE      PIC X(20).
                  05 BILL-TERM             PIC 9(8).
                  05 BILL-HOUSE-TYPE       PIC X(20).
                  05 BILL-BEDROOMS         PIC 9(8).
                  05 BILL-COLOUR           PIC S9(4) COMP.
                  05 BILL-REG-NUMBER       PIC 9(8).
                  05 BILL-VALUE            PIC S9(4) COMP.
                  05 BILL-PREMIUM          PIC S9(4) COMP.
                  05 BILL-SUM-ASSURED      PIC S9(4) COMP.
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
