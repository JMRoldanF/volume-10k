      ******************************************************************
      * COPYBOOK ZKEN0005 (record)                                     *
      ******************************************************************
               03 ZKEN0005-REC.
                  05 ENDO-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 ENDO-EQUITIES         PIC S9(4) COMP.
                  05 ENDO-TERM             PIC X(10).
                  05 ENDO-VALUE            PIC X(20).
                  05 ENDO-AGENT-CODE       PIC X(10).
                  05 ENDO-STATUS-CODE      PIC X(10).
                  05 ENDO-HOUSE-TYPE       PIC X(20).
                  05 ENDO-BROKER-ID        PIC 9(8).
                  05 ENDO-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 ENDO-MAKE             PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
