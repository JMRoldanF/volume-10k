      ******************************************************************
      * COPYBOOK ZKEN0004 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0004-REC.
                  05 ENDO-AGENT-CODE       PIC X(10).
                  05 ENDO-COLOUR           PIC 9(8).
                  05 ENDO-PREMIUM          PIC X(10).
                  05 ENDO-EQUITIES         PIC X(20).
                  05 ENDO-MAKE             PIC 9(8).
                  05 ENDO-HOUSE-TYPE       PIC 9(8).
                  05 ENDO-ROOF-TYPE        PIC X(20).
                  05 ENDO-VALUE            PIC 9(8).
                  05 ENDO-POSTCODE         PIC X(10).
                  05 ENDO-WITH-PROFITS     PIC X(10).
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
