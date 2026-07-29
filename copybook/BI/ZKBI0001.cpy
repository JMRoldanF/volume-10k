      ******************************************************************
      * COPYBOOK ZKBI0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKBI0001-REC.
                  05 BILL-PREMIUM          PIC X(20).
                  05 BILL-BEDROOMS         PIC 9(8).
                  05 BILL-SUM-ASSURED      PIC X(10).
                  05 BILL-MAKE             PIC X(10).
                  05 BILL-BROKER-ID        PIC X(10).
                  05 BILL-MANAGED-FUND     PIC X(10).
                  05 BILL-CC-RATING        PIC 9(8).
                  05 BILL-TAX-BAND         PIC X(20).
                  05 BILL-VALUE            PIC 9(8).
                  05 BILL-ROOF-TYPE        PIC X(10).
                  05 BILL-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
