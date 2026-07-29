      ******************************************************************
      * COPYBOOK ZKUW0009 (record)                                     *
      ******************************************************************
               03 ZKUW0009-REC.
                  05 UNDE-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 UNDE-BEDROOMS         PIC X(10).
                  05 UNDE-COLOUR           PIC S9(7)V99 COMP-3.
                  05 UNDE-MANAGED-FUND     PIC 9(8).
                  05 UNDE-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 UNDE-POSTCODE         PIC 9(8).
                  05 UNDE-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 UNDE-TERM             PIC S9(4) COMP.
                  05 UNDE-MAKE             PIC X(20).
                  05 UNDE-REG-NUMBER       PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
