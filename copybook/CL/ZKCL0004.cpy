      ******************************************************************
      * COPYBOOK ZKCL0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCL0004-REC.
                  05 CLAI-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 CLAI-POSTCODE         PIC X(20).
                  05 CLAI-CC-RATING        PIC 9(8).
                  05 CLAI-SUM-ASSURED      PIC S9(4) COMP.
                  05 CLAI-BEDROOMS         PIC X(20).
                  05 CLAI-NCD-YEARS        PIC X(10).
                  05 CLAI-MODEL            PIC S9(4) COMP.
                  05 CLAI-AGENT-CODE       PIC X(20).
                  05 CLAI-TAX-BAND         PIC X(20).
                  05 CLAI-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
