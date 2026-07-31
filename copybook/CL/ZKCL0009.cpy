      ******************************************************************
      * COPYBOOK ZKCL0009 (record)                                     *
      ******************************************************************
               03 ZKCL0009-REC.
                  05 CLAI-ROOF-TYPE        PIC 9(8).
                  05 CLAI-MANAGED-FUND     PIC S9(4) COMP.
                  05 CLAI-EQUITIES         PIC 9(8).
                  05 CLAI-HOUSE-TYPE       PIC X(10).
                  05 CLAI-COLOUR           PIC S9(4) COMP.
                  05 CLAI-BROKER-ID        PIC X(10).
                  05 CLAI-CC-RATING        PIC S9(4) COMP.
                  05 CLAI-PREMIUM          PIC X(20).
                  05 CLAI-STATUS-CODE      PIC S9(4) COMP.
                  05 CLAI-MAKE             PIC S9(4) COMP.
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
