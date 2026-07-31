      ******************************************************************
      * COPYBOOK ZKUW0003 (record)                                     *
      ******************************************************************
               03 ZKUW0003-REC.
                  05 UNDE-BROKER-ID        PIC S9(4) COMP.
                  05 UNDE-EXCESS           PIC S9(4) COMP.
                  05 UNDE-TAX-BAND         PIC S9(4) COMP.
                  05 UNDE-EQUITIES         PIC X(10).
                  05 UNDE-WITH-PROFITS     PIC X(20).
                  05 UNDE-MANAGED-FUND     PIC 9(8).
                  05 UNDE-TERM             PIC S9(4) COMP.
                  05 UNDE-VALUE            PIC X(10).
                  05 UNDE-MAKE             PIC X(20).
                  05 UNDE-CC-RATING        PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
