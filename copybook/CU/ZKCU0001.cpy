      ******************************************************************
      * COPYBOOK ZKCU0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKCU0001-REC.
                  05 CUST-POSTCODE         PIC S9(4) COMP.
                  05 CUST-NCD-YEARS        PIC X(10).
                  05 CUST-PREMIUM          PIC X(10).
                  05 CUST-BROKER-ID        PIC X(10).
                  05 CUST-STATUS-CODE      PIC X(20).
                  05 CUST-AGENT-CODE       PIC X(20).
                  05 CUST-EQUITIES         PIC S9(4) COMP.
                  05 CUST-HOUSE-TYPE       PIC X(20).
                  05 CUST-BEDROOMS         PIC 9(8).
                  05 CUST-CC-RATING        PIC S9(4) COMP.
                  05 CUST-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
