      ******************************************************************
      * COPYBOOK ZKCU0009 (record)                                     *
      ******************************************************************
               03 ZKCU0009-REC.
                  05 CUST-BEDROOMS         PIC S9(4) COMP.
                  05 CUST-AGENT-CODE       PIC X(10).
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-WITH-PROFITS     PIC 9(8).
                  05 CUST-ROOF-TYPE        PIC X(10).
                  05 CUST-TAX-BAND         PIC 9(8).
                  05 CUST-BROKER-ID        PIC 9(8).
                  05 CUST-EQUITIES         PIC X(10).
                  05 CUST-VALUE            PIC S9(4) COMP.
                  05 CUST-EXCESS           PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
