      ******************************************************************
      * COPYBOOK ZKHO0008 (record)                                     *
      ******************************************************************
               03 ZKHO0008-REC.
                  05 HOUS-COLOUR           PIC S9(4) COMP.
                  05 HOUS-SUM-ASSURED      PIC X(10).
                  05 HOUS-TAX-BAND         PIC S9(4) COMP.
                  05 HOUS-MAKE             PIC X(20).
                  05 HOUS-EXCESS           PIC S9(7)V99 COMP-3.
                  05 HOUS-BROKER-ID        PIC X(10).
                  05 HOUS-NCD-YEARS        PIC S9(4) COMP.
                  05 HOUS-MANAGED-FUND     PIC 9(8).
                  05 HOUS-TERM             PIC 9(8).
                  05 HOUS-EQUITIES         PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
