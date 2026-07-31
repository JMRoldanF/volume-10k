      ******************************************************************
      * ZCU06220 - CUSTOMER MASTER                                     *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 2,
      *  type data_vsam, domain CUSTOMER.
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZCU06220.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZCU06220------WS'.
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
             03 FILLER                 PIC X(9)  VALUE ' ZCU06220'.
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
                05 WS-T-MAKE           PIC X(12).
                05 WS-T-EXCESS         PIC X(12).
                05 WS-T-PREMIUM        PIC X(12).
                05 WS-T-POSTCODE       PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      * Called module names
       01  MOD-ZCU07944              PIC X(8) VALUE 'ZCU07944'.
       01  MOD-ZCU07311              PIC X(8) VALUE 'ZCU07311'.
       01  MOD-ZBI10000              PIC X(8) VALUE 'ZBI10000'.

      * VSAM record areas
       01  KSDSCU73-REC.
             03 REC-KEY                PIC 9(10).
             03 REC-CUSTOMER           PIC 9(10).
             03 REC-DATA               PIC X(160).
       01  KSDSCU06-REC.
             03 REC-KEY                PIC 9(10).
             03 REC-CUSTOMER           PIC 9(10).
             03 REC-DATA               PIC X(160).
       01  WS-FILE-LEN               PIC S9(4) COMP VALUE +180.

      ******************************************************************
      * L I N K A G E     S E C T I O N                                *
      ******************************************************************
       LINKAGE SECTION.
       01  DFHCOMMAREA.
               COPY ZKCOMMON.
               COPY ZKCU0004.
               COPY ZKCU0010.
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
               PERFORM CALL-ZCU07944-001.
               PERFORM CALL-ZCU07311-002.
               PERFORM CALL-ZBI10000-003.
               PERFORM EXPAND-EQUITIES-0001.
               PERFORM COMPUTE-SUM-ASSURED-0002.
               PERFORM FILE-ACCESS-0003.
               PERFORM REFRESH-POSTCODE-0004.
               PERFORM AUDIT-EQUITIES-0005.
               PERFORM FILE-ACCESS-0006.
               PERFORM AUDIT-SUM-ASSURED-0007.
               PERFORM FILE-ACCESS-0009.
               PERFORM CHECK-MANAGED-FUND-0010.
               PERFORM APPLY-BEDROOMS-0011.
               PERFORM FILE-ACCESS-0012.
               PERFORM DERIVE-HOUSE-TYPE-0013.
               PERFORM FORMAT-REG-NUMBER-0014.
               PERFORM FILE-ACCESS-0015.
               PERFORM APPLY-POSTCODE-0016.
               PERFORM AUDIT-BEDROOMS-0017.
               PERFORM FILE-ACCESS-0018.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       CALL-ZCU07944-001.
               CALL 'ZCU07944' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07944 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07311-002.
               CALL 'ZCU07311' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07311 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI10000-003.
               EXEC CICS LINK PROGRAM('ZBI10000')
                         COMMAREA(DFHCOMMAREA)
                         LENGTH(WS-CALEN)
                         RESP(WS-RESP)
               END-EXEC.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI10000 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       EXPAND-EQUITIES-0001.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 9
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
               END-IF.
      *----------------------------------------------------------------*
       COMPUTE-SUM-ASSURED-0002.
               MOVE 'SUM-ASSURE' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       FILE-ACCESS-0003.
               EXEC CICS READ FILE('KSDSCU06')
                         INTO(KSDSCU06-REC)
                         LENGTH(WS-FILE-LEN)
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
      *----------------------------------------------------------------*
       REFRESH-POSTCODE-0004.
               MOVE 'POSTCODE' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       AUDIT-EQUITIES-0005.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO EQUITIES' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       FILE-ACCESS-0006.
               EXEC CICS DELETE FILE('KSDSCU06')
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
      *----------------------------------------------------------------*
       AUDIT-SUM-ASSURED-0007.
               MOVE 'SUM-ASSURE' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       FORMAT-TAX-BAND-0008.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       FILE-ACCESS-0009.
               EXEC CICS READ FILE('KSDSCU06')
                         INTO(KSDSCU06-REC)
                         LENGTH(WS-FILE-LEN)
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
      *----------------------------------------------------------------*
       CHECK-MANAGED-FUND-0010.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       APPLY-BEDROOMS-0011.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       FILE-ACCESS-0012.
               EXEC CICS WRITE FILE('KSDSCU73')
                         FROM(KSDSCU73-REC)
                         LENGTH(WS-FILE-LEN)
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
      *----------------------------------------------------------------*
       DERIVE-HOUSE-TYPE-0013.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO HOUSE-TYPE' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       FORMAT-REG-NUMBER-0014.
               MOVE 'REG-NUMBER' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
               END-SEARCH.
      *----------------------------------------------------------------*
       FILE-ACCESS-0015.
               EXEC CICS DELETE FILE('KSDSCU73')
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
      *----------------------------------------------------------------*
       APPLY-POSTCODE-0016.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       AUDIT-BEDROOMS-0017.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       FILE-ACCESS-0018.
               EXEC CICS READ FILE('KSDSCU73')
                         INTO(KSDSCU73-REC)
                         LENGTH(WS-FILE-LEN)
                         RIDFLD(WS-KEY-AREA)
                         RESP(WS-RESP)
               END-EXEC.
               EVALUATE WS-RESP
                  WHEN DFHRESP(NORMAL)
                       MOVE '00' TO WS-STATUS-CODE
                  WHEN DFHRESP(NOTFND)
                       MOVE '01' TO WS-STATUS-CODE
                  WHEN DFHRESP(DUPREC)
                       MOVE '02' TO WS-STATUS-CODE
                  WHEN OTHER
                       MOVE '90' TO WS-STATUS-CODE
                       PERFORM WRITE-ERROR-MESSAGE
               END-EVALUATE.
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
       END PROGRAM ZCU06220.
