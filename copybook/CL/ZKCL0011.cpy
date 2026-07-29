      ******************************************************************
      * COPYBOOK ZKCL0011 (record)                                     *
      ******************************************************************
               03 ZKCL0011-REC.
                  05 CLAI-STATUS-CODE      PIC X(20).
                  05 CLAI-TERM             PIC 9(8).
                  05 CLAI-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 CLAI-BROKER-ID        PIC X(10).
                  05 CLAI-VALUE            PIC S9(7)V99 COMP-3.
                  05 CLAI-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 CLAI-WITH-PROFITS     PIC 9(8).
                  05 CLAI-MAKE             PIC S9(7)V99 COMP-3.
                  05 CLAI-MANAGED-FUND     PIC X(20).
                  05 CLAI-REG-NUMBER       PIC 9(8).
                  05 CLAI-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
