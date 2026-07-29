      ******************************************************************
      * COPYBOOK ZKPA0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0007-REC.
                  05 PAYM-MODEL            PIC 9(8).
                  05 PAYM-CC-RATING        PIC X(10).
                  05 PAYM-SUM-ASSURED      PIC X(10).
                  05 PAYM-EXCESS           PIC S9(7)V99 COMP-3.
                  05 PAYM-MAKE             PIC S9(7)V99 COMP-3.
                  05 PAYM-HOUSE-TYPE       PIC X(10).
                  05 PAYM-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 PAYM-COLOUR           PIC 9(8).
                  05 PAYM-BEDROOMS         PIC X(10).
                  05 PAYM-POSTCODE         PIC X(20).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
