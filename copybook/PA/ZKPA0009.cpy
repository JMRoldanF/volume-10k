      ******************************************************************
      * COPYBOOK ZKPA0009 (record)                                     *
      ******************************************************************
               03 ZKPA0009-REC.
                  05 PAYM-SUM-ASSURED      PIC X(20).
                  05 PAYM-POSTCODE         PIC X(20).
                  05 PAYM-BROKER-ID        PIC 9(8).
                  05 PAYM-MAKE             PIC S9(7)V99 COMP-3.
                  05 PAYM-MODEL            PIC X(20).
                  05 PAYM-EXCESS           PIC S9(7)V99 COMP-3.
                  05 PAYM-EQUITIES         PIC S9(4) COMP.
                  05 PAYM-AGENT-CODE       PIC S9(4) COMP.
                  05 PAYM-CC-RATING        PIC X(20).
                  05 PAYM-HOUSE-TYPE       PIC 9(8).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
