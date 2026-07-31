      ******************************************************************
      * COPYBOOK ZKRE0008 (record)                                     *
      ******************************************************************
               03 ZKRE0008-REC.
                  05 REIN-ROOF-TYPE        PIC 9(8).
                  05 REIN-MANAGED-FUND     PIC S9(4) COMP.
                  05 REIN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 REIN-MODEL            PIC X(20).
                  05 REIN-EXCESS           PIC S9(4) COMP.
                  05 REIN-NCD-YEARS        PIC 9(8).
                  05 REIN-MAKE             PIC S9(7)V99 COMP-3.
                  05 REIN-VALUE            PIC X(20).
                  05 REIN-COLOUR           PIC 9(8).
                  05 REIN-TERM             PIC S9(4) COMP.
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
