      ******************************************************************
      * COPYBOOK ZKRE0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0010-REC.
                  05 REIN-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 REIN-ROOF-TYPE        PIC 9(8).
                  05 REIN-AGENT-CODE       PIC S9(7)V99 COMP-3.
                  05 REIN-EQUITIES         PIC S9(4) COMP.
                  05 REIN-MAKE             PIC S9(4) COMP.
                  05 REIN-NCD-YEARS        PIC 9(8).
                  05 REIN-REG-NUMBER       PIC 9(8).
                  05 REIN-TAX-BAND         PIC 9(8).
                  05 REIN-BROKER-ID        PIC X(10).
                  05 REIN-MODEL            PIC S9(7)V99 COMP-3.
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
