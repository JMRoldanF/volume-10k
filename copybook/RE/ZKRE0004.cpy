      ******************************************************************
      * COPYBOOK ZKRE0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0004-REC.
                  05 REIN-NCD-YEARS        PIC X(10).
                  05 REIN-EXCESS           PIC X(10).
                  05 REIN-EQUITIES         PIC X(10).
                  05 REIN-POSTCODE         PIC X(10).
                  05 REIN-REG-NUMBER       PIC S9(4) COMP.
                  05 REIN-TERM             PIC S9(7)V99 COMP-3.
                  05 REIN-BEDROOMS         PIC X(10).
                  05 REIN-STATUS-CODE      PIC S9(4) COMP.
                  05 REIN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 REIN-TAX-BAND         PIC X(10).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
