      ******************************************************************
      * COPYBOOK ZKUW0005 (record)                                     *
      ******************************************************************
               03 ZKUW0005-REC.
                  05 UNDE-REG-NUMBER       PIC X(20).
                  05 UNDE-HOUSE-TYPE       PIC S9(4) COMP.
                  05 UNDE-SUM-ASSURED      PIC S9(4) COMP.
                  05 UNDE-EXCESS           PIC X(10).
                  05 UNDE-MAKE             PIC 9(8).
                  05 UNDE-STATUS-CODE      PIC S9(4) COMP.
                  05 UNDE-TERM             PIC X(20).
                  05 UNDE-NCD-YEARS        PIC 9(8).
                  05 UNDE-MODEL            PIC 9(8).
                  05 UNDE-TAX-BAND         PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
