      ******************************************************************
      * COPYBOOK ZKRE0011 (record)                                     *
      ******************************************************************
               03 ZKRE0011-REC.
                  05 REIN-TERM             PIC S9(7)V99 COMP-3.
                  05 REIN-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 REIN-BROKER-ID        PIC 9(8).
                  05 REIN-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 REIN-TAX-BAND         PIC 9(8).
                  05 REIN-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 REIN-MAKE             PIC X(20).
                  05 REIN-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 REIN-WITH-PROFITS     PIC 9(8).
                  05 REIN-VALUE            PIC S9(7)V99 COMP-3.
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
