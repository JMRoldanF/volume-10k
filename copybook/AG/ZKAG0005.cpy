      ******************************************************************
      * COPYBOOK ZKAG0005 (record)                                     *
      ******************************************************************
               03 ZKAG0005-REC.
                  05 AGEN-TERM             PIC X(10).
                  05 AGEN-BROKER-ID        PIC X(20).
                  05 AGEN-MANAGED-FUND     PIC X(10).
                  05 AGEN-NCD-YEARS        PIC X(10).
                  05 AGEN-WITH-PROFITS     PIC 9(8).
                  05 AGEN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 AGEN-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 AGEN-ROOF-TYPE        PIC S9(4) COMP.
                  05 AGEN-PREMIUM          PIC X(10).
                  05 AGEN-MODEL            PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
