      ******************************************************************
      * COPYBOOK ZKCU0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCU0004-REC.
                  05 CUST-AGENT-CODE       PIC S9(4) COMP.
                  05 CUST-TAX-BAND         PIC S9(4) COMP.
                  05 CUST-MAKE             PIC X(20).
                  05 CUST-NCD-YEARS        PIC S9(4) COMP.
                  05 CUST-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 CUST-PREMIUM          PIC S9(4) COMP.
                  05 CUST-VALUE            PIC 9(8).
                  05 CUST-BEDROOMS         PIC S9(4) COMP.
                  05 CUST-HOUSE-TYPE       PIC 9(8).
                  05 CUST-MANAGED-FUND     PIC X(10).
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
