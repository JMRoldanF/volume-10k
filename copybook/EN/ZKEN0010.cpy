      ******************************************************************
      * COPYBOOK ZKEN0010 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKEN0010-REC.
                  05 ENDO-VALUE            PIC S9(7)V99 COMP-3.
                  05 ENDO-PREMIUM          PIC X(10).
                  05 ENDO-STATUS-CODE      PIC S9(4) COMP.
                  05 ENDO-COLOUR           PIC X(20).
                  05 ENDO-MODEL            PIC X(10).
                  05 ENDO-MAKE             PIC X(10).
                  05 ENDO-CC-RATING        PIC X(10).
                  05 ENDO-HOUSE-TYPE       PIC S9(4) COMP.
                  05 ENDO-ROOF-TYPE        PIC S9(7)V99 COMP-3.
                  05 ENDO-WITH-PROFITS     PIC S9(7)V99 COMP-3.
                  05 ENDO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
