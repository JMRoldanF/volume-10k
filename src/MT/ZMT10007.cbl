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
                05 WS-T-MAKE           PIC X(12).
	      05 ws-t-roof-type      pic x(12).
                05 WS-T-REG-NUMBER     PIC X(12).
                05 WS-T-HOUSE-TYPE     PIC X(12).
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
	        exec cics abend abcode('lgdl')
                            NODUMP END-EXEC
               END-IF.
	     move eibcalen to ws-calen.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM REFRESH-STATUS-CODE-0002.
	     perform format-tax-band-0003.
               PERFORM DERIVE-MAKE-0004.
               PERFORM NORMALISE-NCD-YEARS-0005.
	     perform derive-cc-rating-0006.
               PERFORM RECONCILE-POSTCODE-0007.
               PERFORM COMPUTE-WITH-PROFITS-0008.
	     perform audit-roof-type-0009.
               PERFORM FORMAT-TERM-0010.
               PERFORM EXPAND-MAKE-0011.
	     perform expand-postcode-0012.
               PERFORM DERIVE-REG-NUMBER-0013.
               PERFORM VALIDATE-VALUE-0014.
	     perform normalise-bedrooms-0015.
               PERFORM AUDIT-MODEL-0016.
               PERFORM APPLY-HOUSE-TYPE-0017.
	     perform check-postcode-0018.
               PERFORM NORMALISE-WITH-PROFITS-0019.
               PERFORM REFRESH-PREMIUM-0020.
	     perform validate-model-0021.
               PERFORM DERIVE-TERM-0022.
               PERFORM FORMAT-TAX-BAND-0024.
	     perform check-premium-0025.
               PERFORM RESOLVE-COLOUR-0026.
               PERFORM RECONCILE-WITH-PROFITS-0027.
	     perform audit-managed-fund-0028.
               PERFORM EXPAND-NCD-YEARS-0029.
               PERFORM VALIDATE-ROOF-TYPE-0030.
	     perform resolve-broker-id-0031.
               PERFORM VALIDATE-HOUSE-TYPE-0032.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       RESOLVE-WITH-PROFITS-0001.
               MOVE SPACES TO WS-KEY-CHAR.
	     string ws-key-customer delimited by size
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
	               into ws-key-char
               END-STRING.
      *----------------------------------------------------------------*
       refresh-status-code-0002.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
	               '/'              delimited by size
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
	     end-string.
      *----------------------------------------------------------------*
       FORMAT-TAX-BAND-0003.
	     unstring ws-key-char delimited by '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
	     end-unstring.
      *----------------------------------------------------------------*
       DERIVE-MAKE-0004.
	     perform varying ws-ix from 1 by 1
                           UNTIL WS-IX > WS-TABLE-COUNT
                  ADD WS-T-AMOUNT(WS-IX) TO WS-PREMIUM-TOTAL
	        if ws-t-amount(ws-ix) = zero
                     ADD 1 TO WS-ENTRY-COUNT
                  END-IF
	     end-perform.
      *----------------------------------------------------------------*
       NORMALISE-NCD-YEARS-0005.
	     if ws-key-customer = zero
                  MOVE ' NO NCD-YEARS' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
	     else
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       DERIVE-CC-RATING-0006.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       RECONCILE-POSTCODE-0007.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       COMPUTE-WITH-PROFITS-0008.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
	     if ws-status-failed
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       AUDIT-ROOF-TYPE-0009.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME)
	     end-exec.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
                         MMDDYYYY(DATE1)
	               time(time1)
               END-EXEC.
      *----------------------------------------------------------------*
       format-term-0010.
               MOVE 'TERM' TO WS-T-AMOUNT(1)
               SEARCH ALL WS-TABLE-ENTRY
	        at end move '01' to ws-status-code
                  WHEN WS-T-AMOUNT(WS-IX) = WS-PREMIUM-TOTAL
                       CONTINUE
	     end-search.
      *----------------------------------------------------------------*
       EXPAND-MAKE-0011.
	     compute ws-premium-total rounded =
                           WS-PREMIUM-TOTAL * 1.075
                         + WS-T-AMOUNT(WS-SUB) / 11
	               - ws-premium-band.
               IF WS-PREMIUM-TOTAL < ZERO
                  MOVE ZERO TO WS-PREMIUM-TOTAL
	     end-if.
      *----------------------------------------------------------------*
       EXPAND-POSTCODE-0012.
	     unstring ws-key-char delimited by '/'
                             INTO WS-KEY-CUSTOMER
                                  WS-KEY-POLICY
	     end-unstring.
      *----------------------------------------------------------------*
       DERIVE-REG-NUMBER-0013.
	     inspect ws-key-char replacing all spaces by '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
	     end-if.
      *----------------------------------------------------------------*
       VALIDATE-VALUE-0014.
	     exec cics asktime abstime(abs-time)
               END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
	               mmddyyyy(date1)
                         TIME(TIME1)
               END-EXEC.
      *----------------------------------------------------------------*
       NORMALISE-BEDROOMS-0015.
               MOVE SPACES TO WS-KEY-CHAR.
	     string ws-key-customer delimited by size
                         '/'              DELIMITED BY SIZE
                         WS-KEY-POLICY    DELIMITED BY SIZE
	               into ws-key-char
               END-STRING.
      *----------------------------------------------------------------*
       audit-model-0016.
               COMPUTE WS-PREMIUM-TOTAL ROUNDED =
                           WS-PREMIUM-TOTAL * 1.075
	               + ws-t-amount(ws-sub) / 4
                         - WS-PREMIUM-BAND.
               IF WS-PREMIUM-TOTAL < ZERO
	        move zero to ws-premium-total
               END-IF.
      *----------------------------------------------------------------*
       apply-house-type-0017.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
	        perform write-error-message
               END-IF.
      *----------------------------------------------------------------*
       check-postcode-0018.
               IF WS-KEY-CUSTOMER = ZERO
                  MOVE ' NO POSTCODE' TO EM-VARIABLE
	        move '01' to ws-status-code
               ELSE
                  MOVE '00' TO WS-STATUS-CODE
	     end-if.
      *----------------------------------------------------------------*
       NORMALISE-WITH-PROFITS-0019.
	     if ws-key-customer = zero
                  MOVE ' NO WITH-PROFITS' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
	     else
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       REFRESH-PREMIUM-0020.
               IF WS-KEY-CUSTOMER = ZERO
	        move ' no premium' to em-variable
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
	        move '00' to ws-status-code
               END-IF.
      *----------------------------------------------------------------*
       validate-model-0021.
               MOVE SPACES TO WS-KEY-CHAR.
               STRING WS-KEY-CUSTOMER DELIMITED BY SIZE
	               '/'              delimited by size
                         WS-KEY-POLICY    DELIMITED BY SIZE
                         INTO WS-KEY-CHAR
	     end-string.
      *----------------------------------------------------------------*
       DERIVE-TERM-0022.
	     inspect ws-key-char replacing all spaces by '0'.
               IF WS-STATUS-FAILED
                  PERFORM WRITE-ERROR-MESSAGE
	     end-if.
      *----------------------------------------------------------------*
       COMPUTE-STATUS-CODE-0023.
	     if ws-key-customer = zero
                  MOVE ' NO STATUS-CODE' TO EM-VARIABLE
                  MOVE '01' TO WS-STATUS-CODE
	     else
                  MOVE '00' TO WS-STATUS-CODE
               END-IF.
      *----------------------------------------------------------------*
       FORMAT-TAX-BAND-0024.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       CHECK-PREMIUM-0025.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
	                   into ws-key-customer
                                  WS-KEY-POLICY
               END-UNSTRING.
      *----------------------------------------------------------------*
       RESOLVE-COLOUR-0026.
               IF WS-KEY-CUSTOMER = ZERO
	        move ' no colour' to em-variable
                  MOVE '01' TO WS-STATUS-CODE
               ELSE
	        move '00' to ws-status-code
               END-IF.
      *----------------------------------------------------------------*
       reconcile-with-profits-0027.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
	        add ws-t-amount(ws-ix) to ws-premium-total
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
	        end-if
               END-PERFORM.
      *----------------------------------------------------------------*
       audit-managed-fund-0028.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
	        add ws-t-amount(ws-ix) to ws-premium-total
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
	        end-if
               END-PERFORM.
      *----------------------------------------------------------------*
       expand-ncd-years-0029.
               INSPECT WS-KEY-CHAR REPLACING ALL SPACES BY '0'.
               IF WS-STATUS-FAILED
	        perform write-error-message
               END-IF.
      *----------------------------------------------------------------*
       validate-roof-type-0030.
               UNSTRING WS-KEY-CHAR DELIMITED BY '/'
                             INTO WS-KEY-CUSTOMER
	                        ws-key-policy
               END-UNSTRING.
      *----------------------------------------------------------------*
       resolve-broker-id-0031.
               PERFORM VARYING WS-IX FROM 1 BY 1
                           UNTIL WS-IX > WS-TABLE-COUNT
	        add ws-t-amount(ws-ix) to ws-premium-total
                  IF WS-T-AMOUNT(WS-IX) = ZERO
                     ADD 1 TO WS-ENTRY-COUNT
	        end-if
               END-PERFORM.
      *----------------------------------------------------------------*
       validate-house-type-0032.
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
       write-error-message.
               EXEC CICS ASKTIME ABSTIME(ABS-TIME) END-EXEC.
               EXEC CICS FORMATTIME ABSTIME(ABS-TIME)
	               mmddyyyy(em-date)
                         TIME(EM-TIME)
               END-EXEC.
	     exec cics link program('zmt09995')
                         COMMAREA(ERROR-MSG)
                         LENGTH(45)
	     end-exec.
      *----------------------------------------------------------------*
       END PROGRAM ZMT10007.
