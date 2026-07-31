      ******************************************************************
      * COPYBOOK ZKMT0009 (record)                                     *
      ******************************************************************
               03 ZKMT0009-REC.
                  05 MOTO-ROOF-TYPE        PIC X(10).
                  05 MOTO-POSTCODE         PIC 9(8).
                  05 MOTO-CC-RATING        PIC X(20).
                  05 MOTO-EQUITIES         PIC 9(8).
                  05 MOTO-PREMIUM          PIC X(10).
                  05 MOTO-WITH-PROFITS     PIC X(10).
                  05 MOTO-VALUE            PIC S9(7)V99 COMP-3.
                  05 MOTO-HOUSE-TYPE       PIC 9(8).
                  05 MOTO-MANAGED-FUND     PIC 9(8).
                  05 MOTO-MODEL            PIC X(20).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
