      ******************************************************************
      * COPYBOOK ZKMT0006 (record)                                     *
      ******************************************************************
               03 ZKMT0006-REC.
                  05 MOTO-BROKER-ID        PIC X(20).
                  05 MOTO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 MOTO-MANAGED-FUND     PIC S9(4) COMP.
                  05 MOTO-BEDROOMS         PIC X(10).
                  05 MOTO-COLOUR           PIC X(10).
                  05 MOTO-VALUE            PIC X(10).
                  05 MOTO-MAKE             PIC S9(7)V99 COMP-3.
                  05 MOTO-AGENT-CODE       PIC 9(8).
                  05 MOTO-MODEL            PIC S9(7)V99 COMP-3.
                  05 MOTO-PREMIUM          PIC X(20).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
