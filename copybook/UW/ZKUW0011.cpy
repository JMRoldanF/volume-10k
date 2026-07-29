      ******************************************************************
      * COPYBOOK ZKUW0011 (record)                                     *
      ******************************************************************
               03 ZKUW0011-REC.
                  05 UNDE-CC-RATING        PIC 9(8).
                  05 UNDE-VALUE            PIC X(10).
                  05 UNDE-EXCESS           PIC 9(8).
                  05 UNDE-STATUS-CODE      PIC 9(8).
                  05 UNDE-BROKER-ID        PIC X(10).
                  05 UNDE-ROOF-TYPE        PIC X(10).
                  05 UNDE-MANAGED-FUND     PIC S9(4) COMP.
                  05 UNDE-COLOUR           PIC X(20).
                  05 UNDE-TAX-BAND         PIC S9(4) COMP.
                  05 UNDE-AGENT-CODE       PIC 9(8).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
