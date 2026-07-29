      ******************************************************************
      * COPYBOOK ZKBI0000 (record)                                     *
      ******************************************************************
               03 ZKBI0000-REC.
                  05 BILL-EXCESS           PIC X(10).
                  05 BILL-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 BILL-MODEL            PIC S9(7)V99 COMP-3.
                  05 BILL-STATUS-CODE      PIC X(20).
                  05 BILL-REG-NUMBER       PIC S9(4) COMP.
                  05 BILL-TAX-BAND         PIC 9(8).
                  05 BILL-NCD-YEARS        PIC X(10).
                  05 BILL-ROOF-TYPE        PIC 9(8).
                  05 BILL-VALUE            PIC S9(4) COMP.
                  05 BILL-POSTCODE         PIC X(20).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
