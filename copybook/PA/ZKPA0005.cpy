      ******************************************************************
      * COPYBOOK ZKPA0005 (record)                                     *
      ******************************************************************
               03 ZKPA0005-REC.
                  05 PAYM-ROOF-TYPE        PIC X(20).
                  05 PAYM-EXCESS           PIC X(20).
                  05 PAYM-POSTCODE         PIC X(20).
                  05 PAYM-TAX-BAND         PIC X(20).
                  05 PAYM-TERM             PIC X(20).
                  05 PAYM-MANAGED-FUND     PIC S9(7)V99 COMP-3.
                  05 PAYM-VALUE            PIC X(10).
                  05 PAYM-REG-NUMBER       PIC X(20).
                  05 PAYM-PREMIUM          PIC X(10).
                  05 PAYM-WITH-PROFITS     PIC X(10).
                  05 PAYM-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
