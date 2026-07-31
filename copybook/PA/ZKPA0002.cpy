      ******************************************************************
      * COPYBOOK ZKPA0002 (record)                                     *
      ******************************************************************
               03 ZKPA0002-REC.
                  05 PAYM-ROOF-TYPE        PIC X(10).
                  05 PAYM-MODEL            PIC S9(4) COMP.
                  05 PAYM-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 PAYM-POSTCODE         PIC X(10).
                  05 PAYM-VALUE            PIC S9(7)V99 COMP-3.
                  05 PAYM-AGENT-CODE       PIC X(10).
                  05 PAYM-REG-NUMBER       PIC X(10).
                  05 PAYM-HOUSE-TYPE       PIC 9(8).
                  05 PAYM-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 PAYM-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
