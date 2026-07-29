      ******************************************************************
      * COPYBOOK ZKHO0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKHO0004-REC.
                  05 HOUS-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 HOUS-VALUE            PIC S9(7)V99 COMP-3.
                  05 HOUS-MANAGED-FUND     PIC S9(4) COMP.
                  05 HOUS-EXCESS           PIC 9(8).
                  05 HOUS-COLOUR           PIC S9(4) COMP.
                  05 HOUS-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 HOUS-NCD-YEARS        PIC 9(8).
                  05 HOUS-REG-NUMBER       PIC S9(4) COMP.
                  05 HOUS-MODEL            PIC X(20).
                  05 HOUS-BEDROOMS         PIC S9(4) COMP.
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
