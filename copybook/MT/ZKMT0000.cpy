      ******************************************************************
      * COPYBOOK ZKMT0000 (record)                                     *
      ******************************************************************
               03 ZKMT0000-REC.
                  05 MOTO-COLOUR           PIC X(20).
                  05 MOTO-MODEL            PIC S9(4) COMP.
                  05 MOTO-REG-NUMBER       PIC X(20).
                  05 MOTO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 MOTO-WITH-PROFITS     PIC 9(8).
                  05 MOTO-EXCESS           PIC X(20).
                  05 MOTO-BEDROOMS         PIC S9(4) COMP.
                  05 MOTO-VALUE            PIC X(20).
                  05 MOTO-TAX-BAND         PIC 9(8).
                  05 MOTO-NCD-YEARS        PIC X(20).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
