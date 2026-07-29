      ******************************************************************
      * COPYBOOK ZKEN0011 (record)                                     *
      ******************************************************************
               03 ZKEN0011-REC.
                  05 ENDO-SUM-ASSURED      PIC X(20).
                  05 ENDO-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 ENDO-TAX-BAND         PIC X(20).
                  05 ENDO-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 ENDO-EXCESS           PIC X(20).
                  05 ENDO-REG-NUMBER       PIC S9(4) COMP.
                  05 ENDO-MODEL            PIC X(20).
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 ENDO-HOUSE-TYPE       PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
