      ******************************************************************
      * COPYBOOK ZKRE0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0007-REC.
                  05 REIN-SUM-ASSURED      PIC 9(8).
                  05 REIN-POSTCODE         PIC 9(8).
                  05 REIN-BEDROOMS         PIC 9(8).
                  05 REIN-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 REIN-TAX-BAND         PIC X(10).
                  05 REIN-WITH-PROFITS     PIC S9(4) COMP.
                  05 REIN-REG-NUMBER       PIC X(10).
                  05 REIN-VALUE            PIC S9(4) COMP.
                  05 REIN-MODEL            PIC S9(7)V99 COMP-3.
                  05 REIN-AGENT-CODE       PIC X(20).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
