      ******************************************************************
      * COPYBOOK ZKCU0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCU0007-REC.
                  05 CUST-CC-RATING        PIC S9(4) COMP.
                  05 CUST-SUM-ASSURED      PIC X(10).
                  05 CUST-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 CUST-AGENT-CODE       PIC S9(4) COMP.
                  05 CUST-COLOUR           PIC X(10).
                  05 CUST-BROKER-ID        PIC X(10).
                  05 CUST-WITH-PROFITS     PIC X(10).
                  05 CUST-MODEL            PIC S9(7)V99 COMP-3.
                  05 CUST-REG-NUMBER       PIC X(10).
                  05 CUST-ROOF-TYPE        PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
