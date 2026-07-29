      ******************************************************************
      * COPYBOOK ZKUW0008 (record)                                     *
      ******************************************************************
               03 ZKUW0008-REC.
                  05 UNDE-WITH-PROFITS     PIC X(10).
                  05 UNDE-BROKER-ID        PIC X(10).
                  05 UNDE-ROOF-TYPE        PIC S9(4) COMP.
                  05 UNDE-AGENT-CODE       PIC S9(4) COMP.
                  05 UNDE-EQUITIES         PIC X(20).
                  05 UNDE-NCD-YEARS        PIC X(10).
                  05 UNDE-EXCESS           PIC S9(4) COMP.
                  05 UNDE-STATUS-CODE      PIC S9(4) COMP.
                  05 UNDE-MAKE             PIC 9(8).
                  05 UNDE-CC-RATING        PIC S9(4) COMP.
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
