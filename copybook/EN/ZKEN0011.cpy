      ******************************************************************
      * COPYBOOK ZKEN0011 (record)                                     *
      ******************************************************************
               03 ZKEN0011-REC.
                  05 ENDO-TERM             PIC X(20).
                  05 ENDO-MANAGED-FUND     PIC 9(8).
                  05 ENDO-MAKE             PIC X(10).
                  05 ENDO-ROOF-TYPE        PIC 9(8).
                  05 ENDO-TAX-BAND         PIC X(20).
                  05 ENDO-PREMIUM          PIC 9(8).
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-EQUITIES         PIC X(10).
                  05 ENDO-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
