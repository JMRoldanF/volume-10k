      ******************************************************************
      * COPYBOOK ZKHO0006 (record)                                     *
      ******************************************************************
               03 ZKHO0006-REC.
                  05 HOUS-AGENT-CODE       PIC S9(4) COMP.
                  05 HOUS-ROOF-TYPE        PIC S9(4) COMP.
                  05 HOUS-EXCESS           PIC 9(8).
                  05 HOUS-VALUE            PIC 9(8).
                  05 HOUS-EQUITIES         PIC X(20).
                  05 HOUS-HOUSE-TYPE       PIC 9(8).
                  05 HOUS-NCD-YEARS        PIC X(10).
                  05 HOUS-POSTCODE         PIC 9(8).
                  05 HOUS-MANAGED-FUND     PIC X(10).
                  05 HOUS-TERM             PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
