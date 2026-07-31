      ******************************************************************
      * COPYBOOK ZKHO0002 (record)                                     *
      ******************************************************************
               03 ZKHO0002-REC.
                  05 HOUS-POSTCODE         PIC S9(4) COMP.
                  05 HOUS-BROKER-ID        PIC S9(4) COMP.
                  05 HOUS-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 HOUS-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 HOUS-REG-NUMBER       PIC X(20).
                  05 HOUS-HOUSE-TYPE       PIC S9(4) COMP.
                  05 HOUS-COLOUR           PIC X(20).
                  05 HOUS-MAKE             PIC S9(4) COMP.
                  05 HOUS-TERM             PIC X(20).
                  05 HOUS-EXCESS           PIC S9(4) COMP.
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
