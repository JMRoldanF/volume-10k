      ******************************************************************
      * COPYBOOK ZKPA0006 (record)                                     *
      ******************************************************************
               03 ZKPA0006-REC.
                  05 PAYM-BEDROOMS         PIC X(20).
                  05 PAYM-POSTCODE         PIC X(10).
                  05 PAYM-EXCESS           PIC X(10).
                  05 PAYM-TAX-BAND         PIC S9(4) COMP.
                  05 PAYM-HOUSE-TYPE       PIC X(20).
                  05 PAYM-REG-NUMBER       PIC X(10).
                  05 PAYM-VALUE            PIC 9(8).
                  05 PAYM-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 PAYM-COLOUR           PIC S9(7)V99 COMP-3.
                  05 PAYM-CC-RATING        PIC X(10).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
