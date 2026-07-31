      ******************************************************************
      * COPYBOOK ZKBI0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKBI0001-REC.
                  05 BILL-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 BILL-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 BILL-TAX-BAND         PIC S9(4) COMP.
                  05 BILL-WITH-PROFITS     PIC X(10).
                  05 BILL-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 BILL-COLOUR           PIC 9(8).
                  05 BILL-CC-RATING        PIC X(10).
                  05 BILL-REG-NUMBER       PIC X(10).
                  05 BILL-STATUS-CODE      PIC 9(8).
                  05 BILL-TERM             PIC S9(4) COMP.
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
