      ******************************************************************
      * COPYBOOK ZKUW0002 (record)                                     *
      ******************************************************************
               03 ZKUW0002-REC.
                  05 UNDE-BEDROOMS         PIC 9(8).
                  05 UNDE-MODEL            PIC S9(7)V99 COMP-3.
                  05 UNDE-TERM             PIC S9(4) COMP.
                  05 UNDE-POSTCODE         PIC 9(8).
                  05 UNDE-EXCESS           PIC 9(8).
                  05 UNDE-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 UNDE-HOUSE-TYPE       PIC X(20).
                  05 UNDE-COLOUR           PIC X(20).
                  05 UNDE-MANAGED-FUND     PIC 9(8).
                  05 UNDE-REG-NUMBER       PIC S9(4) COMP.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
