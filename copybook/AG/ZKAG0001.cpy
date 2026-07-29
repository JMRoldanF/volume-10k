      ******************************************************************
      * COPYBOOK ZKAG0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0001-REC.
                  05 AGEN-AGENT-CODE       PIC 9(8).
                  05 AGEN-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 AGEN-MAKE             PIC S9(7)V99 COMP-3.
                  05 AGEN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 AGEN-NCD-YEARS        PIC S9(4) COMP.
                  05 AGEN-HOUSE-TYPE       PIC S9(4) COMP.
                  05 AGEN-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 AGEN-WITH-PROFITS     PIC 9(8).
                  05 AGEN-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 AGEN-SUM-ASSURED      PIC S9(4) COMP.
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
