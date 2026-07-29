      ******************************************************************
      * COPYBOOK ZKCL0005 (record)                                     *
      ******************************************************************
               03 ZKCL0005-REC.
                  05 CLAI-STATUS-CODE      PIC 9(8).
                  05 CLAI-ROOF-TYPE        PIC X(10).
                  05 CLAI-POSTCODE         PIC X(10).
                  05 CLAI-AGENT-CODE       PIC S9(4) COMP.
                  05 CLAI-SUM-ASSURED      PIC X(10).
                  05 CLAI-PREMIUM          PIC S9(4) COMP.
                  05 CLAI-WITH-PROFITS     PIC X(10).
                  05 CLAI-MAKE             PIC 9(8).
                  05 CLAI-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 CLAI-EXCESS           PIC 9(8).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
