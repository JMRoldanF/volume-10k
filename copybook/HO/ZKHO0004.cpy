      ******************************************************************
      * COPYBOOK ZKHO0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKHO0004-REC.
                  05 HOUS-TAX-BAND         PIC X(20).
                  05 HOUS-HOUSE-TYPE       PIC 9(8).
                  05 HOUS-POSTCODE         PIC X(20).
                  05 HOUS-CC-RATING        PIC X(10).
                  05 HOUS-REG-NUMBER       PIC 9(8).
                  05 HOUS-BEDROOMS         PIC X(20).
                  05 HOUS-BROKER-ID        PIC 9(8).
                  05 HOUS-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 HOUS-EXCESS           PIC S9(7)V99 COMP-3.
                  05 HOUS-TERM             PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
