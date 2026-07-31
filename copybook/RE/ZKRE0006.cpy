      ******************************************************************
      * COPYBOOK ZKRE0006 (record)                                     *
      ******************************************************************
               03 ZKRE0006-REC.
                  05 REIN-BEDROOMS         PIC 9(8).
                  05 REIN-VALUE            PIC S9(7)V99 COMP-3.
                  05 REIN-MAKE             PIC S9(4) COMP.
                  05 REIN-TAX-BAND         PIC X(10).
                  05 REIN-PREMIUM          PIC X(20).
                  05 REIN-MANAGED-FUND     PIC S9(4) COMP.
                  05 REIN-AGENT-CODE       PIC 9(8).
                  05 REIN-SUM-ASSURED      PIC 9(8).
                  05 REIN-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 REIN-COLOUR           PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
