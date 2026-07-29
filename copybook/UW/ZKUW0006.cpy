      ******************************************************************
      * COPYBOOK ZKUW0006 (record)                                     *
      ******************************************************************
               03 ZKUW0006-REC.
                  05 UNDE-MODEL            PIC S9(7)V99 COMP-3.
                  05 UNDE-EQUITIES         PIC X(10).
                  05 UNDE-HOUSE-TYPE       PIC X(20).
                  05 UNDE-NCD-YEARS        PIC 9(8).
                  05 UNDE-STATUS-CODE      PIC X(10).
                  05 UNDE-PREMIUM          PIC S9(7)V99 COMP-3.
                  05 UNDE-REG-NUMBER       PIC X(10).
                  05 UNDE-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 UNDE-MAKE             PIC X(10).
                  05 UNDE-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
