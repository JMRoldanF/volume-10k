      ******************************************************************
      * COPYBOOK ZKCU0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCU0010-REC.
                  05 CUST-MANAGED-FUND     PIC S9(4) COMP.
                  05 CUST-SUM-ASSURED      PIC S9(4) COMP.
                  05 CUST-ROOF-TYPE        PIC S9(4) COMP.
                  05 CUST-TAX-BAND         PIC 9(8).
                  05 CUST-POSTCODE         PIC 9(8).
                  05 CUST-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 CUST-BROKER-ID        PIC S9(4) COMP.
                  05 CUST-STATUS-CODE      PIC S9(4) COMP.
                  05 CUST-EXCESS           PIC S9(7)V99 COMP-3.
                  05 CUST-EQUITIES         PIC X(20).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
