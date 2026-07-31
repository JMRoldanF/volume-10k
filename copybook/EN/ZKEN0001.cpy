      ******************************************************************
      * COPYBOOK ZKEN0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0001-REC.
                  05 ENDO-COLOUR           PIC S9(7)V99 COMP-3.
                  05 ENDO-MAKE             PIC X(10).
                  05 ENDO-POSTCODE         PIC X(20).
                  05 ENDO-TAX-BAND         PIC X(10).
                  05 ENDO-EXCESS           PIC X(10).
                  05 ENDO-EQUITIES         PIC X(10).
                  05 ENDO-BEDROOMS         PIC X(20).
                  05 ENDO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 ENDO-MODEL            PIC S9(4) COMP.
                  05 ENDO-BROKER-ID        PIC X(20).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
