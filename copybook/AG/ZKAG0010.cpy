      ******************************************************************
      * COPYBOOK ZKAG0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0010-REC.
                  05 AGEN-AGENT-CODE       PIC 9(8).
                  05 AGEN-PREMIUM          PIC 9(8).
                  05 AGEN-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 AGEN-EQUITIES         PIC 9(8).
                  05 AGEN-POSTCODE         PIC X(10).
                  05 AGEN-EXCESS           PIC 9(8).
                  05 AGEN-REG-NUMBER       PIC 9(8).
                  05 AGEN-HOUSE-TYPE       PIC X(20).
                  05 AGEN-NCD-YEARS        PIC 9(8).
                  05 AGEN-WITH-PROFITS     PIC X(20).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
