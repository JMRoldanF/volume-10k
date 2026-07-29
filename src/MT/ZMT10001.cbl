      ******************************************************************
      * ZMT10001 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  Tags: deep-nesting, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZMT10001.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZMT10001------WS'.
             03 WS-TRANSID             PIC X(4).
             03 WS-TERMID              PIC X(4).
             03 WS-TASKNUM             PIC 9(7).
             03 WS-CALEN               PIC S9(4) COMP.
             03 WS-ADDR-COMMAREA       USAGE IS POINTER.
      *----------------------------------------------------------------*
       01  WS-RESP                   PIC S9(8) COMP VALUE +0.
       01  WS-RESP2                  PIC S9(8) COMP VALUE +0.
       01  ABS-TIME                  PIC S9(15) COMP-3 VALUE +0.
       01  TIME1                     PIC X(8)  VALUE SPACES.
       01  DATE1                     PIC X(10) VALUE SPACES.

      * Error message structure
       01  ERROR-MSG.
             03 EM-DATE                PIC X(8)  VALUE SPACES.
             03 FILLER                 PIC X     VALUE SPACES.
             03 EM-TIME                PIC X(6)  VALUE SPACES.
             03 FILLER                 PIC X(9)  VALUE ' ZMT10001'.
             03 EM-VARIABLE            PIC X(21) VALUE SPACES.

       01  WS-STATUS-CODE            PIC X(2)  VALUE SPACES.
               88 WS-STATUS-OK             VALUE '00'.
               88 WS-STATUS-NOTFND         VALUE '01'.
               88 WS-STATUS-DUPKEY         VALUE '02'.
               88 WS-STATUS-FAILED         VALUE '90' THRU '99'.
       01  WS-PREMIUM-TOTAL          PIC S9(9)V99 COMP-3 VALUE +0.
       01  WS-PREMIUM-BAND           PIC 9(2)  COMP-5 VALUE 0.
       01  WS-SUB                    PIC S9(4) COMP VALUE +1.
       01  WS-IX                     PIC S9(4) COMP VALUE +1.
       01  WS-ENTRY-COUNT            PIC S9(4) COMP VALUE +0.

       01  WS-KEY-AREA.
             03 WS-KEY-CUSTOMER        PIC 9(10).
             03 WS-KEY-POLICY          PIC 9(10).
       01  WS-KEY-FLAT REDEFINES WS-KEY-AREA.
             03 WS-KEY-CHAR            PIC X(20).
       01  WS-TABLE-AREA.
             03 WS-TABLE-COUNT         PIC S9(4) COMP VALUE +0.
             03 WS-TABLE-ENTRY OCCURS 1 TO 250 TIMES
                        DEPENDING ON WS-TABLE-COUNT.
                05 WS-T-NCD-YEARS      PIC X(12).
                05 WS-T-CC-RATING      PIC X(12).
                05 WS-T-MAKE           PIC X(12).
                05 WS-T-HOUSE-TYPE     PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      ******************************************************************
      * L I N K A G E     S E C T I O N                                *
      ******************************************************************
       LINKAGE SECTION.
       01  DFHCOMMAREA.
               COPY ZKCOMMON.
      ******************************************************************
      * P R O C E D U R E S                                            *
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
       MAINLINE SECTION.
               INITIALIZE WS-HEADER.
               MOVE EIBTRNID TO WS-TRANSID.
               MOVE EIBTRMID TO WS-TERMID.
               MOVE EIBTASKN TO WS-TASKNUM.
               IF EIBCALEN IS EQUAL TO ZERO
                  MOVE ' NO COMMAREA RECEIVED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
                  EXEC CICS ABEND ABCODE('LGDL')
                            NODUMP END-EXEC
               END-IF.
               MOVE EIBCALEN TO WS-CALEN.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM REFRESH-REG-NUMBER-0001.
               PERFORM NORMALISE-ROOF-TYPE-0002.
               PERFORM EXPAND-POSTCODE-0003.
               PERFORM REFRESH-CC-RATING-0004.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       DEEP-NESTING.
               IF WS-T-AMOUNT(1) > 0
                IF WS-T-AMOUNT(2) > 1
                 IF WS-T-AMOUNT(3) > 2
                  IF WS-T-AMOUNT(4) > 3
                   IF WS-T-AMOUNT(5) > 4
                    IF WS-T-AMOUNT(6) > 5
                     IF WS-T-AMOUNT(7) > 6
                      IF WS-T-AMOUNT(8) > 7
                       IF WS-T-AMOUNT(9) > 8
                        IF WS-T-AMOUNT(10) > 9
                         IF WS-T-AMOUNT(11) > 10
                          IF WS-T-AMOUNT(12) > 11
                           IF WS-T-AMOUNT(13) > 12
                            IF WS-T-AMOUNT(14) > 13
                             IF WS-T-AMOUNT(15) > 14
                              IF WS-T-AMOUNT(16) > 15
                               IF WS-T-AMOUNT(17) > 16
                                IF WS-T-AMOUNT(18) > 17
                                 IF WS-T-AMOUNT(19) > 18
                                  IF WS-T-AMOUNT(20) > 19
                                   IF WS-T-AMOUNT(21) > 20
                                    IF WS-T-AMOUNT(22) > 21
                                     IF WS-T-AMOUNT(23) > 22
                                      IF WS-T-AMOUNT(24) > 23
                                       IF WS-T-AMOUNT(25) > 24
                                        IF WS-T-AMOUNT(26) > 25
                                         IF WS-T-AMOUNT(27) > 26
                                          IF WS-T-AMOUNT(28) > 27
                                           IF WS-T-AMOUNT(29) > 28
                                            IF WS-T-AMOUNT(30) > 29
                                             IF WS-T-AMOUNT(31) > 30
                                              IF WS-T-AMOUNT(32) > 31
                                               IF WS-T-AMOUNT(33) > 32
                                                IF WS-T-AMOUNT(34) > 33
                                                 IF WS-T-AMOUNT(35) > 34
                                                  IF WS-T-AMOUNT(36) > 3
                                                   IF WS-T-AMOUNT(37) > 
                                                    IF WS-T-AMOUNT(38) >
                                                     IF WS-T-AMOUNT(39) 
                                                      IF WS-T-AMOUNT(40)
                                                       IF WS-T-AMOUNT(41
                                                       IF WS-T-AMOUNT(42
                                                       IF WS-T-AMOUNT(43
                                                       IF WS-T-AMOUNT(44
                                                       IF WS-T-AMOUNT(45
                                                       IF WS-T-AMOUNT(46
                                                       IF WS-T-AMOUNT(47
                                                       IF WS-T-AMOUNT(48
                                                       IF WS-T-AMOUNT(49
                                                       IF WS-T-AMOUNT(50
                                                       IF WS-T-AMOUNT(51
                                                       IF WS-T-AMOUNT(52
                                                       IF WS-T-AMOUNT(53
                                                       IF WS-T-AMOUNT(54
                                                       IF WS-T-AMOUNT(55
                                                       IF WS-T-AMOUNT(56
                                                       IF WS-T-AMOUNT(57
                                                       IF WS-T-AMOUNT(58
                                                       IF WS-T-AMOUNT(59
                                                       IF WS-T-AMOUNT(60
                                                       IF WS-T-AMOUNT(61
                                                       IF WS-T-AMOUNT(62
                                                       IF WS-T-AMOUNT(63
                                                       IF WS-T-AMOUNT(64
                                                       IF WS-T-AMOUNT(65
                                                       IF WS-T-AMOUNT(66
                                                       IF WS-T-AMOUNT(67
                                                       IF WS-T-AMOUNT(68
                                                       IF WS-T-AMOUNT(69
                                                       IF WS-T-AMOUNT(70
                                                       IF WS-T-AMOUNT(71
                                                       IF WS-T-AMOUNT(72
                                                       IF WS-T-AMOUNT(73
                                                       IF WS-T-AMOUNT(74
                                                       IF WS-T-AMOUNT(75
                                                       IF WS-T-AMOUNT(76
                                                       IF WS-T-AMOUNT(77
                                                       IF WS-T-AMOUNT(78
                                                       IF WS-T-AMOUNT(79
                                                       IF WS-T-AMOUNT(80
                                                       IF WS-T-AMOUNT(81
                                                       IF WS-T-AMOUNT(82
                                                       IF WS-T-AMOUNT(83
                                                       IF WS-T-AMOUNT(84
                                                       IF WS-T-AMOUNT(85
                                                       IF WS-T-AMOUNT(86
                                                       IF WS-T-AMOUNT(87
                                                       IF WS-T-AMOUNT(88
                                                       IF WS-T-AMOUNT(89
                                                       IF WS-T-AMOUNT(90
                                                       IF WS-T-AMOUNT(91
                                                       IF WS-T-AMOUNT(92
                                                       IF WS-T-AMOUNT(93
                                                       IF WS-T-AMOUNT(94
                                                       IF WS-T-AMOUNT(95
                                                       IF WS-T-AMOUNT(96
                                                       IF WS-T-AMOUNT(97
                                                       IF WS-T-AMOUNT(98
                                                       IF WS-T-AMOUNT(99
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(10
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(11
                                                       IF WS-T-AMOUNT(12
                                                       CONTINUE
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
                                                       END-IF
               .
      *----------------------------------------------------------------*
       REFRESH-REG-NUMBER-0001.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       NORMALISE-ROOF-TYPE-0002.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       EXPAND-POSTCODE-0003.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       REFRESH-CC-RATING-0004.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       WRITE-ERROR-MESSAGE.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME) END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(EM-DATE)
                         TIME(EM-TIME)
               END-EXEC.
               EXEC CICS LINK PROGRAM('ZMT09995')
                         COMMAREA(ERROR-MSG)
                         LENGTH(45)
               END-EXEC.
      *----------------------------------------------------------------*
       END PROGRAM ZMT10001.
