      ******************************************************************
      * COPYBOOK ZKRE0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0001-REC.
                  05 REIN-BROKER-ID        PIC 9(8).
                  05 REIN-NCD-YEARS        PIC X(20).
                  05 REIN-TAX-BAND         PIC 9(8).
                  05 REIN-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 REIN-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 REIN-MANAGED-FUND     PIC 9(8).
                  05 REIN-REG-NUMBER       PIC S9(4) COMP.
                  05 REIN-VALUE            PIC X(10).
                  05 REIN-SUM-ASSURED      PIC S9(4) COMP.
                  05 REIN-TERM             PIC X(20).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
