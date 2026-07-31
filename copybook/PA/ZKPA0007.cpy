      ******************************************************************
      * COPYBOOK ZKPA0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0007-REC.
                  05 PAYM-ROOF-TYPE        PIC S9(4) COMP.
                  05 PAYM-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 PAYM-NCD-YEARS        PIC 9(8).
                  05 PAYM-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 PAYM-EXCESS           PIC X(20).
                  05 PAYM-CC-RATING        PIC X(20).
                  05 PAYM-MAKE             PIC X(20).
                  05 PAYM-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 PAYM-VALUE            PIC 9(8).
                  05 PAYM-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
