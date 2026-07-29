      ******************************************************************
      * COPYBOOK ZKCU0002 (record)                                     *
      ******************************************************************
               03 ZKCU0002-REC.
                  05 CUST-TERM             PIC 9(8).
                  05 CUST-MODEL            PIC S9(4) COMP.
                  05 CUST-BROKER-ID        PIC S9(4) COMP.
                  05 CUST-COLOUR           PIC X(10).
                  05 CUST-HOUSE-TYPE       PIC X(10).
                  05 CUST-TAX-BAND         PIC S9(4) COMP.
                  05 CUST-MAKE             PIC S9(4) COMP.
                  05 CUST-VALUE            PIC X(20).
                  05 CUST-POSTCODE         PIC S9(4) COMP.
                  05 CUST-WITH-PROFITS     PIC X(20).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
