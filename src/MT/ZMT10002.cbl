      ******************************************************************
      * ZMT10002 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  Tags: goto-spaghetti, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZMT10002.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZMT10002------WS'.
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
             03 FILLER                 PIC X(9)  VALUE ' ZMT10002'.
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
                05 WS-T-AGENT-CODE     PIC X(12).
                05 WS-T-HOUSE-TYPE     PIC X(12).
                05 WS-T-PREMIUM        PIC X(12).
                05 WS-T-MAKE           PIC X(12).
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
               PERFORM EXPAND-CC-RATING-0001.
               PERFORM NORMALISE-COLOUR-0002.
               PERFORM APPLY-EXCESS-0003.
               PERFORM DERIVE-EXCESS-0004.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       SPAGHETTI-000.
               ADD 0 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 0
                  GO TO SPAGHETTI-003
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-001.
               ADD 1 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 3
                  GO TO SPAGHETTI-010
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-002.
               ADD 2 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 6
                  GO TO SPAGHETTI-017
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-003.
               ADD 3 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 9
                  GO TO SPAGHETTI-024
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-004.
               ADD 4 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 12
                  GO TO SPAGHETTI-031
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-005.
               ADD 5 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 15
                  GO TO SPAGHETTI-038
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-006.
               ADD 6 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 18
                  GO TO SPAGHETTI-005
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-007.
               ADD 7 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 21
                  GO TO SPAGHETTI-012
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-008.
               ADD 8 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 24
                  GO TO SPAGHETTI-019
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-009.
               ADD 9 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 27
                  GO TO SPAGHETTI-026
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-010.
               ADD 10 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 30
                  GO TO SPAGHETTI-033
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-011.
               ADD 11 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 33
                  GO TO SPAGHETTI-000
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-012.
               ADD 12 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 36
                  GO TO SPAGHETTI-007
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-013.
               ADD 13 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 39
                  GO TO SPAGHETTI-014
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-014.
               ADD 14 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 42
                  GO TO SPAGHETTI-021
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-015.
               ADD 15 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 45
                  GO TO SPAGHETTI-028
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-016.
               ADD 16 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 48
                  GO TO SPAGHETTI-035
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-017.
               ADD 17 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 51
                  GO TO SPAGHETTI-002
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-018.
               ADD 18 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 54
                  GO TO SPAGHETTI-009
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-019.
               ADD 19 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 57
                  GO TO SPAGHETTI-016
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-020.
               ADD 20 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 60
                  GO TO SPAGHETTI-023
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-021.
               ADD 21 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 63
                  GO TO SPAGHETTI-030
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-022.
               ADD 22 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 66
                  GO TO SPAGHETTI-037
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-023.
               ADD 23 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 69
                  GO TO SPAGHETTI-004
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-024.
               ADD 24 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 72
                  GO TO SPAGHETTI-011
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-025.
               ADD 25 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 75
                  GO TO SPAGHETTI-018
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-026.
               ADD 26 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 78
                  GO TO SPAGHETTI-025
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-027.
               ADD 27 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 81
                  GO TO SPAGHETTI-032
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-028.
               ADD 28 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 84
                  GO TO SPAGHETTI-039
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-029.
               ADD 29 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 87
                  GO TO SPAGHETTI-006
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-030.
               ADD 30 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 90
                  GO TO SPAGHETTI-013
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-031.
               ADD 31 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 93
                  GO TO SPAGHETTI-020
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-032.
               ADD 32 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 96
                  GO TO SPAGHETTI-027
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-033.
               ADD 33 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 99
                  GO TO SPAGHETTI-034
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-034.
               ADD 34 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 102
                  GO TO SPAGHETTI-001
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-035.
               ADD 35 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 105
                  GO TO SPAGHETTI-008
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-036.
               ADD 36 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 108
                  GO TO SPAGHETTI-015
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-037.
               ADD 37 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 111
                  GO TO SPAGHETTI-022
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-038.
               ADD 38 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 114
                  GO TO SPAGHETTI-029
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-039.
               ADD 39 TO WS-ENTRY-COUNT.
               IF WS-ENTRY-COUNT > 117
                  GO TO SPAGHETTI-036
               END-IF.
      *----------------------------------------------------------------*
       SPAGHETTI-SWITCH.
               GO TO SPAGHETTI-000 SPAGHETTI-007 SPAGHETTI-014
                      SPAGHETTI-021 SPAGHETTI-028
                      DEPENDING ON WS-PREMIUM-BAND.
      *----------------------------------------------------------------*
       EXPAND-CC-RATING-0001.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       NORMALISE-COLOUR-0002.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
               END-STRING.
      *----------------------------------------------------------------*
       APPLY-EXCESS-0003.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       DERIVE-EXCESS-0004.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
               END-EXEC.
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
       END PROGRAM ZMT10002.
