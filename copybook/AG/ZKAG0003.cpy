      ******************************************************************
      * COPYBOOK ZKAG0003 (record)                                     *
      ******************************************************************
               03 ZKAG0003-REC.
                  05 AGEN-ROOF-TYPE        PIC X(10).
                  05 AGEN-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 AGEN-TAX-BAND         PIC S9(4) COMP.
                  05 AGEN-REG-NUMBER       PIC X(10).
                  05 AGEN-COLOUR           PIC S9(7)V99 COMP-3.
                  05 AGEN-TERM             PIC S9(7)V99 COMP-3.
                  05 AGEN-MODEL            PIC 9(8).
                  05 AGEN-POSTCODE         PIC 9(8).
                  05 AGEN-HOUSE-TYPE       PIC 9(8).
                  05 AGEN-MAKE             PIC X(20).
                  05 AGEN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
