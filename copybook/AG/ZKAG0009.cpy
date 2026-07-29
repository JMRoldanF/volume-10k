      ******************************************************************
      * COPYBOOK ZKAG0009 (record)                                     *
      ******************************************************************
               03 ZKAG0009-REC.
                  05 AGEN-ROOF-TYPE        PIC S9(4) COMP.
                  05 AGEN-REG-NUMBER       PIC X(10).
                  05 AGEN-STATUS-CODE      PIC X(20).
                  05 AGEN-BROKER-ID        PIC 9(8).
                  05 AGEN-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 AGEN-EQUITIES         PIC 9(8).
                  05 AGEN-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 AGEN-TERM             PIC X(20).
                  05 AGEN-WITH-PROFITS     PIC S9(4) COMP.
                  05 AGEN-MODEL            PIC X(10).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
