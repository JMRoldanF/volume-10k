      ******************************************************************
      * COPYBOOK ZKBI0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKBI0007-REC.
                  05 BILL-NCD-YEARS        PIC S9(4) COMP.
                  05 BILL-POSTCODE         PIC X(10).
                  05 BILL-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 BILL-TERM             PIC S9(7)V99 COMP-3.
                  05 BILL-VALUE            PIC S9(4) COMP.
                  05 BILL-EXCESS           PIC S9(4) COMP.
                  05 BILL-TAX-BAND         PIC X(20).
                  05 BILL-BEDROOMS         PIC X(10).
                  05 BILL-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 BILL-MAKE             PIC X(20).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
