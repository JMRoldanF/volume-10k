      ******************************************************************
      * COPYBOOK ZKPA0009 (record)                                     *
      ******************************************************************
               03 ZKPA0009-REC.
                  05 PAYM-MANAGED-FUND     PIC S9(4) COMP.
                  05 PAYM-COLOUR           PIC X(10).
                  05 PAYM-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 PAYM-WITH-PROFITS     PIC 9(8).
                  05 PAYM-PREMIUM          PIC 9(8).
                  05 PAYM-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 PAYM-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 PAYM-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 PAYM-ROOF-TYPE        PIC 9(8).
                  05 PAYM-MODEL            PIC X(10).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
