      ******************************************************************
      * COPYBOOK ZKCL0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCL0010-REC.
                  05 CLAI-EXCESS           PIC X(20).
                  05 CLAI-MANAGED-FUND     PIC X(10).
                  05 CLAI-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 CLAI-NCD-YEARS        PIC X(20).
                  05 CLAI-STATUS-CODE      PIC X(10).
                  05 CLAI-VALUE            PIC X(20).
                  05 CLAI-WITH-PROFITS     PIC X(20).
                  05 CLAI-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 CLAI-ROOF-TYPE        PIC S9(4) COMP.
                  05 CLAI-BROKER-ID        PIC X(10).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
