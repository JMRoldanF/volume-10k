      ******************************************************************
      * COPYBOOK ZKBI0011 (record)                                     *
      ******************************************************************
               03 ZKBI0011-REC.
                  05 BILL-ROOF-TYPE        PIC S9(4) COMP.
                  05 BILL-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 BILL-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 BILL-TERM             PIC 9(8).
                  05 BILL-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 BILL-CC-RATING        PIC 9(8).
                  05 BILL-EXCESS           PIC 9(8).
                  05 BILL-MODEL            PIC 9(8).
                  05 BILL-PREMIUM          PIC S9(4) COMP.
                  05 BILL-REG-NUMBER       PIC X(20).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
