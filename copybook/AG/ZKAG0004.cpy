      ******************************************************************
      * COPYBOOK ZKAG0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0004-REC.
                  05 AGEN-NCD-YEARS        PIC X(10).
                  05 AGEN-AGENT-CODE       PIC 9(8).
                  05 AGEN-MODEL            PIC 9(8).
                  05 AGEN-BROKER-ID        PIC 9(8).
                  05 AGEN-EXCESS           PIC 9(8).
                  05 AGEN-MAKE             PIC S9(4) COMP.
                  05 AGEN-CC-RATING        PIC X(10).
                  05 AGEN-VALUE            PIC S9(4) COMP.
                  05 AGEN-ROOF-TYPE        PIC S9(4) COMP.
                  05 AGEN-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
