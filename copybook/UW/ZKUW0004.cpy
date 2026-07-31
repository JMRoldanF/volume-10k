      ******************************************************************
      * COPYBOOK ZKUW0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKUW0004-REC.
                  05 UNDE-MANAGED-FUND     PIC X(10).
                  05 UNDE-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 UNDE-EQUITIES         PIC S9(4) COMP.
                  05 UNDE-TAX-BAND         PIC S9(4) COMP.
                  05 UNDE-VALUE            PIC S9(7)V99 COMP-3.
                  05 UNDE-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 UNDE-AGENT-CODE       PIC X(20).
                  05 UNDE-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 UNDE-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 UNDE-BROKER-ID        PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
