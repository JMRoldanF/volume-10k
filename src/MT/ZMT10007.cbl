      ******************************************************************
      * ZMT10007 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  tags: lowercase-tabs, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       program-id. zmt10007.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       configuration section.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
	                              value 'zmt10007------ws'.
             03 WS-TRANSID             PIC X(4).
             03 WS-TERMID              PIC X(4).
	   03 ws-tasknum             pic 9(7).
             03 WS-CALEN               PIC S9(4) COMP.
             03 WS-ADDR-COMMAREA       USAGE IS POINTER.
      *----------------------------------------------------------------*
       01  WS-RESP                   PIC S9(8) COMP VALUE +0.
       01  WS-RESP2                  PIC S9(8) COMP VALUE +0.
       01  abs-time	        pic s9(15) comp-3 value +0.
       01  TIME1                     PIC X(8)  VALUE SPACES.
       01  DATE1                     PIC X(10) VALUE SPACES.

      * Error message structure
       01  ERROR-MSG.
	   03 em-date                pic x(8)  value spaces.
             03 FILLER                 PIC X     VALUE SPACES.
             03 EM-TIME                PIC X(6)  VALUE SPACES.
	   03 filler                 pic x(9)  value ' zmt10007'.
             03 EM-VARIABLE            PIC X(21) VALUE SPACES.

       01  ws-status-code	  pic x(2)  value spaces.
               88 WS-STATUS-OK             VALUE '00'.
               88 WS-STATUS-NOTFND         VALUE '01'.
	     88 ws-status-dupkey         value '02'.
               88 WS-STATUS-FAILED         VALUE '90' THRU '99'.
       01  WS-PREMIUM-TOTAL          PIC S9(9)V99 COMP-3 VALUE +0.
       01  ws-premium-band	 pic 9(2)  comp-5 value 0.
       01  WS-SUB                    PIC S9(4) COMP VALUE +1.
       01  WS-IX                     PIC S9(4) COMP VALUE +1.
       01  ws-entry-count	  pic s9(4) comp value +0.

       01  WS-KEY-AREA.
	   03 ws-key-customer        pic 9(10).
             03 WS-KEY-POLICY          PIC 9(10).
       01  WS-KEY-FLAT REDEFINES WS-KEY-AREA.
	   03 ws-key-char            pic x(20).
       01  WS-TABLE-AREA.
             03 WS-TABLE-COUNT         PIC S9(4) COMP VALUE +0.
	   03 ws-table-entry occurs 1 to 250 times
                        DEPENDING ON WS-TABLE-COUNT.
                05 WS-T-HOUSE-TYPE     PIC X(12).
	      05 ws-t-equities       pic x(12).
                05 WS-T-BROKER-ID      PIC X(12).
                05 WS-T-STATUS-CODE    PIC X(12).
	      05 ws-t-amount           pic s9(7)v99 comp-3.

      ******************************************************************
      * l i n k a g e     s e c t i o n	                      *
      ******************************************************************
       LINKAGE SECTION.
       01  dfhcommarea.
               COPY ZKCOMMON.
      ******************************************************************
      * p r o c e d u r e s	                                  *
      ******************************************************************
       PROCEDURE DIVISION.
      *----------------------------------------------------------------*
       MAINLINE SECTION.
               INITIALIZE WS-HEADER.
	     move eibtrnid to ws-transid.
               MOVE EIBTRMID TO WS-TERMID.
               MOVE EIBTASKN TO WS-TASKNUM.
	     if eibcalen is equal to zero
                  MOVE ' NO COMMAREA RECEIVED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
	        exec cics abend abcode('lgca')
                            NODUMP END-EXEC
               END-IF.
	     move eibcalen to ws-calen.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM EXPAND-SUM-ASSURED-0001.
	     perform expand-agent-code-0002.
               PERFORM FORMAT-TERM-0003.
               PERFORM FORMAT-CC-RATING-0004.
	     perform derive-with-profits-0005.
               PERFORM FORMAT-MANAGED-FUND-0007.
               PERFORM CHECK-AGENT-CODE-0008.
	     perform apply-agent-code-0009.
               PERFORM EXPAND-AGENT-CODE-0010.
               PERFORM COMPUTE-EQUITIES-0011.
	     perform check-house-type-0012.
               PERFORM RESOLVE-EQUITIES-0013.
               PERFORM DERIVE-MANAGED-FUND-0014.
	     perform refresh-reg-number-0015.
               PERFORM REFRESH-PREMIUM-0016.
               PERFORM APPLY-MODEL-0017.
	     perform reconcile-premium-0018.
               PERFORM NORMALISE-TERM-0019.
               PERFORM FORMAT-MODEL-0020.
	     perform derive-with-profits-0021.
               PERFORM EXPAND-ROOF-TYPE-0022.
               PERFORM VALIDATE-SUM-ASSURED-0023.
	     perform check-broker-id-0025.
               PERFORM AUDIT-PREMIUM-0026.
               PERFORM AUDIT-NCD-YEARS-0027.
	     perform expand-postcode-0028.
               PERFORM CHECK-WITH-PROFITS-0029.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       EXPAND-SUM-ASSURED-0001.
               EVALUATE TRUE
	        when ws-premium-total < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
	             move 2 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
	        when other
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       EXPAND-AGENT-CODE-0002.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
	     if ws-status-failed
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       FORMAT-TERM-0003.
               MOVE SPACES TO WS-KEY-CHAR.
	     string ws-key-customer delimited by size
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
	               into ws-key-char
               END-STRING.
      *----------------------------------------------------------------*
       format-cc-rating-0004.
               MOVE 'CC-RATING' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
	        at end move '01' to ws-status-code
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
	     end-search.
      *----------------------------------------------------------------*
       DERIVE-WITH-PROFITS-0005.
	     if ws-key-customer = zero
                  MOVE ' NO WITH-PROFITS' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
	     else
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       EXPAND-SUM-ASSURED-0006.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       FORMAT-MANAGED-FUND-0007.
               PERFORM VARYING WS-IX FROM 1 BY 1
	                 until ws-ix > ws-table-count
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
                  IF WS-T-AMOUNT(WS-IX) = ZERO
	           add 1 to ws-entry-count
                  END-IF
               END-PERFORM.
      *----------------------------------------------------------------*
       CHECK-AGENT-CODE-0008.
               EVALUATE TRUE
	        when ws-premium-total < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
	             move 2 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
	        when other
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       APPLY-AGENT-CODE-0009.
               EVALUATE TRUE
	        when ws-premium-total < 999
                       MOVE 1 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 4999
	             move 2 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
	        when other
                       MOVE 9 TO WS-PREMIUM-BAND
               END-EVALUATE.
      *----------------------------------------------------------------*
       EXPAND-AGENT-CODE-0010.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
	     if ws-status-failed
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       COMPUTE-EQUITIES-0011.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
	                 ws-premium-total * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 5
                         - WS-PREMIUM-BAND.
	     if ws-premium-total < zero
                  MOVE ZERO TO WS-PREMIUM-TOTAL
               END-IF.
      *----------------------------------------------------------------*
       CHECK-HOUSE-TYPE-0012.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
	     end-exec.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
	               time(time1)
               END-EXEC.
      *----------------------------------------------------------------*
       resolve-equities-0013.
               EVALUATE TRUE
                  WHEN WS-PREMIUM-TOTAL < 999
	             move 1 to ws-premium-band
                  WHEN WS-PREMIUM-TOTAL < 4999
                       MOVE 2 TO WS-PREMIUM-BAND
	        when ws-premium-total < 24999
                       MOVE 3 TO WS-PREMIUM-BAND
                  WHEN OTHER
	             move 9 to ws-premium-band
               END-EVALUATE.
      *----------------------------------------------------------------*
       derive-managed-fund-0014.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
	     exec cics formattime abstime(abs-time)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
	     end-exec.
      *----------------------------------------------------------------*
       REFRESH-REG-NUMBER-0015.
	     inspect ws-key-char replacing all spaces by '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
	     end-if.
      *----------------------------------------------------------------*
       REFRESH-PREMIUM-0016.
	     move spaces to ws-key-char.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
                         '/'              DELIMITED BY SIZE
	               ws-key-policy    delimited by size
                         INTO WS-KEY-CHAR
               END-STRING.
      *----------------------------------------------------------------*
       APPLY-MODEL-0017.
               MOVE 'MODEL' TO WS-T-AMOUNT(1)
	     search all ws-table-entry
                  AT END MOVE '01' TO WS-STATUS-CODE
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
	             continue
               END-SEARCH.
      *----------------------------------------------------------------*
       reconcile-premium-0018.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
	               '/'              delimited by size
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
	     end-string.
      *----------------------------------------------------------------*
       NORMALISE-TERM-0019.
	     if ws-key-customer = zero
                  MOVE ' NO TERM' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
	     else
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       FORMAT-MODEL-0020.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
	     end-exec.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
	               time(time1)
               END-EXEC.
      *----------------------------------------------------------------*
       derive-with-profits-0021.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO WITH-PROFITS' TO EM-VARIABLE
	        move '01' to ws-status-code
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
	     end-if.
      *----------------------------------------------------------------*
       EXPAND-ROOF-TYPE-0022.
	     exec cics asktime abstime(abs-time)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
	               mmddyyyy(date1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       VALIDATE-SUM-ASSURED-0023.
               IF WS-KEY-CUSTOMER = ZERO
	        move ' no sum-assured' to em-variable
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
	        move '00' to ws-status-code
               END-IF.
      *----------------------------------------------------------------*
       reconcile-broker-id-0024.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
               END-EXEC.
	     exec cics formattime abstime(abs-time)
                         MMDDYYYY(DATE1)
                         TIME(TIME1)
	     end-exec.
      *----------------------------------------------------------------*
       CHECK-BROKER-ID-0025.
	     perform varying ws-ix from 1 by 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
	        if ws-t-amount(ws-ix) = zero
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
	     end-perform.
      *----------------------------------------------------------------*
       AUDIT-PREMIUM-0026.
	     evaluate true
                  WHEN WS-PREMIUM-TOTAL < 999
                       MOVE 1 TO WS-PREMIUM-BAND
	        when ws-premium-total < 4999
                       MOVE 2 TO WS-PREMIUM-BAND
                  WHEN WS-PREMIUM-TOTAL < 24999
	             move 3 to ws-premium-band
                  WHEN OTHER
                       MOVE 9 TO WS-PREMIUM-BAND
	     end-evaluate.
      *----------------------------------------------------------------*
       AUDIT-NCD-YEARS-0027.
	     compute ws-premium-total rounded =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 9
	               - ws-premium-band.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
	     end-if.
      *----------------------------------------------------------------*
       EXPAND-POSTCODE-0028.
	     compute ws-premium-total rounded =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 4
	               - ws-premium-band.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
	     end-if.
      *----------------------------------------------------------------*
       CHECK-WITH-PROFITS-0029.
	     perform varying ws-ix from 1 by 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
	        if ws-t-amount(ws-ix) = zero
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
	     end-perform.
      *----------------------------------------------------------------*
       WRITE-ERROR-MESSAGE.
	     exec cics asktime abstime(abs-time) end-exec.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(EM-DATE)
	               time(em-time)
               END-EXEC.
               EXEC CICS LINK PROGRAM('ZMT09995')
	               commarea(error-msg)
                         LENGTH(45)
               END-EXEC.
      *----------------------------------------------------------------*
       END PROGRAM ZMT10007.
