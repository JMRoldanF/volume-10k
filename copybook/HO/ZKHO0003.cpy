      ******************************************************************
      * COPYBOOK ZKHO0003 (record)                                     *
      ******************************************************************
               03 ZKHO0003-REC.
                  05 HOUS-REG-NUMBER       PIC S9(4) COMP.
                  05 HOUS-PREMIUM          PIC X(20).
                  05 HOUS-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 HOUS-NCD-YEARS        PIC S9(4) COMP.
                  05 HOUS-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 HOUS-MAKE             PIC S9(4) COMP.
                  05 HOUS-STATUS-CODE      PIC S9(4) COMP.
                  05 HOUS-MODEL            PIC X(20).
                  05 HOUS-VALUE            PIC 9(8).
                  05 HOUS-TAX-BAND         PIC 9(8).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
