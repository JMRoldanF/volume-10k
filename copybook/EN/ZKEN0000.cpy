      ******************************************************************
      * COPYBOOK ZKEN0000 (record)                                     *
      ******************************************************************
               03 ZKEN0000-REC.
                  05 ENDO-VALUE            PIC 9(8).
                  05 ENDO-TAX-BAND         PIC X(20).
                  05 ENDO-SUM-ASSURED      PIC X(10).
                  05 ENDO-AGENT-CODE       PIC X(10).
                  05 ENDO-ROOF-TYPE        PIC 9(8).
                  05 ENDO-MAKE             PIC X(10).
                  05 ENDO-POSTCODE         PIC X(20).
                  05 ENDO-EXCESS           PIC 9(8).
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
