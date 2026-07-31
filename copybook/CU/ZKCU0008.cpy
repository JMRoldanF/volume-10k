      ******************************************************************
      * COPYBOOK ZKCU0008 (record)                                     *
      ******************************************************************
               03 ZKCU0008-REC.
                  05 CUST-POSTCODE         PIC S9(4) COMP.
                  05 CUST-VALUE            PIC S9(4) COMP.
                  05 CUST-MAKE             PIC 9(8).
                  05 CUST-SUM-ASSURED      PIC 9(8).
                  05 CUST-MANAGED-FUND     PIC X(10).
                  05 CUST-BEDROOMS         PIC S9(4) COMP.
                  05 CUST-EQUITIES         PIC S9(4) COMP.
                  05 CUST-MODEL            PIC X(10).
                  05 CUST-HOUSE-TYPE       PIC 9(8).
                  05 CUST-COLOUR           PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
