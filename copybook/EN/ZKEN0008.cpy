      ******************************************************************
      * COPYBOOK ZKEN0008 (record)                                     *
      ******************************************************************
               03 ZKEN0008-REC.
                  05 ENDO-EQUITIES         PIC 9(8).
                  05 ENDO-ROOF-TYPE        PIC X(20).
                  05 ENDO-EXCESS           PIC X(20).
                  05 ENDO-REG-NUMBER       PIC X(10).
                  05 ENDO-POSTCODE         PIC 9(8).
                  05 ENDO-MAKE             PIC X(20).
                  05 ENDO-COLOUR           PIC S9(7)V99 COMP-3.
                  05 ENDO-BROKER-ID        PIC X(20).
                  05 ENDO-HOUSE-TYPE       PIC X(10).
                  05 ENDO-NCD-YEARS        PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
