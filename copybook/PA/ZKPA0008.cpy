      ******************************************************************
      * COPYBOOK ZKPA0008 (record)                                     *
      ******************************************************************
               03 ZKPA0008-REC.
                  05 PAYM-COLOUR           PIC S9(7)V99 COMP-3.
                  05 PAYM-EQUITIES         PIC X(20).
                  05 PAYM-SUM-ASSURED      PIC X(10).
                  05 PAYM-MANAGED-FUND     PIC 9(8).
                  05 PAYM-TAX-BAND         PIC X(10).
                  05 PAYM-AGENT-CODE       PIC X(20).
                  05 PAYM-BROKER-ID        PIC X(20).
                  05 PAYM-MODEL            PIC X(10).
                  05 PAYM-CC-RATING        PIC 9(8).
                  05 PAYM-BEDROOMS         PIC X(10).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
