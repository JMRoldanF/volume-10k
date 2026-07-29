      ******************************************************************
      * COPYBOOK ZKBI0003 (record)                                     *
      ******************************************************************
               03 ZKBI0003-REC.
                  05 BILL-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 BILL-SUM-ASSURED      PIC X(10).
                  05 BILL-POSTCODE         PIC 9(8).
                  05 BILL-STATUS-CODE      PIC X(10).
                  05 BILL-NCD-YEARS        PIC X(10).
                  05 BILL-AGENT-CODE       PIC X(10).
                  05 BILL-COLOUR           PIC X(10).
                  05 BILL-TAX-BAND         PIC X(20).
                  05 BILL-MAKE             PIC S9(4) COMP.
                  05 BILL-EQUITIES         PIC X(20).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
