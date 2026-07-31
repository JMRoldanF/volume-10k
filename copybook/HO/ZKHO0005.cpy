      ******************************************************************
      * COPYBOOK ZKHO0005 (record)                                     *
      ******************************************************************
               03 ZKHO0005-REC.
                  05 HOUS-EQUITIES         PIC X(20).
                  05 HOUS-CC-RATING        PIC S9(4) COMP.
                  05 HOUS-EXCESS           PIC S9(7)V99 COMP-3.
                  05 HOUS-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 HOUS-BEDROOMS         PIC X(10).
                  05 HOUS-ROOF-TYPE        PIC S9(4) COMP.
                  05 HOUS-POSTCODE         PIC X(20).
                  05 HOUS-MAKE             PIC 9(8).
                  05 HOUS-COLOUR           PIC X(20).
                  05 HOUS-REG-NUMBER       PIC X(10).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
