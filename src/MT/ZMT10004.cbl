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
                05 WS-T-HOUSE-TYPE     PIC X(12).
                05 WS-T-EXCESS         PIC X(12).
                05 WS-T-REG-NUMBER     PIC X(12).
                05 WS-T-MAKE           PIC X(12).
                05 WS-T-AMOUNT           PIC S9(7)V99 COMP-3.

      * Called module names
       01  MOD-ZRE06517              PIC X(8) VALUE 'ZRE06517'.
       01  MOD-ZMT08551              PIC X(8) VALUE 'ZMT08551'.
       01  MOD-ZPA07759              PIC X(8) VALUE 'ZPA07759'.
       01  MOD-ZMT08371              PIC X(8) VALUE 'ZMT08371'.
       01  MOD-ZHO07042              PIC X(8) VALUE 'ZHO07042'.
       01  MOD-ZCL07815              PIC X(8) VALUE 'ZCL07815'.
       01  MOD-ZHO07702              PIC X(8) VALUE 'ZHO07702'.
       01  MOD-ZUW08400              PIC X(8) VALUE 'ZUW08400'.
       01  MOD-ZCU06824              PIC X(8) VALUE 'ZCU06824'.
       01  MOD-ZMT07741              PIC X(8) VALUE 'ZMT07741'.
       01  MOD-ZBI06606              PIC X(8) VALUE 'ZBI06606'.
       01  MOD-ZEN06353              PIC X(8) VALUE 'ZEN06353'.
       01  MOD-ZEN06433              PIC X(8) VALUE 'ZEN06433'.
       01  MOD-ZAG07688              PIC X(8) VALUE 'ZAG07688'.
       01  MOD-ZCU08034              PIC X(8) VALUE 'ZCU08034'.
       01  MOD-ZHO08682              PIC X(8) VALUE 'ZHO08682'.
       01  MOD-ZAG06868              PIC X(8) VALUE 'ZAG06868'.
       01  MOD-ZCL07925              PIC X(8) VALUE 'ZCL07925'.
       01  MOD-ZAG06678              PIC X(8) VALUE 'ZAG06678'.
       01  MOD-ZBI06546              PIC X(8) VALUE 'ZBI06546'.
       01  MOD-ZBI06826              PIC X(8) VALUE 'ZBI06826'.
       01  MOD-ZMT07661              PIC X(8) VALUE 'ZMT07661'.
       01  MOD-ZRE07577              PIC X(8) VALUE 'ZRE07577'.
       01  MOD-ZAG06758              PIC X(8) VALUE 'ZAG06758'.
       01  MOD-ZEN07073              PIC X(8) VALUE 'ZEN07073'.
       01  MOD-ZHO06552              PIC X(8) VALUE 'ZHO06552'.
       01  MOD-ZCU07254              PIC X(8) VALUE 'ZCU07254'.
       01  MOD-ZUW06600              PIC X(8) VALUE 'ZUW06600'.
       01  MOD-ZUW07430              PIC X(8) VALUE 'ZUW07430'.
       01  MOD-ZBI06616              PIC X(8) VALUE 'ZBI06616'.
       01  MOD-ZAG07768              PIC X(8) VALUE 'ZAG07768'.
       01  MOD-ZUW06330              PIC X(8) VALUE 'ZUW06330'.
       01  MOD-ZCL08495              PIC X(8) VALUE 'ZCL08495'.
       01  MOD-ZAG08458              PIC X(8) VALUE 'ZAG08458'.
       01  MOD-ZPA06349              PIC X(8) VALUE 'ZPA06349'.
       01  MOD-ZMT06411              PIC X(8) VALUE 'ZMT06411'.
       01  MOD-ZAG06468              PIC X(8) VALUE 'ZAG06468'.
       01  MOD-ZRE07317              PIC X(8) VALUE 'ZRE07317'.
       01  MOD-ZUW06360              PIC X(8) VALUE 'ZUW06360'.
       01  MOD-ZMT08471              PIC X(8) VALUE 'ZMT08471'.
       01  MOD-ZCU08594              PIC X(8) VALUE 'ZCU08594'.
       01  MOD-ZBI08226              PIC X(8) VALUE 'ZBI08226'.
       01  MOD-ZHO06372              PIC X(8) VALUE 'ZHO06372'.
       01  MOD-ZMT07881              PIC X(8) VALUE 'ZMT07881'.
       01  MOD-ZAG07058              PIC X(8) VALUE 'ZAG07058'.
       01  MOD-ZBI07396              PIC X(8) VALUE 'ZBI07396'.
       01  MOD-ZBI08216              PIC X(8) VALUE 'ZBI08216'.
       01  MOD-ZCU07424              PIC X(8) VALUE 'ZCU07424'.
       01  MOD-ZUW07220              PIC X(8) VALUE 'ZUW07220'.
       01  MOD-ZCU07884              PIC X(8) VALUE 'ZCU07884'.
       01  MOD-ZEN08033              PIC X(8) VALUE 'ZEN08033'.
       01  MOD-ZMT06821              PIC X(8) VALUE 'ZMT06821'.
       01  MOD-ZPA08549              PIC X(8) VALUE 'ZPA08549'.
       01  MOD-ZUW07780              PIC X(8) VALUE 'ZUW07780'.
       01  MOD-ZBI07416              PIC X(8) VALUE 'ZBI07416'.
       01  MOD-ZAG07928              PIC X(8) VALUE 'ZAG07928'.
       01  MOD-ZMT06471              PIC X(8) VALUE 'ZMT06471'.
       01  MOD-ZEN06793              PIC X(8) VALUE 'ZEN06793'.
       01  MOD-ZHO07992              PIC X(8) VALUE 'ZHO07992'.
       01  MOD-ZMT07141              PIC X(8) VALUE 'ZMT07141'.
       01  MOD-ZAG07748              PIC X(8) VALUE 'ZAG07748'.
       01  MOD-ZRE07387              PIC X(8) VALUE 'ZRE07387'.
       01  MOD-ZEN07403              PIC X(8) VALUE 'ZEN07403'.
       01  MOD-ZUW06520              PIC X(8) VALUE 'ZUW06520'.
       01  MOD-ZAG07498              PIC X(8) VALUE 'ZAG07498'.
       01  MOD-ZAG08548              PIC X(8) VALUE 'ZAG08548'.
       01  MOD-ZEN07423              PIC X(8) VALUE 'ZEN07423'.
       01  MOD-ZEN07053              PIC X(8) VALUE 'ZEN07053'.
       01  MOD-ZAG06998              PIC X(8) VALUE 'ZAG06998'.
       01  MOD-ZRE06777              PIC X(8) VALUE 'ZRE06777'.
       01  MOD-ZAG06898              PIC X(8) VALUE 'ZAG06898'.
       01  MOD-ZRE07227              PIC X(8) VALUE 'ZRE07227'.
       01  MOD-ZEN07273              PIC X(8) VALUE 'ZEN07273'.
       01  MOD-ZCL07885              PIC X(8) VALUE 'ZCL07885'.
       01  MOD-ZPA06979              PIC X(8) VALUE 'ZPA06979'.
       01  MOD-ZEN07003              PIC X(8) VALUE 'ZEN07003'.
       01  MOD-ZCL06655              PIC X(8) VALUE 'ZCL06655'.
       01  MOD-ZRE07417              PIC X(8) VALUE 'ZRE07417'.
       01  MOD-ZPA07969              PIC X(8) VALUE 'ZPA07969'.
       01  MOD-ZEN06653              PIC X(8) VALUE 'ZEN06653'.
       01  MOD-ZRE07567              PIC X(8) VALUE 'ZRE07567'.
       01  MOD-ZUW08200              PIC X(8) VALUE 'ZUW08200'.
       01  MOD-ZCU07204              PIC X(8) VALUE 'ZCU07204'.
       01  MOD-ZEN06463              PIC X(8) VALUE 'ZEN06463'.
       01  MOD-ZHO07092              PIC X(8) VALUE 'ZHO07092'.
       01  MOD-ZCL08225              PIC X(8) VALUE 'ZCL08225'.
       01  MOD-ZHO06592              PIC X(8) VALUE 'ZHO06592'.
       01  MOD-ZUW08220              PIC X(8) VALUE 'ZUW08220'.
       01  MOD-ZCU06304              PIC X(8) VALUE 'ZCU06304'.
       01  MOD-ZEN08313              PIC X(8) VALUE 'ZEN08313'.
       01  MOD-ZEN07613              PIC X(8) VALUE 'ZEN07613'.
       01  MOD-ZBI08176              PIC X(8) VALUE 'ZBI08176'.
       01  MOD-ZRE06757              PIC X(8) VALUE 'ZRE06757'.
       01  MOD-ZAG06958              PIC X(8) VALUE 'ZAG06958'.
       01  MOD-ZCU08134              PIC X(8) VALUE 'ZCU08134'.
       01  MOD-ZRE06497              PIC X(8) VALUE 'ZRE06497'.
       01  MOD-ZHO06972              PIC X(8) VALUE 'ZHO06972'.
       01  MOD-ZEN08553              PIC X(8) VALUE 'ZEN08553'.
       01  MOD-ZHO07022              PIC X(8) VALUE 'ZHO07022'.
       01  MOD-ZCL07745              PIC X(8) VALUE 'ZCL07745'.
       01  MOD-ZUW08180              PIC X(8) VALUE 'ZUW08180'.
       01  MOD-ZUW07260              PIC X(8) VALUE 'ZUW07260'.
       01  MOD-ZHO07222              PIC X(8) VALUE 'ZHO07222'.
       01  MOD-ZBI08186              PIC X(8) VALUE 'ZBI08186'.
       01  MOD-ZHO06692              PIC X(8) VALUE 'ZHO06692'.
       01  MOD-ZBI07296              PIC X(8) VALUE 'ZBI07296'.
       01  MOD-ZCL08415              PIC X(8) VALUE 'ZCL08415'.
       01  MOD-ZBI06836              PIC X(8) VALUE 'ZBI06836'.
       01  MOD-ZRE08487              PIC X(8) VALUE 'ZRE08487'.
       01  MOD-ZCU06644              PIC X(8) VALUE 'ZCU06644'.
       01  MOD-ZCU07474              PIC X(8) VALUE 'ZCU07474'.
       01  MOD-ZAG06528              PIC X(8) VALUE 'ZAG06528'.
       01  MOD-ZUW07110              PIC X(8) VALUE 'ZUW07110'.
       01  MOD-ZEN08083              PIC X(8) VALUE 'ZEN08083'.
       01  MOD-ZUW07190              PIC X(8) VALUE 'ZUW07190'.
       01  MOD-ZBI08436              PIC X(8) VALUE 'ZBI08436'.
       01  MOD-ZCU06704              PIC X(8) VALUE 'ZCU06704'.
       01  MOD-ZCU07744              PIC X(8) VALUE 'ZCU07744'.
       01  MOD-ZMT07481              PIC X(8) VALUE 'ZMT07481'.
       01  MOD-ZCL08635              PIC X(8) VALUE 'ZCL08635'.
       01  MOD-ZRE08157              PIC X(8) VALUE 'ZRE08157'.
       01  MOD-ZUW07850              PIC X(8) VALUE 'ZUW07850'.
       01  MOD-ZPA06499              PIC X(8) VALUE 'ZPA06499'.
       01  MOD-ZCL08445              PIC X(8) VALUE 'ZCL08445'.
       01  MOD-ZEN06483              PIC X(8) VALUE 'ZEN06483'.
       01  MOD-ZCU08254              PIC X(8) VALUE 'ZCU08254'.
       01  MOD-ZRE07757              PIC X(8) VALUE 'ZRE07757'.
       01  MOD-ZEN07033              PIC X(8) VALUE 'ZEN07033'.
       01  MOD-ZMT06301              PIC X(8) VALUE 'ZMT06301'.
       01  MOD-ZRE08317              PIC X(8) VALUE 'ZRE08317'.
       01  MOD-ZHO06342              PIC X(8) VALUE 'ZHO06342'.
       01  MOD-ZPA08589              PIC X(8) VALUE 'ZPA08589'.
       01  MOD-ZUW07390              PIC X(8) VALUE 'ZUW07390'.
       01  MOD-ZPA08669              PIC X(8) VALUE 'ZPA08669'.
       01  MOD-ZCU07234              PIC X(8) VALUE 'ZCU07234'.
       01  MOD-ZRE08127              PIC X(8) VALUE 'ZRE08127'.
       01  MOD-ZEN07433              PIC X(8) VALUE 'ZEN07433'.
       01  MOD-ZCL07065              PIC X(8) VALUE 'ZCL07065'.
       01  MOD-ZUW06830              PIC X(8) VALUE 'ZUW06830'.
       01  MOD-ZRE07437              PIC X(8) VALUE 'ZRE07437'.
       01  MOD-ZCU07824              PIC X(8) VALUE 'ZCU07824'.
       01  MOD-ZAG08028              PIC X(8) VALUE 'ZAG08028'.
       01  MOD-ZAG08078              PIC X(8) VALUE 'ZAG08078'.
       01  MOD-ZPA07309              PIC X(8) VALUE 'ZPA07309'.
       01  MOD-ZPA07619              PIC X(8) VALUE 'ZPA07619'.
       01  MOD-ZPA07569              PIC X(8) VALUE 'ZPA07569'.
       01  MOD-ZUW07740              PIC X(8) VALUE 'ZUW07740'.
       01  MOD-ZRE07707              PIC X(8) VALUE 'ZRE07707'.
       01  MOD-ZCU06734              PIC X(8) VALUE 'ZCU06734'.
       01  MOD-ZCU06964              PIC X(8) VALUE 'ZCU06964'.
       01  MOD-ZCL06485              PIC X(8) VALUE 'ZCL06485'.
       01  MOD-ZCL08385              PIC X(8) VALUE 'ZCL08385'.
       01  MOD-ZAG08538              PIC X(8) VALUE 'ZAG08538'.
       01  MOD-ZRE07837              PIC X(8) VALUE 'ZRE07837'.
       01  MOD-ZUW07120              PIC X(8) VALUE 'ZUW07120'.
       01  MOD-ZUW08260              PIC X(8) VALUE 'ZUW08260'.
       01  MOD-ZEN07293              PIC X(8) VALUE 'ZEN07293'.
       01  MOD-ZMT07961              PIC X(8) VALUE 'ZMT07961'.
       01  MOD-ZBI07186              PIC X(8) VALUE 'ZBI07186'.
       01  MOD-ZUW06720              PIC X(8) VALUE 'ZUW06720'.
       01  MOD-ZEN06733              PIC X(8) VALUE 'ZEN06733'.
       01  MOD-ZHO07642              PIC X(8) VALUE 'ZHO07642'.
       01  MOD-ZHO06942              PIC X(8) VALUE 'ZHO06942'.
       01  MOD-ZMT07971              PIC X(8) VALUE 'ZMT07971'.
       01  MOD-ZPA08219              PIC X(8) VALUE 'ZPA08219'.
       01  MOD-ZHO07932              PIC X(8) VALUE 'ZHO07932'.
       01  MOD-ZEN08333              PIC X(8) VALUE 'ZEN08333'.
       01  MOD-ZCL07025              PIC X(8) VALUE 'ZCL07025'.
       01  MOD-ZBI07626              PIC X(8) VALUE 'ZBI07626'.
       01  MOD-ZRE07087              PIC X(8) VALUE 'ZRE07087'.
       01  MOD-ZPA08049              PIC X(8) VALUE 'ZPA08049'.
       01  MOD-ZPA08339              PIC X(8) VALUE 'ZPA08339'.
       01  MOD-ZUW06410              PIC X(8) VALUE 'ZUW06410'.
       01  MOD-ZMT07701              PIC X(8) VALUE 'ZMT07701'.
       01  MOD-ZUW06930              PIC X(8) VALUE 'ZUW06930'.
       01  MOD-ZPA08369              PIC X(8) VALUE 'ZPA08369'.
       01  MOD-ZHO08192              PIC X(8) VALUE 'ZHO08192'.
       01  MOD-ZMT08561              PIC X(8) VALUE 'ZMT08561'.
       01  MOD-ZAG08688              PIC X(8) VALUE 'ZAG08688'.
       01  MOD-ZCU07874              PIC X(8) VALUE 'ZCU07874'.
       01  MOD-ZUW06870              PIC X(8) VALUE 'ZUW06870'.
       01  MOD-ZRE08047              PIC X(8) VALUE 'ZRE08047'.
       01  MOD-ZUW08190              PIC X(8) VALUE 'ZUW08190'.
       01  MOD-ZCU07104              PIC X(8) VALUE 'ZCU07104'.
       01  MOD-ZCL07295              PIC X(8) VALUE 'ZCL07295'.
       01  MOD-ZUW06590              PIC X(8) VALUE 'ZUW06590'.
       01  MOD-ZEN08193              PIC X(8) VALUE 'ZEN08193'.
       01  MOD-ZCU07804              PIC X(8) VALUE 'ZCU07804'.
       01  MOD-ZCU07024              PIC X(8) VALUE 'ZCU07024'.
       01  MOD-ZUW08230              PIC X(8) VALUE 'ZUW08230'.
       01  MOD-ZHO06842              PIC X(8) VALUE 'ZHO06842'.
       01  MOD-ZMT07681              PIC X(8) VALUE 'ZMT07681'.
       01  MOD-ZCU08364              PIC X(8) VALUE 'ZCU08364'.
       01  MOD-ZRE08517              PIC X(8) VALUE 'ZRE08517'.
       01  MOD-ZUW08120              PIC X(8) VALUE 'ZUW08120'.
       01  MOD-ZMT08511              PIC X(8) VALUE 'ZMT08511'.
       01  MOD-ZMT07331              PIC X(8) VALUE 'ZMT07331'.
       01  MOD-ZEN06943              PIC X(8) VALUE 'ZEN06943'.
       01  MOD-ZPA07629              PIC X(8) VALUE 'ZPA07629'.
       01  MOD-ZBI08006              PIC X(8) VALUE 'ZBI08006'.
       01  MOD-ZCU08654              PIC X(8) VALUE 'ZCU08654'.
       01  MOD-ZCU07284              PIC X(8) VALUE 'ZCU07284'.
       01  MOD-ZRE06967              PIC X(8) VALUE 'ZRE06967'.
       01  MOD-ZRE07217              PIC X(8) VALUE 'ZRE07217'.
       01  MOD-ZBI08266              PIC X(8) VALUE 'ZBI08266'.
       01  MOD-ZUW06400              PIC X(8) VALUE 'ZUW06400'.
       01  MOD-ZHO08182              PIC X(8) VALUE 'ZHO08182'.
       01  MOD-ZMT08421              PIC X(8) VALUE 'ZMT08421'.
       01  MOD-ZUW06450              PIC X(8) VALUE 'ZUW06450'.
       01  MOD-ZAG07248              PIC X(8) VALUE 'ZAG07248'.
       01  MOD-ZAG07318              PIC X(8) VALUE 'ZAG07318'.
       01  MOD-ZCL07195              PIC X(8) VALUE 'ZCL07195'.
       01  MOD-ZBI07326              PIC X(8) VALUE 'ZBI07326'.
       01  MOD-ZMT07081              PIC X(8) VALUE 'ZMT07081'.
       01  MOD-ZAG07118              PIC X(8) VALUE 'ZAG07118'.
       01  MOD-ZHO07152              PIC X(8) VALUE 'ZHO07152'.
       01  MOD-ZAG08178              PIC X(8) VALUE 'ZAG08178'.
       01  MOD-ZCL07115              PIC X(8) VALUE 'ZCL07115'.
       01  MOD-ZCU08154              PIC X(8) VALUE 'ZCU08154'.
       01  MOD-ZCU07924              PIC X(8) VALUE 'ZCU07924'.
       01  MOD-ZAG06798              PIC X(8) VALUE 'ZAG06798'.
       01  MOD-ZRE06427              PIC X(8) VALUE 'ZRE06427'.
       01  MOD-ZBI07216              PIC X(8) VALUE 'ZBI07216'.
       01  MOD-ZAG06598              PIC X(8) VALUE 'ZAG06598'.
       01  MOD-ZHO07692              PIC X(8) VALUE 'ZHO07692'.
       01  MOD-ZAG08578              PIC X(8) VALUE 'ZAG08578'.
       01  MOD-ZCU07894              PIC X(8) VALUE 'ZCU07894'.
       01  MOD-ZAG06508              PIC X(8) VALUE 'ZAG06508'.
       01  MOD-ZAG07368              PIC X(8) VALUE 'ZAG07368'.
       01  MOD-ZMT07541              PIC X(8) VALUE 'ZMT07541'.
       01  MOD-ZEN08603              PIC X(8) VALUE 'ZEN08603'.
       01  MOD-ZMT07951              PIC X(8) VALUE 'ZMT07951'.
       01  MOD-ZHO07142              PIC X(8) VALUE 'ZHO07142'.
       01  MOD-ZBI07006              PIC X(8) VALUE 'ZBI07006'.
       01  MOD-ZBI06676              PIC X(8) VALUE 'ZBI06676'.
       01  MOD-ZEN06503              PIC X(8) VALUE 'ZEN06503'.
       01  MOD-ZHO06812              PIC X(8) VALUE 'ZHO06812'.
       01  MOD-ZHO07812              PIC X(8) VALUE 'ZHO07812'.
       01  MOD-ZCL08095              PIC X(8) VALUE 'ZCL08095'.
       01  MOD-ZHO08302              PIC X(8) VALUE 'ZHO08302'.
       01  MOD-ZRE06927              PIC X(8) VALUE 'ZRE06927'.
       01  MOD-ZCL07955              PIC X(8) VALUE 'ZCL07955'.
       01  MOD-ZMT07511              PIC X(8) VALUE 'ZMT07511'.
       01  MOD-ZCU07074              PIC X(8) VALUE 'ZCU07074'.
       01  MOD-ZCL07275              PIC X(8) VALUE 'ZCL07275'.
       01  MOD-ZMT07551              PIC X(8) VALUE 'ZMT07551'.
       01  MOD-ZMT07231              PIC X(8) VALUE 'ZMT07231'.
       01  MOD-ZCU06854              PIC X(8) VALUE 'ZCU06854'.
       01  MOD-ZMT06591              PIC X(8) VALUE 'ZMT06591'.
       01  MOD-ZUW07070              PIC X(8) VALUE 'ZUW07070'.
       01  MOD-ZUW08320              PIC X(8) VALUE 'ZUW08320'.
       01  MOD-ZEN06523              PIC X(8) VALUE 'ZEN06523'.
       01  MOD-ZEN07243              PIC X(8) VALUE 'ZEN07243'.
       01  MOD-ZRE08337              PIC X(8) VALUE 'ZRE08337'.
       01  MOD-ZMT07991              PIC X(8) VALUE 'ZMT07991'.
       01  MOD-ZAG06948              PIC X(8) VALUE 'ZAG06948'.
       01  MOD-ZBI08566              PIC X(8) VALUE 'ZBI08566'.
       01  MOD-ZEN06543              PIC X(8) VALUE 'ZEN06543'.
       01  MOD-ZCU08314              PIC X(8) VALUE 'ZCU08314'.
       01  MOD-ZAG07308              PIC X(8) VALUE 'ZAG07308'.
       01  MOD-ZUW07400              PIC X(8) VALUE 'ZUW07400'.
       01  MOD-ZPA08529              PIC X(8) VALUE 'ZPA08529'.
       01  MOD-ZAG08448              PIC X(8) VALUE 'ZAG08448'.
       01  MOD-ZAG06368              PIC X(8) VALUE 'ZAG06368'.
       01  MOD-ZCU07344              PIC X(8) VALUE 'ZCU07344'.
       01  MOD-ZMT08491              PIC X(8) VALUE 'ZMT08491'.
       01  MOD-ZBI07076              PIC X(8) VALUE 'ZBI07076'.
       01  MOD-ZAG07538              PIC X(8) VALUE 'ZAG07538'.
       01  MOD-ZCL07505              PIC X(8) VALUE 'ZCL07505'.
       01  MOD-ZAG06748              PIC X(8) VALUE 'ZAG06748'.
       01  MOD-ZRE08417              PIC X(8) VALUE 'ZRE08417'.
       01  MOD-ZRE07157              PIC X(8) VALUE 'ZRE07157'.
       01  MOD-ZPA07379              PIC X(8) VALUE 'ZPA07379'.
       01  MOD-ZMT06791              PIC X(8) VALUE 'ZMT06791'.
       01  MOD-ZBI06416              PIC X(8) VALUE 'ZBI06416'.
       01  MOD-ZAG07178              PIC X(8) VALUE 'ZAG07178'.
       01  MOD-ZRE08197              PIC X(8) VALUE 'ZRE08197'.
       01  MOD-ZCL07365              PIC X(8) VALUE 'ZCL07365'.
       01  MOD-ZMT06511              PIC X(8) VALUE 'ZMT06511'.
       01  MOD-ZCL07135              PIC X(8) VALUE 'ZCL07135'.
       01  MOD-ZCL06715              PIC X(8) VALUE 'ZCL06715'.
       01  MOD-ZAG07518              PIC X(8) VALUE 'ZAG07518'.
       01  MOD-ZUW07310              PIC X(8) VALUE 'ZUW07310'.
       01  MOD-ZPA06679              PIC X(8) VALUE 'ZPA06679'.
       01  MOD-ZCL07535              PIC X(8) VALUE 'ZCL07535'.
       01  MOD-ZRE06597              PIC X(8) VALUE 'ZRE06597'.
       01  MOD-ZMT06761              PIC X(8) VALUE 'ZMT06761'.
       01  MOD-ZEN08653              PIC X(8) VALUE 'ZEN08653'.
       01  MOD-ZMT06661              PIC X(8) VALUE 'ZMT06661'.
       01  MOD-ZCL06775              PIC X(8) VALUE 'ZCL06775'.
       01  MOD-ZBI07506              PIC X(8) VALUE 'ZBI07506'.
       01  MOD-ZEN08413              PIC X(8) VALUE 'ZEN08413'.
       01  MOD-ZEN06553              PIC X(8) VALUE 'ZEN06553'.
       01  MOD-ZRE07597              PIC X(8) VALUE 'ZRE07597'.
       01  MOD-ZRE07807              PIC X(8) VALUE 'ZRE07807'.
       01  MOD-ZBI07956              PIC X(8) VALUE 'ZBI07956'.
       01  MOD-ZPA07199              PIC X(8) VALUE 'ZPA07199'.
       01  MOD-ZHO06802              PIC X(8) VALUE 'ZHO06802'.
       01  MOD-ZBI06356              PIC X(8) VALUE 'ZBI06356'.
       01  MOD-ZBI07906              PIC X(8) VALUE 'ZBI07906'.

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
                  EXEC CICS ABEND ABCODE('LGCA')
                            NODUMP END-EXEC
               END-IF.
               MOVE EIBCALEN TO WS-CALEN.
               SET WS-ADDR-COMMAREA TO ADDRESS OF DFHCOMMAREA.
               PERFORM CALL-ZRE06517-001.
               PERFORM CALL-ZMT08551-002.
               PERFORM CALL-ZPA07759-003.
               PERFORM CALL-ZMT08371-004.
               PERFORM CALL-ZHO07042-005.
               PERFORM CALL-ZCL07815-006.
               PERFORM CALL-ZHO07702-007.
               PERFORM CALL-ZUW08400-008.
               PERFORM CALL-ZCU06824-009.
               PERFORM CALL-ZMT07741-010.
               PERFORM CALL-ZBI06606-011.
               PERFORM CALL-ZEN06353-012.
               PERFORM CALL-ZEN06433-013.
               PERFORM CALL-ZAG07688-014.
               PERFORM CALL-ZCU08034-015.
               PERFORM CALL-ZCL07925-018.
               PERFORM CALL-ZAG06678-019.
               PERFORM CALL-ZBI06546-020.
               PERFORM CALL-ZBI06826-021.
               PERFORM CALL-ZEN07073-025.
               PERFORM CALL-ZHO06552-026.
               PERFORM CALL-ZCU07254-027.
               PERFORM CALL-ZUW06600-028.
               PERFORM CALL-ZUW07430-029.
               PERFORM CALL-ZBI06616-030.
               PERFORM CALL-ZAG07768-031.
               PERFORM CALL-ZCL08495-033.
               PERFORM CALL-ZAG08458-034.
               PERFORM CALL-ZPA06349-035.
               PERFORM CALL-ZMT06411-036.
               PERFORM CALL-ZAG06468-037.
               PERFORM CALL-ZRE07317-038.
               PERFORM CALL-ZUW06360-039.
               PERFORM CALL-ZMT08471-040.
               PERFORM CALL-ZCU08594-041.
               PERFORM CALL-ZBI08226-042.
               PERFORM CALL-ZHO06372-043.
               PERFORM CALL-ZMT07881-044.
               PERFORM CALL-ZAG07058-045.
               PERFORM CALL-ZBI07396-046.
               PERFORM CALL-ZBI08216-047.
               PERFORM CALL-ZCU07424-048.
               PERFORM CALL-ZUW07220-049.
               PERFORM CALL-ZCU07884-050.
               PERFORM CALL-ZEN08033-051.
               PERFORM CALL-ZMT06821-052.
               PERFORM CALL-ZPA08549-053.
               PERFORM CALL-ZUW07780-054.
               PERFORM CALL-ZBI07416-055.
               PERFORM CALL-ZAG07928-056.
               PERFORM CALL-ZMT06471-057.
               PERFORM CALL-ZEN06793-058.
               PERFORM CALL-ZHO07992-059.
               PERFORM CALL-ZMT07141-060.
               PERFORM CALL-ZAG07748-061.
               PERFORM CALL-ZRE07387-062.
               PERFORM CALL-ZEN07403-063.
               PERFORM CALL-ZUW06520-064.
               PERFORM CALL-ZAG07498-065.
               PERFORM CALL-ZAG08548-066.
               PERFORM CALL-ZEN07423-067.
               PERFORM CALL-ZEN07053-068.
               PERFORM CALL-ZRE06777-070.
               PERFORM CALL-ZAG06898-071.
               PERFORM CALL-ZRE07227-072.
               PERFORM CALL-ZEN07273-073.
               PERFORM CALL-ZCL07885-074.
               PERFORM CALL-ZPA06979-075.
               PERFORM CALL-ZEN07003-076.
               PERFORM CALL-ZCL06655-077.
               PERFORM CALL-ZRE07417-078.
               PERFORM CALL-ZPA07969-079.
               PERFORM CALL-ZEN06653-080.
               PERFORM CALL-ZRE07567-081.
               PERFORM CALL-ZUW08200-082.
               PERFORM CALL-ZCU07204-083.
               PERFORM CALL-ZEN06463-084.
               PERFORM CALL-ZHO07092-085.
               PERFORM CALL-ZCL08225-086.
               PERFORM CALL-ZHO06592-087.
               PERFORM CALL-ZUW08220-088.
               PERFORM CALL-ZCU06304-089.
               PERFORM CALL-ZEN08313-090.
               PERFORM CALL-ZEN07613-091.
               PERFORM CALL-ZBI08176-092.
               PERFORM CALL-ZRE06757-093.
               PERFORM CALL-ZAG06958-094.
               PERFORM CALL-ZCU08134-095.
               PERFORM CALL-ZRE06497-096.
               PERFORM CALL-ZHO06972-097.
               PERFORM CALL-ZHO07022-099.
               PERFORM CALL-ZCL07745-100.
               PERFORM CALL-ZUW08180-101.
               PERFORM CALL-ZUW07260-102.
               PERFORM CALL-ZHO07222-103.
               PERFORM CALL-ZBI08186-104.
               PERFORM CALL-ZHO06692-105.
               PERFORM CALL-ZBI07296-106.
               PERFORM CALL-ZCL08415-107.
               PERFORM CALL-ZBI06836-108.
               PERFORM CALL-ZRE08487-109.
               PERFORM CALL-ZCU06644-110.
               PERFORM CALL-ZCU07474-111.
               PERFORM CALL-ZAG06528-112.
               PERFORM CALL-ZUW07110-113.
               PERFORM CALL-ZEN08083-114.
               PERFORM CALL-ZUW07190-115.
               PERFORM CALL-ZBI08436-116.
               PERFORM CALL-ZCU06704-117.
               PERFORM CALL-ZCU07744-118.
               PERFORM CALL-ZMT07481-119.
               PERFORM CALL-ZCL08635-120.
               PERFORM CALL-ZRE08157-121.
               PERFORM CALL-ZPA06499-123.
               PERFORM CALL-ZCL08445-124.
               PERFORM CALL-ZEN06483-125.
               PERFORM CALL-ZCU08254-126.
               PERFORM CALL-ZRE07757-127.
               PERFORM CALL-ZEN07033-128.
               PERFORM CALL-ZMT06301-129.
               PERFORM CALL-ZRE08317-130.
               PERFORM CALL-ZHO06342-131.
               PERFORM CALL-ZPA08589-132.
               PERFORM CALL-ZUW07390-133.
               PERFORM CALL-ZPA08669-134.
               PERFORM CALL-ZCU07234-135.
               PERFORM CALL-ZRE08127-136.
               PERFORM CALL-ZEN07433-137.
               PERFORM CALL-ZCL07065-138.
               PERFORM CALL-ZUW06830-139.
               PERFORM CALL-ZRE07437-140.
               PERFORM CALL-ZCU07824-141.
               PERFORM CALL-ZAG08078-143.
               PERFORM CALL-ZPA07309-144.
               PERFORM CALL-ZPA07619-145.
               PERFORM CALL-ZPA07569-146.
               PERFORM CALL-ZUW07740-147.
               PERFORM CALL-ZRE07707-148.
               PERFORM CALL-ZCU06734-149.
               PERFORM CALL-ZCU06964-150.
               PERFORM CALL-ZCL06485-151.
               PERFORM CALL-ZCL08385-152.
               PERFORM CALL-ZRE07837-154.
               PERFORM CALL-ZUW07120-155.
               PERFORM CALL-ZUW08260-156.
               PERFORM CALL-ZEN07293-157.
               PERFORM CALL-ZMT07961-158.
               PERFORM CALL-ZBI07186-159.
               PERFORM CALL-ZUW06720-160.
               PERFORM CALL-ZEN06733-161.
               PERFORM CALL-ZHO07642-162.
               PERFORM CALL-ZHO06942-163.
               PERFORM CALL-ZMT07971-164.
               PERFORM CALL-ZPA08219-165.
               PERFORM CALL-ZEN08333-167.
               PERFORM CALL-ZCL07025-168.
               PERFORM CALL-ZBI07626-169.
               PERFORM CALL-ZRE07087-170.
               PERFORM CALL-ZPA08049-171.
               PERFORM CALL-ZUW06410-173.
               PERFORM CALL-ZMT07701-174.
               PERFORM CALL-ZUW06930-175.
               PERFORM CALL-ZPA08369-176.
               PERFORM CALL-ZHO08192-177.
               PERFORM CALL-ZAG08688-179.
               PERFORM CALL-ZCU07874-180.
               PERFORM CALL-ZUW06870-181.
               PERFORM CALL-ZRE08047-182.
               PERFORM CALL-ZUW08190-183.
               PERFORM CALL-ZCU07104-184.
               PERFORM CALL-ZUW06590-186.
               PERFORM CALL-ZEN08193-187.
               PERFORM CALL-ZCU07804-188.
               PERFORM CALL-ZCU07024-189.
               PERFORM CALL-ZUW08230-190.
               PERFORM CALL-ZHO06842-191.
               PERFORM CALL-ZCU08364-193.
               PERFORM CALL-ZRE08517-194.
               PERFORM CALL-ZUW08120-195.
               PERFORM CALL-ZMT08511-196.
               PERFORM CALL-ZMT07331-197.
               PERFORM CALL-ZEN06943-198.
               PERFORM CALL-ZPA07629-199.
               PERFORM CALL-ZBI08006-200.
               PERFORM CALL-ZCU08654-201.
               PERFORM CALL-ZCU07284-202.
               PERFORM CALL-ZRE06967-203.
               PERFORM CALL-ZRE07217-204.
               PERFORM CALL-ZBI08266-205.
               PERFORM CALL-ZUW06400-206.
               PERFORM CALL-ZHO08182-207.
               PERFORM CALL-ZMT08421-208.
               PERFORM CALL-ZUW06450-209.
               PERFORM CALL-ZAG07248-210.
               PERFORM CALL-ZAG07318-211.
               PERFORM CALL-ZCL07195-212.
               PERFORM CALL-ZBI07326-213.
               PERFORM CALL-ZMT07081-214.
               PERFORM CALL-ZAG07118-215.
               PERFORM CALL-ZHO07152-216.
               PERFORM CALL-ZAG08178-217.
               PERFORM CALL-ZCL07115-218.
               PERFORM CALL-ZCU08154-219.
               PERFORM CALL-ZCU07924-220.
               PERFORM CALL-ZAG06798-221.
               PERFORM CALL-ZRE06427-222.
               PERFORM CALL-ZBI07216-223.
               PERFORM CALL-ZAG06598-224.
               PERFORM CALL-ZAG08578-226.
               PERFORM CALL-ZCU07894-227.
               PERFORM CALL-ZAG07368-229.
               PERFORM CALL-ZMT07541-230.
               PERFORM CALL-ZEN08603-231.
               PERFORM CALL-ZMT07951-232.
               PERFORM CALL-ZHO07142-233.
               PERFORM CALL-ZBI07006-234.
               PERFORM CALL-ZBI06676-235.
               PERFORM CALL-ZEN06503-236.
               PERFORM CALL-ZHO06812-237.
               PERFORM CALL-ZHO07812-238.
               PERFORM CALL-ZCL08095-239.
               PERFORM CALL-ZHO08302-240.
               PERFORM CALL-ZRE06927-241.
               PERFORM CALL-ZMT07511-243.
               PERFORM CALL-ZCU07074-244.
               PERFORM CALL-ZCL07275-245.
               PERFORM CALL-ZMT07551-246.
               PERFORM CALL-ZMT07231-247.
               PERFORM CALL-ZMT06591-249.
               PERFORM CALL-ZUW07070-250.
               PERFORM CALL-ZUW08320-251.
               PERFORM CALL-ZEN06523-252.
               PERFORM CALL-ZEN07243-253.
               PERFORM CALL-ZRE08337-254.
               PERFORM CALL-ZMT07991-255.
               PERFORM CALL-ZAG06948-256.
               PERFORM CALL-ZEN06543-258.
               PERFORM CALL-ZCU08314-259.
               PERFORM CALL-ZAG07308-260.
               PERFORM CALL-ZUW07400-261.
               PERFORM CALL-ZPA08529-262.
               PERFORM CALL-ZAG08448-263.
               PERFORM CALL-ZAG06368-264.
               PERFORM CALL-ZCU07344-265.
               PERFORM CALL-ZMT08491-266.
               PERFORM CALL-ZBI07076-267.
               PERFORM CALL-ZAG07538-268.
               PERFORM CALL-ZCL07505-269.
               PERFORM CALL-ZAG06748-270.
               PERFORM CALL-ZRE08417-271.
               PERFORM CALL-ZRE07157-272.
               PERFORM CALL-ZPA07379-273.
               PERFORM CALL-ZMT06791-274.
               PERFORM CALL-ZBI06416-275.
               PERFORM CALL-ZAG07178-276.
               PERFORM CALL-ZRE08197-277.
               PERFORM CALL-ZCL07365-278.
               PERFORM CALL-ZMT06511-279.
               PERFORM CALL-ZCL07135-280.
               PERFORM CALL-ZCL06715-281.
               PERFORM CALL-ZAG07518-282.
               PERFORM CALL-ZPA06679-284.
               PERFORM CALL-ZCL07535-285.
               PERFORM CALL-ZRE06597-286.
               PERFORM CALL-ZMT06761-287.
               PERFORM CALL-ZEN08653-288.
               PERFORM CALL-ZMT06661-289.
               PERFORM CALL-ZCL06775-290.
               PERFORM CALL-ZBI07506-291.
               PERFORM CALL-ZEN06553-293.
               PERFORM CALL-ZRE07597-294.
               PERFORM CALL-ZRE07807-295.
               PERFORM CALL-ZBI07956-296.
               PERFORM CALL-ZHO06802-298.
               PERFORM CALL-ZBI06356-299.
               PERFORM CALL-ZBI07906-300.
               EXEC CICS RETURN END-EXEC.
      *----------------------------------------------------------------*
       CALL-ZRE06517-001.
               CALL 'ZRE06517' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06517 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08551-002.
               CALL 'ZMT08551' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08551 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07759-003.
               CALL 'ZPA07759' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07759 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08371-004.
               CALL 'ZMT08371' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08371 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07042-005.
               CALL 'ZHO07042' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07042 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07815-006.
               CALL 'ZCL07815' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07815 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07702-007.
               CALL 'ZHO07702' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07702 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08400-008.
               CALL 'ZUW08400' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08400 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06824-009.
               CALL 'ZCU06824' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06824 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07741-010.
               CALL 'ZMT07741' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07741 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06606-011.
               CALL 'ZBI06606' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06606 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06353-012.
               CALL 'ZEN06353' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06353 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06433-013.
               CALL 'ZEN06433' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06433 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07688-014.
               CALL 'ZAG07688' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07688 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08034-015.
               CALL 'ZCU08034' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08034 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08682-016.
               CALL 'ZHO08682' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08682 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06868-017.
               CALL 'ZAG06868' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06868 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07925-018.
               CALL 'ZCL07925' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07925 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06678-019.
               CALL 'ZAG06678' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06678 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06546-020.
               CALL 'ZBI06546' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06546 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06826-021.
               CALL 'ZBI06826' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06826 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07661-022.
               CALL 'ZMT07661' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07661 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07577-023.
               CALL 'ZRE07577' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07577 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06758-024.
               CALL 'ZAG06758' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06758 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07073-025.
               CALL 'ZEN07073' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07073 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06552-026.
               CALL 'ZHO06552' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06552 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07254-027.
               CALL 'ZCU07254' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07254 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06600-028.
               CALL 'ZUW06600' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06600 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07430-029.
               CALL 'ZUW07430' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07430 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06616-030.
               CALL 'ZBI06616' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06616 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07768-031.
               CALL 'ZAG07768' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07768 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06330-032.
               CALL 'ZUW06330' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06330 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08495-033.
               CALL 'ZCL08495' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08495 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08458-034.
               CALL 'ZAG08458' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08458 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06349-035.
               CALL 'ZPA06349' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06349 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06411-036.
               CALL 'ZMT06411' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06411 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06468-037.
               CALL 'ZAG06468' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06468 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07317-038.
               CALL 'ZRE07317' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07317 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06360-039.
               CALL 'ZUW06360' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06360 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08471-040.
               CALL 'ZMT08471' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08471 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08594-041.
               CALL 'ZCU08594' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08594 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08226-042.
               CALL 'ZBI08226' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08226 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06372-043.
               CALL 'ZHO06372' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06372 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07881-044.
               CALL 'ZMT07881' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07881 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07058-045.
               CALL 'ZAG07058' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07058 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07396-046.
               CALL 'ZBI07396' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07396 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08216-047.
               CALL 'ZBI08216' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08216 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07424-048.
               CALL 'ZCU07424' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07424 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07220-049.
               CALL 'ZUW07220' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07220 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07884-050.
               CALL 'ZCU07884' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07884 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08033-051.
               CALL 'ZEN08033' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08033 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06821-052.
               CALL 'ZMT06821' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06821 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08549-053.
               CALL 'ZPA08549' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08549 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07780-054.
               CALL 'ZUW07780' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07780 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07416-055.
               CALL 'ZBI07416' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07416 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07928-056.
               CALL 'ZAG07928' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07928 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06471-057.
               CALL 'ZMT06471' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06471 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06793-058.
               CALL 'ZEN06793' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06793 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07992-059.
               CALL 'ZHO07992' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07992 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07141-060.
               CALL 'ZMT07141' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07141 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07748-061.
               CALL 'ZAG07748' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07748 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07387-062.
               CALL 'ZRE07387' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07387 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07403-063.
               CALL 'ZEN07403' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07403 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06520-064.
               CALL 'ZUW06520' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06520 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07498-065.
               CALL 'ZAG07498' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07498 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08548-066.
               CALL 'ZAG08548' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08548 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07423-067.
               CALL 'ZEN07423' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07423 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07053-068.
               CALL 'ZEN07053' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07053 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06998-069.
               CALL 'ZAG06998' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06998 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06777-070.
               CALL 'ZRE06777' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06777 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06898-071.
               CALL 'ZAG06898' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06898 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07227-072.
               CALL 'ZRE07227' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07227 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07273-073.
               CALL 'ZEN07273' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07273 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07885-074.
               CALL 'ZCL07885' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07885 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06979-075.
               CALL 'ZPA06979' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06979 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07003-076.
               CALL 'ZEN07003' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07003 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06655-077.
               CALL 'ZCL06655' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06655 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07417-078.
               CALL 'ZRE07417' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07417 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07969-079.
               CALL 'ZPA07969' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07969 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06653-080.
               CALL 'ZEN06653' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06653 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07567-081.
               CALL 'ZRE07567' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07567 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08200-082.
               CALL 'ZUW08200' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08200 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07204-083.
               CALL 'ZCU07204' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07204 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06463-084.
               CALL 'ZEN06463' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06463 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07092-085.
               CALL 'ZHO07092' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07092 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08225-086.
               CALL 'ZCL08225' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08225 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06592-087.
               CALL 'ZHO06592' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06592 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08220-088.
               CALL 'ZUW08220' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08220 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06304-089.
               CALL 'ZCU06304' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06304 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08313-090.
               CALL 'ZEN08313' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08313 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07613-091.
               CALL 'ZEN07613' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07613 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08176-092.
               CALL 'ZBI08176' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08176 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06757-093.
               CALL 'ZRE06757' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06757 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06958-094.
               CALL 'ZAG06958' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06958 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08134-095.
               CALL 'ZCU08134' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08134 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06497-096.
               CALL 'ZRE06497' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06497 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06972-097.
               CALL 'ZHO06972' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06972 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08553-098.
               CALL 'ZEN08553' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08553 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07022-099.
               CALL 'ZHO07022' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07022 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07745-100.
               CALL 'ZCL07745' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07745 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08180-101.
               CALL 'ZUW08180' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08180 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07260-102.
               CALL 'ZUW07260' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07260 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07222-103.
               CALL 'ZHO07222' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07222 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08186-104.
               CALL 'ZBI08186' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08186 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06692-105.
               CALL 'ZHO06692' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06692 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07296-106.
               CALL 'ZBI07296' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07296 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08415-107.
               CALL 'ZCL08415' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08415 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06836-108.
               CALL 'ZBI06836' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06836 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08487-109.
               CALL 'ZRE08487' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08487 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06644-110.
               CALL 'ZCU06644' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06644 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07474-111.
               CALL 'ZCU07474' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07474 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06528-112.
               CALL 'ZAG06528' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06528 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07110-113.
               CALL 'ZUW07110' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07110 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08083-114.
               CALL 'ZEN08083' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08083 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07190-115.
               CALL 'ZUW07190' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07190 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08436-116.
               CALL 'ZBI08436' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08436 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06704-117.
               CALL 'ZCU06704' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06704 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07744-118.
               CALL 'ZCU07744' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07744 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07481-119.
               CALL 'ZMT07481' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07481 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08635-120.
               CALL 'ZCL08635' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08635 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08157-121.
               CALL 'ZRE08157' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08157 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07850-122.
               CALL 'ZUW07850' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07850 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06499-123.
               CALL 'ZPA06499' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06499 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08445-124.
               CALL 'ZCL08445' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08445 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06483-125.
               CALL 'ZEN06483' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06483 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08254-126.
               CALL 'ZCU08254' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08254 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07757-127.
               CALL 'ZRE07757' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07757 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07033-128.
               CALL 'ZEN07033' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07033 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06301-129.
               CALL 'ZMT06301' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06301 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08317-130.
               CALL 'ZRE08317' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08317 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06342-131.
               CALL 'ZHO06342' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06342 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08589-132.
               CALL 'ZPA08589' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08589 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07390-133.
               CALL 'ZUW07390' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07390 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08669-134.
               CALL 'ZPA08669' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08669 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07234-135.
               CALL 'ZCU07234' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07234 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08127-136.
               CALL 'ZRE08127' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08127 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07433-137.
               CALL 'ZEN07433' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07433 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07065-138.
               CALL 'ZCL07065' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07065 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06830-139.
               CALL 'ZUW06830' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06830 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07437-140.
               CALL 'ZRE07437' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07437 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07824-141.
               CALL 'ZCU07824' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07824 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08028-142.
               CALL 'ZAG08028' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08028 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08078-143.
               CALL 'ZAG08078' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08078 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07309-144.
               CALL 'ZPA07309' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07309 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07619-145.
               CALL 'ZPA07619' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07619 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07569-146.
               CALL 'ZPA07569' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07569 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07740-147.
               CALL 'ZUW07740' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07740 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07707-148.
               CALL 'ZRE07707' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07707 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06734-149.
               CALL 'ZCU06734' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06734 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06964-150.
               CALL 'ZCU06964' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06964 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06485-151.
               CALL 'ZCL06485' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06485 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08385-152.
               CALL 'ZCL08385' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08385 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08538-153.
               CALL 'ZAG08538' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08538 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07837-154.
               CALL 'ZRE07837' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07837 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07120-155.
               CALL 'ZUW07120' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07120 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08260-156.
               CALL 'ZUW08260' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08260 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07293-157.
               CALL 'ZEN07293' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07293 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07961-158.
               CALL 'ZMT07961' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07961 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07186-159.
               CALL 'ZBI07186' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07186 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06720-160.
               CALL 'ZUW06720' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06720 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06733-161.
               CALL 'ZEN06733' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06733 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07642-162.
               CALL 'ZHO07642' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07642 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06942-163.
               CALL 'ZHO06942' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06942 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07971-164.
               CALL 'ZMT07971' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07971 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08219-165.
               CALL 'ZPA08219' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08219 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07932-166.
               CALL 'ZHO07932' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07932 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08333-167.
               CALL 'ZEN08333' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08333 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07025-168.
               CALL 'ZCL07025' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07025 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07626-169.
               CALL 'ZBI07626' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07626 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07087-170.
               CALL 'ZRE07087' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07087 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08049-171.
               CALL 'ZPA08049' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08049 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08339-172.
               CALL 'ZPA08339' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08339 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06410-173.
               CALL 'ZUW06410' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06410 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07701-174.
               CALL 'ZMT07701' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07701 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06930-175.
               CALL 'ZUW06930' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06930 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08369-176.
               CALL 'ZPA08369' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08369 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08192-177.
               CALL 'ZHO08192' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08192 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08561-178.
               CALL 'ZMT08561' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08561 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08688-179.
               CALL 'ZAG08688' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08688 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07874-180.
               CALL 'ZCU07874' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07874 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06870-181.
               CALL 'ZUW06870' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06870 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08047-182.
               CALL 'ZRE08047' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08047 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08190-183.
               CALL 'ZUW08190' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08190 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07104-184.
               CALL 'ZCU07104' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07104 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07295-185.
               CALL 'ZCL07295' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07295 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06590-186.
               CALL 'ZUW06590' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06590 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08193-187.
               CALL 'ZEN08193' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08193 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07804-188.
               CALL 'ZCU07804' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07804 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07024-189.
               CALL 'ZCU07024' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07024 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08230-190.
               CALL 'ZUW08230' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08230 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06842-191.
               CALL 'ZHO06842' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06842 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07681-192.
               CALL 'ZMT07681' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07681 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08364-193.
               CALL 'ZCU08364' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08364 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08517-194.
               CALL 'ZRE08517' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08517 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08120-195.
               CALL 'ZUW08120' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08120 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08511-196.
               CALL 'ZMT08511' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08511 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07331-197.
               CALL 'ZMT07331' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07331 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06943-198.
               CALL 'ZEN06943' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06943 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07629-199.
               CALL 'ZPA07629' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07629 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08006-200.
               CALL 'ZBI08006' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08006 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08654-201.
               CALL 'ZCU08654' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08654 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07284-202.
               CALL 'ZCU07284' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07284 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06967-203.
               CALL 'ZRE06967' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06967 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07217-204.
               CALL 'ZRE07217' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07217 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08266-205.
               CALL 'ZBI08266' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08266 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06400-206.
               CALL 'ZUW06400' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06400 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08182-207.
               CALL 'ZHO08182' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08182 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08421-208.
               CALL 'ZMT08421' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08421 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW06450-209.
               CALL 'ZUW06450' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW06450 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07248-210.
               CALL 'ZAG07248' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07248 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07318-211.
               CALL 'ZAG07318' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07318 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07195-212.
               CALL 'ZCL07195' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07195 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07326-213.
               CALL 'ZBI07326' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07326 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07081-214.
               CALL 'ZMT07081' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07081 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07118-215.
               CALL 'ZAG07118' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07118 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07152-216.
               CALL 'ZHO07152' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07152 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08178-217.
               CALL 'ZAG08178' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08178 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07115-218.
               CALL 'ZCL07115' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07115 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08154-219.
               CALL 'ZCU08154' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08154 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07924-220.
               CALL 'ZCU07924' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07924 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06798-221.
               CALL 'ZAG06798' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06798 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06427-222.
               CALL 'ZRE06427' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06427 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07216-223.
               CALL 'ZBI07216' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07216 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06598-224.
               CALL 'ZAG06598' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06598 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07692-225.
               CALL 'ZHO07692' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07692 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08578-226.
               CALL 'ZAG08578' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08578 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07894-227.
               CALL 'ZCU07894' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07894 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06508-228.
               CALL 'ZAG06508' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06508 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07368-229.
               CALL 'ZAG07368' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07368 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07541-230.
               CALL 'ZMT07541' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07541 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08603-231.
               CALL 'ZEN08603' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08603 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07951-232.
               CALL 'ZMT07951' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07951 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07142-233.
               CALL 'ZHO07142' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07142 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07006-234.
               CALL 'ZBI07006' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07006 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06676-235.
               CALL 'ZBI06676' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06676 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06503-236.
               CALL 'ZEN06503' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06503 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06812-237.
               CALL 'ZHO06812' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06812 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO07812-238.
               CALL 'ZHO07812' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO07812 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL08095-239.
               CALL 'ZCL08095' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL08095 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO08302-240.
               CALL 'ZHO08302' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO08302 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06927-241.
               CALL 'ZRE06927' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06927 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07955-242.
               CALL 'ZCL07955' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07955 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07511-243.
               CALL 'ZMT07511' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07511 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07074-244.
               CALL 'ZCU07074' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07074 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07275-245.
               CALL 'ZCL07275' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07275 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07551-246.
               CALL 'ZMT07551' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07551 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07231-247.
               CALL 'ZMT07231' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07231 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU06854-248.
               CALL 'ZCU06854' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU06854 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06591-249.
               CALL 'ZMT06591' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06591 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07070-250.
               CALL 'ZUW07070' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07070 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW08320-251.
               CALL 'ZUW08320' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW08320 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06523-252.
               CALL 'ZEN06523' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06523 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN07243-253.
               CALL 'ZEN07243' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN07243 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08337-254.
               CALL 'ZRE08337' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08337 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT07991-255.
               CALL 'ZMT07991' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT07991 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06948-256.
               CALL 'ZAG06948' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06948 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI08566-257.
               CALL 'ZBI08566' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI08566 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06543-258.
               CALL 'ZEN06543' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06543 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU08314-259.
               CALL 'ZCU08314' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU08314 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07308-260.
               CALL 'ZAG07308' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07308 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07400-261.
               CALL 'ZUW07400' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07400 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA08529-262.
               CALL 'ZPA08529' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA08529 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG08448-263.
               CALL 'ZAG08448' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG08448 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06368-264.
               CALL 'ZAG06368' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06368 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCU07344-265.
               CALL 'ZCU07344' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCU07344 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT08491-266.
               CALL 'ZMT08491' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT08491 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07076-267.
               CALL 'ZBI07076' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07076 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07538-268.
               CALL 'ZAG07538' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07538 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07505-269.
               CALL 'ZCL07505' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07505 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG06748-270.
               CALL 'ZAG06748' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG06748 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08417-271.
               CALL 'ZRE08417' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08417 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07157-272.
               CALL 'ZRE07157' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07157 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07379-273.
               CALL 'ZPA07379' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07379 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06791-274.
               CALL 'ZMT06791' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06791 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06416-275.
               CALL 'ZBI06416' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06416 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07178-276.
               CALL 'ZAG07178' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07178 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE08197-277.
               CALL 'ZRE08197' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE08197 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07365-278.
               CALL 'ZCL07365' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07365 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06511-279.
               CALL 'ZMT06511' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06511 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07135-280.
               CALL 'ZCL07135' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07135 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06715-281.
               CALL 'ZCL06715' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06715 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZAG07518-282.
               CALL 'ZAG07518' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZAG07518 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZUW07310-283.
               CALL 'ZUW07310' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZUW07310 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA06679-284.
               CALL 'ZPA06679' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA06679 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL07535-285.
               CALL 'ZCL07535' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL07535 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE06597-286.
               CALL 'ZRE06597' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE06597 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06761-287.
               CALL 'ZMT06761' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06761 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08653-288.
               CALL 'ZEN08653' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08653 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZMT06661-289.
               CALL 'ZMT06661' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZMT06661 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZCL06775-290.
               CALL 'ZCL06775' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZCL06775 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07506-291.
               CALL 'ZBI07506' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07506 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN08413-292.
               CALL 'ZEN08413' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN08413 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZEN06553-293.
               CALL 'ZEN06553' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZEN06553 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07597-294.
               CALL 'ZRE07597' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07597 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZRE07807-295.
               CALL 'ZRE07807' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZRE07807 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07956-296.
               CALL 'ZBI07956' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07956 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZPA07199-297.
               CALL 'ZPA07199' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZPA07199 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZHO06802-298.
               CALL 'ZHO06802' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZHO06802 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI06356-299.
               CALL 'ZBI06356' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI06356 FAILED' TO EM-VARIABLE
                  PERFORM WRITE-ERROR-MESSAGE
               END-IF.
      *----------------------------------------------------------------*
       CALL-ZBI07906-300.
               CALL 'ZBI07906' USING DFHCOMMAREA
                         WS-STATUS-CODE.
               IF WS-RESP NOT = DFHRESP(NORMAL)
                  MOVE ' LINK ZBI07906 FAILED' TO EM-VARIABLE
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
