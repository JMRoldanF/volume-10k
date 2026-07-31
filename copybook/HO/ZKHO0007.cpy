      ******************************************************************
      * COPYBOOK ZKHO0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKHO0007-REC.
                  05 HOUS-MODEL            PIC S9(4) COMP.
                  05 HOUS-POSTCODE         PIC X(20).
                  05 HOUS-WITH-PROFITS     PIC S9(4) COMP.
                  05 HOUS-SUM-ASSURED      PIC 9(8).
                  05 HOUS-PREMIUM          PIC X(10).
                  05 HOUS-TERM             PIC X(10).
                  05 HOUS-COLOUR           PIC S9(7)V99 COMP-3.
                  05 HOUS-EQUITIES         PIC S9(4) COMP.
                  05 HOUS-ROOF-TYPE        PIC X(20).
                  05 HOUS-TAX-BAND         PIC X(10).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
