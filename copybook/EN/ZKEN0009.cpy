      ******************************************************************
      * COPYBOOK ZKEN0009 (record)                                     *
      ******************************************************************
               03 ZKEN0009-REC.
                  05 ENDO-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 ENDO-CC-RATING        PIC S9(4) COMP.
                  05 ENDO-BROKER-ID        PIC S9(4) COMP.
                  05 ENDO-STATUS-CODE      PIC S9(4) COMP.
                  05 ENDO-TERM             PIC S9(7)V99 COMP-3.
                  05 ENDO-PREMIUM          PIC X(20).
                  05 ENDO-MAKE             PIC 9(8).
                  05 ENDO-EQUITIES         PIC X(20).
                  05 ENDO-EXCESS           PIC 9(8).
                  05 ENDO-MODEL            PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
