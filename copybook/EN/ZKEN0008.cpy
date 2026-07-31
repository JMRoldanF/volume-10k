      ******************************************************************
      * COPYBOOK ZKEN0008 (record)                                     *
      ******************************************************************
               03 ZKEN0008-REC.
                  05 ENDO-VALUE            PIC S9(7)V99 COMP-3.
                  05 ENDO-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 ENDO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 ENDO-PREMIUM          PIC S9(4) COMP.
                  05 ENDO-STATUS-CODE      PIC X(10).
                  05 ENDO-HOUSE-TYPE       PIC X(10).
                  05 ENDO-AGENT-CODE       PIC S9(4) COMP.
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-BROKER-ID        PIC S9(4) COMP.
                  05 ENDO-SUM-ASSURED      PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
