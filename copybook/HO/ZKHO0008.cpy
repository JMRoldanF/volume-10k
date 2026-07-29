      ******************************************************************
      * COPYBOOK ZKHO0008 (record)                                     *
      ******************************************************************
               03 ZKHO0008-REC.
                  05 HOUS-COLOUR           PIC 9(8).
                  05 HOUS-POSTCODE         PIC X(20).
                  05 HOUS-ROOF-TYPE        PIC 9(8).
                  05 HOUS-MAKE             PIC X(20).
                  05 HOUS-TAX-BAND         PIC X(20).
                  05 HOUS-AGENT-CODE       PIC X(10).
                  05 HOUS-HOUSE-TYPE       PIC 9(8).
                  05 HOUS-CC-RATING        PIC X(10).
                  05 HOUS-TERM             PIC S9(7)V99 COMP-3.
                  05 HOUS-MANAGED-FUND     PIC X(10).
                  05 HOUS-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
