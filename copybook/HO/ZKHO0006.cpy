      ******************************************************************
      * COPYBOOK ZKHO0006 (record)                                     *
      ******************************************************************
               03 ZKHO0006-REC.
                  05 HOUS-TERM             PIC X(10).
                  05 HOUS-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 HOUS-HOUSE-TYPE       PIC X(10).
                  05 HOUS-MODEL            PIC 9(8).
                  05 HOUS-EXCESS           PIC X(10).
                  05 HOUS-WITH-PROFITS     PIC X(10).
                  05 HOUS-ROOF-TYPE        PIC X(10).
                  05 HOUS-EQUITIES         PIC X(20).
                  05 HOUS-VALUE            PIC S9(4) COMP.
                  05 HOUS-BROKER-ID        PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
