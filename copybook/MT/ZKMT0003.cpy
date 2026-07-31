      ******************************************************************
      * COPYBOOK ZKMT0003 (record)                                     *
      ******************************************************************
               03 ZKMT0003-REC.
                  05 MOTO-PREMIUM          PIC 9(8).
                  05 MOTO-HOUSE-TYPE       PIC 9(8).
                  05 MOTO-AGENT-CODE       PIC S9(4) COMP.
                  05 MOTO-BEDROOMS         PIC S9(7)V99 COMP-3.
                  05 MOTO-TERM             PIC X(10).
                  05 MOTO-ROOF-TYPE        PIC X(10).
                  05 MOTO-STATUS-CODE      PIC S9(7)V99 COMP-3.
                  05 MOTO-MAKE             PIC S9(7)V99 COMP-3.
                  05 MOTO-BROKER-ID        PIC X(10).
                  05 MOTO-REG-NUMBER       PIC S9(7)V99 COMP-3.
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
