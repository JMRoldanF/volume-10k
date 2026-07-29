      ******************************************************************
      * COPYBOOK ZKRE0011 (record)                                     *
      ******************************************************************
               03 ZKRE0011-REC.
                  05 REIN-NCD-YEARS        PIC X(20).
                  05 REIN-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 REIN-PREMIUM          PIC S9(4) COMP.
                  05 REIN-VALUE            PIC 9(8).
                  05 REIN-TERM             PIC S9(7)V99 COMP-3.
                  05 REIN-BEDROOMS         PIC 9(8).
                  05 REIN-EQUITIES         PIC 9(8).
                  05 REIN-ROOF-TYPE        PIC X(20).
                  05 REIN-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 REIN-SUM-ASSURED      PIC S9(4) COMP.
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
