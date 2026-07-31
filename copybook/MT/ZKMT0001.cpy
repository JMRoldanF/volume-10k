      ******************************************************************
      * COPYBOOK ZKMT0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKMT0001-REC.
                  05 MOTO-PREMIUM          PIC 9(8).
                  05 MOTO-MODEL            PIC X(20).
                  05 MOTO-ROOF-TYPE        PIC S9(4) COMP.
                  05 MOTO-TERM             PIC S9(7)V99 COMP-3.
                  05 MOTO-MAKE             PIC 9(8).
                  05 MOTO-VALUE            PIC S9(7)V99 COMP-3.
                  05 MOTO-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 MOTO-TAX-BAND         PIC S9(4) COMP.
                  05 MOTO-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 MOTO-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
