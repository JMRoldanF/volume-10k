      ******************************************************************
      * COPYBOOK ZKCL0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCL0004-REC.
                  05 CLAI-BROKER-ID        PIC S9(4) COMP.
                  05 CLAI-ROOF-TYPE        PIC X(20).
                  05 CLAI-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 CLAI-MAKE             PIC S9(7)V99 COMP-3.
                  05 CLAI-VALUE            PIC X(20).
                  05 CLAI-AGENT-CODE       PIC X(20).
                  05 CLAI-CC-RATING        PIC S9(4) COMP.
                  05 CLAI-TERM             PIC X(20).
                  05 CLAI-MANAGED-FUND     PIC X(20).
                  05 CLAI-TAX-BAND         PIC S9(4) COMP.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
