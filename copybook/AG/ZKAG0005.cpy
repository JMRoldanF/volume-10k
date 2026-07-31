      ******************************************************************
      * COPYBOOK ZKAG0005 (record)                                     *
      ******************************************************************
               03 ZKAG0005-REC.
                  05 AGEN-COLOUR           PIC X(20).
                  05 AGEN-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 AGEN-EXCESS           PIC X(20).
                  05 AGEN-NCD-YEARS        PIC X(20).
                  05 AGEN-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 AGEN-REG-NUMBER       PIC X(10).
                  05 AGEN-ROOF-TYPE        PIC X(20).
                  05 AGEN-TAX-BAND         PIC 9(8).
                  05 AGEN-EQUITIES         PIC 9(8).
                  05 AGEN-MAKE             PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
