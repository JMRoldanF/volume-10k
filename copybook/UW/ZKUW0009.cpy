      ******************************************************************
      * COPYBOOK ZKUW0009 (record)                                     *
      ******************************************************************
               03 ZKUW0009-REC.
                  05 UNDE-TAX-BAND         PIC X(20).
                  05 UNDE-SUM-ASSURED      PIC S9(7)V99 COMP-3.
                  05 UNDE-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 UNDE-MAKE             PIC X(20).
                  05 UNDE-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 UNDE-COLOUR           PIC X(10).
                  05 UNDE-AGENT-CODE       PIC X(20).
                  05 UNDE-EXCESS           PIC X(20).
                  05 UNDE-TERM             PIC S9(7)V99 COMP-3.
                  05 UNDE-WITH-PROFITS     PIC X(20).
                  05 UNDE-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
