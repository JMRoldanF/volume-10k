      ******************************************************************
      * COPYBOOK ZKCOMMON (commarea)                                   *
      ******************************************************************
               COPY ZKCONST0.
               03 CA-REQUEST-ID            PIC X(6).
               03 CA-RETURN-CODE           PIC 9(2).
               03 CA-CUSTOMER-NUM          PIC 9(10).
               03 CA-REQUEST-SPECIFIC      PIC X(32482).
               03 CA-POLICY-REQUEST REDEFINES
                                      CA-REQUEST-SPECIFIC.
                  05 CA-POLICY-NUM         PIC 9(10).
                  05 CA-POLICY-COMMON.
                     07 CA-ISSUE-DATE      PIC X(10).
                     07 CA-EXPIRY-DATE     PIC X(10).
                     07 CA-LASTCHANGED     PIC X(26).
                     07 CA-BROKERID        PIC 9(10).
                     07 CA-PAYMENT         PIC 9(6).
                  05 CA-POLICY-FILLER      PIC X(32400).
