      ******************************************************************
      * COPYBOOK ZKRE0003 (record)                                     *
      ******************************************************************
               03 ZKRE0003-REC.
                  05 REIN-COLOUR           PIC S9(7)V99 COMP-3.
                  05 REIN-MANAGED-FUND     PIC X(20).
                  05 REIN-TERM             PIC S9(7)V99 COMP-3.
                  05 REIN-MAKE             PIC S9(4) COMP.
                  05 REIN-AGENT-CODE       PIC X(20).
                  05 REIN-POSTCODE         PIC S9(4) COMP.
                  05 REIN-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 REIN-TAX-BAND         PIC X(10).
                  05 REIN-WITH-PROFITS     PIC 9(8).
                  05 REIN-VALUE            PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
