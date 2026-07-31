      ******************************************************************
      * COPYBOOK ZKEN0000 (record)                                     *
      ******************************************************************
               03 ZKEN0000-REC.
                  05 ENDO-WITH-PROFITS     PIC X(10).
                  05 ENDO-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 ENDO-EQUITIES         PIC S9(4) COMP.
                  05 ENDO-TERM             PIC X(20).
                  05 ENDO-ROOF-TYPE        PIC S9(4) COMP.
                  05 ENDO-EXCESS           PIC S9(7)V99 COMP-3.
                  05 ENDO-MODEL            PIC X(20).
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-COLOUR           PIC X(10).
                  05 ENDO-NCD-YEARS        PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
