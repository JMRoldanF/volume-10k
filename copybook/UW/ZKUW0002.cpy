      ******************************************************************
      * COPYBOOK ZKUW0002 (record)                                     *
      ******************************************************************
               03 ZKUW0002-REC.
                  05 UNDE-BROKER-ID        PIC 9(8).
                  05 UNDE-TAX-BAND         PIC X(20).
                  05 UNDE-PREMIUM          PIC S9(4) COMP.
                  05 UNDE-AGENT-CODE       PIC X(20).
                  05 UNDE-MODEL            PIC X(10).
                  05 UNDE-MAKE             PIC X(10).
                  05 UNDE-EQUITIES         PIC X(20).
                  05 UNDE-BEDROOMS         PIC X(10).
                  05 UNDE-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 UNDE-REG-NUMBER       PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
