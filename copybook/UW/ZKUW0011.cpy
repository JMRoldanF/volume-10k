      ******************************************************************
      * COPYBOOK ZKUW0011 (record)                                     *
      ******************************************************************
               03 ZKUW0011-REC.
                  05 UNDE-WITH-PROFITS     PIC 9(8).
                  05 UNDE-PREMIUM          PIC 9(8).
                  05 UNDE-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 UNDE-EQUITIES         PIC X(20).
                  05 UNDE-MANAGED-FUND     PIC 9(8).
                  05 UNDE-COLOUR           PIC X(10).
                  05 UNDE-REG-NUMBER       PIC X(10).
                  05 UNDE-NCD-YEARS        PIC X(10).
                  05 UNDE-SUM-ASSURED      PIC X(10).
                  05 UNDE-ROOF-TYPE        PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
