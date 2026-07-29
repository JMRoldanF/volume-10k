      ******************************************************************
      * COPYBOOK ZKCU0008 (record)                                     *
      ******************************************************************
               03 ZKCU0008-REC.
                  05 CUST-TAX-BAND         PIC 9(8).
                  05 CUST-MODEL            PIC S9(7)V99 COMP-3.
                  05 CUST-REG-NUMBER       PIC 9(8).
                  05 CUST-VALUE            PIC 9(8).
                  05 CUST-PREMIUM          PIC S9(4) COMP.
                  05 CUST-AGENT-CODE       PIC X(10).
                  05 CUST-MAKE             PIC S9(4) COMP.
                  05 CUST-STATUS-CODE      PIC 9(8).
                  05 CUST-COLOUR           PIC X(10).
                  05 CUST-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
