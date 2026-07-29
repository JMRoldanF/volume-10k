      ******************************************************************
      * COPYBOOK ZKPA0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKPA0010-REC.
                  05 PAYM-EXCESS           PIC S9(7)V99 COMP-3.
                  05 PAYM-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 PAYM-SUM-ASSURED      PIC S9(4) COMP.
                  05 PAYM-PREMIUM          PIC X(20).
                  05 PAYM-ROOF-TYPE        PIC S9(4) COMP.
                  05 PAYM-VALUE            PIC X(20).
                  05 PAYM-TAX-BAND         PIC X(10).
                  05 PAYM-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 PAYM-MANAGED-FUND     PIC X(10).
                  05 PAYM-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
