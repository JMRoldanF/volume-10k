      ******************************************************************
      * COPYBOOK ZKUW0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKUW0004-REC.
                  05 UNDE-BROKER-ID        PIC S9(7)V99 COMP-3.
                  05 UNDE-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 UNDE-POSTCODE         PIC S9(7)V99 COMP-3.
                  05 UNDE-NCD-YEARS        PIC X(10).
                  05 UNDE-MAKE             PIC X(20).
                  05 UNDE-MODEL            PIC S9(7)V99 COMP-3.
                  05 UNDE-AGENT-CODE       PIC S9(4) COMP.
                  05 UNDE-TAX-BAND         PIC S9(4) COMP.
                  05 UNDE-SUM-ASSURED      PIC X(20).
                  05 UNDE-PREMIUM          PIC S9(4) COMP.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
