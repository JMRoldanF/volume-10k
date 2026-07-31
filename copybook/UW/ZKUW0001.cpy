      ******************************************************************
      * COPYBOOK ZKUW0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKUW0001-REC.
                  05 UNDE-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 UNDE-PREMIUM          PIC 9(8).
                  05 UNDE-AGENT-CODE       PIC S9(4) COMP.
                  05 UNDE-VALUE            PIC X(10).
                  05 UNDE-ROOF-TYPE        PIC 9(8).
                  05 UNDE-TERM             PIC S9(4) COMP.
                  05 UNDE-EQUITIES         PIC S9(4) COMP.
                  05 UNDE-TAX-BAND         PIC S9(4) COMP.
                  05 UNDE-HOUSE-TYPE       PIC X(20).
                  05 UNDE-BROKER-ID        PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
