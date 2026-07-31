      ******************************************************************
      * COPYBOOK ZKHO0011 (record)                                     *
      ******************************************************************
               03 ZKHO0011-REC.
                  05 HOUS-CC-RATING        PIC X(10).
                  05 HOUS-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 HOUS-VALUE            PIC 9(8).
                  05 HOUS-SUM-ASSURED      PIC S9(4) COMP.
                  05 HOUS-ROOF-TYPE        PIC S9(4) COMP.
                  05 HOUS-STATUS-CODE      PIC X(10).
                  05 HOUS-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 HOUS-EXCESS           PIC S9(4) COMP.
                  05 HOUS-AGENT-CODE       PIC S9(4) COMP.
                  05 HOUS-MANAGED-FUND     PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
