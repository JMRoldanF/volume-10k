      ******************************************************************
      * COPYBOOK ZKUW0000 (record)                                     *
      ******************************************************************
               03 ZKUW0000-REC.
                  05 UNDE-AGENT-CODE       PIC S9(4) COMP.
                  05 UNDE-HOUSE-TYPE       PIC X(10).
                  05 UNDE-COLOUR           PIC S9(7)V99 COMP-3.
                  05 UNDE-MODEL            PIC S9(4) COMP.
                  05 UNDE-REG-NUMBER       PIC 9(8).
                  05 UNDE-NCD-YEARS        PIC X(10).
                  05 UNDE-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 UNDE-SUM-ASSURED      PIC X(10).
                  05 UNDE-POSTCODE         PIC S9(4) COMP.
                  05 UNDE-CC-RATING        PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
