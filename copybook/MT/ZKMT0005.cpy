      ******************************************************************
      * COPYBOOK ZKMT0005 (record)                                     *
      ******************************************************************
               03 ZKMT0005-REC.
                  05 MOTO-REG-NUMBER       PIC 9(8).
                  05 MOTO-MODEL            PIC 9(8).
                  05 MOTO-VALUE            PIC 9(8).
                  05 MOTO-MAKE             PIC S9(4) COMP.
                  05 MOTO-AGENT-CODE       PIC 9(8).
                  05 MOTO-HOUSE-TYPE       PIC X(20).
                  05 MOTO-NCD-YEARS        PIC 9(8).
                  05 MOTO-TAX-BAND         PIC S9(4) COMP.
                  05 MOTO-WITH-PROFITS     PIC S9(4) COMP.
                  05 MOTO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
