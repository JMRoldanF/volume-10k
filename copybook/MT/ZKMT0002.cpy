      ******************************************************************
      * COPYBOOK ZKMT0002 (record)                                     *
      ******************************************************************
               03 ZKMT0002-REC.
                  05 MOTO-VALUE            PIC 9(8).
                  05 MOTO-EXCESS           PIC S9(7)V99 COMP-3.
                  05 MOTO-HOUSE-TYPE       PIC X(10).
                  05 MOTO-BEDROOMS         PIC X(20).
                  05 MOTO-BROKER-ID        PIC X(20).
                  05 MOTO-NCD-YEARS        PIC S9(4) COMP.
                  05 MOTO-AGENT-CODE       PIC X(10).
                  05 MOTO-TERM             PIC X(20).
                  05 MOTO-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 MOTO-MANAGED-FUND     PIC 9(8).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
