      ******************************************************************
      * COPYBOOK ZKCL0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCL0007-REC.
                  05 CLAI-TAX-BAND         PIC X(20).
                  05 CLAI-CC-RATING        PIC X(10).
                  05 CLAI-TERM             PIC S9(7)V99 COMP-3.
                  05 CLAI-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 CLAI-ROOF-TYPE        PIC X(20).
                  05 CLAI-COLOUR           PIC X(20).
                  05 CLAI-MANAGED-FUND     PIC X(20).
                  05 CLAI-SUM-ASSURED      PIC X(20).
                  05 CLAI-VALUE            PIC X(20).
                  05 CLAI-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
