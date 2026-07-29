      ******************************************************************
      * COPYBOOK ZKMT0006 (record)                                     *
      ******************************************************************
               03 ZKMT0006-REC.
                  05 MOTO-SUM-ASSURED      PIC S9(4) COMP.
                  05 MOTO-REG-NUMBER       PIC S9(4) COMP.
                  05 MOTO-EXCESS           PIC 9(8).
                  05 MOTO-TAX-BAND         PIC X(20).
                  05 MOTO-WITH-PROFITS     PIC S9(4) COMP.
                  05 MOTO-VALUE            PIC S9(7)V99 COMP-3.
                  05 MOTO-MODEL            PIC X(20).
                  05 MOTO-EQUITIES         PIC X(20).
                  05 MOTO-AGENT-CODE       PIC X(20).
                  05 MOTO-STATUS-CODE      PIC 9(8).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
