      ******************************************************************
      * COPYBOOK ZKPA0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0001-REC.
                  05 PAYM-EXCESS           PIC S9(7)V99 COMP-3.
                  05 PAYM-CC-RATING        PIC X(10).
                  05 PAYM-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 PAYM-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 PAYM-MODEL            PIC S9(7)V99 COMP-3.
                  05 PAYM-EQUITIES         PIC X(10).
                  05 PAYM-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 PAYM-SUM-ASSURED      PIC 9(8).
                  05 PAYM-MANAGED-FUND     PIC 9(8).
                  05 PAYM-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
