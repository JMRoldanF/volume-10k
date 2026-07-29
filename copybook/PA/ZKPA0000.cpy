      ******************************************************************
      * COPYBOOK ZKPA0000 (record)                                     *
      ******************************************************************
               03 ZKPA0000-REC.
                  05 PAYM-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 PAYM-BROKER-ID        PIC X(10).
                  05 PAYM-TERM             PIC S9(7)V99 COMP-3.
                  05 PAYM-WITH-PROFITS     PIC S9(4) COMP.
                  05 PAYM-REG-NUMBER       PIC 9(8).
                  05 PAYM-NCD-YEARS        PIC X(20).
                  05 PAYM-MANAGED-FUND     PIC X(10).
                  05 PAYM-AGENT-CODE       PIC S9(4) COMP.
                  05 PAYM-CC-RATING        PIC S9(4) COMP.
                  05 PAYM-MAKE             PIC S9(4) COMP.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
