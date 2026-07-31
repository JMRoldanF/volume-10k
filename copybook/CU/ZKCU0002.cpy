      ******************************************************************
      * COPYBOOK ZKCU0002 (record)                                     *
      ******************************************************************
               03 ZKCU0002-REC.
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-MAKE             PIC S9(7)V99 COMP-3.
                  05 CUST-PREMIUM          PIC X(20).
                  05 CUST-MANAGED-FUND     PIC 9(8).
                  05 CUST-EQUITIES         PIC X(20).
                  05 CUST-REG-NUMBER       PIC S9(4) COMP.
                  05 CUST-AGENT-CODE       PIC 9(8).
                  05 CUST-WITH-PROFITS     PIC 9(8).
                  05 CUST-EXCESS           PIC 9(8).
                  05 CUST-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
