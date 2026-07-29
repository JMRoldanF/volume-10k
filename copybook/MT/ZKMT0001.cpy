      ******************************************************************
      * COPYBOOK ZKMT0001 (record)                                     *
      ******************************************************************
               COPY ZKCONST0.
               03 ZKMT0001-REC.
                  05 MOTO-TERM             PIC S9(7)V99 COMP-3.
                  05 MOTO-REG-NUMBER       PIC X(20).
                  05 MOTO-BROKER-ID        PIC X(10).
                  05 MOTO-STATUS-CODE      PIC 9(8).
                  05 MOTO-CC-RATING        PIC S9(7)V99 COMP-3.
                  05 MOTO-VALUE            PIC 9(8).
                  05 MOTO-EQUITIES         PIC S9(7)V99 COMP-3.
                  05 MOTO-HOUSE-TYPE       PIC S9(7)V99 COMP-3.
                  05 MOTO-POSTCODE         PIC X(10).
                  05 MOTO-COLOUR           PIC X(10).
                  05 MOTO-TABLE OCCURS 12 TIMES.
                     07 TAB-MONTH             PIC 9(2).
                     07 TAB-AMOUNT            PIC S9(7)V99 COMP-3.
