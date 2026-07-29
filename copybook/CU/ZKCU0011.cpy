      ******************************************************************
      * COPYBOOK ZKCU0011 (record)                                     *
      ******************************************************************
               03 ZKCU0011-REC.
                  05 CUST-SUM-ASSURED      PIC X(20).
                  05 CUST-MODEL            PIC X(20).
                  05 CUST-STATUS-CODE      PIC S9(4) COMP.
                  05 CUST-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 CUST-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 CUST-BROKER-ID        PIC X(20).
                  05 CUST-VALUE            PIC X(10).
                  05 CUST-TERM             PIC S9(7)V99 COMP-3.
                  05 CUST-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 CUST-COLOUR           PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
