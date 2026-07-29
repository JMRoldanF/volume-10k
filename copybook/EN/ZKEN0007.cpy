      ******************************************************************
      * COPYBOOK ZKEN0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0007-REC.
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-TERM             PIC S9(4) COMP.
                  05 ENDO-CC-RATING        PIC X(10).
                  05 ENDO-TAX-BAND         PIC 9(8).
                  05 ENDO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 ENDO-EQUITIES         PIC S9(4) COMP.
                  05 ENDO-NCD-YEARS        PIC 9(8).
                  05 ENDO-BROKER-ID        PIC X(10).
                  05 ENDO-BEDROOMS         PIC X(10).
                  05 ENDO-HOUSE-TYPE       PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
