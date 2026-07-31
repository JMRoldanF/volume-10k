      ******************************************************************
      * ZMT10004 - MOTOR POLICY                                        *
      ******************************************************************
      *
      *  Generated volume-test source. Layer 3,
      *  type pathological, domain MOTOR.
      *  Tags: fan-out, pathological
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ZMT10004.
       AUTHOR. VOLUME GENERATOR.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      * Run time (debug) information for this invocation
       01  WS-HEADER.
             03 WS-EYECATCHER          PIC X(16)
                                        VALUE 'ZMT10004------WS'.
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
             03 FILLER                 PIC X(9)  VALUE ' ZMT10004'.
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
                05 WS-T-POSTCODE       PIC X(12).
                05 WS-T-CC-RATING      PIC X(12).
                05 WS-T-BEDROOMS       PIC X(12).
                05 WS-T-AGENT-CODE     PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      * Called module names
       01  MOD-ZCL07143              PIC X(8) VALUE 'ZCL07143'.
       01  MOD-ZHO07793              PIC X(8) VALUE 'ZHO07793'.
       01  MOD-ZCL08408              PIC X(8) VALUE 'ZCL08408'.
       01  MOD-ZEN07686              PIC X(8) VALUE 'ZEN07686'.
       01  MOD-ZEN06500              PIC X(8) VALUE 'ZEN06500'.
       01  MOD-ZPA08384              PIC X(8) VALUE 'ZPA08384'.
       01  MOD-ZEN06607              PIC X(8) VALUE 'ZEN06607'.
       01  MOD-ZAG07168              PIC X(8) VALUE 'ZAG07168'.
       01  MOD-ZMT07824              PIC X(8) VALUE 'ZMT07824'.
       01  MOD-ZMT07111              PIC X(8) VALUE 'ZMT07111'.
       01  MOD-ZCU08280              PIC X(8) VALUE 'ZCU08280'.
       01  MOD-ZAG06757              PIC X(8) VALUE 'ZAG06757'.
       01  MOD-ZCL08523              PIC X(8) VALUE 'ZCL08523'.
       01  MOD-ZMT07066              PIC X(8) VALUE 'ZMT07066'.
       01  MOD-ZAG06788              PIC X(8) VALUE 'ZAG06788'.
       01  MOD-ZMT07830              PIC X(8) VALUE 'ZMT07830'.
       01  MOD-ZCU06442              PIC X(8) VALUE 'ZCU06442'.
       01  MOD-ZPA08168              PIC X(8) VALUE 'ZPA08168'.
       01  MOD-ZCL08049              PIC X(8) VALUE 'ZCL08049'.
       01  MOD-ZCU07016              PIC X(8) VALUE 'ZCU07016'.
       01  MOD-ZMT08673              PIC X(8) VALUE 'ZMT08673'.
       01  MOD-ZHO07500              PIC X(8) VALUE 'ZHO07500'.
       01  MOD-ZUW08086              PIC X(8) VALUE 'ZUW08086'.
       01  MOD-ZEN07842              PIC X(8) VALUE 'ZEN07842'.
       01  MOD-ZRE07384              PIC X(8) VALUE 'ZRE07384'.
       01  MOD-ZEN07174              PIC X(8) VALUE 'ZEN07174'.
       01  MOD-ZRE07684              PIC X(8) VALUE 'ZRE07684'.
       01  MOD-ZHO06629              PIC X(8) VALUE 'ZHO06629'.
       01  MOD-ZAG07497              PIC X(8) VALUE 'ZAG07497'.
       01  MOD-ZMT06933              PIC X(8) VALUE 'ZMT06933'.
       01  MOD-ZCU07502              PIC X(8) VALUE 'ZCU07502'.
       01  MOD-ZMT06597              PIC X(8) VALUE 'ZMT06597'.
       01  MOD-ZCL07402              PIC X(8) VALUE 'ZCL07402'.
       01  MOD-ZAG06355              PIC X(8) VALUE 'ZAG06355'.
       01  MOD-ZMT08664              PIC X(8) VALUE 'ZMT08664'.
       01  MOD-ZMT08421              PIC X(8) VALUE 'ZMT08421'.
       01  MOD-ZCL07040              PIC X(8) VALUE 'ZCL07040'.
       01  MOD-ZMT07217              PIC X(8) VALUE 'ZMT07217'.
       01  MOD-ZMT07215              PIC X(8) VALUE 'ZMT07215'.
       01  MOD-ZMT07668              PIC X(8) VALUE 'ZMT07668'.
       01  MOD-ZRE08374              PIC X(8) VALUE 'ZRE08374'.
       01  MOD-ZHO08370              PIC X(8) VALUE 'ZHO08370'.
       01  MOD-ZAG07639              PIC X(8) VALUE 'ZAG07639'.
       01  MOD-ZMT08413              PIC X(8) VALUE 'ZMT08413'.
       01  MOD-ZEN07608              PIC X(8) VALUE 'ZEN07608'.
       01  MOD-ZRE08154              PIC X(8) VALUE 'ZRE08154'.
       01  MOD-ZBI08639              PIC X(8) VALUE 'ZBI08639'.
       01  MOD-ZMT06466              PIC X(8) VALUE 'ZMT06466'.
       01  MOD-ZMT08332              PIC X(8) VALUE 'ZMT08332'.
       01  MOD-ZHO07584              PIC X(8) VALUE 'ZHO07584'.
       01  MOD-ZHO07851              PIC X(8) VALUE 'ZHO07851'.
       01  MOD-ZMT07832              PIC X(8) VALUE 'ZMT07832'.
       01  MOD-ZAG07195              PIC X(8) VALUE 'ZAG07195'.
       01  MOD-ZMT07110              PIC X(8) VALUE 'ZMT07110'.
       01  MOD-ZPA06685              PIC X(8) VALUE 'ZPA06685'.
       01  MOD-ZHO06579              PIC X(8) VALUE 'ZHO06579'.
       01  MOD-ZEN06977              PIC X(8) VALUE 'ZEN06977'.
       01  MOD-ZHO06767              PIC X(8) VALUE 'ZHO06767'.
       01  MOD-ZEN07498              PIC X(8) VALUE 'ZEN07498'.
       01  MOD-ZCU08649              PIC X(8) VALUE 'ZCU08649'.
       01  MOD-ZCU08113              PIC X(8) VALUE 'ZCU08113'.
       01  MOD-ZCL07238              PIC X(8) VALUE 'ZCL07238'.
       01  MOD-ZPA07296              PIC X(8) VALUE 'ZPA07296'.
       01  MOD-ZEN08561              PIC X(8) VALUE 'ZEN08561'.
       01  MOD-ZRE08143              PIC X(8) VALUE 'ZRE08143'.
       01  MOD-ZMT06663              PIC X(8) VALUE 'ZMT06663'.
       01  MOD-ZCU08252              PIC X(8) VALUE 'ZCU08252'.
       01  MOD-ZMT07015              PIC X(8) VALUE 'ZMT07015'.
       01  MOD-ZMT07475              PIC X(8) VALUE 'ZMT07475'.
       01  MOD-ZHO07604              PIC X(8) VALUE 'ZHO07604'.
       01  MOD-ZMT08378              PIC X(8) VALUE 'ZMT08378'.
       01  MOD-ZBI07889              PIC X(8) VALUE 'ZBI07889'.
       01  MOD-ZHO07624              PIC X(8) VALUE 'ZHO07624'.
       01  MOD-ZMT06337              PIC X(8) VALUE 'ZMT06337'.
       01  MOD-ZHO08090              PIC X(8) VALUE 'ZHO08090'.
       01  MOD-ZHO06839              PIC X(8) VALUE 'ZHO06839'.
       01  MOD-ZAG07478              PIC X(8) VALUE 'ZAG07478'.
       01  MOD-ZMT08319              PIC X(8) VALUE 'ZMT08319'.
       01  MOD-ZRE06614              PIC X(8) VALUE 'ZRE06614'.
       01  MOD-ZAG08619              PIC X(8) VALUE 'ZAG08619'.
       01  MOD-ZBI08129              PIC X(8) VALUE 'ZBI08129'.
       01  MOD-ZEN06361              PIC X(8) VALUE 'ZEN06361'.
       01  MOD-ZEN08211              PIC X(8) VALUE 'ZEN08211'.
       01  MOD-ZHO06799              PIC X(8) VALUE 'ZHO06799'.
       01  MOD-ZMT07107              PIC X(8) VALUE 'ZMT07107'.
       01  MOD-ZHO07600              PIC X(8) VALUE 'ZHO07600'.
       01  MOD-ZMT07138              PIC X(8) VALUE 'ZMT07138'.
       01  MOD-ZCU08592              PIC X(8) VALUE 'ZCU08592'.
       01  MOD-ZAG07205              PIC X(8) VALUE 'ZAG07205'.
       01  MOD-ZMT07645              PIC X(8) VALUE 'ZMT07645'.
       01  MOD-ZRE08388              PIC X(8) VALUE 'ZRE08388'.
       01  MOD-ZEN06923              PIC X(8) VALUE 'ZEN06923'.
       01  MOD-ZUW08235              PIC X(8) VALUE 'ZUW08235'.
       01  MOD-ZPA08181              PIC X(8) VALUE 'ZPA08181'.
       01  MOD-ZMT06686              PIC X(8) VALUE 'ZMT06686'.
       01  MOD-ZHO06803              PIC X(8) VALUE 'ZHO06803'.
       01  MOD-ZMT08333              PIC X(8) VALUE 'ZMT08333'.
       01  MOD-ZRE07719              PIC X(8) VALUE 'ZRE07719'.
       01  MOD-ZMT07910              PIC X(8) VALUE 'ZMT07910'.
       01  MOD-ZHO06474              PIC X(8) VALUE 'ZHO06474'.
       01  MOD-ZCL08029              PIC X(8) VALUE 'ZCL08029'.
       01  MOD-ZPA06431              PIC X(8) VALUE 'ZPA06431'.
       01  MOD-ZEN07303              PIC X(8) VALUE 'ZEN07303'.
       01  MOD-ZAG07054              PIC X(8) VALUE 'ZAG07054'.
       01  MOD-ZEN06672              PIC X(8) VALUE 'ZEN06672'.
       01  MOD-ZCU08436              PIC X(8) VALUE 'ZCU08436'.
       01  MOD-ZEN08433              PIC X(8) VALUE 'ZEN08433'.
       01  MOD-ZAG07503              PIC X(8) VALUE 'ZAG07503'.
       01  MOD-ZCL06305              PIC X(8) VALUE 'ZCL06305'.
       01  MOD-ZUW07024              PIC X(8) VALUE 'ZUW07024'.
       01  MOD-ZMT07331              PIC X(8) VALUE 'ZMT07331'.
       01  MOD-ZMT08382              PIC X(8) VALUE 'ZMT08382'.
       01  MOD-ZHO08027              PIC X(8) VALUE 'ZHO08027'.
       01  MOD-ZCL06419              PIC X(8) VALUE 'ZCL06419'.
       01  MOD-ZMT07789              PIC X(8) VALUE 'ZMT07789'.
       01  MOD-ZEN08288              PIC X(8) VALUE 'ZEN08288'.
       01  MOD-ZCU07529              PIC X(8) VALUE 'ZCU07529'.
       01  MOD-ZMT07710              PIC X(8) VALUE 'ZMT07710'.
       01  MOD-ZCU08266              PIC X(8) VALUE 'ZCU08266'.
       01  MOD-ZAG07146              PIC X(8) VALUE 'ZAG07146'.
       01  MOD-ZMT08596              PIC X(8) VALUE 'ZMT08596'.
       01  MOD-ZEN07353              PIC X(8) VALUE 'ZEN07353'.
       01  MOD-ZMT07543              PIC X(8) VALUE 'ZMT07543'.
       01  MOD-ZMT07729              PIC X(8) VALUE 'ZMT07729'.
       01  MOD-ZBI08627              PIC X(8) VALUE 'ZBI08627'.
       01  MOD-ZEN07198              PIC X(8) VALUE 'ZEN07198'.
       01  MOD-ZUW06815              PIC X(8) VALUE 'ZUW06815'.
       01  MOD-ZEN07393              PIC X(8) VALUE 'ZEN07393'.
       01  MOD-ZEN06609              PIC X(8) VALUE 'ZEN06609'.
       01  MOD-ZMT06631              PIC X(8) VALUE 'ZMT06631'.
       01  MOD-ZPA07192              PIC X(8) VALUE 'ZPA07192'.
       01  MOD-ZCL08656              PIC X(8) VALUE 'ZCL08656'.
       01  MOD-ZUW06591              PIC X(8) VALUE 'ZUW06591'.
       01  MOD-ZCL07492              PIC X(8) VALUE 'ZCL07492'.
       01  MOD-ZMT07985              PIC X(8) VALUE 'ZMT07985'.
       01  MOD-ZEN08447              PIC X(8) VALUE 'ZEN08447'.
       01  MOD-ZUW06315              PIC X(8) VALUE 'ZUW06315'.
       01  MOD-ZPA07035              PIC X(8) VALUE 'ZPA07035'.
       01  MOD-ZCL07955              PIC X(8) VALUE 'ZCL07955'.
       01  MOD-ZPA07417              PIC X(8) VALUE 'ZPA07417'.
       01  MOD-ZMT06360              PIC X(8) VALUE 'ZMT06360'.
       01  MOD-ZBI06482              PIC X(8) VALUE 'ZBI06482'.
       01  MOD-ZCL07329              PIC X(8) VALUE 'ZCL07329'.
       01  MOD-ZHO07550              PIC X(8) VALUE 'ZHO07550'.
       01  MOD-ZHO07142              PIC X(8) VALUE 'ZHO07142'.
       01  MOD-ZMT06324              PIC X(8) VALUE 'ZMT06324'.
       01  MOD-ZUW06715              PIC X(8) VALUE 'ZUW06715'.
       01  MOD-ZPA06746              PIC X(8) VALUE 'ZPA06746'.
       01  MOD-ZEN07880              PIC X(8) VALUE 'ZEN07880'.
       01  MOD-ZEN07927              PIC X(8) VALUE 'ZEN07927'.
       01  MOD-ZMT07919              PIC X(8) VALUE 'ZMT07919'.
       01  MOD-ZPA07431              PIC X(8) VALUE 'ZPA07431'.
       01  MOD-ZCL08308              PIC X(8) VALUE 'ZCL08308'.
       01  MOD-ZMT07102              PIC X(8) VALUE 'ZMT07102'.
       01  MOD-ZMT08078              PIC X(8) VALUE 'ZMT08078'.
       01  MOD-ZCL08162              PIC X(8) VALUE 'ZCL08162'.
       01  MOD-ZMT06824              PIC X(8) VALUE 'ZMT06824'.
       01  MOD-ZHO08482              PIC X(8) VALUE 'ZHO08482'.
       01  MOD-ZPA08216              PIC X(8) VALUE 'ZPA08216'.
       01  MOD-ZCL07005              PIC X(8) VALUE 'ZCL07005'.
       01  MOD-ZPA06363              PIC X(8) VALUE 'ZPA06363'.
       01  MOD-ZCU06700              PIC X(8) VALUE 'ZCU06700'.
       01  MOD-ZHO06574              PIC X(8) VALUE 'ZHO06574'.
       01  MOD-ZBI07183              PIC X(8) VALUE 'ZBI07183'.
       01  MOD-ZRE06463              PIC X(8) VALUE 'ZRE06463'.
       01  MOD-ZPA07214              PIC X(8) VALUE 'ZPA07214'.
       01  MOD-ZUW08465              PIC X(8) VALUE 'ZUW08465'.
       01  MOD-ZCU07409              PIC X(8) VALUE 'ZCU07409'.
       01  MOD-ZRE06340              PIC X(8) VALUE 'ZRE06340'.
       01  MOD-ZAG07650              PIC X(8) VALUE 'ZAG07650'.
       01  MOD-ZRE07892              PIC X(8) VALUE 'ZRE07892'.
       01  MOD-ZUW07936              PIC X(8) VALUE 'ZUW07936'.
       01  MOD-ZCL08204              PIC X(8) VALUE 'ZCL08204'.
       01  MOD-ZCU08110              PIC X(8) VALUE 'ZCU08110'.
       01  MOD-ZBI06733              PIC X(8) VALUE 'ZBI06733'.
       01  MOD-ZHO06505              PIC X(8) VALUE 'ZHO06505'.
       01  MOD-ZBI06791              PIC X(8) VALUE 'ZBI06791'.
       01  MOD-ZPA07872              PIC X(8) VALUE 'ZPA07872'.
       01  MOD-ZMT07477              PIC X(8) VALUE 'ZMT07477'.
       01  MOD-ZAG08242              PIC X(8) VALUE 'ZAG08242'.
       01  MOD-ZRE06872              PIC X(8) VALUE 'ZRE06872'.
       01  MOD-ZCL08456              PIC X(8) VALUE 'ZCL08456'.
       01  MOD-ZBI08590              PIC X(8) VALUE 'ZBI08590'.
       01  MOD-ZMT06325              PIC X(8) VALUE 'ZMT06325'.
       01  MOD-ZHO07969              PIC X(8) VALUE 'ZHO07969'.
       01  MOD-ZUW08287              PIC X(8) VALUE 'ZUW08287'.
       01  MOD-ZMT07765              PIC X(8) VALUE 'ZMT07765'.
       01  MOD-ZPA08657              PIC X(8) VALUE 'ZPA08657'.
       01  MOD-ZBI06966              PIC X(8) VALUE 'ZBI06966'.
       01  MOD-ZHO07565              PIC X(8) VALUE 'ZHO07565'.
       01  MOD-ZHO06867              PIC X(8) VALUE 'ZHO06867'.
       01  MOD-ZHO07316              PIC X(8) VALUE 'ZHO07316'.
       01  MOD-ZEN06384              PIC X(8) VALUE 'ZEN06384'.
       01  MOD-ZCU08138              PIC X(8) VALUE 'ZCU08138'.
       01  MOD-ZMT06422              PIC X(8) VALUE 'ZMT06422'.
       01  MOD-ZMT07632              PIC X(8) VALUE 'ZMT07632'.
       01  MOD-ZEN06427              PIC X(8) VALUE 'ZEN06427'.
       01  MOD-ZMT08080              PIC X(8) VALUE 'ZMT08080'.
       01  MOD-ZAG07365              PIC X(8) VALUE 'ZAG07365'.
       01  MOD-ZHO07799              PIC X(8) VALUE 'ZHO07799'.
       01  MOD-ZHO07021              PIC X(8) VALUE 'ZHO07021'.
       01  MOD-ZMT08560              PIC X(8) VALUE 'ZMT08560'.
       01  MOD-ZCL08461              PIC X(8) VALUE 'ZCL08461'.
       01  MOD-ZCU07944              PIC X(8) VALUE 'ZCU07944'.
       01  MOD-ZMT08368              PIC X(8) VALUE 'ZMT08368'.
       01  MOD-ZEN07392              PIC X(8) VALUE 'ZEN07392'.
       01  MOD-ZHO07852              PIC X(8) VALUE 'ZHO07852'.
       01  MOD-ZEN07452              PIC X(8) VALUE 'ZEN07452'.
       01  MOD-ZRE07236              PIC X(8) VALUE 'ZRE07236'.
       01  MOD-ZCU06350              PIC X(8) VALUE 'ZCU06350'.
       01  MOD-ZMT08112              PIC X(8) VALUE 'ZMT08112'.
       01  MOD-ZRE07184              PIC X(8) VALUE 'ZRE07184'.
       01  MOD-ZEN07078              PIC X(8) VALUE 'ZEN07078'.
       01  MOD-ZBI07089              PIC X(8) VALUE 'ZBI07089'.
       01  MOD-ZMT07998              PIC X(8) VALUE 'ZMT07998'.
       01  MOD-ZPA07361              PIC X(8) VALUE 'ZPA07361'.
       01  MOD-ZHO06810              PIC X(8) VALUE 'ZHO06810'.
       01  MOD-ZCL07678              PIC X(8) VALUE 'ZCL07678'.
       01  MOD-ZMT06552              PIC X(8) VALUE 'ZMT06552'.
       01  MOD-ZEN07189              PIC X(8) VALUE 'ZEN07189'.
       01  MOD-ZRE07707              PIC X(8) VALUE 'ZRE07707'.
       01  MOD-ZCL07376              PIC X(8) VALUE 'ZCL07376'.
       01  MOD-ZCU07583              PIC X(8) VALUE 'ZCU07583'.
       01  MOD-ZAG07324              PIC X(8) VALUE 'ZAG07324'.
       01  MOD-ZPA07962              PIC X(8) VALUE 'ZPA07962'.
       01  MOD-ZEN06624              PIC X(8) VALUE 'ZEN06624'.
       01  MOD-ZEN07096              PIC X(8) VALUE 'ZEN07096'.
       01  MOD-ZBI07911              PIC X(8) VALUE 'ZBI07911'.
       01  MOD-ZAG06462              PIC X(8) VALUE 'ZAG06462'.
       01  MOD-ZAG07349              PIC X(8) VALUE 'ZAG07349'.
       01  MOD-ZAG07859              PIC X(8) VALUE 'ZAG07859'.
       01  MOD-ZMT07134              PIC X(8) VALUE 'ZMT07134'.
       01  MOD-ZBI07491              PIC X(8) VALUE 'ZBI07491'.
       01  MOD-ZAG07177              PIC X(8) VALUE 'ZAG07177'.
       01  MOD-ZMT07967              PIC X(8) VALUE 'ZMT07967'.
       01  MOD-ZMT06892              PIC X(8) VALUE 'ZMT06892'.
       01  MOD-ZMT06991              PIC X(8) VALUE 'ZMT06991'.
       01  MOD-ZEN08659              PIC X(8) VALUE 'ZEN08659'.
       01  MOD-ZRE08346              PIC X(8) VALUE 'ZRE08346'.
       01  MOD-ZAG06924              PIC X(8) VALUE 'ZAG06924'.
       01  MOD-ZMT08221              PIC X(8) VALUE 'ZMT08221'.
       01  MOD-ZEN07938              PIC X(8) VALUE 'ZEN07938'.
       01  MOD-ZMT08140              PIC X(8) VALUE 'ZMT08140'.
       01  MOD-ZBI08337              PIC X(8) VALUE 'ZBI08337'.
       01  MOD-ZMT07559              PIC X(8) VALUE 'ZMT07559'.
       01  MOD-ZHO06502              PIC X(8) VALUE 'ZHO06502'.
       01  MOD-ZRE06618              PIC X(8) VALUE 'ZRE06618'.
       01  MOD-ZHO08046              PIC X(8) VALUE 'ZHO08046'.
       01  MOD-ZEN06368              PIC X(8) VALUE 'ZEN06368'.
       01  MOD-ZMT07805              PIC X(8) VALUE 'ZMT07805'.
       01  MOD-ZCU06611              PIC X(8) VALUE 'ZCU06611'.
       01  MOD-ZMT06450              PIC X(8) VALUE 'ZMT06450'.
       01  MOD-ZPA06902              PIC X(8) VALUE 'ZPA06902'.
       01  MOD-ZBI08524              PIC X(8) VALUE 'ZBI08524'.
       01  MOD-ZRE06952              PIC X(8) VALUE 'ZRE06952'.
       01  MOD-ZMT07028              PIC X(8) VALUE 'ZMT07028'.
       01  MOD-ZBI06644              PIC X(8) VALUE 'ZBI06644'.
       01  MOD-ZHO08599              PIC X(8) VALUE 'ZHO08599'.
       01  MOD-ZBI08588              PIC X(8) VALUE 'ZBI08588'.
       01  MOD-ZMT07644              PIC X(8) VALUE 'ZMT07644'.
       01  MOD-ZMT08198              PIC X(8) VALUE 'ZMT08198'.
       01  MOD-ZUW06904              PIC X(8) VALUE 'ZUW06904'.
       01  MOD-ZEN08666              PIC X(8) VALUE 'ZEN08666'.
       01  MOD-ZHO07318              PIC X(8) VALUE 'ZHO07318'.
       01  MOD-ZCL06779              PIC X(8) VALUE 'ZCL06779'.
       01  MOD-ZMT07094              PIC X(8) VALUE 'ZMT07094'.
       01  MOD-ZBI06775              PIC X(8) VALUE 'ZBI06775'.
       01  MOD-ZMT08554              PIC X(8) VALUE 'ZMT08554'.
       01  MOD-ZCU07311              PIC X(8) VALUE 'ZCU07311'.
       01  MOD-ZUW08501              PIC X(8) VALUE 'ZUW08501'.
       01  MOD-ZCU07760              PIC X(8) VALUE 'ZCU07760'.
       01  MOD-ZHO08670              PIC X(8) VALUE 'ZHO08670'.
       01  MOD-ZUW08692              PIC X(8) VALUE 'ZUW08692'.
       01  MOD-ZUW07230              PIC X(8) VALUE 'ZUW07230'.
       01  MOD-ZEN08480              PIC X(8) VALUE 'ZEN08480'.
       01  MOD-ZRE07007              PIC X(8) VALUE 'ZRE07007'.
       01  MOD-ZPA08549              PIC X(8) VALUE 'ZPA08549'.
       01  MOD-ZEN08353              PIC X(8) VALUE 'ZEN08353'.
       01  MOD-ZBI07085              PIC X(8) VALUE 'ZBI07085'.
       01  MOD-ZCU07126              PIC X(8) VALUE 'ZCU07126'.
       01  MOD-ZEN07588              PIC X(8) VALUE 'ZEN07588'.
       01  MOD-ZCU07897              PIC X(8) VALUE 'ZCU07897'.
       01  MOD-ZBI07509              PIC X(8) VALUE 'ZBI07509'.
       01  MOD-ZPA08347              PIC X(8) VALUE 'ZPA08347'.
       01  MOD-ZMT08587              PIC X(8) VALUE 'ZMT08587'.
       01  MOD-ZAG07255              PIC X(8) VALUE 'ZAG07255'.
       01  MOD-ZCU07291              PIC X(8) VALUE 'ZCU07291'.
       01  MOD-ZEN06963              PIC X(8) VALUE 'ZEN06963'.
       01  MOD-ZEN08693              PIC X(8) VALUE 'ZEN08693'.
       01  MOD-ZMT08442              PIC X(8) VALUE 'ZMT08442'.
       01  MOD-ZRE06517              PIC X(8) VALUE 'ZRE06517'.
       01  MOD-ZCU07000              PIC X(8) VALUE 'ZCU07000'.
       01  MOD-ZCL06907              PIC X(8) VALUE 'ZCL06907'.
       01  MOD-ZHO06605              PIC X(8) VALUE 'ZHO06605'.
       01  MOD-ZRE06390              PIC X(8) VALUE 'ZRE06390'.
       01  MOD-ZMT07959              PIC X(8) VALUE 'ZMT07959'.
       01  MOD-ZMT07394              PIC X(8) VALUE 'ZMT07394'.
       01  MOD-ZHO07788              PIC X(8) VALUE 'ZHO07788'.
       01  MOD-ZPA07290              PIC X(8) VALUE 'ZPA07290'.
       01  MOD-ZHO06402              PIC X(8) VALUE 'ZHO06402'.

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
                  EXEC CICS ABEND ABCODE('LGVS')
                            NODUMP END-EXEC
               END-IF.
               MOVE EIBCALEN TO WS-CALEN.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM CALL-ZCL07143-001.
               PERFORM CALL-ZHO07793-002.
               PERFORM CALL-ZCL08408-003.
               PERFORM CALL-ZEN07686-004.
               PERFORM CALL-ZEN06500-005.
               PERFORM CALL-ZPA08384-006.
               PERFORM CALL-ZAG07168-008.
               PERFORM CALL-ZMT07824-009.
               PERFORM CALL-ZMT07111-010.
               PERFORM CALL-ZCU08280-011.
               PERFORM CALL-ZAG06757-012.
               PERFORM CALL-ZCL08523-013.
               PERFORM CALL-ZMT07066-014.
               PERFORM CALL-ZAG06788-015.
               PERFORM CALL-ZMT07830-016.
               PERFORM CALL-ZCU06442-017.
               PERFORM CALL-ZPA08168-018.
               PERFORM CALL-ZCL08049-019.
               PERFORM CALL-ZCU07016-020.
               PERFORM CALL-ZHO07500-022.
               PERFORM CALL-ZUW08086-023.
               PERFORM CALL-ZEN07842-024.
               PERFORM CALL-ZRE07384-025.
               PERFORM CALL-ZEN07174-026.
               PERFORM CALL-ZRE07684-027.
               PERFORM CALL-ZAG07497-029.
               PERFORM CALL-ZMT06933-030.
               PERFORM CALL-ZCU07502-031.
               PERFORM CALL-ZMT06597-032.
               PERFORM CALL-ZCL07402-033.
               PERFORM CALL-ZAG06355-034.
               PERFORM CALL-ZMT08664-035.
               PERFORM CALL-ZMT08421-036.
               PERFORM CALL-ZCL07040-037.
               PERFORM CALL-ZMT07217-038.
               PERFORM CALL-ZMT07668-040.
               PERFORM CALL-ZRE08374-041.
               PERFORM CALL-ZHO08370-042.
               PERFORM CALL-ZAG07639-043.
               PERFORM CALL-ZMT08413-044.
               PERFORM CALL-ZEN07608-045.
               PERFORM CALL-ZBI08639-047.
               PERFORM CALL-ZMT06466-048.
               PERFORM CALL-ZMT08332-049.
               PERFORM CALL-ZMT07832-052.
               PERFORM CALL-ZAG07195-053.
               PERFORM CALL-ZMT07110-054.
               PERFORM CALL-ZPA06685-055.
               PERFORM CALL-ZHO06579-056.
               PERFORM CALL-ZEN06977-057.
               PERFORM CALL-ZHO06767-058.
               PERFORM CALL-ZEN07498-059.
               PERFORM CALL-ZCU08649-060.
               PERFORM CALL-ZCU08113-061.
               PERFORM CALL-ZCL07238-062.
               PERFORM CALL-ZPA07296-063.
               PERFORM CALL-ZEN08561-064.
               PERFORM CALL-ZRE08143-065.
               PERFORM CALL-ZMT06663-066.
               PERFORM CALL-ZCU08252-067.
               PERFORM CALL-ZMT07015-068.
               PERFORM CALL-ZMT07475-069.
               PERFORM CALL-ZHO07604-070.
               PERFORM CALL-ZMT08378-071.
               PERFORM CALL-ZBI07889-072.
               PERFORM CALL-ZHO07624-073.
               PERFORM CALL-ZHO08090-075.
               PERFORM CALL-ZHO06839-076.
               PERFORM CALL-ZAG07478-077.
               PERFORM CALL-ZMT08319-078.
               PERFORM CALL-ZRE06614-079.
               PERFORM CALL-ZAG08619-080.
               PERFORM CALL-ZBI08129-081.
               PERFORM CALL-ZEN06361-082.
               PERFORM CALL-ZEN08211-083.
               PERFORM CALL-ZMT07107-085.
               PERFORM CALL-ZHO07600-086.
               PERFORM CALL-ZAG07205-089.
               PERFORM CALL-ZRE08388-091.
               PERFORM CALL-ZEN06923-092.
               PERFORM CALL-ZUW08235-093.
               PERFORM CALL-ZPA08181-094.
               PERFORM CALL-ZMT06686-095.
               PERFORM CALL-ZHO06803-096.
               PERFORM CALL-ZMT08333-097.
               PERFORM CALL-ZRE07719-098.
               PERFORM CALL-ZMT07910-099.
               PERFORM CALL-ZHO06474-100.
               PERFORM CALL-ZCL08029-101.
               PERFORM CALL-ZPA06431-102.
               PERFORM CALL-ZEN07303-103.
               PERFORM CALL-ZAG07054-104.
               PERFORM CALL-ZEN06672-105.
               PERFORM CALL-ZCU08436-106.
               PERFORM CALL-ZEN08433-107.
               PERFORM CALL-ZAG07503-108.
               PERFORM CALL-ZCL06305-109.
               PERFORM CALL-ZUW07024-110.
               PERFORM CALL-ZMT07331-111.
               PERFORM CALL-ZMT08382-112.
               PERFORM CALL-ZHO08027-113.
               PERFORM CALL-ZCL06419-114.
               PERFORM CALL-ZMT07789-115.
               PERFORM CALL-ZEN08288-116.
               PERFORM CALL-ZCU07529-117.
               PERFORM CALL-ZMT07710-118.
               PERFORM CALL-ZCU08266-119.
               PERFORM CALL-ZAG07146-120.
               PERFORM CALL-ZMT08596-121.
               PERFORM CALL-ZEN07353-122.
               PERFORM CALL-ZMT07543-123.
               PERFORM CALL-ZMT07729-124.
               PERFORM CALL-ZBI08627-125.
               PERFORM CALL-ZEN07198-126.
               PERFORM CALL-ZUW06815-127.
               PERFORM CALL-ZEN07393-128.
               PERFORM CALL-ZEN06609-129.
               PERFORM CALL-ZMT06631-130.
               PERFORM CALL-ZPA07192-131.
               PERFORM CALL-ZCL08656-132.
               PERFORM CALL-ZUW06591-133.
               PERFORM CALL-ZMT07985-135.
               PERFORM CALL-ZEN08447-136.
               PERFORM CALL-ZUW06315-137.
               PERFORM CALL-ZPA07035-138.
               PERFORM CALL-ZCL07955-139.
               PERFORM CALL-ZPA07417-140.
               PERFORM CALL-ZMT06360-141.
               PERFORM CALL-ZBI06482-142.
               PERFORM CALL-ZCL07329-143.
               PERFORM CALL-ZHO07550-144.
               PERFORM CALL-ZHO07142-145.
               PERFORM CALL-ZMT06324-146.
               PERFORM CALL-ZUW06715-147.
               PERFORM CALL-ZPA06746-148.
               PERFORM CALL-ZEN07927-150.
               PERFORM CALL-ZMT07919-151.
               PERFORM CALL-ZPA07431-152.
               PERFORM CALL-ZCL08308-153.
               PERFORM CALL-ZMT07102-154.
               PERFORM CALL-ZMT08078-155.
               PERFORM CALL-ZCL08162-156.
               PERFORM CALL-ZMT06824-157.
               PERFORM CALL-ZHO08482-158.
               PERFORM CALL-ZPA08216-159.
               PERFORM CALL-ZCL07005-160.
               PERFORM CALL-ZPA06363-161.
               PERFORM CALL-ZCU06700-162.
               PERFORM CALL-ZHO06574-163.
               PERFORM CALL-ZRE06463-165.
               PERFORM CALL-ZPA07214-166.
               PERFORM CALL-ZUW08465-167.
               PERFORM CALL-ZCU07409-168.
               PERFORM CALL-ZRE06340-169.
               PERFORM CALL-ZAG07650-170.
               PERFORM CALL-ZUW07936-172.
               PERFORM CALL-ZCL08204-173.
               PERFORM CALL-ZBI06733-175.
               PERFORM CALL-ZHO06505-176.
               PERFORM CALL-ZBI06791-177.
               PERFORM CALL-ZPA07872-178.
               PERFORM CALL-ZMT07477-179.
               PERFORM CALL-ZAG08242-180.
               PERFORM CALL-ZRE06872-181.
               PERFORM CALL-ZCL08456-182.
               PERFORM CALL-ZBI08590-183.
               PERFORM CALL-ZMT06325-184.
               PERFORM CALL-ZHO07969-185.
               PERFORM CALL-ZUW08287-186.
               PERFORM CALL-ZMT07765-187.
               PERFORM CALL-ZPA08657-188.
               PERFORM CALL-ZBI06966-189.
               PERFORM CALL-ZHO07565-190.
               PERFORM CALL-ZHO06867-191.
               PERFORM CALL-ZHO07316-192.
               PERFORM CALL-ZEN06384-193.
               PERFORM CALL-ZCU08138-194.
               PERFORM CALL-ZMT06422-195.
               PERFORM CALL-ZMT07632-196.
               PERFORM CALL-ZEN06427-197.
               PERFORM CALL-ZMT08080-198.
               PERFORM CALL-ZAG07365-199.
               PERFORM CALL-ZHO07799-200.
               PERFORM CALL-ZHO07021-201.
               PERFORM CALL-ZMT08560-202.
               PERFORM CALL-ZCL08461-203.
               PERFORM CALL-ZCU07944-204.
               PERFORM CALL-ZMT08368-205.
               PERFORM CALL-ZEN07392-206.
               PERFORM CALL-ZHO07852-207.
               PERFORM CALL-ZEN07452-208.
               PERFORM CALL-ZRE07236-209.
               PERFORM CALL-ZCU06350-210.
               PERFORM CALL-ZMT08112-211.
               PERFORM CALL-ZRE07184-212.
               PERFORM CALL-ZEN07078-213.
               PERFORM CALL-ZBI07089-214.
               PERFORM CALL-ZMT07998-215.
               PERFORM CALL-ZPA07361-216.
               PERFORM CALL-ZHO06810-217.
               PERFORM CALL-ZCL07678-218.
               PERFORM CALL-ZMT06552-219.
               PERFORM CALL-ZEN07189-220.
               PERFORM CALL-ZRE07707-221.
               PERFORM CALL-ZCL07376-222.
               PERFORM CALL-ZCU07583-223.
               PERFORM CALL-ZPA07962-225.
               PERFORM CALL-ZEN06624-226.
               PERFORM CALL-ZEN07096-227.
               PERFORM CALL-ZBI07911-228.
               PERFORM CALL-ZAG06462-229.
               PERFORM CALL-ZAG07349-230.
               PERFORM CALL-ZAG07859-231.
               PERFORM CALL-ZBI07491-233.
               PERFORM CALL-ZAG07177-234.
               PERFORM CALL-ZMT07967-235.
               PERFORM CALL-ZMT06892-236.
               PERFORM CALL-ZMT06991-237.
               PERFORM CALL-ZEN08659-238.
               PERFORM CALL-ZRE08346-239.
               PERFORM CALL-ZAG06924-240.
               PERFORM CALL-ZMT08221-241.
               PERFORM CALL-ZEN07938-242.
               PERFORM CALL-ZBI08337-244.
               PERFORM CALL-ZMT07559-245.
               PERFORM CALL-ZHO06502-246.
               PERFORM CALL-ZRE06618-247.
               PERFORM CALL-ZHO08046-248.
               PERFORM CALL-ZEN06368-249.
               PERFORM CALL-ZMT07805-250.
               PERFORM CALL-ZCU06611-251.
               PERFORM CALL-ZPA06902-253.
               PERFORM CALL-ZBI08524-254.
               PERFORM CALL-ZRE06952-255.
               PERFORM CALL-ZMT07028-256.
               PERFORM CALL-ZBI06644-257.
               PERFORM CALL-ZHO08599-258.
               PERFORM CALL-ZBI08588-259.
               PERFORM CALL-ZMT07644-260.
               PERFORM CALL-ZMT08198-261.
               PERFORM CALL-ZUW06904-262.
               PERFORM CALL-ZEN08666-263.
               PERFORM CALL-ZHO07318-264.
               PERFORM CALL-ZCL06779-265.
               PERFORM CALL-ZMT07094-266.
               PERFORM CALL-ZBI06775-267.
               PERFORM CALL-ZMT08554-268.
               PERFORM CALL-ZCU07311-269.
               PERFORM CALL-ZUW08501-270.
               PERFORM CALL-ZCU07760-271.
               PERFORM CALL-ZHO08670-272.
               PERFORM CALL-ZUW08692-273.
               PERFORM CALL-ZUW07230-274.
               PERFORM CALL-ZEN08480-275.
               PERFORM CALL-ZRE07007-276.
               PERFORM CALL-ZPA08549-277.
               PERFORM CALL-ZEN08353-278.
               PERFORM CALL-ZBI07085-279.
               PERFORM CALL-ZCU07126-280.
               PERFORM CALL-ZEN07588-281.
               PERFORM CALL-ZBI07509-283.
               PERFORM CALL-ZPA08347-284.
               PERFORM CALL-ZMT08587-285.
               PERFORM CALL-ZAG07255-286.
               PERFORM CALL-ZCU07291-287.
               PERFORM CALL-ZEN08693-289.
               PERFORM CALL-ZMT08442-290.
               PERFORM CALL-ZRE06517-291.
               PERFORM CALL-ZCU07000-292.
               PERFORM CALL-ZCL06907-293.
               PERFORM CALL-ZHO06605-294.
               PERFORM CALL-ZRE06390-295.
               PERFORM CALL-ZMT07959-296.
               PERFORM CALL-ZHO07788-298.
               PERFORM CALL-ZPA07290-299.
               PERFORM CALL-ZHO06402-300.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       CALL-ZCL07143-001.
               CALL 'ZCL07143' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07143 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07793-002.
               CALL 'ZHO07793' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07793 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08408-003.
               CALL 'ZCL08408' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08408 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07686-004.
               CALL 'ZEN07686' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07686 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06500-005.
               CALL 'ZEN06500' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06500 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08384-006.
               CALL 'ZPA08384' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08384 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06607-007.
               CALL 'ZEN06607' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06607 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07168-008.
               CALL 'ZAG07168' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07168 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07824-009.
               CALL 'ZMT07824' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07824 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07111-010.
               CALL 'ZMT07111' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07111 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08280-011.
               CALL 'ZCU08280' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08280 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06757-012.
               CALL 'ZAG06757' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06757 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08523-013.
               CALL 'ZCL08523' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08523 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07066-014.
               CALL 'ZMT07066' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07066 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06788-015.
               CALL 'ZAG06788' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06788 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07830-016.
               CALL 'ZMT07830' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07830 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06442-017.
               CALL 'ZCU06442' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06442 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08168-018.
               CALL 'ZPA08168' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08168 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08049-019.
               CALL 'ZCL08049' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08049 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07016-020.
               CALL 'ZCU07016' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07016 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08673-021.
               CALL 'ZMT08673' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08673 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07500-022.
               CALL 'ZHO07500' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07500 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08086-023.
               CALL 'ZUW08086' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08086 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07842-024.
               CALL 'ZEN07842' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07842 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07384-025.
               CALL 'ZRE07384' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07384 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07174-026.
               CALL 'ZEN07174' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07174 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07684-027.
               CALL 'ZRE07684' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07684 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06629-028.
               CALL 'ZHO06629' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06629 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07497-029.
               CALL 'ZAG07497' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07497 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06933-030.
               CALL 'ZMT06933' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06933 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07502-031.
               CALL 'ZCU07502' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07502 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06597-032.
               CALL 'ZMT06597' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06597 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07402-033.
               CALL 'ZCL07402' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07402 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06355-034.
               CALL 'ZAG06355' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06355 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08664-035.
               CALL 'ZMT08664' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08664 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08421-036.
               CALL 'ZMT08421' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08421 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07040-037.
               CALL 'ZCL07040' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07040 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07217-038.
               CALL 'ZMT07217' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07217 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07215-039.
               CALL 'ZMT07215' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07215 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07668-040.
               CALL 'ZMT07668' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07668 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08374-041.
               CALL 'ZRE08374' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08374 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08370-042.
               CALL 'ZHO08370' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08370 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07639-043.
               CALL 'ZAG07639' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07639 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08413-044.
               CALL 'ZMT08413' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08413 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07608-045.
               CALL 'ZEN07608' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07608 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08154-046.
               CALL 'ZRE08154' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08154 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08639-047.
               CALL 'ZBI08639' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08639 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06466-048.
               CALL 'ZMT06466' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06466 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08332-049.
               CALL 'ZMT08332' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08332 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07584-050.
               CALL 'ZHO07584' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07584 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07851-051.
               CALL 'ZHO07851' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07851 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07832-052.
               CALL 'ZMT07832' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07832 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07195-053.
               CALL 'ZAG07195' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07195 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07110-054.
               CALL 'ZMT07110' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07110 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06685-055.
               CALL 'ZPA06685' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06685 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06579-056.
               CALL 'ZHO06579' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06579 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06977-057.
               CALL 'ZEN06977' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06977 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06767-058.
               CALL 'ZHO06767' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06767 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07498-059.
               CALL 'ZEN07498' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07498 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08649-060.
               CALL 'ZCU08649' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08649 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08113-061.
               CALL 'ZCU08113' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08113 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07238-062.
               CALL 'ZCL07238' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07238 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07296-063.
               CALL 'ZPA07296' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07296 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08561-064.
               CALL 'ZEN08561' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08561 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08143-065.
               CALL 'ZRE08143' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08143 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06663-066.
               CALL 'ZMT06663' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06663 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08252-067.
               CALL 'ZCU08252' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08252 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07015-068.
               CALL 'ZMT07015' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07015 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07475-069.
               CALL 'ZMT07475' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07475 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07604-070.
               CALL 'ZHO07604' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07604 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08378-071.
               CALL 'ZMT08378' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08378 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07889-072.
               CALL 'ZBI07889' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07889 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07624-073.
               CALL 'ZHO07624' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07624 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06337-074.
               CALL 'ZMT06337' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06337 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08090-075.
               CALL 'ZHO08090' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08090 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06839-076.
               CALL 'ZHO06839' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06839 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07478-077.
               CALL 'ZAG07478' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07478 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08319-078.
               CALL 'ZMT08319' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08319 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06614-079.
               CALL 'ZRE06614' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06614 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08619-080.
               CALL 'ZAG08619' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08619 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08129-081.
               CALL 'ZBI08129' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08129 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06361-082.
               CALL 'ZEN06361' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06361 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08211-083.
               CALL 'ZEN08211' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08211 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06799-084.
               CALL 'ZHO06799' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06799 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07107-085.
               CALL 'ZMT07107' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07107 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07600-086.
               CALL 'ZHO07600' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07600 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07138-087.
               CALL 'ZMT07138' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07138 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08592-088.
               CALL 'ZCU08592' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08592 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07205-089.
               CALL 'ZAG07205' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07205 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07645-090.
               CALL 'ZMT07645' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07645 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08388-091.
               CALL 'ZRE08388' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08388 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06923-092.
               CALL 'ZEN06923' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06923 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08235-093.
               CALL 'ZUW08235' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08235 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08181-094.
               CALL 'ZPA08181' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08181 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06686-095.
               CALL 'ZMT06686' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06686 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06803-096.
               CALL 'ZHO06803' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06803 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08333-097.
               CALL 'ZMT08333' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08333 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07719-098.
               CALL 'ZRE07719' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07719 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07910-099.
               CALL 'ZMT07910' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07910 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06474-100.
               CALL 'ZHO06474' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06474 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08029-101.
               CALL 'ZCL08029' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08029 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06431-102.
               CALL 'ZPA06431' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06431 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07303-103.
               CALL 'ZEN07303' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07303 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07054-104.
               CALL 'ZAG07054' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07054 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06672-105.
               CALL 'ZEN06672' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06672 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08436-106.
               CALL 'ZCU08436' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08436 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08433-107.
               CALL 'ZEN08433' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08433 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07503-108.
               CALL 'ZAG07503' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07503 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06305-109.
               CALL 'ZCL06305' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06305 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07024-110.
               CALL 'ZUW07024' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07024 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07331-111.
               CALL 'ZMT07331' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07331 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08382-112.
               CALL 'ZMT08382' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08382 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08027-113.
               CALL 'ZHO08027' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08027 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06419-114.
               CALL 'ZCL06419' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06419 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07789-115.
               CALL 'ZMT07789' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07789 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08288-116.
               CALL 'ZEN08288' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08288 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07529-117.
               CALL 'ZCU07529' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07529 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07710-118.
               CALL 'ZMT07710' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07710 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08266-119.
               CALL 'ZCU08266' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08266 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07146-120.
               CALL 'ZAG07146' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07146 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08596-121.
               CALL 'ZMT08596' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08596 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07353-122.
               CALL 'ZEN07353' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07353 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07543-123.
               CALL 'ZMT07543' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07543 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07729-124.
               CALL 'ZMT07729' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07729 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08627-125.
               CALL 'ZBI08627' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08627 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07198-126.
               CALL 'ZEN07198' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07198 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06815-127.
               CALL 'ZUW06815' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06815 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07393-128.
               CALL 'ZEN07393' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07393 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06609-129.
               CALL 'ZEN06609' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06609 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06631-130.
               CALL 'ZMT06631' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06631 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07192-131.
               CALL 'ZPA07192' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07192 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08656-132.
               CALL 'ZCL08656' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08656 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06591-133.
               CALL 'ZUW06591' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06591 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07492-134.
               CALL 'ZCL07492' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07492 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07985-135.
               CALL 'ZMT07985' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07985 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08447-136.
               CALL 'ZEN08447' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08447 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06315-137.
               CALL 'ZUW06315' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06315 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07035-138.
               CALL 'ZPA07035' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07035 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07955-139.
               CALL 'ZCL07955' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07955 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07417-140.
               CALL 'ZPA07417' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07417 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06360-141.
               CALL 'ZMT06360' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06360 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06482-142.
               CALL 'ZBI06482' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06482 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07329-143.
               CALL 'ZCL07329' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07329 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07550-144.
               CALL 'ZHO07550' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07550 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07142-145.
               CALL 'ZHO07142' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07142 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06324-146.
               CALL 'ZMT06324' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06324 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06715-147.
               CALL 'ZUW06715' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06715 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06746-148.
               CALL 'ZPA06746' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06746 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07880-149.
               CALL 'ZEN07880' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07880 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07927-150.
               CALL 'ZEN07927' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07927 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07919-151.
               CALL 'ZMT07919' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07919 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07431-152.
               CALL 'ZPA07431' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07431 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08308-153.
               CALL 'ZCL08308' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08308 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07102-154.
               CALL 'ZMT07102' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07102 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08078-155.
               CALL 'ZMT08078' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08078 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08162-156.
               CALL 'ZCL08162' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08162 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06824-157.
               CALL 'ZMT06824' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06824 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08482-158.
               CALL 'ZHO08482' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08482 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08216-159.
               CALL 'ZPA08216' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08216 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07005-160.
               CALL 'ZCL07005' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07005 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06363-161.
               CALL 'ZPA06363' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06363 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06700-162.
               CALL 'ZCU06700' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06700 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06574-163.
               CALL 'ZHO06574' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06574 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07183-164.
               CALL 'ZBI07183' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07183 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06463-165.
               CALL 'ZRE06463' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06463 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07214-166.
               CALL 'ZPA07214' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07214 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08465-167.
               CALL 'ZUW08465' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08465 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07409-168.
               CALL 'ZCU07409' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07409 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06340-169.
               CALL 'ZRE06340' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06340 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07650-170.
               CALL 'ZAG07650' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07650 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07892-171.
               CALL 'ZRE07892' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07892 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07936-172.
               CALL 'ZUW07936' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07936 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08204-173.
               CALL 'ZCL08204' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08204 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08110-174.
               CALL 'ZCU08110' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08110 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06733-175.
               CALL 'ZBI06733' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06733 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06505-176.
               CALL 'ZHO06505' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06505 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06791-177.
               CALL 'ZBI06791' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06791 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07872-178.
               CALL 'ZPA07872' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07872 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07477-179.
               CALL 'ZMT07477' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07477 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08242-180.
               CALL 'ZAG08242' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08242 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06872-181.
               CALL 'ZRE06872' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06872 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08456-182.
               CALL 'ZCL08456' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08456 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08590-183.
               CALL 'ZBI08590' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08590 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06325-184.
               CALL 'ZMT06325' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06325 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07969-185.
               CALL 'ZHO07969' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07969 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08287-186.
               CALL 'ZUW08287' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08287 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07765-187.
               CALL 'ZMT07765' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07765 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08657-188.
               CALL 'ZPA08657' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08657 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06966-189.
               CALL 'ZBI06966' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06966 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07565-190.
               CALL 'ZHO07565' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07565 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06867-191.
               CALL 'ZHO06867' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06867 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07316-192.
               CALL 'ZHO07316' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07316 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06384-193.
               CALL 'ZEN06384' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06384 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08138-194.
               CALL 'ZCU08138' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08138 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06422-195.
               CALL 'ZMT06422' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06422 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07632-196.
               CALL 'ZMT07632' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07632 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06427-197.
               CALL 'ZEN06427' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06427 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08080-198.
               CALL 'ZMT08080' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08080 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07365-199.
               CALL 'ZAG07365' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07365 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07799-200.
               CALL 'ZHO07799' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07799 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07021-201.
               CALL 'ZHO07021' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07021 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08560-202.
               CALL 'ZMT08560' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08560 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08461-203.
               CALL 'ZCL08461' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08461 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07944-204.
               CALL 'ZCU07944' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07944 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08368-205.
               CALL 'ZMT08368' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08368 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07392-206.
               CALL 'ZEN07392' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07392 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07852-207.
               CALL 'ZHO07852' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07852 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07452-208.
               CALL 'ZEN07452' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07452 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07236-209.
               CALL 'ZRE07236' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07236 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06350-210.
               CALL 'ZCU06350' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06350 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08112-211.
               CALL 'ZMT08112' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08112 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07184-212.
               CALL 'ZRE07184' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07184 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07078-213.
               CALL 'ZEN07078' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07078 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07089-214.
               CALL 'ZBI07089' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07089 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07998-215.
               CALL 'ZMT07998' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07998 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07361-216.
               CALL 'ZPA07361' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07361 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06810-217.
               CALL 'ZHO06810' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06810 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07678-218.
               CALL 'ZCL07678' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07678 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06552-219.
               CALL 'ZMT06552' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06552 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07189-220.
               CALL 'ZEN07189' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07189 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07707-221.
               CALL 'ZRE07707' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07707 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07376-222.
               CALL 'ZCL07376' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07376 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07583-223.
               CALL 'ZCU07583' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07583 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07324-224.
               CALL 'ZAG07324' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07324 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07962-225.
               CALL 'ZPA07962' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07962 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06624-226.
               CALL 'ZEN06624' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06624 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07096-227.
               CALL 'ZEN07096' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07096 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07911-228.
               CALL 'ZBI07911' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07911 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06462-229.
               CALL 'ZAG06462' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06462 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07349-230.
               CALL 'ZAG07349' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07349 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07859-231.
               CALL 'ZAG07859' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07859 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07134-232.
               CALL 'ZMT07134' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07134 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07491-233.
               CALL 'ZBI07491' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07491 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07177-234.
               CALL 'ZAG07177' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07177 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07967-235.
               CALL 'ZMT07967' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07967 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06892-236.
               CALL 'ZMT06892' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06892 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06991-237.
               CALL 'ZMT06991' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06991 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08659-238.
               CALL 'ZEN08659' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08659 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08346-239.
               CALL 'ZRE08346' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08346 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06924-240.
               CALL 'ZAG06924' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06924 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08221-241.
               CALL 'ZMT08221' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08221 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07938-242.
               CALL 'ZEN07938' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07938 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08140-243.
               CALL 'ZMT08140' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08140 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08337-244.
               CALL 'ZBI08337' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08337 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07559-245.
               CALL 'ZMT07559' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07559 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06502-246.
               CALL 'ZHO06502' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06502 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06618-247.
               CALL 'ZRE06618' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06618 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08046-248.
               CALL 'ZHO08046' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08046 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06368-249.
               CALL 'ZEN06368' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06368 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07805-250.
               CALL 'ZMT07805' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07805 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06611-251.
               CALL 'ZCU06611' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06611 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06450-252.
               CALL 'ZMT06450' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06450 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06902-253.
               CALL 'ZPA06902' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06902 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08524-254.
               CALL 'ZBI08524' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08524 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06952-255.
               CALL 'ZRE06952' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06952 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07028-256.
               CALL 'ZMT07028' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07028 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06644-257.
               CALL 'ZBI06644' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06644 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08599-258.
               CALL 'ZHO08599' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08599 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08588-259.
               CALL 'ZBI08588' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08588 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07644-260.
               CALL 'ZMT07644' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07644 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08198-261.
               CALL 'ZMT08198' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08198 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06904-262.
               CALL 'ZUW06904' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06904 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08666-263.
               CALL 'ZEN08666' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08666 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07318-264.
               CALL 'ZHO07318' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07318 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06779-265.
               CALL 'ZCL06779' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06779 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07094-266.
               CALL 'ZMT07094' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07094 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06775-267.
               CALL 'ZBI06775' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06775 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08554-268.
               CALL 'ZMT08554' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08554 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07311-269.
               CALL 'ZCU07311' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07311 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08501-270.
               CALL 'ZUW08501' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08501 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07760-271.
               CALL 'ZCU07760' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07760 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08670-272.
               CALL 'ZHO08670' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08670 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08692-273.
               CALL 'ZUW08692' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08692 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07230-274.
               CALL 'ZUW07230' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07230 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08480-275.
               CALL 'ZEN08480' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08480 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07007-276.
               CALL 'ZRE07007' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07007 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08549-277.
               CALL 'ZPA08549' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08549 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08353-278.
               CALL 'ZEN08353' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08353 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07085-279.
               CALL 'ZBI07085' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07085 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07126-280.
               CALL 'ZCU07126' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07126 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07588-281.
               CALL 'ZEN07588' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07588 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07897-282.
               CALL 'ZCU07897' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07897 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07509-283.
               CALL 'ZBI07509' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07509 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08347-284.
               CALL 'ZPA08347' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08347 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08587-285.
               CALL 'ZMT08587' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08587 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07255-286.
               CALL 'ZAG07255' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07255 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07291-287.
               CALL 'ZCU07291' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07291 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06963-288.
               CALL 'ZEN06963' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06963 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08693-289.
               CALL 'ZEN08693' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08693 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08442-290.
               CALL 'ZMT08442' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08442 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06517-291.
               CALL 'ZRE06517' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06517 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07000-292.
               CALL 'ZCU07000' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07000 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06907-293.
               CALL 'ZCL06907' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06907 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06605-294.
               CALL 'ZHO06605' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06605 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06390-295.
               CALL 'ZRE06390' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06390 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07959-296.
               CALL 'ZMT07959' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07959 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07394-297.
               CALL 'ZMT07394' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07394 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07788-298.
               CALL 'ZHO07788' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07788 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07290-299.
               CALL 'ZPA07290' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07290 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06402-300.
               CALL 'ZHO06402' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06402 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
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
       END PROGRAM ZMT10004.
