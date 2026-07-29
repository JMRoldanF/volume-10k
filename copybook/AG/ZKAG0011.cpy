      ******************************************************************
      * COPYBOOK ZKAG0011 (record)                                     *
      ******************************************************************
               03 ZKAG0011-REC.
                  05 AGEN-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 AGEN-POSTCODE         PIC 9(8).
                  05 AGEN-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 AGEN-REG-NUMBER       PIC 9(8).
                  05 AGEN-COLOUR           PIC S9(4) COMP.
                  05 AGEN-TERM             PIC 9(8).
                  05 AGEN-MANAGED-FUND     PIC X(20).
                  05 AGEN-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 AGEN-WITH-PROFITS     PIC X(10).
                  05 AGEN-BEDROOMS         PIC X(10).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
