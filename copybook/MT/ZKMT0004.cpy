      ******************************************************************
      * COPYBOOK ZKMT0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKMT0004-REC.
                  05 MOTO-TAX-BAND         PIC S9(4) COMP.
                  05 MOTO-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 MOTO-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 MOTO-COLOUR           PIC X(20).
                  05 MOTO-EQUITIES         PIC X(20).
                  05 MOTO-WITH-PROFITS     PIC S9(4) COMP.
                  05 MOTO-NCD-YEARS        PIC S9(4) COMP.
                  05 MOTO-EXCESS           PIC 9(8).
                  05 MOTO-HOUSE-TYPE       PIC S9(4) COMP.
                  05 MOTO-ROOF-TYPE        PIC X(10).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
