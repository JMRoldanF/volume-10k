      ******************************************************************
      * COPYBOOK ZKRE0007 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0007-REC.
                  05 REIN-ROOF-TYPE        PIC X(10).
                  05 REIN-MAKE             PIC 9(8).
                  05 REIN-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 REIN-WITH-PROFITS     PIC X(20).
                  05 REIN-STATUS-CODE      PIC X(20).
                  05 REIN-VALUE            PIC 9(8).
                  05 REIN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 REIN-BEDROOMS         PIC 9(8).
                  05 REIN-TAX-BAND         PIC S9(7)V99 COMP-3.
                  05 REIN-MANAGED-FUND     PIC 9(8).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
