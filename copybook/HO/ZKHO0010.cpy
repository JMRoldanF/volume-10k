      ******************************************************************
      * COPYBOOK ZKHO0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKHO0010-REC.
                  05 HOUS-MODEL            PIC X(10).
                  05 HOUS-HOUSE-TYPE       PIC 9(8).
                  05 HOUS-REG-NUMBER       PIC X(10).
                  05 HOUS-BROKER-ID        PIC X(20).
                  05 HOUS-SUM-ASSURED      PIC X(10).
                  05 HOUS-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 HOUS-EXCESS           PIC S9(4) COMP.
                  05 HOUS-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 HOUS-CC-RATING        PIC S9(4) COMP.
                  05 HOUS-BEDROOMS         PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
