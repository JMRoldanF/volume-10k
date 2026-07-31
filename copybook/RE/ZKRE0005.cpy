      ******************************************************************
      * COPYBOOK ZKRE0005 (record)                                     *
      ******************************************************************
               03 ZKRE0005-REC.
                  05 REIN-COLOUR           PIC 9(8).
                  05 REIN-ROOF-TYPE        PIC X(20).
                  05 REIN-WITH-PROFITS     PIC X(10).
                  05 REIN-TAX-BAND         PIC X(20).
                  05 REIN-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 REIN-REG-NUMBER       PIC 9(8).
                  05 REIN-HOUSE-TYPE       PIC S9(4) COMP.
                  05 REIN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 REIN-VALUE            PIC S9(7)V99 COMP-3.
                  05 REIN-SUM-ASSURED      PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
