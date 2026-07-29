      ******************************************************************
      * COPYBOOK ZKPA0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0004-REC.
                  05 PAYM-MANAGED-FUND     PIC 9(8).
                  05 PAYM-EXCESS           PIC S9(4) COMP.
                  05 PAYM-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 PAYM-TERM             PIC S9(7)V99 COMP-3.
                  05 PAYM-HOUSE-TYPE       PIC S9(4) COMP.
                  05 PAYM-COLOUR           PIC X(10).
                  05 PAYM-WITH-PROFITS     PIC X(10).
                  05 PAYM-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 PAYM-POSTCODE         PIC S9(4) COMP.
                  05 PAYM-BEDROOMS         PIC X(10).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
