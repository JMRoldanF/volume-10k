      ******************************************************************
      * COPYBOOK ZKHO0011 (record)                                     *
      ******************************************************************
               03 ZKHO0011-REC.
                  05 HOUS-AGENT-CODE       PIC X(10).
                  05 HOUS-BEDROOMS         PIC 9(8).
                  05 HOUS-TAX-BAND         PIC S9(4) COMP.
                  05 HOUS-TERM             PIC 9(8).
                  05 HOUS-MODEL            PIC X(20).
                  05 HOUS-PREMIUM          PIC S9(4) COMP.
                  05 HOUS-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 HOUS-REG-NUMBER       PIC 9(8).
                  05 HOUS-COLOUR           PIC S9(4) COMP.
                  05 HOUS-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
