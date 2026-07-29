      ******************************************************************
      * COPYBOOK ZKCU0005 (record)                                     *
      ******************************************************************
               03 ZKCU0005-REC.
                  05 CUST-EXCESS           PIC X(10).
                  05 CUST-MAKE             PIC S9(7)V99 COMP-3.
                  05 CUST-COLOUR           PIC X(20).
                  05 CUST-POSTCODE         PIC X(10).
                  05 CUST-WITH-PROFITS     PIC X(10).
                  05 CUST-EQUITIES         PIC X(10).
                  05 CUST-NCD-YEARS        PIC 9(8).
                  05 CUST-MODEL            PIC 9(8).
                  05 CUST-MANAGED-FUND     PIC 9(8).
                  05 CUST-ROOF-TYPE        PIC X(20).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
