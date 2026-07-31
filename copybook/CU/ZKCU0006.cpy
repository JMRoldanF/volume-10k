      ******************************************************************
      * COPYBOOK ZKCU0006 (record)                                     *
      ******************************************************************
               03 ZKCU0006-REC.
                  05 CUST-COLOUR           PIC 9(8).
                  05 CUST-MANAGED-FUND     PIC S9(4) COMP.
                  05 CUST-AGENT-CODE       PIC 9(8).
                  05 CUST-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 CUST-EQUITIES         PIC S9(4) COMP.
                  05 CUST-MODEL            PIC X(10).
                  05 CUST-CC-RATING        PIC X(10).
                  05 CUST-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 CUST-PREMIUM          PIC 9(8).
                  05 CUST-REG-NUMBER       PIC S9(4) COMP.
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
