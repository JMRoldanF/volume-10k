      ******************************************************************
      * COPYBOOK ZKAG0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0010-REC.
                  05 AGEN-WITH-PROFITS     PIC X(10).
                  05 AGEN-NCD-YEARS        PIC X(20).
                  05 AGEN-TERM             PIC X(20).
                  05 AGEN-COLOUR           PIC X(20).
                  05 AGEN-MANAGED-FUND     PIC X(20).
                  05 AGEN-MAKE             PIC S9(4) COMP.
                  05 AGEN-CC-RATING        PIC 9(8).
                  05 AGEN-STATUS-CODE      PIC 9(8).
                  05 AGEN-BEDROOMS         PIC X(20).
                  05 AGEN-PREMIUM          PIC X(20).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
