      ******************************************************************
      * COPYBOOK ZKRE0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKRE0010-REC.
                  05 REIN-NCD-YEARS        PIC S9(7)V99 COMP-3.
                  05 REIN-COLOUR           PIC S9(7)V99 COMP-3.
                  05 REIN-HOUSE-TYPE       PIC X(10).
                  05 REIN-AGENT-CODE       PIC 9(8).
                  05 REIN-ROOF-TYPE        PIC X(20).
                  05 REIN-TAX-BAND         PIC 9(8).
                  05 REIN-POSTCODE         PIC 9(8).
                  05 REIN-EXCESS           PIC X(20).
                  05 REIN-VALUE            PIC S9(7)V99 COMP-3.
                  05 REIN-MAKE             PIC X(20).
                  05 REIN-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
