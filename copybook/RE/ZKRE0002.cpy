      ******************************************************************
      * COPYBOOK ZKRE0002 (record)                                     *
      ******************************************************************
               03 ZKRE0002-REC.
                  05 REIN-TERM             PIC X(20).
                  05 REIN-MANAGED-FUND     PIC X(20).
                  05 REIN-EQUITIES         PIC X(20).
                  05 REIN-BEDROOMS         PIC 9(8).
                  05 REIN-CC-RATING        PIC X(20).
                  05 REIN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 REIN-HOUSE-TYPE       PIC X(20).
                  05 REIN-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 REIN-COLOUR           PIC X(10).
                  05 REIN-EXCESS           PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
