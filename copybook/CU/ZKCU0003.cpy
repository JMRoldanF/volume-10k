      ******************************************************************
      * COPYBOOK ZKCU0003 (record)                                     *
      ******************************************************************
               03 ZKCU0003-REC.
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-STATUS-CODE      PIC X(20).
                  05 CUST-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CUST-HOUSE-TYPE       PIC 9(8).
                  05 CUST-MAKE             PIC X(20).
                  05 CUST-MODEL            PIC S9(7)V99 COMP-3.
                  05 CUST-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 CUST-TAX-BAND         PIC X(10).
                  05 CUST-COLOUR           PIC S9(4) COMP.
                  05 CUST-TERM             PIC X(20).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
