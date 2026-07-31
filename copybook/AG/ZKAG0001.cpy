      ******************************************************************
      * COPYBOOK ZKAG0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKAG0001-REC.
                  05 AGEN-TERM             PIC S9(4) COMP.
                  05 AGEN-TAX-BAND         PIC S9(4) COMP.
                  05 AGEN-EQUITIES         PIC 9(8).
                  05 AGEN-HOUSE-TYPE       PIC X(20).
                  05 AGEN-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 AGEN-POSTCODE         PIC S9(4) COMP.
                  05 AGEN-MAKE             PIC X(20).
                  05 AGEN-MODEL            PIC 9(8).
                  05 AGEN-MANAGED-FUND     PIC S9(4) COMP.
                  05 AGEN-CC-RATING        PIC 9(8).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
