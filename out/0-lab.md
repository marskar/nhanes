

```sas
FILENAME LAB "lab.dat" LRECL=1979;
*** LRECL includes 2 positions for CRLF, assuming use of PC SAS;

DATA LAB;
INFILE LAB MISSOVER;

LENGTH
SEQN      4
DMPFSEQ   5
DMPSTAT   3
DMARETHN  3
DMARACER  3
DMAETHNR  3
HSSEX     3
HSAGEIR   3
HSAGEU    3
HSAITMOR  4
HSFSIZER  3
HSHSIZER  3
DMPCNTYR  3
DMPFIPSR  3
DMPMETRO  3
DMPCREGN  3
DMPPIR    8
SDPPHASE  3
SDPPSU6   4
SDPSTRA6  4
SDPPSU1   4
SDPSTRA1  4
SDPPSU2   4
SDPSTRA2  4
WTPFQX6   8
WTPFEX6   8
WTPFHX6   8
WTPFALG6  8
WTPFCNS6  8
WTPFSD6   8
WTPFMD6   8
WTPFHSD6  8
WTPFHMD6  8
WTPFQX1   8
WTPFEX1   8
WTPFHX1   8
WTPFALG1  8
WTPFCNS1  8
WTPFSD1   8
WTPFMD1   8
WTPFHSD1  8
WTPFHMD1  8
WTPFQX2   8
WTPFEX2   8
WTPFHX2   8
WTPFALG2  8
WTPFCNS2  8
WTPFSD2   8
WTPFMD2   8
WTPFHSD2  8
WTPFHMD2  8
WTPQRP1   8
WTPQRP2   8
WTPQRP3   8
WTPQRP4   8
WTPQRP5   8
WTPQRP6   8
WTPQRP7   8
WTPQRP8   8
WTPQRP9   8
WTPQRP10  8
WTPQRP11  8
WTPQRP12  8
WTPQRP13  8
WTPQRP14  8
WTPQRP15  8
WTPQRP16  8
WTPQRP17  8
WTPQRP18  8
WTPQRP19  8
WTPQRP20  8
WTPQRP21  8
WTPQRP22  8
WTPQRP23  8
WTPQRP24  8
WTPQRP25  8
WTPQRP26  8
WTPQRP27  8
WTPQRP28  8
WTPQRP29  8
WTPQRP30  8
WTPQRP31  8
WTPQRP32  8
WTPQRP33  8
WTPQRP34  8
WTPQRP35  8
WTPQRP36  8
WTPQRP37  8
WTPQRP38  8
WTPQRP39  8
WTPQRP40  8
WTPQRP41  8
WTPQRP42  8
WTPQRP43  8
WTPQRP44  8
WTPQRP45  8
WTPQRP46  8
WTPQRP47  8
WTPQRP48  8
WTPQRP49  8
WTPQRP50  8
WTPQRP51  8
WTPQRP52  8
WTPXRP1   8
WTPXRP2   8
WTPXRP3   8
WTPXRP4   8
WTPXRP5   8
WTPXRP6   8
WTPXRP7   8
WTPXRP8   8
WTPXRP9   8
WTPXRP10  8
WTPXRP11  8
WTPXRP12  8
WTPXRP13  8
WTPXRP14  8
WTPXRP15  8
WTPXRP16  8
WTPXRP17  8
WTPXRP18  8
WTPXRP19  8
WTPXRP20  8
WTPXRP21  8
WTPXRP22  8
WTPXRP23  8
WTPXRP24  8
WTPXRP25  8
WTPXRP26  8
WTPXRP27  8
WTPXRP28  8
WTPXRP29  8
WTPXRP30  8
WTPXRP31  8
WTPXRP32  8
WTPXRP33  8
WTPXRP34  8
WTPXRP35  8
WTPXRP36  8
WTPXRP37  8
WTPXRP38  8
WTPXRP39  8
WTPXRP40  8
WTPXRP41  8
WTPXRP42  8
WTPXRP43  8
WTPXRP44  8
WTPXRP45  8
WTPXRP46  8
WTPXRP47  8
WTPXRP48  8
WTPXRP49  8
WTPXRP50  8
WTPXRP51  8
WTPXRP52  8
HYAITMO   3
MXPLANG   3
MXPSESSR  3
MXPTIDW   3
MXPAXTMR  4
HXPTIDW   3
HXPAXTMR  4
HXPSESSR  3
PHPLANG   3
PHPHEMO   3
PHPCHM2   3
PHPINSU   3
PHPSNTI  $5
PHPSNDA   3
PHPDRIN   3
PHPDRTI  $5
PHPDRDA   3
PHPFAST   8
PHPBEST  $5
WCP       8
WCPSI     8
LMPPCNT   8
MOPPCNT   8
GRPPCNT   8
LMP       8
MOP       8
GRP       8
RCP       8
RCPSI     8
HGP       8
HGPSI     8
HTP       8
HTPSI     8
MVPSI     8
MCPSI     8
MHP       8
MHPSI     8
RWP       8
RWPSI     8
PLP       8
PLPSI     8
DWP       8
PVPSI     8
GRPDIF    3
LMPDIF    3
MOPDIF    3
EOP       3
BOP       3
BLP       3
PRP       3
MEP       3
MLP       3
BAP       3
LAP       3
ANP       3
BSP       3
HZP       3
PKP       3
POP       3
MRP       3
MIP       3
SIP       3
SHP       3
TTP       3
TXP       3
VUP       3
PBP       8
PBPSI     8
EPP       4
EPPSI     8
FEP       3
FEPSI     8
TIP       4
TIPSI     8
PXP       8
FRP       4
FRPSI     4
FOP       8
FOPSI     8
RBP       4
RBPSI     8
VBP       4
VBPSI     8
VCP       8
VCPSI     8
ICPSI     8
CAPSI     8
SEP       4
SEPSI     8
VAP       3
VAPSI     8
VEP       4
VEPSI     8
ACP       3
ACPSI     8
BCP       4
BCPSI     8
BXP       3
BXPSI     8
LUP       3
LUPSI     8
LYP       3
LYPSI     8
REP       3
REPSI     8
COP       8
TCP       3
TCPSI     8
TGP       4
TGPSI     8
LCP       3
LCPSI     8
HDP       3
HDPSI     8
AAP       8
AAPSI     8
ABP       3
ABPSI     8
LPP       3
LPPSI     8
FHPSI     8
LHPSI     8
FBP       4
FBPSI     8
CRP       8
TEP       8
AHP       3
HBP       3
SSP       3
SAP       3
HCP       3
DHP       3
H1P       3
H2P       3
RUP       8
RUPUNIT   4
VRP       8
TOP       3
RFP       4
L1P       8
HPP       3
NAPSI     8
SKPSI     8
CLPSI     8
C3PSI     3
SCP       8
SCPSI     8
PSP       8
PSPSI     8
UAP       8
UAPSI     8
SGP       3
SGPSI     8
BUP       3
BUPSI     8
TBP       8
TBPSI     8
CEP       8
CEPSI     8
SFP       3
SFPSI     8
CHP       4
CHPSI     8
TRP       4
TRPSI     8
ASPSI     3
ATPSI     3
GGPSI     4
LDPSI     4
APPSI     4
TPP       8
TPPSI     3
AMP       8
AMPSI     3
GBP       8
GBPSI     3
OSPSI     3
GHP       8
GHPMETH   3
G1P       8
G1PSI     8
G1PCODE   3
G1PTIM1   3
G1PTIM2   3
G2P       8
G2PSI     8
C1P       8
C1PSI     8
C2P       8
C2PSI     8
I1P       8
I1PSI     8
I1P2PFLG  3
I2P       8
I2PSI     8
UDP       8
UDPSI     8
URP       8
URPSI     8
UBP       8
UIP       8
;
```

    SAS Connection established. Subprocess id is 3640
    





<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
  <title></title>
  <meta http-equiv="content-type" content="text/html; charset=None">
  <style type="text/css">
td.linenos { background-color: #f0f0f0; padding-right: 10px; }
span.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }
pre { line-height: 125%; }
body .hll { background-color: #ffffcc }
body  { background: #ffffff; }
body .c { color: #0000FF } /* Comment */
body .k { color: #ff0000; font-weight: bold } /* Keyword */
body .n { color: #008000 } /* Name */
body .ch { color: #0000FF } /* Comment.Hashbang */
body .cm { color: #0000FF } /* Comment.Multiline */
body .cp { color: #0000FF } /* Comment.Preproc */
body .cpf { color: #0000FF } /* Comment.PreprocFile */
body .c1 { color: #0000FF } /* Comment.Single */
body .cs { color: #0000FF } /* Comment.Special */
body .kc { color: #ff0000; font-weight: bold } /* Keyword.Constant */
body .kd { color: #ff0000; font-weight: bold } /* Keyword.Declaration */
body .kn { color: #ff0000; font-weight: bold } /* Keyword.Namespace */
body .kp { color: #ff0000; font-weight: bold } /* Keyword.Pseudo */
body .kr { color: #ff0000; font-weight: bold } /* Keyword.Reserved */
body .kt { color: #ff0000; font-weight: bold } /* Keyword.Type */
body .s { color: #111111 } /* Literal.String */
body .na { color: #008000 } /* Name.Attribute */
body .nb { color: #008000 } /* Name.Builtin */
body .nc { color: #008000 } /* Name.Class */
body .no { color: #008000 } /* Name.Constant */
body .nd { color: #008000 } /* Name.Decorator */
body .ni { color: #008000 } /* Name.Entity */
body .ne { color: #008000 } /* Name.Exception */
body .nf { color: #008000 } /* Name.Function */
body .nl { color: #008000 } /* Name.Label */
body .nn { color: #008000 } /* Name.Namespace */
body .nx { color: #008000 } /* Name.Other */
body .py { color: #008000 } /* Name.Property */
body .nt { color: #008000 } /* Name.Tag */
body .nv { color: #008000 } /* Name.Variable */
body .sb { color: #111111 } /* Literal.String.Backtick */
body .sc { color: #111111 } /* Literal.String.Char */
body .sd { color: #111111 } /* Literal.String.Doc */
body .s2 { color: #111111 } /* Literal.String.Double */
body .se { color: #111111 } /* Literal.String.Escape */
body .sh { color: #111111 } /* Literal.String.Heredoc */
body .si { color: #111111 } /* Literal.String.Interpol */
body .sx { color: #111111 } /* Literal.String.Other */
body .sr { color: #111111 } /* Literal.String.Regex */
body .s1 { color: #111111 } /* Literal.String.Single */
body .ss { color: #111111 } /* Literal.String.Symbol */
body .bp { color: #008000 } /* Name.Builtin.Pseudo */
body .vc { color: #008000 } /* Name.Variable.Class */
body .vg { color: #008000 } /* Name.Variable.Global */
body .vi { color: #008000 } /* Name.Variable.Instance */

  </style>
</head>
<body>
<h2></h2>

<div class="highlight"><pre><span></span><span class="s">34   ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">34 ! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">35   </span><br><span class="s">36   FILENAME LAB &quot;lab.dat&quot; LRECL=1979;</span><br><span class="s">37   *** LRECL includes 2 positions for CRLF, assuming use of PC SAS;</span><br><span class="s">38   </span><br><span class="s">39   DATA LAB;</span><br><span class="s">40   INFILE LAB MISSOVER;</span><br><span class="s">41   </span><br><span class="s">42   LENGTH</span><br><span class="s">43   SEQN      4</span><br><span class="s">44   DMPFSEQ   5</span><br><span class="s">45   DMPSTAT   3</span><br><span class="s">46   DMARETHN  3</span><br><span class="s">47   DMARACER  3</span><br><span class="s">48   DMAETHNR  3</span><br><span class="s">49   HSSEX     3</span><br><span class="s">50   HSAGEIR   3</span><br><span class="s">51   HSAGEU    3</span><br><span class="s">52   HSAITMOR  4</span><br><span class="s">53   HSFSIZER  3</span><br><span class="s">54   HSHSIZER  3</span><br><span class="s">55   DMPCNTYR  3</span><br><span class="s">56   DMPFIPSR  3</span><br><span class="s">57   DMPMETRO  3</span><br><span class="s">58   DMPCREGN  3</span><br><span class="s">59   DMPPIR    8</span><br><span class="s">60   SDPPHASE  3</span><br><span class="s">61   SDPPSU6   4</span><br><span class="s">62   SDPSTRA6  4</span><br><span class="s">63   SDPPSU1   4</span><br><span class="s">64   SDPSTRA1  4</span><br><span class="s">65   SDPPSU2   4</span><br><span class="s">66   SDPSTRA2  4</span><br><span class="s">67   WTPFQX6   8</span><br><span class="s">68   WTPFEX6   8</span><br><span class="s">69   WTPFHX6   8</span><br><span class="s">70   WTPFALG6  8</span><br><span class="s">71   WTPFCNS6  8</span><br><span class="s">72   WTPFSD6   8</span><br><span class="s">73   WTPFMD6   8</span><br><span class="s">74   WTPFHSD6  8</span><br><span class="s">75   WTPFHMD6  8</span><br><span class="s">76   WTPFQX1   8</span><br><span class="s">77   WTPFEX1   8</span><br><span class="s">78   WTPFHX1   8</span><br><span class="s">79   WTPFALG1  8</span><br><span class="s">80   WTPFCNS1  8</span><br><span class="s">81   WTPFSD1   8</span><br><span class="s">82   WTPFMD1   8</span><br><span class="s">83   WTPFHSD1  8</span><br><span class="s">84   WTPFHMD1  8</span><br><span class="s">85   WTPFQX2   8</span><br><span class="s">86   WTPFEX2   8</span><br><span class="s">87   WTPFHX2   8</span><br><span class="s">88   WTPFALG2  8</span><br><span class="s">89   WTPFCNS2  8</span><br><span class="s">90   WTPFSD2   8</span><br><span class="s">91   WTPFMD2   8</span><br><span class="s">92   WTPFHSD2  8</span><br><span class="s">93   WTPFHMD2  8</span><br><span class="s">94   WTPQRP1   8</span><br><span class="s">95   WTPQRP2   8</span><br><span class="s">96   WTPQRP3   8</span><br><span class="s">97   WTPQRP4   8</span><br><span class="s">98   WTPQRP5   8</span><br><span class="s">99   WTPQRP6   8</span><br><span class="s">100  WTPQRP7   8</span><br><span class="s">101  WTPQRP8   8</span><br><span class="s">102  WTPQRP9   8</span><br><span class="s">103  WTPQRP10  8</span><br><span class="s">104  WTPQRP11  8</span><br><span class="s">105  WTPQRP12  8</span><br><span class="s">106  WTPQRP13  8</span><br><span class="s">107  WTPQRP14  8</span><br><span class="s">108  WTPQRP15  8</span><br><span class="s">109  WTPQRP16  8</span><br><span class="s">110  WTPQRP17  8</span><br><span class="s">111  WTPQRP18  8</span><br><span class="s">112  WTPQRP19  8</span><br><span class="s">113  WTPQRP20  8</span><br><span class="s">114  WTPQRP21  8</span><br><span class="s">115  WTPQRP22  8</span><br><span class="s">116  WTPQRP23  8</span><br><span class="s">117  WTPQRP24  8</span><br><span class="s">118  WTPQRP25  8</span><br><span class="s">119  WTPQRP26  8</span><br><span class="s">120  WTPQRP27  8</span><br><span class="s">121  WTPQRP28  8</span><br><span class="s">122  WTPQRP29  8</span><br><span class="s">123  WTPQRP30  8</span><br><span class="s">124  WTPQRP31  8</span><br><span class="s">125  WTPQRP32  8</span><br><span class="s">126  WTPQRP33  8</span><br><span class="s">127  WTPQRP34  8</span><br><span class="s">128  WTPQRP35  8</span><br><span class="s">129  WTPQRP36  8</span><br><span class="s">130  WTPQRP37  8</span><br><span class="s">131  WTPQRP38  8</span><br><span class="s">132  WTPQRP39  8</span><br><span class="s">133  WTPQRP40  8</span><br><span class="s">134  WTPQRP41  8</span><br><span class="s">135  WTPQRP42  8</span><br><span class="s">136  WTPQRP43  8</span><br><span class="s">137  WTPQRP44  8</span><br><span class="s">138  WTPQRP45  8</span><br><span class="s">139  WTPQRP46  8</span><br><span class="s">140  WTPQRP47  8</span><br><span class="s">141  WTPQRP48  8</span><br><span class="s">142  WTPQRP49  8</span><br><span class="s">143  WTPQRP50  8</span><br><span class="s">144  WTPQRP51  8</span><br><span class="s">145  WTPQRP52  8</span><br><span class="s">146  WTPXRP1   8</span><br><span class="s">147  WTPXRP2   8</span><br><span class="s">148  WTPXRP3   8</span><br><span class="s">149  WTPXRP4   8</span><br><span class="s">150  WTPXRP5   8</span><br><span class="s">151  WTPXRP6   8</span><br><span class="s">152  WTPXRP7   8</span><br><span class="s">153  WTPXRP8   8</span><br><span class="s">154  WTPXRP9   8</span><br><span class="s">155  WTPXRP10  8</span><br><span class="s">156  WTPXRP11  8</span><br><span class="s">157  WTPXRP12  8</span><br><span class="s">158  WTPXRP13  8</span><br><span class="s">159  WTPXRP14  8</span><br><span class="s">160  WTPXRP15  8</span><br><span class="s">161  WTPXRP16  8</span><br><span class="s">162  WTPXRP17  8</span><br><span class="s">163  WTPXRP18  8</span><br><span class="s">164  WTPXRP19  8</span><br><span class="s">165  WTPXRP20  8</span><br><span class="s">166  WTPXRP21  8</span><br><span class="s">167  WTPXRP22  8</span><br><span class="s">168  WTPXRP23  8</span><br><span class="s">169  WTPXRP24  8</span><br><span class="s">170  WTPXRP25  8</span><br><span class="s">171  WTPXRP26  8</span><br><span class="s">172  WTPXRP27  8</span><br><span class="s">173  WTPXRP28  8</span><br><span class="s">174  WTPXRP29  8</span><br><span class="s">175  WTPXRP30  8</span><br><span class="s">176  WTPXRP31  8</span><br><span class="s">177  WTPXRP32  8</span><br><span class="s">178  WTPXRP33  8</span><br><span class="s">179  WTPXRP34  8</span><br><span class="s">180  WTPXRP35  8</span><br><span class="s">181  WTPXRP36  8</span><br><span class="s">182  WTPXRP37  8</span><br><span class="s">183  WTPXRP38  8</span><br><span class="s">184  WTPXRP39  8</span><br><span class="s">185  WTPXRP40  8</span><br><span class="s">186  WTPXRP41  8</span><br><span class="s">187  WTPXRP42  8</span><br><span class="s">188  WTPXRP43  8</span><br><span class="s">189  WTPXRP44  8</span><br><span class="s">190  WTPXRP45  8</span><br><span class="s">191  WTPXRP46  8</span><br><span class="s">192  WTPXRP47  8</span><br><span class="s">193  WTPXRP48  8</span><br><span class="s">194  WTPXRP49  8</span><br><span class="s">195  WTPXRP50  8</span><br><span class="s">196  WTPXRP51  8</span><br><span class="s">197  WTPXRP52  8</span><br><span class="s">198  HYAITMO   3</span><br><span class="s">199  MXPLANG   3</span><br><span class="s">200  MXPSESSR  3</span><br><span class="s">201  MXPTIDW   3</span><br><span class="s">202  MXPAXTMR  4</span><br><span class="s">203  HXPTIDW   3</span><br><span class="s">204  HXPAXTMR  4</span><br><span class="s">205  HXPSESSR  3</span><br><span class="s">206  PHPLANG   3</span><br><span class="s">207  PHPHEMO   3</span><br><span class="s">208  PHPCHM2   3</span><br><span class="s">209  PHPINSU   3</span><br><span class="s">210  PHPSNTI  $5</span><br><span class="s">211  PHPSNDA   3</span><br><span class="s">212  PHPDRIN   3</span><br><span class="s">213  PHPDRTI  $5</span><br><span class="s">214  PHPDRDA   3</span><br><span class="s">215  PHPFAST   8</span><br><span class="s">216  PHPBEST  $5</span><br><span class="s">217  WCP       8</span><br><span class="s">218  WCPSI     8</span><br><span class="s">219  LMPPCNT   8</span><br><span class="s">220  MOPPCNT   8</span><br><span class="s">221  GRPPCNT   8</span><br><span class="s">222  LMP       8</span><br><span class="s">223  MOP       8</span><br><span class="s">224  GRP       8</span><br><span class="s">225  RCP       8</span><br><span class="s">226  RCPSI     8</span><br><span class="s">227  HGP       8</span><br><span class="s">228  HGPSI     8</span><br><span class="s">229  HTP       8</span><br><span class="s">230  HTPSI     8</span><br><span class="s">231  MVPSI     8</span><br><span class="s">232  MCPSI     8</span><br><span class="s">233  MHP       8</span><br><span class="s">234  MHPSI     8</span><br><span class="s">235  RWP       8</span><br><span class="s">236  RWPSI     8</span><br><span class="s">237  PLP       8</span><br><span class="s">238  PLPSI     8</span><br><span class="s">239  DWP       8</span><br><span class="s">240  PVPSI     8</span><br><span class="s">241  GRPDIF    3</span><br><span class="s">242  LMPDIF    3</span><br><span class="s">243  MOPDIF    3</span><br><span class="s">244  EOP       3</span><br><span class="s">245  BOP       3</span><br><span class="s">246  BLP       3</span><br><span class="s">247  PRP       3</span><br><span class="s">248  MEP       3</span><br><span class="s">249  MLP       3</span><br><span class="s">250  BAP       3</span><br><span class="s">251  LAP       3</span><br><span class="s">252  ANP       3</span><br><span class="s">253  BSP       3</span><br><span class="s">254  HZP       3</span><br><span class="s">255  PKP       3</span><br><span class="s">256  POP       3</span><br><span class="s">257  MRP       3</span><br><span class="s">258  MIP       3</span><br><span class="s">259  SIP       3</span><br><span class="s">260  SHP       3</span><br><span class="s">261  TTP       3</span><br><span class="s">262  TXP       3</span><br><span class="s">263  VUP       3</span><br><span class="s">264  PBP       8</span><br><span class="s">265  PBPSI     8</span><br><span class="s">266  EPP       4</span><br><span class="s">267  EPPSI     8</span><br><span class="s">268  FEP       3</span><br><span class="s">269  FEPSI     8</span><br><span class="s">270  TIP       4</span><br><span class="s">271  TIPSI     8</span><br><span class="s">272  PXP       8</span><br><span class="s">273  FRP       4</span><br><span class="s">274  FRPSI     4</span><br><span class="s">275  FOP       8</span><br><span class="s">276  FOPSI     8</span><br><span class="s">277  RBP       4</span><br><span class="s">278  RBPSI     8</span><br><span class="s">279  VBP       4</span><br><span class="s">280  VBPSI     8</span><br><span class="s">281  VCP       8</span><br><span class="s">282  VCPSI     8</span><br><span class="s">283  ICPSI     8</span><br><span class="s">284  CAPSI     8</span><br><span class="s">285  SEP       4</span><br><span class="s">286  SEPSI     8</span><br><span class="s">287  VAP       3</span><br><span class="s">288  VAPSI     8</span><br><span class="s">289  VEP       4</span><br><span class="s">290  VEPSI     8</span><br><span class="s">291  ACP       3</span><br><span class="s">292  ACPSI     8</span><br><span class="s">293  BCP       4</span><br><span class="s">294  BCPSI     8</span><br><span class="s">295  BXP       3</span><br><span class="s">296  BXPSI     8</span><br><span class="s">297  LUP       3</span><br><span class="s">298  LUPSI     8</span><br><span class="s">299  LYP       3</span><br><span class="s">300  LYPSI     8</span><br><span class="s">301  REP       3</span><br><span class="s">302  REPSI     8</span><br><span class="s">303  COP       8</span><br><span class="s">304  TCP       3</span><br><span class="s">305  TCPSI     8</span><br><span class="s">306  TGP       4</span><br><span class="s">307  TGPSI     8</span><br><span class="s">308  LCP       3</span><br><span class="s">309  LCPSI     8</span><br><span class="s">310  HDP       3</span><br><span class="s">311  HDPSI     8</span><br><span class="s">312  AAP       8</span><br><span class="s">313  AAPSI     8</span><br><span class="s">314  ABP       3</span><br><span class="s">315  ABPSI     8</span><br><span class="s">316  LPP       3</span><br><span class="s">317  LPPSI     8</span><br><span class="s">318  FHPSI     8</span><br><span class="s">319  LHPSI     8</span><br><span class="s">320  FBP       4</span><br><span class="s">321  FBPSI     8</span><br><span class="s">322  CRP       8</span><br><span class="s">323  TEP       8</span><br><span class="s">324  AHP       3</span><br><span class="s">325  HBP       3</span><br><span class="s">326  SSP       3</span><br><span class="s">327  SAP       3</span><br><span class="s">328  HCP       3</span><br><span class="s">329  DHP       3</span><br><span class="s">330  H1P       3</span><br><span class="s">331  H2P       3</span><br><span class="s">332  RUP       8</span><br><span class="s">333  RUPUNIT   4</span><br><span class="s">334  VRP       8</span><br><span class="s">335  TOP       3</span><br><span class="s">336  RFP       4</span><br><span class="s">337  L1P       8</span><br><span class="s">338  HPP       3</span><br><span class="s">339  NAPSI     8</span><br><span class="s">340  SKPSI     8</span><br><span class="s">341  CLPSI     8</span><br><span class="s">342  C3PSI     3</span><br><span class="s">343  SCP       8</span><br><span class="s">344  SCPSI     8</span><br><span class="s">345  PSP       8</span><br><span class="s">346  PSPSI     8</span><br><span class="s">347  UAP       8</span><br><span class="s">348  UAPSI     8</span><br><span class="s">349  SGP       3</span><br><span class="s">350  SGPSI     8</span><br><span class="s">351  BUP       3</span><br><span class="s">352  BUPSI     8</span><br><span class="s">353  TBP       8</span><br><span class="s">354  TBPSI     8</span><br><span class="s">355  CEP       8</span><br><span class="s">356  CEPSI     8</span><br><span class="s">357  SFP       3</span><br><span class="s">358  SFPSI     8</span><br><span class="s">359  CHP       4</span><br><span class="s">360  CHPSI     8</span><br><span class="s">361  TRP       4</span><br><span class="s">362  TRPSI     8</span><br><span class="s">363  ASPSI     3</span><br><span class="s">364  ATPSI     3</span><br><span class="s">365  GGPSI     4</span><br><span class="s">366  LDPSI     4</span><br><span class="s">367  APPSI     4</span><br><span class="s">368  TPP       8</span><br><span class="s">369  TPPSI     3</span><br><span class="s">370  AMP       8</span><br><span class="s">371  AMPSI     3</span><br><span class="s">372  GBP       8</span><br><span class="s">373  GBPSI     3</span><br><span class="s">374  OSPSI     3</span><br><span class="s">375  GHP       8</span><br><span class="s">376  GHPMETH   3</span><br><span class="s">377  G1P       8</span><br><span class="s">378  G1PSI     8</span><br><span class="s">379  G1PCODE   3</span><br><span class="s">380  G1PTIM1   3</span><br><span class="s">381  G1PTIM2   3</span><br><span class="s">382  G2P       8</span><br><span class="s">383  G2PSI     8</span><br><span class="s">384  C1P       8</span><br><span class="s">385  C1PSI     8</span><br><span class="s">386  C2P       8</span><br><span class="s">387  C2PSI     8</span><br><span class="s">388  I1P       8</span><br><span class="s">389  I1PSI     8</span><br><span class="s">390  I1P2PFLG  3</span><br><span class="s">391  I2P       8</span><br><span class="s">392  I2PSI     8</span><br><span class="s">393  UDP       8</span><br><span class="s">394  UDPSI     8</span><br><span class="s">395  URP       8</span><br><span class="s">396  URPSI     8</span><br><span class="s">397  UBP       8</span><br><span class="s">398  UIP       8</span><br><span class="s">399  ;</span><br><span class="s">400  </span><br><span class="s">401  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">402  </span><br></pre></div>
</body>
</html>





```sas
FORMAT
DMPPIR   Z6.3
WTPFQX6  Z9.2
WTPFEX6  Z9.2
WTPFHX6  Z9.2
WTPFALG6 Z9.2
WTPFCNS6 Z9.2
WTPFSD6  Z9.2
WTPFMD6  Z9.2
WTPFHSD6 Z9.2
WTPFHMD6 Z9.2
WTPFQX1  Z9.2
WTPFEX1  Z9.2
WTPFHX1  Z9.2
WTPFALG1 Z9.2
WTPFCNS1 Z9.2
WTPFSD1  Z9.2
WTPFMD1  Z9.2
WTPFHSD1 Z9.2
WTPFHMD1 Z9.2
WTPFQX2  Z9.2
WTPFEX2  Z9.2
WTPFHX2  Z9.2
WTPFALG2 Z9.2
WTPFCNS2 Z9.2
WTPFSD2  Z9.2
WTPFMD2  Z9.2
WTPFHSD2 Z9.2
WTPFHMD2 Z9.2
WTPQRP1  Z9.2
WTPQRP2  Z9.2
WTPQRP3  Z9.2
WTPQRP4  Z9.2
WTPQRP5  Z9.2
WTPQRP6  Z9.2
WTPQRP7  Z9.2
WTPQRP8  Z9.2
WTPQRP9  Z9.2
WTPQRP10 Z9.2
WTPQRP11 Z9.2
WTPQRP12 Z9.2
WTPQRP13 Z9.2
WTPQRP14 Z9.2
WTPQRP15 Z9.2
WTPQRP16 Z9.2
WTPQRP17 Z9.2
WTPQRP18 Z9.2
WTPQRP19 Z9.2
WTPQRP20 Z9.2
WTPQRP21 Z9.2
WTPQRP22 Z9.2
WTPQRP23 Z9.2
WTPQRP24 Z9.2
WTPQRP25 Z9.2
WTPQRP26 Z9.2
WTPQRP27 Z9.2
WTPQRP28 Z9.2
WTPQRP29 Z9.2
WTPQRP30 Z9.2
WTPQRP31 Z9.2
WTPQRP32 Z9.2
WTPQRP33 Z9.2
WTPQRP34 Z9.2
WTPQRP35 Z9.2
WTPQRP36 Z9.2
WTPQRP37 Z9.2
WTPQRP38 Z9.2
WTPQRP39 Z9.2
WTPQRP40 Z9.2
WTPQRP41 Z9.2
WTPQRP42 Z9.2
WTPQRP43 Z9.2
WTPQRP44 Z9.2
WTPQRP45 Z9.2
WTPQRP46 Z9.2
WTPQRP47 Z9.2
WTPQRP48 Z9.2
WTPQRP49 Z9.2
WTPQRP50 Z9.2
WTPQRP51 Z9.2
WTPQRP52 Z9.2
WTPXRP1  Z9.2
WTPXRP2  Z9.2
WTPXRP3  Z9.2
WTPXRP4  Z9.2
WTPXRP5  Z9.2
WTPXRP6  Z9.2
WTPXRP7  Z9.2
WTPXRP8  Z9.2
WTPXRP9  Z9.2
WTPXRP10 Z9.2
WTPXRP11 Z9.2
WTPXRP12 Z9.2
WTPXRP13 Z9.2
WTPXRP14 Z9.2
WTPXRP15 Z9.2
WTPXRP16 Z9.2
WTPXRP17 Z9.2
WTPXRP18 Z9.2
WTPXRP19 Z9.2
WTPXRP20 Z9.2
WTPXRP21 Z9.2
WTPXRP22 Z9.2
WTPXRP23 Z9.2
WTPXRP24 Z9.2
WTPXRP25 Z9.2
WTPXRP26 Z9.2
WTPXRP27 Z9.2
WTPXRP28 Z9.2
WTPXRP29 Z9.2
WTPXRP30 Z9.2
WTPXRP31 Z9.2
WTPXRP32 Z9.2
WTPXRP33 Z9.2
WTPXRP34 Z9.2
WTPXRP35 Z9.2
WTPXRP36 Z9.2
WTPXRP37 Z9.2
WTPXRP38 Z9.2
WTPXRP39 Z9.2
WTPXRP40 Z9.2
WTPXRP41 Z9.2
WTPXRP42 Z9.2
WTPXRP43 Z9.2
WTPXRP44 Z9.2
WTPXRP45 Z9.2
WTPXRP46 Z9.2
WTPXRP47 Z9.2
WTPXRP48 Z9.2
WTPXRP49 Z9.2
WTPXRP50 Z9.2
WTPXRP51 Z9.2
WTPXRP52 Z9.2
PHPFAST  8.2
WCP      8.2
WCPSI    8.2
LMPPCNT  8.2
MOPPCNT  8.2
GRPPCNT  8.2
LMP      8.2
MOP      7.2
GRP      8.2
RCP      7.2
RCPSI    7.2
HGP      8.2
HGPSI    7.1
HTP      8.2
HTPSI    9.3
MVPSI    8.2
MCPSI    8.2
MHP      8.2
MHPSI    7.1
RWP      8.2
RWPSI    11.4
PLP      7.1
PLPSI    7.1
DWP      8.2
PVPSI    8.2
PBP      6.1
PBPSI    9.3
EPPSI    8.2
FEPSI    8.2
TIPSI    9.2
PXP      6.1
FOP      7.1
FOPSI    7.1
RBPSI    8.1
VBPSI    11.2
VCP      7.2
VCPSI    9.2
ICPSI    7.2
CAPSI    7.2
SEPSI    7.2
VAPSI    7.2
VEPSI    9.2
ACPSI    7.2
BCPSI    8.2
BXPSI    7.2
LUPSI    7.2
LYPSI    7.2
REPSI    7.2
COP      9.3
TCP      8.
TCPSI    8.2
TGP      8.
TGPSI    8.2
LCP      8.
LCPSI    7.2
HDP      8.
HDPSI    7.2
AAP      8.
AAPSI    7.2
ABP      8.
ABPSI    7.2
LPP      8.
LPPSI    7.2
FHPSI    7.1
LHPSI    6.1
FBP      8.
FBPSI    7.2
CRP      8.2
TEP      10.3
AHP      2.
HBP      2.
SSP      2.
SAP      2.
HCP      2.
DHP      2.
H1P      8.
H2P      8.
RUP      8.2
RUPUNIT  8.
VRP      8.2
RFP      8.
L1P      5.2
HPP      2.
NAPSI    7.1
SKPSI    7.2
CLPSI    7.1
C3PSI    8.
SCP      6.1
SCPSI    9.3
PSP      6.1
PSPSI    9.3
UAP      6.1
UAPSI    7.1
SGP      8.
SGPSI    8.2
BUP      8.
BUPSI    8.2
TBP      6.1
TBPSI    9.2
CEP      6.1
CEPSI    8.1
SFP      8.
SFPSI    6.1
CHP      8.
CHPSI    10.3
TRP      8.
TRPSI    10.3
ASPSI    8.
ATPSI    8.
GGPSI    8.
LDPSI    8.
APPSI    8.
TPP      6.1
TPPSI    8.
AMP      5.1
AMPSI    8.
GBP      5.1
GBPSI    8.
OSPSI    8.
GHP      6.1
GHPMETH  3.
G1P      7.1
G1PSI    10.3
G1PCODE  2.
G1PTIM1  4.
G1PTIM2  4.
G2P      7.1
G2PSI    10.3
C1P      9.3
C1PSI    9.3
C2P      10.3
C2PSI    10.3
I1P      9.2
I1PSI    10.2
I2P      9.2
I2PSI    10.2
UDP      8.2
UDPSI    9.2
URP      7.1
URPSI    6.1
UBP      8.1
UIP      9.1
;

INPUT
SEQN     1-5
DMPFSEQ  6-10
DMPSTAT  11
DMARETHN 12
DMARACER 13
DMAETHNR 14
HSSEX    15
HSAGEIR  16-17
HSAGEU   18
HSAITMOR 19-22
HSFSIZER 23-24
HSHSIZER 25-26
DMPCNTYR 27-29
DMPFIPSR 30-31
DMPMETRO 32
DMPCREGN 33
DMPPIR   34-39
SDPPHASE 40
SDPPSU6  41
SDPSTRA6 42-43
SDPPSU1  44
SDPSTRA1 45-46
SDPPSU2  47
SDPSTRA2 48-49
WTPFQX6  50-58
WTPFEX6  59-67
WTPFHX6  68-76
WTPFALG6 77-85
WTPFCNS6 86-94
WTPFSD6  95-103
WTPFMD6  104-112
WTPFHSD6 113-121
WTPFHMD6 122-130
WTPFQX1  131-139
WTPFEX1  140-148
WTPFHX1  149-157
WTPFALG1 158-166
WTPFCNS1 167-175
WTPFSD1  176-184
WTPFMD1  185-193
WTPFHSD1 194-202
WTPFHMD1 203-211
WTPFQX2  212-220
WTPFEX2  221-229
WTPFHX2  230-238
WTPFALG2 239-247
WTPFCNS2 248-256
WTPFSD2  257-265
WTPFMD2  266-274
WTPFHSD2 275-283
WTPFHMD2 284-292
WTPQRP1  293-301
WTPQRP2  302-310
WTPQRP3  311-319
WTPQRP4  320-328
WTPQRP5  329-337
WTPQRP6  338-346
WTPQRP7  347-355
WTPQRP8  356-364
WTPQRP9  365-373
WTPQRP10 374-382
WTPQRP11 383-391
WTPQRP12 392-400
WTPQRP13 401-409
WTPQRP14 410-418
WTPQRP15 419-427
WTPQRP16 428-436
WTPQRP17 437-445
WTPQRP18 446-454
WTPQRP19 455-463
WTPQRP20 464-472
WTPQRP21 473-481
WTPQRP22 482-490
WTPQRP23 491-499
WTPQRP24 500-508
WTPQRP25 509-517
WTPQRP26 518-526
WTPQRP27 527-535
WTPQRP28 536-544
WTPQRP29 545-553
WTPQRP30 554-562
WTPQRP31 563-571
WTPQRP32 572-580
WTPQRP33 581-589
WTPQRP34 590-598
WTPQRP35 599-607
WTPQRP36 608-616
WTPQRP37 617-625
WTPQRP38 626-634
WTPQRP39 635-643
WTPQRP40 644-652
WTPQRP41 653-661
WTPQRP42 662-670
WTPQRP43 671-679
WTPQRP44 680-688
WTPQRP45 689-697
WTPQRP46 698-706
WTPQRP47 707-715
WTPQRP48 716-724
WTPQRP49 725-733
WTPQRP50 734-742
WTPQRP51 743-751
WTPQRP52 752-760
WTPXRP1  761-769
WTPXRP2  770-778
WTPXRP3  779-787
WTPXRP4  788-796
WTPXRP5  797-805
WTPXRP6  806-814
WTPXRP7  815-823
WTPXRP8  824-832
WTPXRP9  833-841
WTPXRP10 842-850
WTPXRP11 851-859
WTPXRP12 860-868
WTPXRP13 869-877
WTPXRP14 878-886
WTPXRP15 887-895
WTPXRP16 896-904
WTPXRP17 905-913
WTPXRP18 914-922
WTPXRP19 923-931
WTPXRP20 932-940
WTPXRP21 941-949
WTPXRP22 950-958
WTPXRP23 959-967
WTPXRP24 968-976
WTPXRP25 977-985
WTPXRP26 986-994
WTPXRP27 995-1003
WTPXRP28 1004-1012
WTPXRP29 1013-1021
WTPXRP30 1022-1030
WTPXRP31 1031-1039
WTPXRP32 1040-1048
WTPXRP33 1049-1057
WTPXRP34 1058-1066
WTPXRP35 1067-1075
WTPXRP36 1076-1084
WTPXRP37 1085-1093
WTPXRP38 1094-1102
WTPXRP39 1103-1111
WTPXRP40 1112-1120
WTPXRP41 1121-1129
WTPXRP42 1130-1138
WTPXRP43 1139-1147
WTPXRP44 1148-1156
WTPXRP45 1157-1165
WTPXRP46 1166-1174
WTPXRP47 1175-1183
WTPXRP48 1184-1192
WTPXRP49 1193-1201
WTPXRP50 1202-1210
WTPXRP51 1211-1219
WTPXRP52 1220-1228
HYAITMO  1229-1232
MXPLANG  1233
MXPSESSR 1234
MXPTIDW  1235
MXPAXTMR 1236-1239
HXPTIDW  1240
HXPAXTMR 1241-1244
HXPSESSR 1245
PHPLANG  1246
PHPHEMO  1247
PHPCHM2  1248
PHPINSU  1249
PHPSNTI  1250-1254
PHPSNDA  1255
PHPDRIN  1256
PHPDRTI  1257-1261
PHPDRDA  1262
PHPFAST  1263-1267
PHPBEST  1268-1272
WCP      1273-1277
WCPSI    1278-1282
LMPPCNT  1283-1287
MOPPCNT  1288-1292
GRPPCNT  1293-1297
LMP      1298-1302
MOP      1303-1306
GRP      1307-1311
RCP      1312-1315
RCPSI    1316-1319
HGP      1320-1324
HGPSI    1325-1329
HTP      1330-1334
HTPSI    1335-1339
MVPSI    1340-1344
MCPSI    1345-1349
MHP      1350-1354
MHPSI    1355-1359
RWP      1360-1364
RWPSI    1365-1370
PLP      1371-1375
PLPSI    1376-1380
DWP      1381-1385
PVPSI    1386-1390
GRPDIF   1391-1393
LMPDIF   1394-1396
MOPDIF   1397-1398
EOP      1399-1400
BOP      1401-1402
BLP      1403
PRP      1404
MEP      1405
MLP      1406
BAP      1407-1408
LAP      1409-1410
ANP      1411
BSP      1412
HZP      1413
PKP      1414
POP      1415
MRP      1416
MIP      1417
SIP      1418
SHP      1419
TTP      1420
TXP      1421
VUP      1422
PBP      1423-1426
PBPSI    1427-1431
EPP      1432-1435
EPPSI    1436-1440
FEP      1441-1443
FEPSI    1444-1448
TIP      1449-1452
TIPSI    1453-1458
PXP      1459-1462
FRP      1463-1466
FRPSI    1467-1470
FOP      1471-1475
FOPSI    1476-1480
RBP      1481-1484
RBPSI    1485-1490
VBP      1491-1496
VBPSI    1497-1504
VCP      1505-1508
VCPSI    1509-1514
ICPSI    1515-1518
CAPSI    1519-1522
SEP      1523-1526
SEPSI    1527-1530
VAP      1531-1533
VAPSI    1534-1537
VEP      1538-1542
VEPSI    1543-1548
ACP      1549-1551
ACPSI    1552-1555
BCP      1556-1559
BCPSI    1560-1564
BXP      1565-1567
BXPSI    1568-1571
LUP      1572-1574
LUPSI    1575-1578
LYP      1579-1581
LYPSI    1582-1585
REP      1586-1588
REPSI    1589-1592
COP      1593-1597
TCP      1598-1600
TCPSI    1601-1605
TGP      1606-1609
TGPSI    1610-1614
LCP      1615-1617
LCPSI    1618-1621
HDP      1622-1624
HDPSI    1625-1628
AAP      1629-1631
AAPSI    1632-1635
ABP      1636-1638
ABPSI    1639-1642
LPP      1643-1645
LPPSI    1646-1649
FHPSI    1650-1654
LHPSI    1655-1658
FBP      1659-1662
FBPSI    1663-1666
CRP      1667-1671
TEP      1672-1677
AHP      1678
HBP      1679
SSP      1680-1681
SAP      1682
HCP      1683
DHP      1684
H1P      1685
H2P      1686
RUP      1687-1691
RUPUNIT  1692-1695
VRP      1696-1700
TOP      1701-1703
RFP      1704-1708
L1P      1709-1713
HPP      1714
NAPSI    1715-1719
SKPSI    1720-1723
CLPSI    1724-1728
C3PSI    1729-1730
SCP      1731-1734
SCPSI    1735-1739
PSP      1740-1743
PSPSI    1744-1748
UAP      1749-1752
UAPSI    1753-1757
SGP      1758-1760
SGPSI    1761-1765
BUP      1766-1768
BUPSI    1769-1773
TBP      1774-1777
TBPSI    1778-1783
CEP      1784-1787
CEPSI    1788-1793
SFP      1794-1796
SFPSI    1797-1800
CHP      1801-1804
CHPSI    1805-1810
TRP      1811-1814
TRPSI    1815-1820
ASPSI    1821-1823
ATPSI    1824-1826
GGPSI    1827-1830
LDPSI    1831-1834
APPSI    1835-1838
TPP      1839-1842
TPPSI    1843-1845
AMP      1846-1848
AMPSI    1849-1851
GBP      1852-1854
GBPSI    1855-1857
OSPSI    1858-1860
GHP      1861-1864
GHPMETH  1865
G1P      1866-1870
G1PSI    1871-1876
G1PCODE  1877-1878
G1PTIM1  1879-1881
G1PTIM2  1882-1884
G2P      1885-1889
G2PSI    1890-1895
C1P      1896-1900
C1PSI    1901-1905
C2P      1906-1911
C2PSI    1912-1917
I1P      1918-1923
I1PSI    1924-1930
I1P2PFLG 1931
I2P      1932-1937
I2PSI    1938-1944
UDP      1945-1949
UDPSI    1950-1955
URP      1956-1960
URPSI    1961-1964
UBP      1965-1970
UIP      1971-1977
;
```




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
  <title></title>
  <meta http-equiv="content-type" content="text/html; charset=None">
  <style type="text/css">
td.linenos { background-color: #f0f0f0; padding-right: 10px; }
span.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }
pre { line-height: 125%; }
body .hll { background-color: #ffffcc }
body  { background: #ffffff; }
body .c { color: #0000FF } /* Comment */
body .k { color: #ff0000; font-weight: bold } /* Keyword */
body .n { color: #008000 } /* Name */
body .ch { color: #0000FF } /* Comment.Hashbang */
body .cm { color: #0000FF } /* Comment.Multiline */
body .cp { color: #0000FF } /* Comment.Preproc */
body .cpf { color: #0000FF } /* Comment.PreprocFile */
body .c1 { color: #0000FF } /* Comment.Single */
body .cs { color: #0000FF } /* Comment.Special */
body .kc { color: #ff0000; font-weight: bold } /* Keyword.Constant */
body .kd { color: #ff0000; font-weight: bold } /* Keyword.Declaration */
body .kn { color: #ff0000; font-weight: bold } /* Keyword.Namespace */
body .kp { color: #ff0000; font-weight: bold } /* Keyword.Pseudo */
body .kr { color: #ff0000; font-weight: bold } /* Keyword.Reserved */
body .kt { color: #ff0000; font-weight: bold } /* Keyword.Type */
body .s { color: #111111 } /* Literal.String */
body .na { color: #008000 } /* Name.Attribute */
body .nb { color: #008000 } /* Name.Builtin */
body .nc { color: #008000 } /* Name.Class */
body .no { color: #008000 } /* Name.Constant */
body .nd { color: #008000 } /* Name.Decorator */
body .ni { color: #008000 } /* Name.Entity */
body .ne { color: #008000 } /* Name.Exception */
body .nf { color: #008000 } /* Name.Function */
body .nl { color: #008000 } /* Name.Label */
body .nn { color: #008000 } /* Name.Namespace */
body .nx { color: #008000 } /* Name.Other */
body .py { color: #008000 } /* Name.Property */
body .nt { color: #008000 } /* Name.Tag */
body .nv { color: #008000 } /* Name.Variable */
body .sb { color: #111111 } /* Literal.String.Backtick */
body .sc { color: #111111 } /* Literal.String.Char */
body .sd { color: #111111 } /* Literal.String.Doc */
body .s2 { color: #111111 } /* Literal.String.Double */
body .se { color: #111111 } /* Literal.String.Escape */
body .sh { color: #111111 } /* Literal.String.Heredoc */
body .si { color: #111111 } /* Literal.String.Interpol */
body .sx { color: #111111 } /* Literal.String.Other */
body .sr { color: #111111 } /* Literal.String.Regex */
body .s1 { color: #111111 } /* Literal.String.Single */
body .ss { color: #111111 } /* Literal.String.Symbol */
body .bp { color: #008000 } /* Name.Builtin.Pseudo */
body .vc { color: #008000 } /* Name.Variable.Class */
body .vg { color: #008000 } /* Name.Variable.Global */
body .vi { color: #008000 } /* Name.Variable.Instance */

  </style>
</head>
<body>
<h2></h2>

<div class="highlight"><pre><span></span><span class="s">404  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">404! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">405  </span><br><span class="s">406  FORMAT</span><br><span class="s">407  DMPPIR   Z6.3</span><br><span class="s">408  WTPFQX6  Z9.2</span><br><span class="s">409  WTPFEX6  Z9.2</span><br><span class="s">410  WTPFHX6  Z9.2</span><br><span class="s">411  WTPFALG6 Z9.2</span><br><span class="s">412  WTPFCNS6 Z9.2</span><br><span class="s">413  WTPFSD6  Z9.2</span><br><span class="s">414  WTPFMD6  Z9.2</span><br><span class="s">415  WTPFHSD6 Z9.2</span><br><span class="s">416  WTPFHMD6 Z9.2</span><br><span class="s">417  WTPFQX1  Z9.2</span><br><span class="s">418  WTPFEX1  Z9.2</span><br><span class="s">419  WTPFHX1  Z9.2</span><br><span class="s">420  WTPFALG1 Z9.2</span><br><span class="s">421  WTPFCNS1 Z9.2</span><br><span class="s">422  WTPFSD1  Z9.2</span><br><span class="s">423  WTPFMD1  Z9.2</span><br><span class="s">424  WTPFHSD1 Z9.2</span><br><span class="s">425  WTPFHMD1 Z9.2</span><br><span class="s">426  WTPFQX2  Z9.2</span><br><span class="s">427  WTPFEX2  Z9.2</span><br><span class="s">428  WTPFHX2  Z9.2</span><br><span class="s">429  WTPFALG2 Z9.2</span><br><span class="s">430  WTPFCNS2 Z9.2</span><br><span class="s">431  WTPFSD2  Z9.2</span><br><span class="s">432  WTPFMD2  Z9.2</span><br><span class="s">433  WTPFHSD2 Z9.2</span><br><span class="s">434  WTPFHMD2 Z9.2</span><br><span class="s">435  WTPQRP1  Z9.2</span><br><span class="s">436  WTPQRP2  Z9.2</span><br><span class="s">437  WTPQRP3  Z9.2</span><br><span class="s">438  WTPQRP4  Z9.2</span><br><span class="s">439  WTPQRP5  Z9.2</span><br><span class="s">440  WTPQRP6  Z9.2</span><br><span class="s">441  WTPQRP7  Z9.2</span><br><span class="s">442  WTPQRP8  Z9.2</span><br><span class="s">443  WTPQRP9  Z9.2</span><br><span class="s">444  WTPQRP10 Z9.2</span><br><span class="s">445  WTPQRP11 Z9.2</span><br><span class="s">446  WTPQRP12 Z9.2</span><br><span class="s">447  WTPQRP13 Z9.2</span><br><span class="s">448  WTPQRP14 Z9.2</span><br><span class="s">449  WTPQRP15 Z9.2</span><br><span class="s">450  WTPQRP16 Z9.2</span><br><span class="s">451  WTPQRP17 Z9.2</span><br><span class="s">452  WTPQRP18 Z9.2</span><br><span class="s">453  WTPQRP19 Z9.2</span><br><span class="s">454  WTPQRP20 Z9.2</span><br><span class="s">455  WTPQRP21 Z9.2</span><br><span class="s">456  WTPQRP22 Z9.2</span><br><span class="s">457  WTPQRP23 Z9.2</span><br><span class="s">458  WTPQRP24 Z9.2</span><br><span class="s">459  WTPQRP25 Z9.2</span><br><span class="s">460  WTPQRP26 Z9.2</span><br><span class="s">461  WTPQRP27 Z9.2</span><br><span class="s">462  WTPQRP28 Z9.2</span><br><span class="s">463  WTPQRP29 Z9.2</span><br><span class="s">464  WTPQRP30 Z9.2</span><br><span class="s">465  WTPQRP31 Z9.2</span><br><span class="s">466  WTPQRP32 Z9.2</span><br><span class="s">467  WTPQRP33 Z9.2</span><br><span class="s">468  WTPQRP34 Z9.2</span><br><span class="s">469  WTPQRP35 Z9.2</span><br><span class="s">470  WTPQRP36 Z9.2</span><br><span class="s">471  WTPQRP37 Z9.2</span><br><span class="s">472  WTPQRP38 Z9.2</span><br><span class="s">473  WTPQRP39 Z9.2</span><br><span class="s">474  WTPQRP40 Z9.2</span><br><span class="s">475  WTPQRP41 Z9.2</span><br><span class="s">476  WTPQRP42 Z9.2</span><br><span class="s">477  WTPQRP43 Z9.2</span><br><span class="s">478  WTPQRP44 Z9.2</span><br><span class="s">479  WTPQRP45 Z9.2</span><br><span class="s">480  WTPQRP46 Z9.2</span><br><span class="s">481  WTPQRP47 Z9.2</span><br><span class="s">482  WTPQRP48 Z9.2</span><br><span class="s">483  WTPQRP49 Z9.2</span><br><span class="s">484  WTPQRP50 Z9.2</span><br><span class="s">485  WTPQRP51 Z9.2</span><br><span class="s">486  WTPQRP52 Z9.2</span><br><span class="s">487  WTPXRP1  Z9.2</span><br><span class="s">488  WTPXRP2  Z9.2</span><br><span class="s">489  WTPXRP3  Z9.2</span><br><span class="s">490  WTPXRP4  Z9.2</span><br><span class="s">491  WTPXRP5  Z9.2</span><br><span class="s">492  WTPXRP6  Z9.2</span><br><span class="s">493  WTPXRP7  Z9.2</span><br><span class="s">494  WTPXRP8  Z9.2</span><br><span class="s">495  WTPXRP9  Z9.2</span><br><span class="s">496  WTPXRP10 Z9.2</span><br><span class="s">497  WTPXRP11 Z9.2</span><br><span class="s">498  WTPXRP12 Z9.2</span><br><span class="s">499  WTPXRP13 Z9.2</span><br><span class="s">500  WTPXRP14 Z9.2</span><br><span class="s">501  WTPXRP15 Z9.2</span><br><span class="s">502  WTPXRP16 Z9.2</span><br><span class="s">503  WTPXRP17 Z9.2</span><br><span class="s">504  WTPXRP18 Z9.2</span><br><span class="s">505  WTPXRP19 Z9.2</span><br><span class="s">506  WTPXRP20 Z9.2</span><br><span class="s">507  WTPXRP21 Z9.2</span><br><span class="s">508  WTPXRP22 Z9.2</span><br><span class="s">509  WTPXRP23 Z9.2</span><br><span class="s">510  WTPXRP24 Z9.2</span><br><span class="s">511  WTPXRP25 Z9.2</span><br><span class="s">512  WTPXRP26 Z9.2</span><br><span class="s">513  WTPXRP27 Z9.2</span><br><span class="s">514  WTPXRP28 Z9.2</span><br><span class="s">515  WTPXRP29 Z9.2</span><br><span class="s">516  WTPXRP30 Z9.2</span><br><span class="s">517  WTPXRP31 Z9.2</span><br><span class="s">518  WTPXRP32 Z9.2</span><br><span class="s">519  WTPXRP33 Z9.2</span><br><span class="s">520  WTPXRP34 Z9.2</span><br><span class="s">521  WTPXRP35 Z9.2</span><br><span class="s">522  WTPXRP36 Z9.2</span><br><span class="s">523  WTPXRP37 Z9.2</span><br><span class="s">524  WTPXRP38 Z9.2</span><br><span class="s">525  WTPXRP39 Z9.2</span><br><span class="s">526  WTPXRP40 Z9.2</span><br><span class="s">527  WTPXRP41 Z9.2</span><br><span class="s">528  WTPXRP42 Z9.2</span><br><span class="s">529  WTPXRP43 Z9.2</span><br><span class="s">530  WTPXRP44 Z9.2</span><br><span class="s">531  WTPXRP45 Z9.2</span><br><span class="s">532  WTPXRP46 Z9.2</span><br><span class="s">533  WTPXRP47 Z9.2</span><br><span class="s">534  WTPXRP48 Z9.2</span><br><span class="s">535  WTPXRP49 Z9.2</span><br><span class="s">536  WTPXRP50 Z9.2</span><br><span class="s">537  WTPXRP51 Z9.2</span><br><span class="s">538  WTPXRP52 Z9.2</span><br><span class="s">539  PHPFAST  8.2</span><br><span class="s">540  WCP      8.2</span><br><span class="s">541  WCPSI    8.2</span><br><span class="s">542  LMPPCNT  8.2</span><br><span class="s">543  MOPPCNT  8.2</span><br><span class="s">544  GRPPCNT  8.2</span><br><span class="s">545  LMP      8.2</span><br><span class="s">546  MOP      7.2</span><br><span class="s">547  GRP      8.2</span><br><span class="s">548  RCP      7.2</span><br><span class="s">549  RCPSI    7.2</span><br><span class="s">550  HGP      8.2</span><br><span class="s">551  HGPSI    7.1</span><br><span class="s">552  HTP      8.2</span><br><span class="s">553  HTPSI    9.3</span><br><span class="s">554  MVPSI    8.2</span><br><span class="s">555  MCPSI    8.2</span><br><span class="s">556  MHP      8.2</span><br><span class="s">557  MHPSI    7.1</span><br><span class="s">558  RWP      8.2</span><br><span class="s">559  RWPSI    11.4</span><br><span class="s">560  PLP      7.1</span><br><span class="s">561  PLPSI    7.1</span><br><span class="s">562  DWP      8.2</span><br><span class="s">563  PVPSI    8.2</span><br><span class="s">564  PBP      6.1</span><br><span class="s">565  PBPSI    9.3</span><br><span class="s">566  EPPSI    8.2</span><br><span class="s">567  FEPSI    8.2</span><br><span class="s">568  TIPSI    9.2</span><br><span class="s">569  PXP      6.1</span><br><span class="s">570  FOP      7.1</span><br><span class="s">571  FOPSI    7.1</span><br><span class="s">572  RBPSI    8.1</span><br><span class="s">573  VBPSI    11.2</span><br><span class="s">574  VCP      7.2</span><br><span class="s">575  VCPSI    9.2</span><br><span class="s">576  ICPSI    7.2</span><br><span class="s">577  CAPSI    7.2</span><br><span class="s">578  SEPSI    7.2</span><br><span class="s">579  VAPSI    7.2</span><br><span class="s">580  VEPSI    9.2</span><br><span class="s">581  ACPSI    7.2</span><br><span class="s">582  BCPSI    8.2</span><br><span class="s">583  BXPSI    7.2</span><br><span class="s">584  LUPSI    7.2</span><br><span class="s">585  LYPSI    7.2</span><br><span class="s">586  REPSI    7.2</span><br><span class="s">587  COP      9.3</span><br><span class="s">588  TCP      8.</span><br><span class="s">589  TCPSI    8.2</span><br><span class="s">590  TGP      8.</span><br><span class="s">591  TGPSI    8.2</span><br><span class="s">592  LCP      8.</span><br><span class="s">593  LCPSI    7.2</span><br><span class="s">594  HDP      8.</span><br><span class="s">595  HDPSI    7.2</span><br><span class="s">596  AAP      8.</span><br><span class="s">597  AAPSI    7.2</span><br><span class="s">598  ABP      8.</span><br><span class="s">599  ABPSI    7.2</span><br><span class="s">600  LPP      8.</span><br><span class="s">601  LPPSI    7.2</span><br><span class="s">602  FHPSI    7.1</span><br><span class="s">603  LHPSI    6.1</span><br><span class="s">604  FBP      8.</span><br><span class="s">605  FBPSI    7.2</span><br><span class="s">606  CRP      8.2</span><br><span class="s">607  TEP      10.3</span><br><span class="s">608  AHP      2.</span><br><span class="s">609  HBP      2.</span><br><span class="s">610  SSP      2.</span><br><span class="s">611  SAP      2.</span><br><span class="s">612  HCP      2.</span><br><span class="s">613  DHP      2.</span><br><span class="s">614  H1P      8.</span><br><span class="s">615  H2P      8.</span><br><span class="s">616  RUP      8.2</span><br><span class="s">617  RUPUNIT  8.</span><br><span class="s">618  VRP      8.2</span><br><span class="s">619  RFP      8.</span><br><span class="s">620  L1P      5.2</span><br><span class="s">621  HPP      2.</span><br><span class="s">622  NAPSI    7.1</span><br><span class="s">623  SKPSI    7.2</span><br><span class="s">624  CLPSI    7.1</span><br><span class="s">625  C3PSI    8.</span><br><span class="s">626  SCP      6.1</span><br><span class="s">627  SCPSI    9.3</span><br><span class="s">628  PSP      6.1</span><br><span class="s">629  PSPSI    9.3</span><br><span class="s">630  UAP      6.1</span><br><span class="s">631  UAPSI    7.1</span><br><span class="s">632  SGP      8.</span><br><span class="s">633  SGPSI    8.2</span><br><span class="s">634  BUP      8.</span><br><span class="s">635  BUPSI    8.2</span><br><span class="s">636  TBP      6.1</span><br><span class="s">637  TBPSI    9.2</span><br><span class="s">638  CEP      6.1</span><br><span class="s">639  CEPSI    8.1</span><br><span class="s">640  SFP      8.</span><br><span class="s">641  SFPSI    6.1</span><br><span class="s">642  CHP      8.</span><br><span class="s">643  CHPSI    10.3</span><br><span class="s">644  TRP      8.</span><br><span class="s">645  TRPSI    10.3</span><br><span class="s">646  ASPSI    8.</span><br><span class="s">647  ATPSI    8.</span><br><span class="s">648  GGPSI    8.</span><br><span class="s">649  LDPSI    8.</span><br><span class="s">650  APPSI    8.</span><br><span class="s">651  TPP      6.1</span><br><span class="s">652  TPPSI    8.</span><br><span class="s">653  AMP      5.1</span><br><span class="s">654  AMPSI    8.</span><br><span class="s">655  GBP      5.1</span><br><span class="s">656  GBPSI    8.</span><br><span class="s">657  OSPSI    8.</span><br><span class="s">658  GHP      6.1</span><br><span class="s">659  GHPMETH  3.</span><br><span class="s">660  G1P      7.1</span><br><span class="s">661  G1PSI    10.3</span><br><span class="s">662  G1PCODE  2.</span><br><span class="s">663  G1PTIM1  4.</span><br><span class="s">664  G1PTIM2  4.</span><br><span class="s">665  G2P      7.1</span><br><span class="s">666  G2PSI    10.3</span><br><span class="s">667  C1P      9.3</span><br><span class="s">668  C1PSI    9.3</span><br><span class="s">669  C2P      10.3</span><br><span class="s">670  C2PSI    10.3</span><br><span class="s">671  I1P      9.2</span><br><span class="s">672  I1PSI    10.2</span><br><span class="s">673  I2P      9.2</span><br><span class="s">674  I2PSI    10.2</span><br><span class="s">675  UDP      8.2</span><br><span class="s">676  UDPSI    9.2</span><br><span class="s">677  URP      7.1</span><br><span class="s">678  URPSI    6.1</span><br><span class="s">679  UBP      8.1</span><br><span class="s">680  UIP      9.1</span><br><span class="s">681  ;</span><br><span class="s">682  </span><br><span class="s">683  INPUT</span><br><span class="s">684  SEQN     1-5</span><br><span class="s">685  DMPFSEQ  6-10</span><br><span class="s">686  DMPSTAT  11</span><br><span class="s">687  DMARETHN 12</span><br><span class="s">688  DMARACER 13</span><br><span class="s">689  DMAETHNR 14</span><br><span class="s">690  HSSEX    15</span><br><span class="s">691  HSAGEIR  16-17</span><br><span class="s">692  HSAGEU   18</span><br><span class="s">693  HSAITMOR 19-22</span><br><span class="s">694  HSFSIZER 23-24</span><br><span class="s">695  HSHSIZER 25-26</span><br><span class="s">696  DMPCNTYR 27-29</span><br><span class="s">697  DMPFIPSR 30-31</span><br><span class="s">698  DMPMETRO 32</span><br><span class="s">699  DMPCREGN 33</span><br><span class="s">700  DMPPIR   34-39</span><br><span class="s">701  SDPPHASE 40</span><br><span class="s">702  SDPPSU6  41</span><br><span class="s">703  SDPSTRA6 42-43</span><br><span class="s">704  SDPPSU1  44</span><br><span class="s">705  SDPSTRA1 45-46</span><br><span class="s">706  SDPPSU2  47</span><br><span class="s">707  SDPSTRA2 48-49</span><br><span class="s">708  WTPFQX6  50-58</span><br><span class="s">709  WTPFEX6  59-67</span><br><span class="s">710  WTPFHX6  68-76</span><br><span class="s">711  WTPFALG6 77-85</span><br><span class="s">712  WTPFCNS6 86-94</span><br><span class="s">713  WTPFSD6  95-103</span><br><span class="s">714  WTPFMD6  104-112</span><br><span class="s">715  WTPFHSD6 113-121</span><br><span class="s">716  WTPFHMD6 122-130</span><br><span class="s">717  WTPFQX1  131-139</span><br><span class="s">718  WTPFEX1  140-148</span><br><span class="s">719  WTPFHX1  149-157</span><br><span class="s">720  WTPFALG1 158-166</span><br><span class="s">721  WTPFCNS1 167-175</span><br><span class="s">722  WTPFSD1  176-184</span><br><span class="s">723  WTPFMD1  185-193</span><br><span class="s">724  WTPFHSD1 194-202</span><br><span class="s">725  WTPFHMD1 203-211</span><br><span class="s">726  WTPFQX2  212-220</span><br><span class="s">727  WTPFEX2  221-229</span><br><span class="s">728  WTPFHX2  230-238</span><br><span class="s">729  WTPFALG2 239-247</span><br><span class="s">730  WTPFCNS2 248-256</span><br><span class="s">731  WTPFSD2  257-265</span><br><span class="s">732  WTPFMD2  266-274</span><br><span class="s">733  WTPFHSD2 275-283</span><br><span class="s">734  WTPFHMD2 284-292</span><br><span class="s">735  WTPQRP1  293-301</span><br><span class="s">736  WTPQRP2  302-310</span><br><span class="s">737  WTPQRP3  311-319</span><br><span class="s">738  WTPQRP4  320-328</span><br><span class="s">739  WTPQRP5  329-337</span><br><span class="s">740  WTPQRP6  338-346</span><br><span class="s">741  WTPQRP7  347-355</span><br><span class="s">742  WTPQRP8  356-364</span><br><span class="s">743  WTPQRP9  365-373</span><br><span class="s">744  WTPQRP10 374-382</span><br><span class="s">745  WTPQRP11 383-391</span><br><span class="s">746  WTPQRP12 392-400</span><br><span class="s">747  WTPQRP13 401-409</span><br><span class="s">748  WTPQRP14 410-418</span><br><span class="s">749  WTPQRP15 419-427</span><br><span class="s">750  WTPQRP16 428-436</span><br><span class="s">751  WTPQRP17 437-445</span><br><span class="s">752  WTPQRP18 446-454</span><br><span class="s">753  WTPQRP19 455-463</span><br><span class="s">754  WTPQRP20 464-472</span><br><span class="s">755  WTPQRP21 473-481</span><br><span class="s">756  WTPQRP22 482-490</span><br><span class="s">757  WTPQRP23 491-499</span><br><span class="s">758  WTPQRP24 500-508</span><br><span class="s">759  WTPQRP25 509-517</span><br><span class="s">760  WTPQRP26 518-526</span><br><span class="s">761  WTPQRP27 527-535</span><br><span class="s">762  WTPQRP28 536-544</span><br><span class="s">763  WTPQRP29 545-553</span><br><span class="s">764  WTPQRP30 554-562</span><br><span class="s">765  WTPQRP31 563-571</span><br><span class="s">766  WTPQRP32 572-580</span><br><span class="s">767  WTPQRP33 581-589</span><br><span class="s">768  WTPQRP34 590-598</span><br><span class="s">769  WTPQRP35 599-607</span><br><span class="s">770  WTPQRP36 608-616</span><br><span class="s">771  WTPQRP37 617-625</span><br><span class="s">772  WTPQRP38 626-634</span><br><span class="s">773  WTPQRP39 635-643</span><br><span class="s">774  WTPQRP40 644-652</span><br><span class="s">775  WTPQRP41 653-661</span><br><span class="s">776  WTPQRP42 662-670</span><br><span class="s">777  WTPQRP43 671-679</span><br><span class="s">778  WTPQRP44 680-688</span><br><span class="s">779  WTPQRP45 689-697</span><br><span class="s">780  WTPQRP46 698-706</span><br><span class="s">781  WTPQRP47 707-715</span><br><span class="s">782  WTPQRP48 716-724</span><br><span class="s">783  WTPQRP49 725-733</span><br><span class="s">784  WTPQRP50 734-742</span><br><span class="s">785  WTPQRP51 743-751</span><br><span class="s">786  WTPQRP52 752-760</span><br><span class="s">787  WTPXRP1  761-769</span><br><span class="s">788  WTPXRP2  770-778</span><br><span class="s">789  WTPXRP3  779-787</span><br><span class="s">790  WTPXRP4  788-796</span><br><span class="s">791  WTPXRP5  797-805</span><br><span class="s">792  WTPXRP6  806-814</span><br><span class="s">793  WTPXRP7  815-823</span><br><span class="s">794  WTPXRP8  824-832</span><br><span class="s">795  WTPXRP9  833-841</span><br><span class="s">796  WTPXRP10 842-850</span><br><span class="s">797  WTPXRP11 851-859</span><br><span class="s">798  WTPXRP12 860-868</span><br><span class="s">799  WTPXRP13 869-877</span><br><span class="s">800  WTPXRP14 878-886</span><br><span class="s">801  WTPXRP15 887-895</span><br><span class="s">802  WTPXRP16 896-904</span><br><span class="s">803  WTPXRP17 905-913</span><br><span class="s">804  WTPXRP18 914-922</span><br><span class="s">805  WTPXRP19 923-931</span><br><span class="s">806  WTPXRP20 932-940</span><br><span class="s">807  WTPXRP21 941-949</span><br><span class="s">808  WTPXRP22 950-958</span><br><span class="s">809  WTPXRP23 959-967</span><br><span class="s">810  WTPXRP24 968-976</span><br><span class="s">811  WTPXRP25 977-985</span><br><span class="s">812  WTPXRP26 986-994</span><br><span class="s">813  WTPXRP27 995-1003</span><br><span class="s">814  WTPXRP28 1004-1012</span><br><span class="s">815  WTPXRP29 1013-1021</span><br><span class="s">816  WTPXRP30 1022-1030</span><br><span class="s">817  WTPXRP31 1031-1039</span><br><span class="s">818  WTPXRP32 1040-1048</span><br><span class="s">819  WTPXRP33 1049-1057</span><br><span class="s">820  WTPXRP34 1058-1066</span><br><span class="s">821  WTPXRP35 1067-1075</span><br><span class="s">822  WTPXRP36 1076-1084</span><br><span class="s">823  WTPXRP37 1085-1093</span><br><span class="s">824  WTPXRP38 1094-1102</span><br><span class="s">825  WTPXRP39 1103-1111</span><br><span class="s">826  WTPXRP40 1112-1120</span><br><span class="s">827  WTPXRP41 1121-1129</span><br><span class="s">828  WTPXRP42 1130-1138</span><br><span class="s">829  WTPXRP43 1139-1147</span><br><span class="s">830  WTPXRP44 1148-1156</span><br><span class="s">831  WTPXRP45 1157-1165</span><br><span class="s">832  WTPXRP46 1166-1174</span><br><span class="s">833  WTPXRP47 1175-1183</span><br><span class="s">834  WTPXRP48 1184-1192</span><br><span class="s">835  WTPXRP49 1193-1201</span><br><span class="s">836  WTPXRP50 1202-1210</span><br><span class="s">837  WTPXRP51 1211-1219</span><br><span class="s">838  WTPXRP52 1220-1228</span><br><span class="s">839  HYAITMO  1229-1232</span><br><span class="s">840  MXPLANG  1233</span><br><span class="s">841  MXPSESSR 1234</span><br><span class="s">842  MXPTIDW  1235</span><br><span class="s">843  MXPAXTMR 1236-1239</span><br><span class="s">844  HXPTIDW  1240</span><br><span class="s">845  HXPAXTMR 1241-1244</span><br><span class="s">846  HXPSESSR 1245</span><br><span class="s">847  PHPLANG  1246</span><br><span class="s">848  PHPHEMO  1247</span><br><span class="s">849  PHPCHM2  1248</span><br><span class="s">850  PHPINSU  1249</span><br><span class="s">851  PHPSNTI  1250-1254</span><br><span class="s">852  PHPSNDA  1255</span><br><span class="s">853  PHPDRIN  1256</span><br><span class="s">854  PHPDRTI  1257-1261</span><br><span class="s">855  PHPDRDA  1262</span><br><span class="s">856  PHPFAST  1263-1267</span><br><span class="s">857  PHPBEST  1268-1272</span><br><span class="s">858  WCP      1273-1277</span><br><span class="s">859  WCPSI    1278-1282</span><br><span class="s">860  LMPPCNT  1283-1287</span><br><span class="s">861  MOPPCNT  1288-1292</span><br><span class="s">862  GRPPCNT  1293-1297</span><br><span class="s">863  LMP      1298-1302</span><br><span class="s">864  MOP      1303-1306</span><br><span class="s">865  GRP      1307-1311</span><br><span class="s">866  RCP      1312-1315</span><br><span class="s">867  RCPSI    1316-1319</span><br><span class="s">868  HGP      1320-1324</span><br><span class="s">869  HGPSI    1325-1329</span><br><span class="s">870  HTP      1330-1334</span><br><span class="s">871  HTPSI    1335-1339</span><br><span class="s">872  MVPSI    1340-1344</span><br><span class="s">873  MCPSI    1345-1349</span><br><span class="s">874  MHP      1350-1354</span><br><span class="s">875  MHPSI    1355-1359</span><br><span class="s">876  RWP      1360-1364</span><br><span class="s">877  RWPSI    1365-1370</span><br><span class="s">878  PLP      1371-1375</span><br><span class="s">879  PLPSI    1376-1380</span><br><span class="s">880  DWP      1381-1385</span><br><span class="s">881  PVPSI    1386-1390</span><br><span class="s">882  GRPDIF   1391-1393</span><br><span class="s">883  LMPDIF   1394-1396</span><br><span class="s">884  MOPDIF   1397-1398</span><br><span class="s">885  EOP      1399-1400</span><br><span class="s">886  BOP      1401-1402</span><br><span class="s">887  BLP      1403</span><br><span class="s">888  PRP      1404</span><br><span class="s">889  MEP      1405</span><br><span class="s">890  MLP      1406</span><br><span class="s">891  BAP      1407-1408</span><br><span class="s">892  LAP      1409-1410</span><br><span class="s">893  ANP      1411</span><br><span class="s">894  BSP      1412</span><br><span class="s">895  HZP      1413</span><br><span class="s">896  PKP      1414</span><br><span class="s">897  POP      1415</span><br><span class="s">898  MRP      1416</span><br><span class="s">899  MIP      1417</span><br><span class="s">900  SIP      1418</span><br><span class="s">901  SHP      1419</span><br><span class="s">902  TTP      1420</span><br><span class="s">903  TXP      1421</span><br><span class="s">904  VUP      1422</span><br><span class="s">905  PBP      1423-1426</span><br><span class="s">906  PBPSI    1427-1431</span><br><span class="s">907  EPP      1432-1435</span><br><span class="s">908  EPPSI    1436-1440</span><br><span class="s">909  FEP      1441-1443</span><br><span class="s">910  FEPSI    1444-1448</span><br><span class="s">911  TIP      1449-1452</span><br><span class="s">912  TIPSI    1453-1458</span><br><span class="s">913  PXP      1459-1462</span><br><span class="s">914  FRP      1463-1466</span><br><span class="s">915  FRPSI    1467-1470</span><br><span class="s">916  FOP      1471-1475</span><br><span class="s">917  FOPSI    1476-1480</span><br><span class="s">918  RBP      1481-1484</span><br><span class="s">919  RBPSI    1485-1490</span><br><span class="s">920  VBP      1491-1496</span><br><span class="s">921  VBPSI    1497-1504</span><br><span class="s">922  VCP      1505-1508</span><br><span class="s">923  VCPSI    1509-1514</span><br><span class="s">924  ICPSI    1515-1518</span><br><span class="s">925  CAPSI    1519-1522</span><br><span class="s">926  SEP      1523-1526</span><br><span class="s">927  SEPSI    1527-1530</span><br><span class="s">928  VAP      1531-1533</span><br><span class="s">929  VAPSI    1534-1537</span><br><span class="s">930  VEP      1538-1542</span><br><span class="s">931  VEPSI    1543-1548</span><br><span class="s">932  ACP      1549-1551</span><br><span class="s">933  ACPSI    1552-1555</span><br><span class="s">934  BCP      1556-1559</span><br><span class="s">935  BCPSI    1560-1564</span><br><span class="s">936  BXP      1565-1567</span><br><span class="s">937  BXPSI    1568-1571</span><br><span class="s">938  LUP      1572-1574</span><br><span class="s">939  LUPSI    1575-1578</span><br><span class="s">940  LYP      1579-1581</span><br><span class="s">941  LYPSI    1582-1585</span><br><span class="s">942  REP      1586-1588</span><br><span class="s">943  REPSI    1589-1592</span><br><span class="s">944  COP      1593-1597</span><br><span class="s">945  TCP      1598-1600</span><br><span class="s">946  TCPSI    1601-1605</span><br><span class="s">947  TGP      1606-1609</span><br><span class="s">948  TGPSI    1610-1614</span><br><span class="s">949  LCP      1615-1617</span><br><span class="s">950  LCPSI    1618-1621</span><br><span class="s">951  HDP      1622-1624</span><br><span class="s">952  HDPSI    1625-1628</span><br><span class="s">953  AAP      1629-1631</span><br><span class="s">954  AAPSI    1632-1635</span><br><span class="s">955  ABP      1636-1638</span><br><span class="s">956  ABPSI    1639-1642</span><br><span class="s">957  LPP      1643-1645</span><br><span class="s">958  LPPSI    1646-1649</span><br><span class="s">959  FHPSI    1650-1654</span><br><span class="s">960  LHPSI    1655-1658</span><br><span class="s">961  FBP      1659-1662</span><br><span class="s">962  FBPSI    1663-1666</span><br><span class="s">963  CRP      1667-1671</span><br><span class="s">964  TEP      1672-1677</span><br><span class="s">965  AHP      1678</span><br><span class="s">966  HBP      1679</span><br><span class="s">967  SSP      1680-1681</span><br><span class="s">968  SAP      1682</span><br><span class="s">969  HCP      1683</span><br><span class="s">970  DHP      1684</span><br><span class="s">971  H1P      1685</span><br><span class="s">972  H2P      1686</span><br><span class="s">973  RUP      1687-1691</span><br><span class="s">974  RUPUNIT  1692-1695</span><br><span class="s">975  VRP      1696-1700</span><br><span class="s">976  TOP      1701-1703</span><br><span class="s">977  RFP      1704-1708</span><br><span class="s">978  L1P      1709-1713</span><br><span class="s">979  HPP      1714</span><br><span class="s">980  NAPSI    1715-1719</span><br><span class="s">981  SKPSI    1720-1723</span><br><span class="s">982  CLPSI    1724-1728</span><br><span class="s">983  C3PSI    1729-1730</span><br><span class="s">984  SCP      1731-1734</span><br><span class="s">985  SCPSI    1735-1739</span><br><span class="s">986  PSP      1740-1743</span><br><span class="s">987  PSPSI    1744-1748</span><br><span class="s">988  UAP      1749-1752</span><br><span class="s">989  UAPSI    1753-1757</span><br><span class="s">990  SGP      1758-1760</span><br><span class="s">991  SGPSI    1761-1765</span><br><span class="s">992  BUP      1766-1768</span><br><span class="s">993  BUPSI    1769-1773</span><br><span class="s">994  TBP      1774-1777</span><br><span class="s">995  TBPSI    1778-1783</span><br><span class="s">996  CEP      1784-1787</span><br><span class="s">997  CEPSI    1788-1793</span><br><span class="s">998  SFP      1794-1796</span><br><span class="s">999  SFPSI    1797-1800</span><br><span class="s">1000  CHP      1801-1804</span><br><span class="s">1001  CHPSI    1805-1810</span><br><span class="s">1002  TRP      1811-1814</span><br><span class="s">1003  TRPSI    1815-1820</span><br><span class="s">1004  ASPSI    1821-1823</span><br><span class="s">1005  ATPSI    1824-1826</span><br><span class="s">1006  GGPSI    1827-1830</span><br><span class="s">1007  LDPSI    1831-1834</span><br><span class="s">1008  APPSI    1835-1838</span><br><span class="s">1009  TPP      1839-1842</span><br><span class="s">1010  TPPSI    1843-1845</span><br><span class="s">1011  AMP      1846-1848</span><br><span class="s">1012  AMPSI    1849-1851</span><br><span class="s">1013  GBP      1852-1854</span><br><span class="s">1014  GBPSI    1855-1857</span><br><span class="s">1015  OSPSI    1858-1860</span><br><span class="s">1016  GHP      1861-1864</span><br><span class="s">1017  GHPMETH  1865</span><br><span class="s">1018  G1P      1866-1870</span><br><span class="s">1019  G1PSI    1871-1876</span><br><span class="s">1020  G1PCODE  1877-1878</span><br><span class="s">1021  G1PTIM1  1879-1881</span><br><span class="s">1022  G1PTIM2  1882-1884</span><br><span class="s">1023  G2P      1885-1889</span><br><span class="s">1024  G2PSI    1890-1895</span><br><span class="s">1025  C1P      1896-1900</span><br><span class="s">1026  C1PSI    1901-1905</span><br><span class="s">1027  C2P      1906-1911</span><br><span class="s">1028  C2PSI    1912-1917</span><br><span class="s">1029  I1P      1918-1923</span><br><span class="s">1030  I1PSI    1924-1930</span><br><span class="s">1031  I1P2PFLG 1931</span><br><span class="s">1032  I2P      1932-1937</span><br><span class="s">1033  I2PSI    1938-1944</span><br><span class="s">1034  UDP      1945-1949</span><br><span class="s">1035  UDPSI    1950-1955</span><br><span class="s">1036  URP      1956-1960</span><br><span class="s">1037  URPSI    1961-1964</span><br><span class="s">1038  UBP      1965-1970</span><br><span class="s">1039  UIP      1971-1977</span><br><span class="s">1040  ;</span><br><span class="s">1041  </span><br><span class="s">1042  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">1043  </span><br></pre></div>
</body>
</html>





```sas
LABEL
SEQN     = "Sample person identification number"
DMPFSEQ  = "Family sequence number"
DMPSTAT  = "Examination/interview Status"
DMARETHN = "Race-ethnicity"
DMARACER = "Race"
DMAETHNR = "Ethnicity"
HSSEX    = "Sex"
HSAGEIR  = "Age at interview (Screener)"
HSAGEU   = "Age at interview - unit (Screener)"
HSAITMOR = "Age in months at interview (screener)"
HSFSIZER = "Family size (persons in family)"
HSHSIZER = "Household size (persons in dwelling)"
DMPCNTYR = "County code"
DMPFIPSR = "FIPS code for State"
DMPMETRO = "Rural/urban code based on USDA code"
DMPCREGN = "Census region, weighting(Texas in south)"
DMPPIR   = "Poverty Income Ratio (unimputed income)"
SDPPHASE = "Phase of NHANES III survey"
SDPPSU6  = "Total NHANES III pseudo-PSU"
SDPSTRA6 = "Total NHANES III pseudo-stratum"
SDPPSU1  = "Pseudo-PSU for phase 1"
SDPSTRA1 = "Pseudo-stratum for phase 1"
SDPPSU2  = "Pseudo-PSU for phase 2"
SDPSTRA2 = "Pseudo-stratum for phase 2"
WTPFQX6  = "Total interviewed sample final weight"
WTPFEX6  = "Total MEC-examined sample final weight"
WTPFHX6  = "Total M+H examined sample final weight"
WTPFALG6 = "Total allergy subsample final weight"
WTPFCNS6 = "Total CNS subsample final weight"
WTPFSD6  = "Total morning subsample final wgt"
WTPFMD6  = "Total afternoon/eve subsample final wgt"
WTPFHSD6 = "Total M+H morning subsample final wgt"
WTPFHMD6 = "Total M+H afternoon subsample final wgt"
WTPFQX1  = "Phase 1 interviewed sample final wgt"
WTPFEX1  = "Phase 1 MEC examined sample final wgt"
WTPFHX1  = "Phase 1 M+H examined sample final wgt"
WTPFALG1 = "Phase 1 allergy subsample final wgt"
WTPFCNS1 = "Phase 1 CNS subsample final wgt"
WTPFSD1  = "Phase 1 morning sess subsample final wgt"
WTPFMD1  = "Phase 1 aft/eve subsample final wgt"
WTPFHSD1 = "Phase 1 morning M+H subsample final wgt"
WTPFHMD1 = "Phase 1 aft/eve M+H subsample final wgt"
WTPFQX2  = "Phase 2 interviewed sample final wgt"
WTPFEX2  = "Phase 2 MEC examined sample final wgt"
WTPFHX2  = "Phase 2 M+H examined sample final wgt"
WTPFALG2 = "Phase 2 allergy subsample final wgt"
WTPFCNS2 = "Phase 2 CNS subsample final wgt"
WTPFSD2  = "Phase 2 morning sess subsample final wgt"
WTPFMD2  = "Phase 2 aft/eve subsample final wgt"
WTPFHSD2 = "Phase 2 morning M+H subsample final wgt"
WTPFHMD2 = "Phase 2 aft/eve M+H subsample final wgt"
WTPQRP1  = "Replicate 1 final interview weight"
WTPQRP2  = "Replicate 2 final interview weight"
WTPQRP3  = "Replicate 3 final interview weight"
WTPQRP4  = "Replicate 4 final interview weight"
WTPQRP5  = "Replicate 5 final interview weight"
WTPQRP6  = "Replicate 6 final interview weight"
WTPQRP7  = "Replicate 7 final interview weight"
WTPQRP8  = "Replicate 8 final interview weight"
WTPQRP9  = "Replicate 9 final interview weight"
WTPQRP10 = "Replicate 10 final interview weight"
WTPQRP11 = "Replicate 11 final interview weight"
WTPQRP12 = "Replicate 12 final interview weight"
WTPQRP13 = "Replicate 13 final interview weight"
WTPQRP14 = "Replicate 14 final interview weight"
WTPQRP15 = "Replicate 15 final interview weight"
WTPQRP16 = "Replicate 16 final interview weight"
WTPQRP17 = "Replicate 17 final interview weight"
WTPQRP18 = "Replicate 18 final interview weight"
WTPQRP19 = "Replicate 19 final interview weight"
WTPQRP20 = "Replicate 20 final interview weight"
WTPQRP21 = "Replicate 21 final interview weight"
WTPQRP22 = "Replicate 22 final interview weight"
WTPQRP23 = "Replicate 23 final interview weight"
WTPQRP24 = "Replicate 24 final interview weight"
WTPQRP25 = "Replicate 25 final interview weight"
WTPQRP26 = "Replicate 26 final interview weight"
WTPQRP27 = "Replicate 27 final interview weight"
WTPQRP28 = "Replicate 28 final interview weight"
WTPQRP29 = "Replicate 29 final interview weight"
WTPQRP30 = "Replicate 30 final interview weight"
WTPQRP31 = "Replicate 31 final interview weight"
WTPQRP32 = "Replicate 32 final interview weight"
WTPQRP33 = "Replicate 33 final interview weight"
WTPQRP34 = "Replicate 34 final interview weight"
WTPQRP35 = "Replicate 35 final interview weight"
WTPQRP36 = "Replicate 36 final interview weight"
WTPQRP37 = "Replicate 37 final interview weight"
WTPQRP38 = "Replicate 38 final interview weight"
WTPQRP39 = "Replicate 39 final interview weight"
WTPQRP40 = "Replicate 40 final interview weight"
WTPQRP41 = "Replicate 41 final interview weight"
WTPQRP42 = "Replicate 42 final interview weight"
WTPQRP43 = "Replicate 43 final interview weight"
WTPQRP44 = "Replicate 44 final interview weight"
WTPQRP45 = "Replicate 45 final interview weight"
WTPQRP46 = "Replicate 46 final interview weight"
WTPQRP47 = "Replicate 47 final interview weight"
WTPQRP48 = "Replicate 48 final interview weight"
WTPQRP49 = "Replicate 49 final interview weight"
WTPQRP50 = "Replicate 50 final interview weight"
WTPQRP51 = "Replicate 51 final interview weight"
WTPQRP52 = "Replicate 52 final interview weight"
WTPXRP1  = "Replicate 1 final exam weight"
WTPXRP2  = "Replicate 2 final exam weight"
WTPXRP3  = "Replicate 3 final exam weight"
WTPXRP4  = "Replicate 4 final exam weight"
WTPXRP5  = "Replicate 5 final exam weight"
WTPXRP6  = "Replicate 6 final exam weight"
WTPXRP7  = "Replicate 7 final exam weight"
WTPXRP8  = "Replicate 8 final exam weight"
WTPXRP9  = "Replicate 9 final exam weight"
WTPXRP10 = "Replicate 10 final exam weight"
WTPXRP11 = "Replicate 11 final exam weight"
WTPXRP12 = "Replicate 12 final exam weight"
WTPXRP13 = "Replicate 13 final exam weight"
WTPXRP14 = "Replicate 14 final exam weight"
WTPXRP15 = "Replicate 15 final exam weight"
WTPXRP16 = "Replicate 16 final exam weight"
WTPXRP17 = "Replicate 17 final exam weight"
WTPXRP18 = "Replicate 18 final exam weight"
WTPXRP19 = "Replicate 19 final exam weight"
WTPXRP20 = "Replicate 20 final exam weight"
WTPXRP21 = "Replicate 21 final exam weight"
WTPXRP22 = "Replicate 22 final exam weight"
WTPXRP23 = "Replicate 23 final exam weight"
WTPXRP24 = "Replicate 24 final exam weight"
WTPXRP25 = "Replicate 25 final exam weight"
WTPXRP26 = "Replicate 26 final exam weight"
WTPXRP27 = "Replicate 27 final exam weight"
WTPXRP28 = "Replicate 28 final exam weight"
WTPXRP29 = "Replicate 29 final exam weight"
WTPXRP30 = "Replicate 30 final exam weight"
WTPXRP31 = "Replicate 31 final exam weight"
WTPXRP32 = "Replicate 32 final exam weight"
WTPXRP33 = "Replicate 33 final exam weight"
WTPXRP34 = "Replicate 34 final exam weight"
WTPXRP35 = "Replicate 35 final exam weight"
WTPXRP36 = "Replicate 36 final exam weight"
WTPXRP37 = "Replicate 37 final exam weight"
WTPXRP38 = "Replicate 38 final exam weight"
WTPXRP39 = "Replicate 39 final exam weight"
WTPXRP40 = "Replicate 40 final exam weight"
WTPXRP41 = "Replicate 41 final exam weight"
WTPXRP42 = "Replicate 42 final exam weight"
WTPXRP43 = "Replicate 43 final exam weight"
WTPXRP44 = "Replicate 44 final exam weight"
WTPXRP45 = "Replicate 45 final exam weight"
WTPXRP46 = "Replicate 46 final exam weight"
WTPXRP47 = "Replicate 47 final exam weight"
WTPXRP48 = "Replicate 48 final exam weight"
WTPXRP49 = "Replicate 49 final exam weight"
WTPXRP50 = "Replicate 50 final exam weight"
WTPXRP51 = "Replicate 51 final exam weight"
WTPXRP52 = "Replicate 52 final exam weight"
HYAITMO  = "Age in months at youth interview"
MXPLANG  = "Language used by SP in MEC"
MXPSESSR = "Session for MEC examination"
MXPTIDW  = "Day of week of MEC exam"
MXPAXTMR = "Age in months at MEC exam"
HXPTIDW  = "Day of week of home exam"
HXPAXTMR = "Age in months at home exam"
HXPSESSR = "Session for home examination"
PHPLANG  = "Language"
PHPHEMO  = "Do you have hemophilia?"
PHPCHM2  = "Recent chemo/within the past four weeks"
PHPINSU  = "Are you currently taking insulin?"
PHPSNTI  = "Time participant last ate"
PHPSNDA  = "Day participant last ate"
PHPDRIN  = "Have you had anything to drink?"
PHPDRTI  = "Time participant last drank"
PHPDRDA  = "Day participant last drank"
PHPFAST  = "Length of calculated fast (in hours)"
PHPBEST  = "Time of venipuncture"
WCP      = "White blood cell count"
WCPSI    = "White blood cell count: SI"
LMPPCNT  = "Lymphocyte percent (Coulter)"
MOPPCNT  = "Mononuclear percent (Coulter)"
GRPPCNT  = "Granulocyte percent (Coulter)"
LMP      = "Lymphocyte number (Coulter)"
MOP      = "Mononuclear number (Coulter)"
GRP      = "Granulocyte number (Coulter)"
RCP      = "Red blood cell count"
RCPSI    = "Red blood cell count:  SI"
HGP      = "Hemoglobin (g/dL)"
HGPSI    = "Hemoglobin:  SI (g/L)"
HTP      = "Hematocrit (%)"
HTPSI    = "Hematocrit:  SI (L/L=1)"
MVPSI    = "Mean cell volume:  SI (fL)"
MCPSI    = "Mean cell hemoglobin:  SI (pg)"
MHP      = "Mean cell hemoglobin concentration"
MHPSI    = "Mean cell hemoglobin concentration: SI"
RWP      = "Red cell distribution width (%)"
RWPSI    = "Red cell distribution width:SI(fraction)"
PLP      = "Platelet count"
PLPSI    = "Platelet count:  SI"
DWP      = "Platelet distribution width (%)"
PVPSI    = "Mean platelet volume:  SI (fL)"
GRPDIF   = "Segment neutrophil(percent of 100 cells)"
LMPDIF   = "Lymphocytes (percent of 100 cells)"
MOPDIF   = "Monocytes (percent of 100 cells)"
EOP      = "Eosinophils (percent of 100 cells)"
BOP      = "Basophils (percent of 100 cells)"
BLP      = "Blasts (percent of 100 cells)"
PRP      = "Promyelocytes (percent of 100 cells)"
MEP      = "Metamyelocytes (percent of 100 cells)"
MLP      = "Myelocytes (percent of 100 cells)"
BAP      = "Bands (percent of 100 cells)"
LAP      = "Atyp lymphocytes (percent of 100 cells)"
ANP      = "Anisocytosis (variation of cell size)"
BSP      = "Basophilic stippling"
HZP      = "Hypochromia (stain intensity of cell)"
PKP      = "Poikilocytosis (cell shape variation)"
POP      = "Polychromatophilia(bluish color of cell)"
MRP      = "Macrocytosis (large cell prevalence)"
MIP      = "Microcytosis (small cell prevalence)"
SIP      = "Sickle cells"
SHP      = "Spherocytosis"
TTP      = "Target cells"
TXP      = "Toxic granulation"
VUP      = "Vacuolated cells"
PBP      = "Lead (ug/dL)"
PBPSI    = "Lead:  SI (umol/L)"
EPP      = "Erythrocyte protoporphyrin (ug/dL)"
EPPSI    = "Erythrocyte protoporphyrin:  SI (umol/L)"
FEP      = "Serum iron (ug/dL)"
FEPSI    = "Serum iron:  SI (umol/L)"
TIP      = "Serum TIBC (ug/dL)"
TIPSI    = "Serum TIBC:  SI (umol/L)"
PXP      = "Serum transferrin saturation (%)"
FRP      = "Serum ferritin (ng/mL)"
FRPSI    = "Serum ferritin:  SI (ug/L)"
FOP      = "Serum folate (ng/mL)"
FOPSI    = "Serum folate:  SI (nmol/L)"
RBP      = "RBC folate (ng/mL)"
RBPSI    = "RBC folate:  SI (nmol/L)"
VBP      = "Serum vitamin B12 (pg/mL)"
VBPSI    = "Serum vitamin B12:  SI (pmol/L)"
VCP      = "Serum vitamin C (mg/dL)"
VCPSI    = "Serum vitamin C:  SI (mmol/L)"
ICPSI    = "Serum normalized calcium:  SI (mmol/L)"
CAPSI    = "Serum total calcium:  SI (mmol/L)"
SEP      = "Serum selenium (ng/mL)"
SEPSI    = "Serum selenium:  SI (nmol/L)"
VAP      = "Serum vitamin A (ug/dL)"
VAPSI    = "Serum vitamin A:  SI (umol/L)"
VEP      = "Serum vitamin E (ug/dL)"
VEPSI    = "Serum vitamin E:  SI (umol/L)"
ACP      = "Serum alpha carotene (ug/dL)"
ACPSI    = "Serum alpha carotene:  SI (umol/L)"
BCP      = "Serum beta carotene (ug/dL)"
BCPSI    = "Serum beta carotene: SI (umol/L)"
BXP      = "Serum beta cryptoxanthin (ug/dL)"
BXPSI    = "Serum beta cryptoxanthin:  SI (umol/L)"
LUP      = "Serum lutein/zeaxanthin (ug/dL)"
LUPSI    = "Serum lutein/zeaxanthin:  SI (umol/L)"
LYP      = "Serum lycopene (ug/dL)"
LYPSI    = "Serum lycopene:  SI (umol/L)"
REP      = "Serum sum retinyl esters (ug/dL)"
REPSI    = "Serum sum retinyl esters:  SI (umol/L)"
COP      = "Serum cotinine (ng/mL)"
TCP      = "Serum cholesterol (mg/dL)"
TCPSI    = "Serum cholesterol:  SI (mmol/L)"
TGP      = "Serum triglycerides (mg/dL)"
TGPSI    = "Serum triglycerides:  SI (mmol/L)"
LCP      = "Serum LDL cholesterol (mg/dL)"
LCPSI    = "Serum LDL cholesterol:  SI (mmol/L)"
HDP      = "Serum HDL cholesterol (mg/dL)"
HDPSI    = "Serum HDL cholesterol:  SI (mmol/L)"
AAP      = "Serum apolipoprotein AI (mg/dL)"
AAPSI    = "Serum apolipoprotein AI: SI (g/L)"
ABP      = "Serum apolipoprotein B (mg/dL)"
ABPSI    = "Serum apolipoprotein B: SI (g/L)"
LPP      = "Serum lipoprotein(a) (mg/dL)"
LPPSI    = "Serum lipoprotein(a):  SI (g/L)"
FHPSI    = "Serum FSH:  SI (IU/L)"
LHPSI    = "Serum luteinizing hormone: SI (IU/L)"
FBP      = "Plasma fibrinogen (mg/dL)"
FBPSI    = "Plasma fibrinogen:  SI (g/L)"
CRP      = "Serum C-reactive protein (mg/dL)"
TEP      = "Serum tetanus antibody (U/mL)"
AHP      = "Serum hepatitis A antibody"
HBP      = "Serum hepatitis B core antibody"
SSP      = "Serum hepatitis B surface antibody"
SAP      = "Serum hepatitis B surface antigen"
HCP      = "Serum hepatitis C antibody"
DHP      = "Serum hepatitis D antibody"
H1P      = "Serum herpes I antibody"
H2P      = "Serum herpes II antibody"
RUP      = "Serum rubella antibody"
RUPUNIT  = "Serum rubells antibody (IU)"
VRP      = "Serum varicella antibody"
TOP      = "Serum toxoplasmosis antibody"
RFP      = "Serum rheumatoid factor antibody"
L1P      = "Serum latex antibody (IU/mL)"
HPP      = "Serum helicobacter pylori antibody"
NAPSI    = "Serum sodium:  SI (mmol/L)"
SKPSI    = "Serum potassium:  SI (mmol/L)"
CLPSI    = "Serum chloride:  SI (mmol/L)"
C3PSI    = "Serum bicarbonate:  SI (mmol/L)"
SCP      = "Serum total calcium (mg/dL)"
SCPSI    = "Serum total calcium: SI (mmol/L)"
PSP      = "Serum phosphorus (mg/dL)"
PSPSI    = "Serum phosphorus: SI (mmol/L)"
UAP      = "Serum uric acid (mg/dL)"
UAPSI    = "Serum uric acid:  SI (umol/L)"
SGP      = "Serum glucose (mg/dL)"
SGPSI    = "Serum glucose:  SI (mmol/L)"
BUP      = "Serum blood urea nitrogen (mg/dL)"
BUPSI    = "Serum blood urea nitrogen:  SI (mmol/L)"
TBP      = "Serum total bilirubin (mg/dL)"
TBPSI    = "Serum total bilirubin:  SI (umol/L)"
CEP      = "Serum creatinine (mg/dL)"
CEPSI    = "Serum creatinine:  SI (umol/L)"
SFP      = "Serum iron (ug/dL)"
SFPSI    = "Serum iron:  SI (umol/L)"
CHP      = "Serum cholesterol (mg/dL)"
CHPSI    = "Serum cholesterol:  SI (mmol/L)"
TRP      = "Serum triglycerides (mg/dL)"
TRPSI    = "Serum triglycerides:  SI (mmol/L)"
ASPSI    = "Aspartate aminotransferase: SI(U/L)"
ATPSI    = "Alanine aminotransferase:  SI (U/L)"
GGPSI    = "Gamma glutamyl transferase: SI(U/L)"
LDPSI    = "Serum lactate dehydrogenase:  SI (U/L)"
APPSI    = "Serum alkaline phosphatase:  SI (U/L)"
TPP      = "Serum total protein (g/dL)"
TPPSI    = "Serum total protein:  SI (g/L)"
AMP      = "Serum albumin (g/dL)"
AMPSI    = "Serum albumin:  SI (g/L)"
GBP      = "Serum globulin (g/dL)"
GBPSI    = "Serum globulin:  SI (g/L)"
OSPSI    = "Serum osmolality:  SI (mmol/Kg)"
GHP      = "Glycated hemoglobin: (%)"
GHPMETH  = "Glycated hemoglobin: test method"
G1P      = "Plasma glucose (mg/dL)"
G1PSI    = "Plasma glucose:  SI (mmol/L)"
G1PCODE  = "Incomplete glucose test (OGTT) code"
G1PTIM1  = "Minutes between drink and second draw"
G1PTIM2  = "Minutes between first and second draw"
G2P      = "Second plasma glucose (mg/dL)"
G2PSI    = "Second plasma glucose: SI (mmol/L)"
C1P      = "Serum C-peptide (pmol/mL)"
C1PSI    = "Serum C-peptide: SI (nmol/L)"
C2P      = "Second serum C-peptide (pmol/mL)"
C2PSI    = "Second serum C-peptide: SI (nmol/L)"
I1P      = "Serum insulin (uU/mL)"
I1PSI    = "Serum insulin:  SI (pmol/L)"
I1P2PFLG = "Serum insulin: test kit"
I2P      = "Second serum insulin (uU/mL)"
I2PSI    = "Second serum insulin: SI (pmol/L)"
UDP      = "Urinary cadmium (ng/mL)"
UDPSI    = "Urinary cadmium: SI (nmol/L)"
URP      = "Urinary creatinine (mg/dL)"
URPSI    = "Urinary creatinine: SI (mmol/L)"
UBP      = "Urinary albumin (ug/mL)"
UIP      = "Urinary iodine (ug/dL)"
;
```




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
  <title></title>
  <meta http-equiv="content-type" content="text/html; charset=None">
  <style type="text/css">
td.linenos { background-color: #f0f0f0; padding-right: 10px; }
span.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }
pre { line-height: 125%; }
body .hll { background-color: #ffffcc }
body  { background: #ffffff; }
body .c { color: #0000FF } /* Comment */
body .k { color: #ff0000; font-weight: bold } /* Keyword */
body .n { color: #008000 } /* Name */
body .ch { color: #0000FF } /* Comment.Hashbang */
body .cm { color: #0000FF } /* Comment.Multiline */
body .cp { color: #0000FF } /* Comment.Preproc */
body .cpf { color: #0000FF } /* Comment.PreprocFile */
body .c1 { color: #0000FF } /* Comment.Single */
body .cs { color: #0000FF } /* Comment.Special */
body .kc { color: #ff0000; font-weight: bold } /* Keyword.Constant */
body .kd { color: #ff0000; font-weight: bold } /* Keyword.Declaration */
body .kn { color: #ff0000; font-weight: bold } /* Keyword.Namespace */
body .kp { color: #ff0000; font-weight: bold } /* Keyword.Pseudo */
body .kr { color: #ff0000; font-weight: bold } /* Keyword.Reserved */
body .kt { color: #ff0000; font-weight: bold } /* Keyword.Type */
body .s { color: #111111 } /* Literal.String */
body .na { color: #008000 } /* Name.Attribute */
body .nb { color: #008000 } /* Name.Builtin */
body .nc { color: #008000 } /* Name.Class */
body .no { color: #008000 } /* Name.Constant */
body .nd { color: #008000 } /* Name.Decorator */
body .ni { color: #008000 } /* Name.Entity */
body .ne { color: #008000 } /* Name.Exception */
body .nf { color: #008000 } /* Name.Function */
body .nl { color: #008000 } /* Name.Label */
body .nn { color: #008000 } /* Name.Namespace */
body .nx { color: #008000 } /* Name.Other */
body .py { color: #008000 } /* Name.Property */
body .nt { color: #008000 } /* Name.Tag */
body .nv { color: #008000 } /* Name.Variable */
body .sb { color: #111111 } /* Literal.String.Backtick */
body .sc { color: #111111 } /* Literal.String.Char */
body .sd { color: #111111 } /* Literal.String.Doc */
body .s2 { color: #111111 } /* Literal.String.Double */
body .se { color: #111111 } /* Literal.String.Escape */
body .sh { color: #111111 } /* Literal.String.Heredoc */
body .si { color: #111111 } /* Literal.String.Interpol */
body .sx { color: #111111 } /* Literal.String.Other */
body .sr { color: #111111 } /* Literal.String.Regex */
body .s1 { color: #111111 } /* Literal.String.Single */
body .ss { color: #111111 } /* Literal.String.Symbol */
body .bp { color: #008000 } /* Name.Builtin.Pseudo */
body .vc { color: #008000 } /* Name.Variable.Class */
body .vg { color: #008000 } /* Name.Variable.Global */
body .vi { color: #008000 } /* Name.Variable.Instance */

  </style>
</head>
<body>
<h2></h2>

<div class="highlight"><pre><span></span><span class="s">1045  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">1045! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">1046  </span><br><span class="s">1047  LABEL</span><br><span class="s">1048  SEQN     = &quot;Sample person identification number&quot;</span><br><span class="s">1049  DMPFSEQ  = &quot;Family sequence number&quot;</span><br><span class="s">1050  DMPSTAT  = &quot;Examination/interview Status&quot;</span><br><span class="s">1051  DMARETHN = &quot;Race-ethnicity&quot;</span><br><span class="s">1052  DMARACER = &quot;Race&quot;</span><br><span class="s">1053  DMAETHNR = &quot;Ethnicity&quot;</span><br><span class="s">1054  HSSEX    = &quot;Sex&quot;</span><br><span class="s">1055  HSAGEIR  = &quot;Age at interview (Screener)&quot;</span><br><span class="s">1056  HSAGEU   = &quot;Age at interview - unit (Screener)&quot;</span><br><span class="s">1057  HSAITMOR = &quot;Age in months at interview (screener)&quot;</span><br><span class="s">1058  HSFSIZER = &quot;Family size (persons in family)&quot;</span><br><span class="s">1059  HSHSIZER = &quot;Household size (persons in dwelling)&quot;</span><br><span class="s">1060  DMPCNTYR = &quot;County code&quot;</span><br><span class="s">1061  DMPFIPSR = &quot;FIPS code for State&quot;</span><br><span class="s">1062  DMPMETRO = &quot;Rural/urban code based on USDA code&quot;</span><br><span class="s">1063  DMPCREGN = &quot;Census region, weighting(Texas in south)&quot;</span><br><span class="s">1064  DMPPIR   = &quot;Poverty Income Ratio (unimputed income)&quot;</span><br><span class="s">1065  SDPPHASE = &quot;Phase of NHANES III survey&quot;</span><br><span class="s">1066  SDPPSU6  = &quot;Total NHANES III pseudo-PSU&quot;</span><br><span class="s">1067  SDPSTRA6 = &quot;Total NHANES III pseudo-stratum&quot;</span><br><span class="s">1068  SDPPSU1  = &quot;Pseudo-PSU for phase 1&quot;</span><br><span class="s">1069  SDPSTRA1 = &quot;Pseudo-stratum for phase 1&quot;</span><br><span class="s">1070  SDPPSU2  = &quot;Pseudo-PSU for phase 2&quot;</span><br><span class="s">1071  SDPSTRA2 = &quot;Pseudo-stratum for phase 2&quot;</span><br><span class="s">1072  WTPFQX6  = &quot;Total interviewed sample final weight&quot;</span><br><span class="s">1073  WTPFEX6  = &quot;Total MEC-examined sample final weight&quot;</span><br><span class="s">1074  WTPFHX6  = &quot;Total M+H examined sample final weight&quot;</span><br><span class="s">1075  WTPFALG6 = &quot;Total allergy subsample final weight&quot;</span><br><span class="s">1076  WTPFCNS6 = &quot;Total CNS subsample final weight&quot;</span><br><span class="s">1077  WTPFSD6  = &quot;Total morning subsample final wgt&quot;</span><br><span class="s">1078  WTPFMD6  = &quot;Total afternoon/eve subsample final wgt&quot;</span><br><span class="s">1079  WTPFHSD6 = &quot;Total M+H morning subsample final wgt&quot;</span><br><span class="s">1080  WTPFHMD6 = &quot;Total M+H afternoon subsample final wgt&quot;</span><br><span class="s">1081  WTPFQX1  = &quot;Phase 1 interviewed sample final wgt&quot;</span><br><span class="s">1082  WTPFEX1  = &quot;Phase 1 MEC examined sample final wgt&quot;</span><br><span class="s">1083  WTPFHX1  = &quot;Phase 1 M+H examined sample final wgt&quot;</span><br><span class="s">1084  WTPFALG1 = &quot;Phase 1 allergy subsample final wgt&quot;</span><br><span class="s">1085  WTPFCNS1 = &quot;Phase 1 CNS subsample final wgt&quot;</span><br><span class="s">1086  WTPFSD1  = &quot;Phase 1 morning sess subsample final wgt&quot;</span><br><span class="s">1087  WTPFMD1  = &quot;Phase 1 aft/eve subsample final wgt&quot;</span><br><span class="s">1088  WTPFHSD1 = &quot;Phase 1 morning M+H subsample final wgt&quot;</span><br><span class="s">1089  WTPFHMD1 = &quot;Phase 1 aft/eve M+H subsample final wgt&quot;</span><br><span class="s">1090  WTPFQX2  = &quot;Phase 2 interviewed sample final wgt&quot;</span><br><span class="s">1091  WTPFEX2  = &quot;Phase 2 MEC examined sample final wgt&quot;</span><br><span class="s">1092  WTPFHX2  = &quot;Phase 2 M+H examined sample final wgt&quot;</span><br><span class="s">1093  WTPFALG2 = &quot;Phase 2 allergy subsample final wgt&quot;</span><br><span class="s">1094  WTPFCNS2 = &quot;Phase 2 CNS subsample final wgt&quot;</span><br><span class="s">1095  WTPFSD2  = &quot;Phase 2 morning sess subsample final wgt&quot;</span><br><span class="s">1096  WTPFMD2  = &quot;Phase 2 aft/eve subsample final wgt&quot;</span><br><span class="s">1097  WTPFHSD2 = &quot;Phase 2 morning M+H subsample final wgt&quot;</span><br><span class="s">1098  WTPFHMD2 = &quot;Phase 2 aft/eve M+H subsample final wgt&quot;</span><br><span class="s">1099  WTPQRP1  = &quot;Replicate 1 final interview weight&quot;</span><br><span class="s">1100  WTPQRP2  = &quot;Replicate 2 final interview weight&quot;</span><br><span class="s">1101  WTPQRP3  = &quot;Replicate 3 final interview weight&quot;</span><br><span class="s">1102  WTPQRP4  = &quot;Replicate 4 final interview weight&quot;</span><br><span class="s">1103  WTPQRP5  = &quot;Replicate 5 final interview weight&quot;</span><br><span class="s">1104  WTPQRP6  = &quot;Replicate 6 final interview weight&quot;</span><br><span class="s">1105  WTPQRP7  = &quot;Replicate 7 final interview weight&quot;</span><br><span class="s">1106  WTPQRP8  = &quot;Replicate 8 final interview weight&quot;</span><br><span class="s">1107  WTPQRP9  = &quot;Replicate 9 final interview weight&quot;</span><br><span class="s">1108  WTPQRP10 = &quot;Replicate 10 final interview weight&quot;</span><br><span class="s">1109  WTPQRP11 = &quot;Replicate 11 final interview weight&quot;</span><br><span class="s">1110  WTPQRP12 = &quot;Replicate 12 final interview weight&quot;</span><br><span class="s">1111  WTPQRP13 = &quot;Replicate 13 final interview weight&quot;</span><br><span class="s">1112  WTPQRP14 = &quot;Replicate 14 final interview weight&quot;</span><br><span class="s">1113  WTPQRP15 = &quot;Replicate 15 final interview weight&quot;</span><br><span class="s">1114  WTPQRP16 = &quot;Replicate 16 final interview weight&quot;</span><br><span class="s">1115  WTPQRP17 = &quot;Replicate 17 final interview weight&quot;</span><br><span class="s">1116  WTPQRP18 = &quot;Replicate 18 final interview weight&quot;</span><br><span class="s">1117  WTPQRP19 = &quot;Replicate 19 final interview weight&quot;</span><br><span class="s">1118  WTPQRP20 = &quot;Replicate 20 final interview weight&quot;</span><br><span class="s">1119  WTPQRP21 = &quot;Replicate 21 final interview weight&quot;</span><br><span class="s">1120  WTPQRP22 = &quot;Replicate 22 final interview weight&quot;</span><br><span class="s">1121  WTPQRP23 = &quot;Replicate 23 final interview weight&quot;</span><br><span class="s">1122  WTPQRP24 = &quot;Replicate 24 final interview weight&quot;</span><br><span class="s">1123  WTPQRP25 = &quot;Replicate 25 final interview weight&quot;</span><br><span class="s">1124  WTPQRP26 = &quot;Replicate 26 final interview weight&quot;</span><br><span class="s">1125  WTPQRP27 = &quot;Replicate 27 final interview weight&quot;</span><br><span class="s">1126  WTPQRP28 = &quot;Replicate 28 final interview weight&quot;</span><br><span class="s">1127  WTPQRP29 = &quot;Replicate 29 final interview weight&quot;</span><br><span class="s">1128  WTPQRP30 = &quot;Replicate 30 final interview weight&quot;</span><br><span class="s">1129  WTPQRP31 = &quot;Replicate 31 final interview weight&quot;</span><br><span class="s">1130  WTPQRP32 = &quot;Replicate 32 final interview weight&quot;</span><br><span class="s">1131  WTPQRP33 = &quot;Replicate 33 final interview weight&quot;</span><br><span class="s">1132  WTPQRP34 = &quot;Replicate 34 final interview weight&quot;</span><br><span class="s">1133  WTPQRP35 = &quot;Replicate 35 final interview weight&quot;</span><br><span class="s">1134  WTPQRP36 = &quot;Replicate 36 final interview weight&quot;</span><br><span class="s">1135  WTPQRP37 = &quot;Replicate 37 final interview weight&quot;</span><br><span class="s">1136  WTPQRP38 = &quot;Replicate 38 final interview weight&quot;</span><br><span class="s">1137  WTPQRP39 = &quot;Replicate 39 final interview weight&quot;</span><br><span class="s">1138  WTPQRP40 = &quot;Replicate 40 final interview weight&quot;</span><br><span class="s">1139  WTPQRP41 = &quot;Replicate 41 final interview weight&quot;</span><br><span class="s">1140  WTPQRP42 = &quot;Replicate 42 final interview weight&quot;</span><br><span class="s">1141  WTPQRP43 = &quot;Replicate 43 final interview weight&quot;</span><br><span class="s">1142  WTPQRP44 = &quot;Replicate 44 final interview weight&quot;</span><br><span class="s">1143  WTPQRP45 = &quot;Replicate 45 final interview weight&quot;</span><br><span class="s">1144  WTPQRP46 = &quot;Replicate 46 final interview weight&quot;</span><br><span class="s">1145  WTPQRP47 = &quot;Replicate 47 final interview weight&quot;</span><br><span class="s">1146  WTPQRP48 = &quot;Replicate 48 final interview weight&quot;</span><br><span class="s">1147  WTPQRP49 = &quot;Replicate 49 final interview weight&quot;</span><br><span class="s">1148  WTPQRP50 = &quot;Replicate 50 final interview weight&quot;</span><br><span class="s">1149  WTPQRP51 = &quot;Replicate 51 final interview weight&quot;</span><br><span class="s">1150  WTPQRP52 = &quot;Replicate 52 final interview weight&quot;</span><br><span class="s">1151  WTPXRP1  = &quot;Replicate 1 final exam weight&quot;</span><br><span class="s">1152  WTPXRP2  = &quot;Replicate 2 final exam weight&quot;</span><br><span class="s">1153  WTPXRP3  = &quot;Replicate 3 final exam weight&quot;</span><br><span class="s">1154  WTPXRP4  = &quot;Replicate 4 final exam weight&quot;</span><br><span class="s">1155  WTPXRP5  = &quot;Replicate 5 final exam weight&quot;</span><br><span class="s">1156  WTPXRP6  = &quot;Replicate 6 final exam weight&quot;</span><br><span class="s">1157  WTPXRP7  = &quot;Replicate 7 final exam weight&quot;</span><br><span class="s">1158  WTPXRP8  = &quot;Replicate 8 final exam weight&quot;</span><br><span class="s">1159  WTPXRP9  = &quot;Replicate 9 final exam weight&quot;</span><br><span class="s">1160  WTPXRP10 = &quot;Replicate 10 final exam weight&quot;</span><br><span class="s">1161  WTPXRP11 = &quot;Replicate 11 final exam weight&quot;</span><br><span class="s">1162  WTPXRP12 = &quot;Replicate 12 final exam weight&quot;</span><br><span class="s">1163  WTPXRP13 = &quot;Replicate 13 final exam weight&quot;</span><br><span class="s">1164  WTPXRP14 = &quot;Replicate 14 final exam weight&quot;</span><br><span class="s">1165  WTPXRP15 = &quot;Replicate 15 final exam weight&quot;</span><br><span class="s">1166  WTPXRP16 = &quot;Replicate 16 final exam weight&quot;</span><br><span class="s">1167  WTPXRP17 = &quot;Replicate 17 final exam weight&quot;</span><br><span class="s">1168  WTPXRP18 = &quot;Replicate 18 final exam weight&quot;</span><br><span class="s">1169  WTPXRP19 = &quot;Replicate 19 final exam weight&quot;</span><br><span class="s">1170  WTPXRP20 = &quot;Replicate 20 final exam weight&quot;</span><br><span class="s">1171  WTPXRP21 = &quot;Replicate 21 final exam weight&quot;</span><br><span class="s">1172  WTPXRP22 = &quot;Replicate 22 final exam weight&quot;</span><br><span class="s">1173  WTPXRP23 = &quot;Replicate 23 final exam weight&quot;</span><br><span class="s">1174  WTPXRP24 = &quot;Replicate 24 final exam weight&quot;</span><br><span class="s">1175  WTPXRP25 = &quot;Replicate 25 final exam weight&quot;</span><br><span class="s">1176  WTPXRP26 = &quot;Replicate 26 final exam weight&quot;</span><br><span class="s">1177  WTPXRP27 = &quot;Replicate 27 final exam weight&quot;</span><br><span class="s">1178  WTPXRP28 = &quot;Replicate 28 final exam weight&quot;</span><br><span class="s">1179  WTPXRP29 = &quot;Replicate 29 final exam weight&quot;</span><br><span class="s">1180  WTPXRP30 = &quot;Replicate 30 final exam weight&quot;</span><br><span class="s">1181  WTPXRP31 = &quot;Replicate 31 final exam weight&quot;</span><br><span class="s">1182  WTPXRP32 = &quot;Replicate 32 final exam weight&quot;</span><br><span class="s">1183  WTPXRP33 = &quot;Replicate 33 final exam weight&quot;</span><br><span class="s">1184  WTPXRP34 = &quot;Replicate 34 final exam weight&quot;</span><br><span class="s">1185  WTPXRP35 = &quot;Replicate 35 final exam weight&quot;</span><br><span class="s">1186  WTPXRP36 = &quot;Replicate 36 final exam weight&quot;</span><br><span class="s">1187  WTPXRP37 = &quot;Replicate 37 final exam weight&quot;</span><br><span class="s">1188  WTPXRP38 = &quot;Replicate 38 final exam weight&quot;</span><br><span class="s">1189  WTPXRP39 = &quot;Replicate 39 final exam weight&quot;</span><br><span class="s">1190  WTPXRP40 = &quot;Replicate 40 final exam weight&quot;</span><br><span class="s">1191  WTPXRP41 = &quot;Replicate 41 final exam weight&quot;</span><br><span class="s">1192  WTPXRP42 = &quot;Replicate 42 final exam weight&quot;</span><br><span class="s">1193  WTPXRP43 = &quot;Replicate 43 final exam weight&quot;</span><br><span class="s">1194  WTPXRP44 = &quot;Replicate 44 final exam weight&quot;</span><br><span class="s">1195  WTPXRP45 = &quot;Replicate 45 final exam weight&quot;</span><br><span class="s">1196  WTPXRP46 = &quot;Replicate 46 final exam weight&quot;</span><br><span class="s">1197  WTPXRP47 = &quot;Replicate 47 final exam weight&quot;</span><br><span class="s">1198  WTPXRP48 = &quot;Replicate 48 final exam weight&quot;</span><br><span class="s">1199  WTPXRP49 = &quot;Replicate 49 final exam weight&quot;</span><br><span class="s">1200  WTPXRP50 = &quot;Replicate 50 final exam weight&quot;</span><br><span class="s">1201  WTPXRP51 = &quot;Replicate 51 final exam weight&quot;</span><br><span class="s">1202  WTPXRP52 = &quot;Replicate 52 final exam weight&quot;</span><br><span class="s">1203  HYAITMO  = &quot;Age in months at youth interview&quot;</span><br><span class="s">1204  MXPLANG  = &quot;Language used by SP in MEC&quot;</span><br><span class="s">1205  MXPSESSR = &quot;Session for MEC examination&quot;</span><br><span class="s">1206  MXPTIDW  = &quot;Day of week of MEC exam&quot;</span><br><span class="s">1207  MXPAXTMR = &quot;Age in months at MEC exam&quot;</span><br><span class="s">1208  HXPTIDW  = &quot;Day of week of home exam&quot;</span><br><span class="s">1209  HXPAXTMR = &quot;Age in months at home exam&quot;</span><br><span class="s">1210  HXPSESSR = &quot;Session for home examination&quot;</span><br><span class="s">1211  PHPLANG  = &quot;Language&quot;</span><br><span class="s">1212  PHPHEMO  = &quot;Do you have hemophilia?&quot;</span><br><span class="s">1213  PHPCHM2  = &quot;Recent chemo/within the past four weeks&quot;</span><br><span class="s">1214  PHPINSU  = &quot;Are you currently taking insulin?&quot;</span><br><span class="s">1215  PHPSNTI  = &quot;Time participant last ate&quot;</span><br><span class="s">1216  PHPSNDA  = &quot;Day participant last ate&quot;</span><br><span class="s">1217  PHPDRIN  = &quot;Have you had anything to drink?&quot;</span><br><span class="s">1218  PHPDRTI  = &quot;Time participant last drank&quot;</span><br><span class="s">1219  PHPDRDA  = &quot;Day participant last drank&quot;</span><br><span class="s">1220  PHPFAST  = &quot;Length of calculated fast (in hours)&quot;</span><br><span class="s">1221  PHPBEST  = &quot;Time of venipuncture&quot;</span><br><span class="s">1222  WCP      = &quot;White blood cell count&quot;</span><br><span class="s">1223  WCPSI    = &quot;White blood cell count: SI&quot;</span><br><span class="s">1224  LMPPCNT  = &quot;Lymphocyte percent (Coulter)&quot;</span><br><span class="s">1225  MOPPCNT  = &quot;Mononuclear percent (Coulter)&quot;</span><br><span class="s">1226  GRPPCNT  = &quot;Granulocyte percent (Coulter)&quot;</span><br><span class="s">1227  LMP      = &quot;Lymphocyte number (Coulter)&quot;</span><br><span class="s">1228  MOP      = &quot;Mononuclear number (Coulter)&quot;</span><br><span class="s">1229  GRP      = &quot;Granulocyte number (Coulter)&quot;</span><br><span class="s">1230  RCP      = &quot;Red blood cell count&quot;</span><br><span class="s">1231  RCPSI    = &quot;Red blood cell count:  SI&quot;</span><br><span class="s">1232  HGP      = &quot;Hemoglobin (g/dL)&quot;</span><br><span class="s">1233  HGPSI    = &quot;Hemoglobin:  SI (g/L)&quot;</span><br><span class="s">1234  HTP      = &quot;Hematocrit (%)&quot;</span><br><span class="s">1235  HTPSI    = &quot;Hematocrit:  SI (L/L=1)&quot;</span><br><span class="s">1236  MVPSI    = &quot;Mean cell volume:  SI (fL)&quot;</span><br><span class="s">1237  MCPSI    = &quot;Mean cell hemoglobin:  SI (pg)&quot;</span><br><span class="s">1238  MHP      = &quot;Mean cell hemoglobin concentration&quot;</span><br><span class="s">1239  MHPSI    = &quot;Mean cell hemoglobin concentration: SI&quot;</span><br><span class="s">1240  RWP      = &quot;Red cell distribution width (%)&quot;</span><br><span class="s">1241  RWPSI    = &quot;Red cell distribution width:SI(fraction)&quot;</span><br><span class="s">1242  PLP      = &quot;Platelet count&quot;</span><br><span class="s">1243  PLPSI    = &quot;Platelet count:  SI&quot;</span><br><span class="s">1244  DWP      = &quot;Platelet distribution width (%)&quot;</span><br><span class="s">1245  PVPSI    = &quot;Mean platelet volume:  SI (fL)&quot;</span><br><span class="s">1246  GRPDIF   = &quot;Segment neutrophil(percent of 100 cells)&quot;</span><br><span class="s">1247  LMPDIF   = &quot;Lymphocytes (percent of 100 cells)&quot;</span><br><span class="s">1248  MOPDIF   = &quot;Monocytes (percent of 100 cells)&quot;</span><br><span class="s">1249  EOP      = &quot;Eosinophils (percent of 100 cells)&quot;</span><br><span class="s">1250  BOP      = &quot;Basophils (percent of 100 cells)&quot;</span><br><span class="s">1251  BLP      = &quot;Blasts (percent of 100 cells)&quot;</span><br><span class="s">1252  PRP      = &quot;Promyelocytes (percent of 100 cells)&quot;</span><br><span class="s">1253  MEP      = &quot;Metamyelocytes (percent of 100 cells)&quot;</span><br><span class="s">1254  MLP      = &quot;Myelocytes (percent of 100 cells)&quot;</span><br><span class="s">1255  BAP      = &quot;Bands (percent of 100 cells)&quot;</span><br><span class="s">1256  LAP      = &quot;Atyp lymphocytes (percent of 100 cells)&quot;</span><br><span class="s">1257  ANP      = &quot;Anisocytosis (variation of cell size)&quot;</span><br><span class="s">1258  BSP      = &quot;Basophilic stippling&quot;</span><br><span class="s">1259  HZP      = &quot;Hypochromia (stain intensity of cell)&quot;</span><br><span class="s">1260  PKP      = &quot;Poikilocytosis (cell shape variation)&quot;</span><br><span class="s">1261  POP      = &quot;Polychromatophilia(bluish color of cell)&quot;</span><br><span class="s">1262  MRP      = &quot;Macrocytosis (large cell prevalence)&quot;</span><br><span class="s">1263  MIP      = &quot;Microcytosis (small cell prevalence)&quot;</span><br><span class="s">1264  SIP      = &quot;Sickle cells&quot;</span><br><span class="s">1265  SHP      = &quot;Spherocytosis&quot;</span><br><span class="s">1266  TTP      = &quot;Target cells&quot;</span><br><span class="s">1267  TXP      = &quot;Toxic granulation&quot;</span><br><span class="s">1268  VUP      = &quot;Vacuolated cells&quot;</span><br><span class="s">1269  PBP      = &quot;Lead (ug/dL)&quot;</span><br><span class="s">1270  PBPSI    = &quot;Lead:  SI (umol/L)&quot;</span><br><span class="s">1271  EPP      = &quot;Erythrocyte protoporphyrin (ug/dL)&quot;</span><br><span class="s">1272  EPPSI    = &quot;Erythrocyte protoporphyrin:  SI (umol/L)&quot;</span><br><span class="s">1273  FEP      = &quot;Serum iron (ug/dL)&quot;</span><br><span class="s">1274  FEPSI    = &quot;Serum iron:  SI (umol/L)&quot;</span><br><span class="s">1275  TIP      = &quot;Serum TIBC (ug/dL)&quot;</span><br><span class="s">1276  TIPSI    = &quot;Serum TIBC:  SI (umol/L)&quot;</span><br><span class="s">1277  PXP      = &quot;Serum transferrin saturation (%)&quot;</span><br><span class="s">1278  FRP      = &quot;Serum ferritin (ng/mL)&quot;</span><br><span class="s">1279  FRPSI    = &quot;Serum ferritin:  SI (ug/L)&quot;</span><br><span class="s">1280  FOP      = &quot;Serum folate (ng/mL)&quot;</span><br><span class="s">1281  FOPSI    = &quot;Serum folate:  SI (nmol/L)&quot;</span><br><span class="s">1282  RBP      = &quot;RBC folate (ng/mL)&quot;</span><br><span class="s">1283  RBPSI    = &quot;RBC folate:  SI (nmol/L)&quot;</span><br><span class="s">1284  VBP      = &quot;Serum vitamin B12 (pg/mL)&quot;</span><br><span class="s">1285  VBPSI    = &quot;Serum vitamin B12:  SI (pmol/L)&quot;</span><br><span class="s">1286  VCP      = &quot;Serum vitamin C (mg/dL)&quot;</span><br><span class="s">1287  VCPSI    = &quot;Serum vitamin C:  SI (mmol/L)&quot;</span><br><span class="s">1288  ICPSI    = &quot;Serum normalized calcium:  SI (mmol/L)&quot;</span><br><span class="s">1289  CAPSI    = &quot;Serum total calcium:  SI (mmol/L)&quot;</span><br><span class="s">1290  SEP      = &quot;Serum selenium (ng/mL)&quot;</span><br><span class="s">1291  SEPSI    = &quot;Serum selenium:  SI (nmol/L)&quot;</span><br><span class="s">1292  VAP      = &quot;Serum vitamin A (ug/dL)&quot;</span><br><span class="s">1293  VAPSI    = &quot;Serum vitamin A:  SI (umol/L)&quot;</span><br><span class="s">1294  VEP      = &quot;Serum vitamin E (ug/dL)&quot;</span><br><span class="s">1295  VEPSI    = &quot;Serum vitamin E:  SI (umol/L)&quot;</span><br><span class="s">1296  ACP      = &quot;Serum alpha carotene (ug/dL)&quot;</span><br><span class="s">1297  ACPSI    = &quot;Serum alpha carotene:  SI (umol/L)&quot;</span><br><span class="s">1298  BCP      = &quot;Serum beta carotene (ug/dL)&quot;</span><br><span class="s">1299  BCPSI    = &quot;Serum beta carotene: SI (umol/L)&quot;</span><br><span class="s">1300  BXP      = &quot;Serum beta cryptoxanthin (ug/dL)&quot;</span><br><span class="s">1301  BXPSI    = &quot;Serum beta cryptoxanthin:  SI (umol/L)&quot;</span><br><span class="s">1302  LUP      = &quot;Serum lutein/zeaxanthin (ug/dL)&quot;</span><br><span class="s">1303  LUPSI    = &quot;Serum lutein/zeaxanthin:  SI (umol/L)&quot;</span><br><span class="s">1304  LYP      = &quot;Serum lycopene (ug/dL)&quot;</span><br><span class="s">1305  LYPSI    = &quot;Serum lycopene:  SI (umol/L)&quot;</span><br><span class="s">1306  REP      = &quot;Serum sum retinyl esters (ug/dL)&quot;</span><br><span class="s">1307  REPSI    = &quot;Serum sum retinyl esters:  SI (umol/L)&quot;</span><br><span class="s">1308  COP      = &quot;Serum cotinine (ng/mL)&quot;</span><br><span class="s">1309  TCP      = &quot;Serum cholesterol (mg/dL)&quot;</span><br><span class="s">1310  TCPSI    = &quot;Serum cholesterol:  SI (mmol/L)&quot;</span><br><span class="s">1311  TGP      = &quot;Serum triglycerides (mg/dL)&quot;</span><br><span class="s">1312  TGPSI    = &quot;Serum triglycerides:  SI (mmol/L)&quot;</span><br><span class="s">1313  LCP      = &quot;Serum LDL cholesterol (mg/dL)&quot;</span><br><span class="s">1314  LCPSI    = &quot;Serum LDL cholesterol:  SI (mmol/L)&quot;</span><br><span class="s">1315  HDP      = &quot;Serum HDL cholesterol (mg/dL)&quot;</span><br><span class="s">1316  HDPSI    = &quot;Serum HDL cholesterol:  SI (mmol/L)&quot;</span><br><span class="s">1317  AAP      = &quot;Serum apolipoprotein AI (mg/dL)&quot;</span><br><span class="s">1318  AAPSI    = &quot;Serum apolipoprotein AI: SI (g/L)&quot;</span><br><span class="s">1319  ABP      = &quot;Serum apolipoprotein B (mg/dL)&quot;</span><br><span class="s">1320  ABPSI    = &quot;Serum apolipoprotein B: SI (g/L)&quot;</span><br><span class="s">1321  LPP      = &quot;Serum lipoprotein(a) (mg/dL)&quot;</span><br><span class="s">1322  LPPSI    = &quot;Serum lipoprotein(a):  SI (g/L)&quot;</span><br><span class="s">1323  FHPSI    = &quot;Serum FSH:  SI (IU/L)&quot;</span><br><span class="s">1324  LHPSI    = &quot;Serum luteinizing hormone: SI (IU/L)&quot;</span><br><span class="s">1325  FBP      = &quot;Plasma fibrinogen (mg/dL)&quot;</span><br><span class="s">1326  FBPSI    = &quot;Plasma fibrinogen:  SI (g/L)&quot;</span><br><span class="s">1327  CRP      = &quot;Serum C-reactive protein (mg/dL)&quot;</span><br><span class="s">1328  TEP      = &quot;Serum tetanus antibody (U/mL)&quot;</span><br><span class="s">1329  AHP      = &quot;Serum hepatitis A antibody&quot;</span><br><span class="s">1330  HBP      = &quot;Serum hepatitis B core antibody&quot;</span><br><span class="s">1331  SSP      = &quot;Serum hepatitis B surface antibody&quot;</span><br><span class="s">1332  SAP      = &quot;Serum hepatitis B surface antigen&quot;</span><br><span class="s">1333  HCP      = &quot;Serum hepatitis C antibody&quot;</span><br><span class="s">1334  DHP      = &quot;Serum hepatitis D antibody&quot;</span><br><span class="s">1335  H1P      = &quot;Serum herpes I antibody&quot;</span><br><span class="s">1336  H2P      = &quot;Serum herpes II antibody&quot;</span><br><span class="s">1337  RUP      = &quot;Serum rubella antibody&quot;</span><br><span class="s">1338  RUPUNIT  = &quot;Serum rubells antibody (IU)&quot;</span><br><span class="s">1339  VRP      = &quot;Serum varicella antibody&quot;</span><br><span class="s">1340  TOP      = &quot;Serum toxoplasmosis antibody&quot;</span><br><span class="s">1341  RFP      = &quot;Serum rheumatoid factor antibody&quot;</span><br><span class="s">1342  L1P      = &quot;Serum latex antibody (IU/mL)&quot;</span><br><span class="s">1343  HPP      = &quot;Serum helicobacter pylori antibody&quot;</span><br><span class="s">1344  NAPSI    = &quot;Serum sodium:  SI (mmol/L)&quot;</span><br><span class="s">1345  SKPSI    = &quot;Serum potassium:  SI (mmol/L)&quot;</span><br><span class="s">1346  CLPSI    = &quot;Serum chloride:  SI (mmol/L)&quot;</span><br><span class="s">1347  C3PSI    = &quot;Serum bicarbonate:  SI (mmol/L)&quot;</span><br><span class="s">1348  SCP      = &quot;Serum total calcium (mg/dL)&quot;</span><br><span class="s">1349  SCPSI    = &quot;Serum total calcium: SI (mmol/L)&quot;</span><br><span class="s">1350  PSP      = &quot;Serum phosphorus (mg/dL)&quot;</span><br><span class="s">1351  PSPSI    = &quot;Serum phosphorus: SI (mmol/L)&quot;</span><br><span class="s">1352  UAP      = &quot;Serum uric acid (mg/dL)&quot;</span><br><span class="s">1353  UAPSI    = &quot;Serum uric acid:  SI (umol/L)&quot;</span><br><span class="s">1354  SGP      = &quot;Serum glucose (mg/dL)&quot;</span><br><span class="s">1355  SGPSI    = &quot;Serum glucose:  SI (mmol/L)&quot;</span><br><span class="s">1356  BUP      = &quot;Serum blood urea nitrogen (mg/dL)&quot;</span><br><span class="s">1357  BUPSI    = &quot;Serum blood urea nitrogen:  SI (mmol/L)&quot;</span><br><span class="s">1358  TBP      = &quot;Serum total bilirubin (mg/dL)&quot;</span><br><span class="s">1359  TBPSI    = &quot;Serum total bilirubin:  SI (umol/L)&quot;</span><br><span class="s">1360  CEP      = &quot;Serum creatinine (mg/dL)&quot;</span><br><span class="s">1361  CEPSI    = &quot;Serum creatinine:  SI (umol/L)&quot;</span><br><span class="s">1362  SFP      = &quot;Serum iron (ug/dL)&quot;</span><br><span class="s">1363  SFPSI    = &quot;Serum iron:  SI (umol/L)&quot;</span><br><span class="s">1364  CHP      = &quot;Serum cholesterol (mg/dL)&quot;</span><br><span class="s">1365  CHPSI    = &quot;Serum cholesterol:  SI (mmol/L)&quot;</span><br><span class="s">1366  TRP      = &quot;Serum triglycerides (mg/dL)&quot;</span><br><span class="s">1367  TRPSI    = &quot;Serum triglycerides:  SI (mmol/L)&quot;</span><br><span class="s">1368  ASPSI    = &quot;Aspartate aminotransferase: SI(U/L)&quot;</span><br><span class="s">1369  ATPSI    = &quot;Alanine aminotransferase:  SI (U/L)&quot;</span><br><span class="s">1370  GGPSI    = &quot;Gamma glutamyl transferase: SI(U/L)&quot;</span><br><span class="s">1371  LDPSI    = &quot;Serum lactate dehydrogenase:  SI (U/L)&quot;</span><br><span class="s">1372  APPSI    = &quot;Serum alkaline phosphatase:  SI (U/L)&quot;</span><br><span class="s">1373  TPP      = &quot;Serum total protein (g/dL)&quot;</span><br><span class="s">1374  TPPSI    = &quot;Serum total protein:  SI (g/L)&quot;</span><br><span class="s">1375  AMP      = &quot;Serum albumin (g/dL)&quot;</span><br><span class="s">1376  AMPSI    = &quot;Serum albumin:  SI (g/L)&quot;</span><br><span class="s">1377  GBP      = &quot;Serum globulin (g/dL)&quot;</span><br><span class="s">1378  GBPSI    = &quot;Serum globulin:  SI (g/L)&quot;</span><br><span class="s">1379  OSPSI    = &quot;Serum osmolality:  SI (mmol/Kg)&quot;</span><br><span class="s">1380  GHP      = &quot;Glycated hemoglobin: (%)&quot;</span><br><span class="s">1381  GHPMETH  = &quot;Glycated hemoglobin: test method&quot;</span><br><span class="s">1382  G1P      = &quot;Plasma glucose (mg/dL)&quot;</span><br><span class="s">1383  G1PSI    = &quot;Plasma glucose:  SI (mmol/L)&quot;</span><br><span class="s">1384  G1PCODE  = &quot;Incomplete glucose test (OGTT) code&quot;</span><br><span class="s">1385  G1PTIM1  = &quot;Minutes between drink and second draw&quot;</span><br><span class="s">1386  G1PTIM2  = &quot;Minutes between first and second draw&quot;</span><br><span class="s">1387  G2P      = &quot;Second plasma glucose (mg/dL)&quot;</span><br><span class="s">1388  G2PSI    = &quot;Second plasma glucose: SI (mmol/L)&quot;</span><br><span class="s">1389  C1P      = &quot;Serum C-peptide (pmol/mL)&quot;</span><br><span class="s">1390  C1PSI    = &quot;Serum C-peptide: SI (nmol/L)&quot;</span><br><span class="s">1391  C2P      = &quot;Second serum C-peptide (pmol/mL)&quot;</span><br><span class="s">1392  C2PSI    = &quot;Second serum C-peptide: SI (nmol/L)&quot;</span><br><span class="s">1393  I1P      = &quot;Serum insulin (uU/mL)&quot;</span><br><span class="s">1394  I1PSI    = &quot;Serum insulin:  SI (pmol/L)&quot;</span><br><span class="s">1395  I1P2PFLG = &quot;Serum insulin: test kit&quot;</span><br><span class="s">1396  I2P      = &quot;Second serum insulin (uU/mL)&quot;</span><br><span class="s">1397  I2PSI    = &quot;Second serum insulin: SI (pmol/L)&quot;</span><br><span class="s">1398  UDP      = &quot;Urinary cadmium (ng/mL)&quot;</span><br><span class="s">1399  UDPSI    = &quot;Urinary cadmium: SI (nmol/L)&quot;</span><br><span class="s">1400  URP      = &quot;Urinary creatinine (mg/dL)&quot;</span><br><span class="s">1401  URPSI    = &quot;Urinary creatinine: SI (mmol/L)&quot;</span><br><span class="s">1402  UBP      = &quot;Urinary albumin (ug/mL)&quot;</span><br><span class="s">1403  UIP      = &quot;Urinary iodine (ug/dL)&quot;</span><br><span class="s">1404  ;</span><br><span class="s">1405  </span><br><span class="s">1406  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">1407  </span><br></pre></div>
</body>
</html>





```sas
proc export data=LAB
   outfile='lab.csv'
   dbms=csv
   replace;
run;
```




<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01//EN"
   "http://www.w3.org/TR/html4/strict.dtd">

<html>
<head>
  <title></title>
  <meta http-equiv="content-type" content="text/html; charset=None">
  <style type="text/css">
td.linenos { background-color: #f0f0f0; padding-right: 10px; }
span.lineno { background-color: #f0f0f0; padding: 0 5px 0 5px; }
pre { line-height: 125%; }
body .hll { background-color: #ffffcc }
body  { background: #ffffff; }
body .c { color: #0000FF } /* Comment */
body .k { color: #ff0000; font-weight: bold } /* Keyword */
body .n { color: #008000 } /* Name */
body .ch { color: #0000FF } /* Comment.Hashbang */
body .cm { color: #0000FF } /* Comment.Multiline */
body .cp { color: #0000FF } /* Comment.Preproc */
body .cpf { color: #0000FF } /* Comment.PreprocFile */
body .c1 { color: #0000FF } /* Comment.Single */
body .cs { color: #0000FF } /* Comment.Special */
body .kc { color: #ff0000; font-weight: bold } /* Keyword.Constant */
body .kd { color: #ff0000; font-weight: bold } /* Keyword.Declaration */
body .kn { color: #ff0000; font-weight: bold } /* Keyword.Namespace */
body .kp { color: #ff0000; font-weight: bold } /* Keyword.Pseudo */
body .kr { color: #ff0000; font-weight: bold } /* Keyword.Reserved */
body .kt { color: #ff0000; font-weight: bold } /* Keyword.Type */
body .s { color: #111111 } /* Literal.String */
body .na { color: #008000 } /* Name.Attribute */
body .nb { color: #008000 } /* Name.Builtin */
body .nc { color: #008000 } /* Name.Class */
body .no { color: #008000 } /* Name.Constant */
body .nd { color: #008000 } /* Name.Decorator */
body .ni { color: #008000 } /* Name.Entity */
body .ne { color: #008000 } /* Name.Exception */
body .nf { color: #008000 } /* Name.Function */
body .nl { color: #008000 } /* Name.Label */
body .nn { color: #008000 } /* Name.Namespace */
body .nx { color: #008000 } /* Name.Other */
body .py { color: #008000 } /* Name.Property */
body .nt { color: #008000 } /* Name.Tag */
body .nv { color: #008000 } /* Name.Variable */
body .sb { color: #111111 } /* Literal.String.Backtick */
body .sc { color: #111111 } /* Literal.String.Char */
body .sd { color: #111111 } /* Literal.String.Doc */
body .s2 { color: #111111 } /* Literal.String.Double */
body .se { color: #111111 } /* Literal.String.Escape */
body .sh { color: #111111 } /* Literal.String.Heredoc */
body .si { color: #111111 } /* Literal.String.Interpol */
body .sx { color: #111111 } /* Literal.String.Other */
body .sr { color: #111111 } /* Literal.String.Regex */
body .s1 { color: #111111 } /* Literal.String.Single */
body .ss { color: #111111 } /* Literal.String.Symbol */
body .bp { color: #008000 } /* Name.Builtin.Pseudo */
body .vc { color: #008000 } /* Name.Variable.Class */
body .vg { color: #008000 } /* Name.Variable.Global */
body .vi { color: #008000 } /* Name.Variable.Instance */

  </style>
</head>
<body>
<h2></h2>

<div class="highlight"><pre><span></span><span class="s">1409  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">1409! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">1410  </span><br><span class="cm">NOTE: The infile LAB is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/lab.dat,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=29Mar2018:12:34:59,</span><br><span class="cm">      File Size (bytes)=57945628</span><br><br><span class="cm">NOTE: 29314 records were read from the infile LAB.</span><br><span class="cm">      The minimum record length was 1971.</span><br><span class="cm">      The maximum record length was 1977.</span><br><span class="cm">NOTE: The data set WORK.LAB has 29314 observations and 356 variables.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           2.80 seconds</span><br><span class="cm">      cpu time            2.29 seconds</span><br><span class="cm">      </span><br><span class="s">1411  proc export data=LAB</span><br><span class="s">1412     outfile=&#39;lab.csv&#39;</span><br><span class="s">1413     dbms=csv</span><br><span class="s">1414     replace;</span><br><span class="s">1415  run;</span><br><span class="k k-Multiline">ERROR: Expecting page 1, got page -1 instead.</span><br><span class="k k-Multiline">ERROR: Page validation error while reading SASUSER.PROFILE.CATALOG.</span><br><span class="cm">NOTE: Unable to open SASUSER.PROFILE. WORK.PROFILE will be opened instead.</span><br><span class="cm">NOTE: All profile changes will be lost at the end of the session.</span><br><span class="s">1416   /**********************************************************************</span><br><span class="s">1417   *   PRODUCT:   SAS</span><br><span class="s">1418   *   VERSION:   9.4</span><br><span class="s">1419   *   CREATOR:   External File Interface</span><br><span class="s">1420   *   DATE:      29MAR18</span><br><span class="s">1421   *   DESC:      Generated SAS Datastep Code</span><br><span class="s">1422   *   TEMPLATE SOURCE:  (None Specified.)</span><br><span class="s">1423   ***********************************************************************/</span><br><span class="s">1424      data _null_;</span><br><span class="s">1425      %let _EFIERR_ = 0; /* set the ERROR detection macro variable */</span><br><span class="s">1426      %let _EFIREC_ = 0;     /* clear export record count macro variable */</span><br><span class="s">1427      file &#39;lab.csv&#39; delimiter=&#39;,&#39; DSD DROPOVER lrecl=32767;</span><br><span class="s">1428      if _n_ = 1 then        /* write column names or labels */</span><br><span class="s">1429       do;</span><br><span class="s">1430         put</span><br><span class="s">1431            &quot;SEQN&quot;</span><br><span class="s">1432         &#39;,&#39;</span><br><span class="s">1433            &quot;DMPFSEQ&quot;</span><br><span class="s">1434         &#39;,&#39;</span><br><span class="s">1435            &quot;DMPSTAT&quot;</span><br><span class="s">1436         &#39;,&#39;</span><br><span class="s">1437            &quot;DMARETHN&quot;</span><br><span class="s">1438         &#39;,&#39;</span><br><span class="s">1439            &quot;DMARACER&quot;</span><br><span class="s">1440         &#39;,&#39;</span><br><span class="s">1441            &quot;DMAETHNR&quot;</span><br><span class="s">1442         &#39;,&#39;</span><br><span class="s">1443            &quot;HSSEX&quot;</span><br><span class="s">1444         &#39;,&#39;</span><br><span class="s">1445            &quot;HSAGEIR&quot;</span><br><span class="s">1446         &#39;,&#39;</span><br><span class="s">1447            &quot;HSAGEU&quot;</span><br><span class="s">1448         &#39;,&#39;</span><br><span class="s">1449            &quot;HSAITMOR&quot;</span><br><span class="s">1450         &#39;,&#39;</span><br><span class="s">1451            &quot;HSFSIZER&quot;</span><br><span class="s">1452         &#39;,&#39;</span><br><span class="s">1453            &quot;HSHSIZER&quot;</span><br><span class="s">1454         &#39;,&#39;</span><br><span class="s">1455            &quot;DMPCNTYR&quot;</span><br><span class="s">1456         &#39;,&#39;</span><br><span class="s">1457            &quot;DMPFIPSR&quot;</span><br><span class="s">1458         &#39;,&#39;</span><br><span class="s">1459            &quot;DMPMETRO&quot;</span><br><span class="s">1460         &#39;,&#39;</span><br><span class="s">1461            &quot;DMPCREGN&quot;</span><br><span class="s">1462         &#39;,&#39;</span><br><span class="s">1463            &quot;DMPPIR&quot;</span><br><span class="s">1464         &#39;,&#39;</span><br><span class="s">1465            &quot;SDPPHASE&quot;</span><br><span class="s">1466         &#39;,&#39;</span><br><span class="s">1467            &quot;SDPPSU6&quot;</span><br><span class="s">1468         &#39;,&#39;</span><br><span class="s">1469            &quot;SDPSTRA6&quot;</span><br><span class="s">1470         &#39;,&#39;</span><br><span class="s">1471            &quot;SDPPSU1&quot;</span><br><span class="s">1472         &#39;,&#39;</span><br><span class="s">1473            &quot;SDPSTRA1&quot;</span><br><span class="s">1474         &#39;,&#39;</span><br><span class="s">1475            &quot;SDPPSU2&quot;</span><br><span class="s">1476         &#39;,&#39;</span><br><span class="s">1477            &quot;SDPSTRA2&quot;</span><br><span class="s">1478         &#39;,&#39;</span><br><span class="s">1479            &quot;WTPFQX6&quot;</span><br><span class="s">1480         &#39;,&#39;</span><br><span class="s">1481            &quot;WTPFEX6&quot;</span><br><span class="s">1482         &#39;,&#39;</span><br><span class="s">1483            &quot;WTPFHX6&quot;</span><br><span class="s">1484         &#39;,&#39;</span><br><span class="s">1485            &quot;WTPFALG6&quot;</span><br><span class="s">1486         &#39;,&#39;</span><br><span class="s">1487            &quot;WTPFCNS6&quot;</span><br><span class="s">1488         &#39;,&#39;</span><br><span class="s">1489            &quot;WTPFSD6&quot;</span><br><span class="s">1490         &#39;,&#39;</span><br><span class="s">1491            &quot;WTPFMD6&quot;</span><br><span class="s">1492         &#39;,&#39;</span><br><span class="s">1493            &quot;WTPFHSD6&quot;</span><br><span class="s">1494         &#39;,&#39;</span><br><span class="s">1495            &quot;WTPFHMD6&quot;</span><br><span class="s">1496         &#39;,&#39;</span><br><span class="s">1497            &quot;WTPFQX1&quot;</span><br><span class="s">1498         &#39;,&#39;</span><br><span class="s">1499            &quot;WTPFEX1&quot;</span><br><span class="s">1500         &#39;,&#39;</span><br><span class="s">1501            &quot;WTPFHX1&quot;</span><br><span class="s">1502         &#39;,&#39;</span><br><span class="s">1503            &quot;WTPFALG1&quot;</span><br><span class="s">1504         &#39;,&#39;</span><br><span class="s">1505            &quot;WTPFCNS1&quot;</span><br><span class="s">1506         &#39;,&#39;</span><br><span class="s">1507            &quot;WTPFSD1&quot;</span><br><span class="s">1508         &#39;,&#39;</span><br><span class="s">1509            &quot;WTPFMD1&quot;</span><br><span class="s">1510         &#39;,&#39;</span><br><span class="s">1511            &quot;WTPFHSD1&quot;</span><br><span class="s">1512         &#39;,&#39;</span><br><span class="s">1513            &quot;WTPFHMD1&quot;</span><br><span class="s">1514         &#39;,&#39;</span><br><span class="s">1515            &quot;WTPFQX2&quot;</span><br><span class="s">1516         &#39;,&#39;</span><br><span class="s">1517            &quot;WTPFEX2&quot;</span><br><span class="s">1518         &#39;,&#39;</span><br><span class="s">1519            &quot;WTPFHX2&quot;</span><br><span class="s">1520         &#39;,&#39;</span><br><span class="s">1521            &quot;WTPFALG2&quot;</span><br><span class="s">1522         &#39;,&#39;</span><br><span class="s">1523            &quot;WTPFCNS2&quot;</span><br><span class="s">1524         &#39;,&#39;</span><br><span class="s">1525            &quot;WTPFSD2&quot;</span><br><span class="s">1526         &#39;,&#39;</span><br><span class="s">1527            &quot;WTPFMD2&quot;</span><br><span class="s">1528         &#39;,&#39;</span><br><span class="s">1529            &quot;WTPFHSD2&quot;</span><br><span class="s">1530         &#39;,&#39;</span><br><span class="s">1531            &quot;WTPFHMD2&quot;</span><br><span class="s">1532         &#39;,&#39;</span><br><span class="s">1533            &quot;WTPQRP1&quot;</span><br><span class="s">1534         &#39;,&#39;</span><br><span class="s">1535            &quot;WTPQRP2&quot;</span><br><span class="s">1536         &#39;,&#39;</span><br><span class="s">1537            &quot;WTPQRP3&quot;</span><br><span class="s">1538         &#39;,&#39;</span><br><span class="s">1539            &quot;WTPQRP4&quot;</span><br><span class="s">1540         &#39;,&#39;</span><br><span class="s">1541            &quot;WTPQRP5&quot;</span><br><span class="s">1542         &#39;,&#39;</span><br><span class="s">1543            &quot;WTPQRP6&quot;</span><br><span class="s">1544         &#39;,&#39;</span><br><span class="s">1545            &quot;WTPQRP7&quot;</span><br><span class="s">1546         &#39;,&#39;</span><br><span class="s">1547            &quot;WTPQRP8&quot;</span><br><span class="s">1548         &#39;,&#39;</span><br><span class="s">1549            &quot;WTPQRP9&quot;</span><br><span class="s">1550         &#39;,&#39;</span><br><span class="s">1551            &quot;WTPQRP10&quot;</span><br><span class="s">1552         &#39;,&#39;</span><br><span class="s">1553            &quot;WTPQRP11&quot;</span><br><span class="s">1554         &#39;,&#39;</span><br><span class="s">1555            &quot;WTPQRP12&quot;</span><br><span class="s">1556         &#39;,&#39;</span><br><span class="s">1557            &quot;WTPQRP13&quot;</span><br><span class="s">1558         &#39;,&#39;</span><br><span class="s">1559            &quot;WTPQRP14&quot;</span><br><span class="s">1560         &#39;,&#39;</span><br><span class="s">1561            &quot;WTPQRP15&quot;</span><br><span class="s">1562         &#39;,&#39;</span><br><span class="s">1563            &quot;WTPQRP16&quot;</span><br><span class="s">1564         &#39;,&#39;</span><br><span class="s">1565            &quot;WTPQRP17&quot;</span><br><span class="s">1566         &#39;,&#39;</span><br><span class="s">1567            &quot;WTPQRP18&quot;</span><br><span class="s">1568         &#39;,&#39;</span><br><span class="s">1569            &quot;WTPQRP19&quot;</span><br><span class="s">1570         &#39;,&#39;</span><br><span class="s">1571            &quot;WTPQRP20&quot;</span><br><span class="s">1572         &#39;,&#39;</span><br><span class="s">1573            &quot;WTPQRP21&quot;</span><br><span class="s">1574         &#39;,&#39;</span><br><span class="s">1575            &quot;WTPQRP22&quot;</span><br><span class="s">1576         &#39;,&#39;</span><br><span class="s">1577            &quot;WTPQRP23&quot;</span><br><span class="s">1578         &#39;,&#39;</span><br><span class="s">1579            &quot;WTPQRP24&quot;</span><br><span class="s">1580         &#39;,&#39;</span><br><span class="s">1581            &quot;WTPQRP25&quot;</span><br><span class="s">1582         &#39;,&#39;</span><br><span class="s">1583            &quot;WTPQRP26&quot;</span><br><span class="s">1584         &#39;,&#39;</span><br><span class="s">1585            &quot;WTPQRP27&quot;</span><br><span class="s">1586         &#39;,&#39;</span><br><span class="s">1587            &quot;WTPQRP28&quot;</span><br><span class="s">1588         &#39;,&#39;</span><br><span class="s">1589            &quot;WTPQRP29&quot;</span><br><span class="s">1590         &#39;,&#39;</span><br><span class="s">1591            &quot;WTPQRP30&quot;</span><br><span class="s">1592         &#39;,&#39;</span><br><span class="s">1593            &quot;WTPQRP31&quot;</span><br><span class="s">1594         &#39;,&#39;</span><br><span class="s">1595            &quot;WTPQRP32&quot;</span><br><span class="s">1596         &#39;,&#39;</span><br><span class="s">1597            &quot;WTPQRP33&quot;</span><br><span class="s">1598         &#39;,&#39;</span><br><span class="s">1599            &quot;WTPQRP34&quot;</span><br><span class="s">1600         &#39;,&#39;</span><br><span class="s">1601            &quot;WTPQRP35&quot;</span><br><span class="s">1602         &#39;,&#39;</span><br><span class="s">1603            &quot;WTPQRP36&quot;</span><br><span class="s">1604         &#39;,&#39;</span><br><span class="s">1605            &quot;WTPQRP37&quot;</span><br><span class="s">1606         &#39;,&#39;</span><br><span class="s">1607            &quot;WTPQRP38&quot;</span><br><span class="s">1608         &#39;,&#39;</span><br><span class="s">1609            &quot;WTPQRP39&quot;</span><br><span class="s">1610         &#39;,&#39;</span><br><span class="s">1611            &quot;WTPQRP40&quot;</span><br><span class="s">1612         &#39;,&#39;</span><br><span class="s">1613            &quot;WTPQRP41&quot;</span><br><span class="s">1614         &#39;,&#39;</span><br><span class="s">1615            &quot;WTPQRP42&quot;</span><br><span class="s">1616         &#39;,&#39;</span><br><span class="s">1617            &quot;WTPQRP43&quot;</span><br><span class="s">1618         &#39;,&#39;</span><br><span class="s">1619            &quot;WTPQRP44&quot;</span><br><span class="s">1620         &#39;,&#39;</span><br><span class="s">1621            &quot;WTPQRP45&quot;</span><br><span class="s">1622         &#39;,&#39;</span><br><span class="s">1623            &quot;WTPQRP46&quot;</span><br><span class="s">1624         &#39;,&#39;</span><br><span class="s">1625            &quot;WTPQRP47&quot;</span><br><span class="s">1626         &#39;,&#39;</span><br><span class="s">1627            &quot;WTPQRP48&quot;</span><br><span class="s">1628         &#39;,&#39;</span><br><span class="s">1629            &quot;WTPQRP49&quot;</span><br><span class="s">1630         &#39;,&#39;</span><br><span class="s">1631            &quot;WTPQRP50&quot;</span><br><span class="s">1632         &#39;,&#39;</span><br><span class="s">1633            &quot;WTPQRP51&quot;</span><br><span class="s">1634         &#39;,&#39;</span><br><span class="s">1635            &quot;WTPQRP52&quot;</span><br><span class="s">1636         &#39;,&#39;</span><br><span class="s">1637            &quot;WTPXRP1&quot;</span><br><span class="s">1638         &#39;,&#39;</span><br><span class="s">1639            &quot;WTPXRP2&quot;</span><br><span class="s">1640         &#39;,&#39;</span><br><span class="s">1641            &quot;WTPXRP3&quot;</span><br><span class="s">1642         &#39;,&#39;</span><br><span class="s">1643            &quot;WTPXRP4&quot;</span><br><span class="s">1644         &#39;,&#39;</span><br><span class="s">1645            &quot;WTPXRP5&quot;</span><br><span class="s">1646         &#39;,&#39;</span><br><span class="s">1647            &quot;WTPXRP6&quot;</span><br><span class="s">1648         &#39;,&#39;</span><br><span class="s">1649            &quot;WTPXRP7&quot;</span><br><span class="s">1650         &#39;,&#39;</span><br><span class="s">1651            &quot;WTPXRP8&quot;</span><br><span class="s">1652         &#39;,&#39;</span><br><span class="s">1653            &quot;WTPXRP9&quot;</span><br><span class="s">1654         &#39;,&#39;</span><br><span class="s">1655            &quot;WTPXRP10&quot;</span><br><span class="s">1656         &#39;,&#39;</span><br><span class="s">1657            &quot;WTPXRP11&quot;</span><br><span class="s">1658         &#39;,&#39;</span><br><span class="s">1659            &quot;WTPXRP12&quot;</span><br><span class="s">1660         &#39;,&#39;</span><br><span class="s">1661            &quot;WTPXRP13&quot;</span><br><span class="s">1662         &#39;,&#39;</span><br><span class="s">1663            &quot;WTPXRP14&quot;</span><br><span class="s">1664         &#39;,&#39;</span><br><span class="s">1665            &quot;WTPXRP15&quot;</span><br><span class="s">1666         &#39;,&#39;</span><br><span class="s">1667            &quot;WTPXRP16&quot;</span><br><span class="s">1668         &#39;,&#39;</span><br><span class="s">1669            &quot;WTPXRP17&quot;</span><br><span class="s">1670         &#39;,&#39;</span><br><span class="s">1671            &quot;WTPXRP18&quot;</span><br><span class="s">1672         &#39;,&#39;</span><br><span class="s">1673            &quot;WTPXRP19&quot;</span><br><span class="s">1674         &#39;,&#39;</span><br><span class="s">1675            &quot;WTPXRP20&quot;</span><br><span class="s">1676         &#39;,&#39;</span><br><span class="s">1677            &quot;WTPXRP21&quot;</span><br><span class="s">1678         &#39;,&#39;</span><br><span class="s">1679            &quot;WTPXRP22&quot;</span><br><span class="s">1680         &#39;,&#39;</span><br><span class="s">1681            &quot;WTPXRP23&quot;</span><br><span class="s">1682         &#39;,&#39;</span><br><span class="s">1683            &quot;WTPXRP24&quot;</span><br><span class="s">1684         &#39;,&#39;</span><br><span class="s">1685            &quot;WTPXRP25&quot;</span><br><span class="s">1686         &#39;,&#39;</span><br><span class="s">1687            &quot;WTPXRP26&quot;</span><br><span class="s">1688         &#39;,&#39;</span><br><span class="s">1689            &quot;WTPXRP27&quot;</span><br><span class="s">1690         &#39;,&#39;</span><br><span class="s">1691            &quot;WTPXRP28&quot;</span><br><span class="s">1692         &#39;,&#39;</span><br><span class="s">1693            &quot;WTPXRP29&quot;</span><br><span class="s">1694         &#39;,&#39;</span><br><span class="s">1695            &quot;WTPXRP30&quot;</span><br><span class="s">1696         &#39;,&#39;</span><br><span class="s">1697            &quot;WTPXRP31&quot;</span><br><span class="s">1698         &#39;,&#39;</span><br><span class="s">1699            &quot;WTPXRP32&quot;</span><br><span class="s">1700         &#39;,&#39;</span><br><span class="s">1701            &quot;WTPXRP33&quot;</span><br><span class="s">1702         &#39;,&#39;</span><br><span class="s">1703            &quot;WTPXRP34&quot;</span><br><span class="s">1704         &#39;,&#39;</span><br><span class="s">1705            &quot;WTPXRP35&quot;</span><br><span class="s">1706         &#39;,&#39;</span><br><span class="s">1707            &quot;WTPXRP36&quot;</span><br><span class="s">1708         &#39;,&#39;</span><br><span class="s">1709            &quot;WTPXRP37&quot;</span><br><span class="s">1710         &#39;,&#39;</span><br><span class="s">1711            &quot;WTPXRP38&quot;</span><br><span class="s">1712         &#39;,&#39;</span><br><span class="s">1713            &quot;WTPXRP39&quot;</span><br><span class="s">1714         &#39;,&#39;</span><br><span class="s">1715            &quot;WTPXRP40&quot;</span><br><span class="s">1716         &#39;,&#39;</span><br><span class="s">1717            &quot;WTPXRP41&quot;</span><br><span class="s">1718         &#39;,&#39;</span><br><span class="s">1719            &quot;WTPXRP42&quot;</span><br><span class="s">1720         &#39;,&#39;</span><br><span class="s">1721            &quot;WTPXRP43&quot;</span><br><span class="s">1722         &#39;,&#39;</span><br><span class="s">1723            &quot;WTPXRP44&quot;</span><br><span class="s">1724         &#39;,&#39;</span><br><span class="s">1725            &quot;WTPXRP45&quot;</span><br><span class="s">1726         &#39;,&#39;</span><br><span class="s">1727            &quot;WTPXRP46&quot;</span><br><span class="s">1728         &#39;,&#39;</span><br><span class="s">1729            &quot;WTPXRP47&quot;</span><br><span class="s">1730         &#39;,&#39;</span><br><span class="s">1731            &quot;WTPXRP48&quot;</span><br><span class="s">1732         &#39;,&#39;</span><br><span class="s">1733            &quot;WTPXRP49&quot;</span><br><span class="s">1734         &#39;,&#39;</span><br><span class="s">1735            &quot;WTPXRP50&quot;</span><br><span class="s">1736         &#39;,&#39;</span><br><span class="s">1737            &quot;WTPXRP51&quot;</span><br><span class="s">1738         &#39;,&#39;</span><br><span class="s">1739            &quot;WTPXRP52&quot;</span><br><span class="s">1740         &#39;,&#39;</span><br><span class="s">1741            &quot;HYAITMO&quot;</span><br><span class="s">1742         &#39;,&#39;</span><br><span class="s">1743            &quot;MXPLANG&quot;</span><br><span class="s">1744         &#39;,&#39;</span><br><span class="s">1745            &quot;MXPSESSR&quot;</span><br><span class="s">1746         &#39;,&#39;</span><br><span class="s">1747            &quot;MXPTIDW&quot;</span><br><span class="s">1748         &#39;,&#39;</span><br><span class="s">1749            &quot;MXPAXTMR&quot;</span><br><span class="s">1750         &#39;,&#39;</span><br><span class="s">1751            &quot;HXPTIDW&quot;</span><br><span class="s">1752         &#39;,&#39;</span><br><span class="s">1753            &quot;HXPAXTMR&quot;</span><br><span class="s">1754         &#39;,&#39;</span><br><span class="s">1755            &quot;HXPSESSR&quot;</span><br><span class="s">1756         &#39;,&#39;</span><br><span class="s">1757            &quot;PHPLANG&quot;</span><br><span class="s">1758         &#39;,&#39;</span><br><span class="s">1759            &quot;PHPHEMO&quot;</span><br><span class="s">1760         &#39;,&#39;</span><br><span class="s">1761            &quot;PHPCHM2&quot;</span><br><span class="s">1762         &#39;,&#39;</span><br><span class="s">1763            &quot;PHPINSU&quot;</span><br><span class="s">1764         &#39;,&#39;</span><br><span class="s">1765            &quot;PHPSNTI&quot;</span><br><span class="s">1766         &#39;,&#39;</span><br><span class="s">1767            &quot;PHPSNDA&quot;</span><br><span class="s">1768         &#39;,&#39;</span><br><span class="s">1769            &quot;PHPDRIN&quot;</span><br><span class="s">1770         &#39;,&#39;</span><br><span class="s">1771            &quot;PHPDRTI&quot;</span><br><span class="s">1772         &#39;,&#39;</span><br><span class="s">1773            &quot;PHPDRDA&quot;</span><br><span class="s">1774         &#39;,&#39;</span><br><span class="s">1775            &quot;PHPFAST&quot;</span><br><span class="s">1776         &#39;,&#39;</span><br><span class="s">1777            &quot;PHPBEST&quot;</span><br><span class="s">1778         &#39;,&#39;</span><br><span class="s">1779            &quot;WCP&quot;</span><br><span class="s">1780         &#39;,&#39;</span><br><span class="s">1781            &quot;WCPSI&quot;</span><br><span class="s">1782         &#39;,&#39;</span><br><span class="s">1783            &quot;LMPPCNT&quot;</span><br><span class="s">1784         &#39;,&#39;</span><br><span class="s">1785            &quot;MOPPCNT&quot;</span><br><span class="s">1786         &#39;,&#39;</span><br><span class="s">1787            &quot;GRPPCNT&quot;</span><br><span class="s">1788         &#39;,&#39;</span><br><span class="s">1789            &quot;LMP&quot;</span><br><span class="s">1790         &#39;,&#39;</span><br><span class="s">1791            &quot;MOP&quot;</span><br><span class="s">1792         &#39;,&#39;</span><br><span class="s">1793            &quot;GRP&quot;</span><br><span class="s">1794         &#39;,&#39;</span><br><span class="s">1795            &quot;RCP&quot;</span><br><span class="s">1796         &#39;,&#39;</span><br><span class="s">1797            &quot;RCPSI&quot;</span><br><span class="s">1798         &#39;,&#39;</span><br><span class="s">1799            &quot;HGP&quot;</span><br><span class="s">1800         &#39;,&#39;</span><br><span class="s">1801            &quot;HGPSI&quot;</span><br><span class="s">1802         &#39;,&#39;</span><br><span class="s">1803            &quot;HTP&quot;</span><br><span class="s">1804         &#39;,&#39;</span><br><span class="s">1805            &quot;HTPSI&quot;</span><br><span class="s">1806         &#39;,&#39;</span><br><span class="s">1807            &quot;MVPSI&quot;</span><br><span class="s">1808         &#39;,&#39;</span><br><span class="s">1809            &quot;MCPSI&quot;</span><br><span class="s">1810         &#39;,&#39;</span><br><span class="s">1811            &quot;MHP&quot;</span><br><span class="s">1812         &#39;,&#39;</span><br><span class="s">1813            &quot;MHPSI&quot;</span><br><span class="s">1814         &#39;,&#39;</span><br><span class="s">1815            &quot;RWP&quot;</span><br><span class="s">1816         &#39;,&#39;</span><br><span class="s">1817            &quot;RWPSI&quot;</span><br><span class="s">1818         &#39;,&#39;</span><br><span class="s">1819            &quot;PLP&quot;</span><br><span class="s">1820         &#39;,&#39;</span><br><span class="s">1821            &quot;PLPSI&quot;</span><br><span class="s">1822         &#39;,&#39;</span><br><span class="s">1823            &quot;DWP&quot;</span><br><span class="s">1824         &#39;,&#39;</span><br><span class="s">1825            &quot;PVPSI&quot;</span><br><span class="s">1826         &#39;,&#39;</span><br><span class="s">1827            &quot;GRPDIF&quot;</span><br><span class="s">1828         &#39;,&#39;</span><br><span class="s">1829            &quot;LMPDIF&quot;</span><br><span class="s">1830         &#39;,&#39;</span><br><span class="s">1831            &quot;MOPDIF&quot;</span><br><span class="s">1832         &#39;,&#39;</span><br><span class="s">1833            &quot;EOP&quot;</span><br><span class="s">1834         &#39;,&#39;</span><br><span class="s">1835            &quot;BOP&quot;</span><br><span class="s">1836         &#39;,&#39;</span><br><span class="s">1837            &quot;BLP&quot;</span><br><span class="s">1838         &#39;,&#39;</span><br><span class="s">1839            &quot;PRP&quot;</span><br><span class="s">1840         &#39;,&#39;</span><br><span class="s">1841            &quot;MEP&quot;</span><br><span class="s">1842         &#39;,&#39;</span><br><span class="s">1843            &quot;MLP&quot;</span><br><span class="s">1844         &#39;,&#39;</span><br><span class="s">1845            &quot;BAP&quot;</span><br><span class="s">1846         &#39;,&#39;</span><br><span class="s">1847            &quot;LAP&quot;</span><br><span class="s">1848         &#39;,&#39;</span><br><span class="s">1849            &quot;ANP&quot;</span><br><span class="s">1850         &#39;,&#39;</span><br><span class="s">1851            &quot;BSP&quot;</span><br><span class="s">1852         &#39;,&#39;</span><br><span class="s">1853            &quot;HZP&quot;</span><br><span class="s">1854         &#39;,&#39;</span><br><span class="s">1855            &quot;PKP&quot;</span><br><span class="s">1856         &#39;,&#39;</span><br><span class="s">1857            &quot;POP&quot;</span><br><span class="s">1858         &#39;,&#39;</span><br><span class="s">1859            &quot;MRP&quot;</span><br><span class="s">1860         &#39;,&#39;</span><br><span class="s">1861            &quot;MIP&quot;</span><br><span class="s">1862         &#39;,&#39;</span><br><span class="s">1863            &quot;SIP&quot;</span><br><span class="s">1864         &#39;,&#39;</span><br><span class="s">1865            &quot;SHP&quot;</span><br><span class="s">1866         &#39;,&#39;</span><br><span class="s">1867            &quot;TTP&quot;</span><br><span class="s">1868         &#39;,&#39;</span><br><span class="s">1869            &quot;TXP&quot;</span><br><span class="s">1870         &#39;,&#39;</span><br><span class="s">1871            &quot;VUP&quot;</span><br><span class="s">1872         &#39;,&#39;</span><br><span class="s">1873            &quot;PBP&quot;</span><br><span class="s">1874         &#39;,&#39;</span><br><span class="s">1875            &quot;PBPSI&quot;</span><br><span class="s">1876         &#39;,&#39;</span><br><span class="s">1877            &quot;EPP&quot;</span><br><span class="s">1878         &#39;,&#39;</span><br><span class="s">1879            &quot;EPPSI&quot;</span><br><span class="s">1880         &#39;,&#39;</span><br><span class="s">1881            &quot;FEP&quot;</span><br><span class="s">1882         &#39;,&#39;</span><br><span class="s">1883            &quot;FEPSI&quot;</span><br><span class="s">1884         &#39;,&#39;</span><br><span class="s">1885            &quot;TIP&quot;</span><br><span class="s">1886         &#39;,&#39;</span><br><span class="s">1887            &quot;TIPSI&quot;</span><br><span class="s">1888         &#39;,&#39;</span><br><span class="s">1889            &quot;PXP&quot;</span><br><span class="s">1890         &#39;,&#39;</span><br><span class="s">1891            &quot;FRP&quot;</span><br><span class="s">1892         &#39;,&#39;</span><br><span class="s">1893            &quot;FRPSI&quot;</span><br><span class="s">1894         &#39;,&#39;</span><br><span class="s">1895            &quot;FOP&quot;</span><br><span class="s">1896         &#39;,&#39;</span><br><span class="s">1897            &quot;FOPSI&quot;</span><br><span class="s">1898         &#39;,&#39;</span><br><span class="s">1899            &quot;RBP&quot;</span><br><span class="s">1900         &#39;,&#39;</span><br><span class="s">1901            &quot;RBPSI&quot;</span><br><span class="s">1902         &#39;,&#39;</span><br><span class="s">1903            &quot;VBP&quot;</span><br><span class="s">1904         &#39;,&#39;</span><br><span class="s">1905            &quot;VBPSI&quot;</span><br><span class="s">1906         &#39;,&#39;</span><br><span class="s">1907            &quot;VCP&quot;</span><br><span class="s">1908         &#39;,&#39;</span><br><span class="s">1909            &quot;VCPSI&quot;</span><br><span class="s">1910         &#39;,&#39;</span><br><span class="s">1911            &quot;ICPSI&quot;</span><br><span class="s">1912         &#39;,&#39;</span><br><span class="s">1913            &quot;CAPSI&quot;</span><br><span class="s">1914         &#39;,&#39;</span><br><span class="s">1915            &quot;SEP&quot;</span><br><span class="s">1916         &#39;,&#39;</span><br><span class="s">1917            &quot;SEPSI&quot;</span><br><span class="s">1918         &#39;,&#39;</span><br><span class="s">1919            &quot;VAP&quot;</span><br><span class="s">1920         &#39;,&#39;</span><br><span class="s">1921            &quot;VAPSI&quot;</span><br><span class="s">1922         &#39;,&#39;</span><br><span class="s">1923            &quot;VEP&quot;</span><br><span class="s">1924         &#39;,&#39;</span><br><span class="s">1925            &quot;VEPSI&quot;</span><br><span class="s">1926         &#39;,&#39;</span><br><span class="s">1927            &quot;ACP&quot;</span><br><span class="s">1928         &#39;,&#39;</span><br><span class="s">1929            &quot;ACPSI&quot;</span><br><span class="s">1930         &#39;,&#39;</span><br><span class="s">1931            &quot;BCP&quot;</span><br><span class="s">1932         &#39;,&#39;</span><br><span class="s">1933            &quot;BCPSI&quot;</span><br><span class="s">1934         &#39;,&#39;</span><br><span class="s">1935            &quot;BXP&quot;</span><br><span class="s">1936         &#39;,&#39;</span><br><span class="s">1937            &quot;BXPSI&quot;</span><br><span class="s">1938         &#39;,&#39;</span><br><span class="s">1939            &quot;LUP&quot;</span><br><span class="s">1940         &#39;,&#39;</span><br><span class="s">1941            &quot;LUPSI&quot;</span><br><span class="s">1942         &#39;,&#39;</span><br><span class="s">1943            &quot;LYP&quot;</span><br><span class="s">1944         &#39;,&#39;</span><br><span class="s">1945            &quot;LYPSI&quot;</span><br><span class="s">1946         &#39;,&#39;</span><br><span class="s">1947            &quot;REP&quot;</span><br><span class="s">1948         &#39;,&#39;</span><br><span class="s">1949            &quot;REPSI&quot;</span><br><span class="s">1950         &#39;,&#39;</span><br><span class="s">1951            &quot;COP&quot;</span><br><span class="s">1952         &#39;,&#39;</span><br><span class="s">1953            &quot;TCP&quot;</span><br><span class="s">1954         &#39;,&#39;</span><br><span class="s">1955            &quot;TCPSI&quot;</span><br><span class="s">1956         &#39;,&#39;</span><br><span class="s">1957            &quot;TGP&quot;</span><br><span class="s">1958         &#39;,&#39;</span><br><span class="s">1959            &quot;TGPSI&quot;</span><br><span class="s">1960         &#39;,&#39;</span><br><span class="s">1961            &quot;LCP&quot;</span><br><span class="s">1962         &#39;,&#39;</span><br><span class="s">1963            &quot;LCPSI&quot;</span><br><span class="s">1964         &#39;,&#39;</span><br><span class="s">1965            &quot;HDP&quot;</span><br><span class="s">1966         &#39;,&#39;</span><br><span class="s">1967            &quot;HDPSI&quot;</span><br><span class="s">1968         &#39;,&#39;</span><br><span class="s">1969            &quot;AAP&quot;</span><br><span class="s">1970         &#39;,&#39;</span><br><span class="s">1971            &quot;AAPSI&quot;</span><br><span class="s">1972         &#39;,&#39;</span><br><span class="s">1973            &quot;ABP&quot;</span><br><span class="s">1974         &#39;,&#39;</span><br><span class="s">1975            &quot;ABPSI&quot;</span><br><span class="s">1976         &#39;,&#39;</span><br><span class="s">1977            &quot;LPP&quot;</span><br><span class="s">1978         &#39;,&#39;</span><br><span class="s">1979            &quot;LPPSI&quot;</span><br><span class="s">1980         &#39;,&#39;</span><br><span class="s">1981            &quot;FHPSI&quot;</span><br><span class="s">1982         &#39;,&#39;</span><br><span class="s">1983            &quot;LHPSI&quot;</span><br><span class="s">1984         &#39;,&#39;</span><br><span class="s">1985            &quot;FBP&quot;</span><br><span class="s">1986         &#39;,&#39;</span><br><span class="s">1987            &quot;FBPSI&quot;</span><br><span class="s">1988         &#39;,&#39;</span><br><span class="s">1989            &quot;CRP&quot;</span><br><span class="s">1990         &#39;,&#39;</span><br><span class="s">1991            &quot;TEP&quot;</span><br><span class="s">1992         &#39;,&#39;</span><br><span class="s">1993            &quot;AHP&quot;</span><br><span class="s">1994         &#39;,&#39;</span><br><span class="s">1995            &quot;HBP&quot;</span><br><span class="s">1996         &#39;,&#39;</span><br><span class="s">1997            &quot;SSP&quot;</span><br><span class="s">1998         &#39;,&#39;</span><br><span class="s">1999            &quot;SAP&quot;</span><br><span class="s">2000         &#39;,&#39;</span><br><span class="s">2001            &quot;HCP&quot;</span><br><span class="s">2002         &#39;,&#39;</span><br><span class="s">2003            &quot;DHP&quot;</span><br><span class="s">2004         &#39;,&#39;</span><br><span class="s">2005            &quot;H1P&quot;</span><br><span class="s">2006         &#39;,&#39;</span><br><span class="s">2007            &quot;H2P&quot;</span><br><span class="s">2008         &#39;,&#39;</span><br><span class="s">2009            &quot;RUP&quot;</span><br><span class="s">2010         &#39;,&#39;</span><br><span class="s">2011            &quot;RUPUNIT&quot;</span><br><span class="s">2012         &#39;,&#39;</span><br><span class="s">2013            &quot;VRP&quot;</span><br><span class="s">2014         &#39;,&#39;</span><br><span class="s">2015            &quot;TOP&quot;</span><br><span class="s">2016         &#39;,&#39;</span><br><span class="s">2017            &quot;RFP&quot;</span><br><span class="s">2018         &#39;,&#39;</span><br><span class="s">2019            &quot;L1P&quot;</span><br><span class="s">2020         &#39;,&#39;</span><br><span class="s">2021            &quot;HPP&quot;</span><br><span class="s">2022         &#39;,&#39;</span><br><span class="s">2023            &quot;NAPSI&quot;</span><br><span class="s">2024         &#39;,&#39;</span><br><span class="s">2025            &quot;SKPSI&quot;</span><br><span class="s">2026         &#39;,&#39;</span><br><span class="s">2027            &quot;CLPSI&quot;</span><br><span class="s">2028         &#39;,&#39;</span><br><span class="s">2029            &quot;C3PSI&quot;</span><br><span class="s">2030         &#39;,&#39;</span><br><span class="s">2031            &quot;SCP&quot;</span><br><span class="s">2032         &#39;,&#39;</span><br><span class="s">2033            &quot;SCPSI&quot;</span><br><span class="s">2034         &#39;,&#39;</span><br><span class="s">2035            &quot;PSP&quot;</span><br><span class="s">2036         &#39;,&#39;</span><br><span class="s">2037            &quot;PSPSI&quot;</span><br><span class="s">2038         &#39;,&#39;</span><br><span class="s">2039            &quot;UAP&quot;</span><br><span class="s">2040         &#39;,&#39;</span><br><span class="s">2041            &quot;UAPSI&quot;</span><br><span class="s">2042         &#39;,&#39;</span><br><span class="s">2043            &quot;SGP&quot;</span><br><span class="s">2044         &#39;,&#39;</span><br><span class="s">2045            &quot;SGPSI&quot;</span><br><span class="s">2046         &#39;,&#39;</span><br><span class="s">2047            &quot;BUP&quot;</span><br><span class="s">2048         &#39;,&#39;</span><br><span class="s">2049            &quot;BUPSI&quot;</span><br><span class="s">2050         &#39;,&#39;</span><br><span class="s">2051            &quot;TBP&quot;</span><br><span class="s">2052         &#39;,&#39;</span><br><span class="s">2053            &quot;TBPSI&quot;</span><br><span class="s">2054         &#39;,&#39;</span><br><span class="s">2055            &quot;CEP&quot;</span><br><span class="s">2056         &#39;,&#39;</span><br><span class="s">2057            &quot;CEPSI&quot;</span><br><span class="s">2058         &#39;,&#39;</span><br><span class="s">2059            &quot;SFP&quot;</span><br><span class="s">2060         &#39;,&#39;</span><br><span class="s">2061            &quot;SFPSI&quot;</span><br><span class="s">2062         &#39;,&#39;</span><br><span class="s">2063            &quot;CHP&quot;</span><br><span class="s">2064         &#39;,&#39;</span><br><span class="s">2065            &quot;CHPSI&quot;</span><br><span class="s">2066         &#39;,&#39;</span><br><span class="s">2067            &quot;TRP&quot;</span><br><span class="s">2068         &#39;,&#39;</span><br><span class="s">2069            &quot;TRPSI&quot;</span><br><span class="s">2070         &#39;,&#39;</span><br><span class="s">2071            &quot;ASPSI&quot;</span><br><span class="s">2072         &#39;,&#39;</span><br><span class="s">2073            &quot;ATPSI&quot;</span><br><span class="s">2074         &#39;,&#39;</span><br><span class="s">2075            &quot;GGPSI&quot;</span><br><span class="s">2076         &#39;,&#39;</span><br><span class="s">2077            &quot;LDPSI&quot;</span><br><span class="s">2078         &#39;,&#39;</span><br><span class="s">2079            &quot;APPSI&quot;</span><br><span class="s">2080         &#39;,&#39;</span><br><span class="s">2081            &quot;TPP&quot;</span><br><span class="s">2082         &#39;,&#39;</span><br><span class="s">2083            &quot;TPPSI&quot;</span><br><span class="s">2084         &#39;,&#39;</span><br><span class="s">2085            &quot;AMP&quot;</span><br><span class="s">2086         &#39;,&#39;</span><br><span class="s">2087            &quot;AMPSI&quot;</span><br><span class="s">2088         &#39;,&#39;</span><br><span class="s">2089            &quot;GBP&quot;</span><br><span class="s">2090         &#39;,&#39;</span><br><span class="s">2091            &quot;GBPSI&quot;</span><br><span class="s">2092         &#39;,&#39;</span><br><span class="s">2093            &quot;OSPSI&quot;</span><br><span class="s">2094         &#39;,&#39;</span><br><span class="s">2095            &quot;GHP&quot;</span><br><span class="s">2096         &#39;,&#39;</span><br><span class="s">2097            &quot;GHPMETH&quot;</span><br><span class="s">2098         &#39;,&#39;</span><br><span class="s">2099            &quot;G1P&quot;</span><br><span class="s">2100         &#39;,&#39;</span><br><span class="s">2101            &quot;G1PSI&quot;</span><br><span class="s">2102         &#39;,&#39;</span><br><span class="s">2103            &quot;G1PCODE&quot;</span><br><span class="s">2104         &#39;,&#39;</span><br><span class="s">2105            &quot;G1PTIM1&quot;</span><br><span class="s">2106         &#39;,&#39;</span><br><span class="s">2107            &quot;G1PTIM2&quot;</span><br><span class="s">2108         &#39;,&#39;</span><br><span class="s">2109            &quot;G2P&quot;</span><br><span class="s">2110         &#39;,&#39;</span><br><span class="s">2111            &quot;G2PSI&quot;</span><br><span class="s">2112         &#39;,&#39;</span><br><span class="s">2113            &quot;C1P&quot;</span><br><span class="s">2114         &#39;,&#39;</span><br><span class="s">2115            &quot;C1PSI&quot;</span><br><span class="s">2116         &#39;,&#39;</span><br><span class="s">2117            &quot;C2P&quot;</span><br><span class="s">2118         &#39;,&#39;</span><br><span class="s">2119            &quot;C2PSI&quot;</span><br><span class="s">2120         &#39;,&#39;</span><br><span class="s">2121            &quot;I1P&quot;</span><br><span class="s">2122         &#39;,&#39;</span><br><span class="s">2123            &quot;I1PSI&quot;</span><br><span class="s">2124         &#39;,&#39;</span><br><span class="s">2125            &quot;I1P2PFLG&quot;</span><br><span class="s">2126         &#39;,&#39;</span><br><span class="s">2127            &quot;I2P&quot;</span><br><span class="s">2128         &#39;,&#39;</span><br><span class="s">2129            &quot;I2PSI&quot;</span><br><span class="s">2130         &#39;,&#39;</span><br><span class="s">2131            &quot;UDP&quot;</span><br><span class="s">2132         &#39;,&#39;</span><br><span class="s">2133            &quot;UDPSI&quot;</span><br><span class="s">2134         &#39;,&#39;</span><br><span class="s">2135            &quot;URP&quot;</span><br><span class="s">2136         &#39;,&#39;</span><br><span class="s">2137            &quot;URPSI&quot;</span><br><span class="s">2138         &#39;,&#39;</span><br><span class="s">2139            &quot;UBP&quot;</span><br><span class="s">2140         &#39;,&#39;</span><br><span class="s">2141            &quot;UIP&quot;</span><br><span class="s">2142         ;</span><br><span class="s">2143       end;</span><br><span class="s">2144     set  LAB   end=EFIEOD;</span><br><span class="s">2145         format SEQN best12. ;</span><br><span class="s">2146         format DMPFSEQ best12. ;</span><br><span class="s">2147         format DMPSTAT best12. ;</span><br><span class="s">2148         format DMARETHN best12. ;</span><br><span class="s">2149         format DMARACER best12. ;</span><br><span class="s">2150         format DMAETHNR best12. ;</span><br><span class="s">2151         format HSSEX best12. ;</span><br><span class="s">2152         format HSAGEIR best12. ;</span><br><span class="s">2153         format HSAGEU best12. ;</span><br><span class="s">2154         format HSAITMOR best12. ;</span><br><span class="s">2155         format HSFSIZER best12. ;</span><br><span class="s">2156         format HSHSIZER best12. ;</span><br><span class="s">2157         format DMPCNTYR best12. ;</span><br><span class="s">2158         format DMPFIPSR best12. ;</span><br><span class="s">2159         format DMPMETRO best12. ;</span><br><span class="s">2160         format DMPCREGN best12. ;</span><br><span class="s">2161         format DMPPIR z6.3 ;</span><br><span class="s">2162         format SDPPHASE best12. ;</span><br><span class="s">2163         format SDPPSU6 best12. ;</span><br><span class="s">2164         format SDPSTRA6 best12. ;</span><br><span class="s">2165         format SDPPSU1 best12. ;</span><br><span class="s">2166         format SDPSTRA1 best12. ;</span><br><span class="s">2167         format SDPPSU2 best12. ;</span><br><span class="s">2168         format SDPSTRA2 best12. ;</span><br><span class="s">2169         format WTPFQX6 z9.2 ;</span><br><span class="s">2170         format WTPFEX6 z9.2 ;</span><br><span class="s">2171         format WTPFHX6 z9.2 ;</span><br><span class="s">2172         format WTPFALG6 z9.2 ;</span><br><span class="s">2173         format WTPFCNS6 z9.2 ;</span><br><span class="s">2174         format WTPFSD6 z9.2 ;</span><br><span class="s">2175         format WTPFMD6 z9.2 ;</span><br><span class="s">2176         format WTPFHSD6 z9.2 ;</span><br><span class="s">2177         format WTPFHMD6 z9.2 ;</span><br><span class="s">2178         format WTPFQX1 z9.2 ;</span><br><span class="s">2179         format WTPFEX1 z9.2 ;</span><br><span class="s">2180         format WTPFHX1 z9.2 ;</span><br><span class="s">2181         format WTPFALG1 z9.2 ;</span><br><span class="s">2182         format WTPFCNS1 z9.2 ;</span><br><span class="s">2183         format WTPFSD1 z9.2 ;</span><br><span class="s">2184         format WTPFMD1 z9.2 ;</span><br><span class="s">2185         format WTPFHSD1 z9.2 ;</span><br><span class="s">2186         format WTPFHMD1 z9.2 ;</span><br><span class="s">2187         format WTPFQX2 z9.2 ;</span><br><span class="s">2188         format WTPFEX2 z9.2 ;</span><br><span class="s">2189         format WTPFHX2 z9.2 ;</span><br><span class="s">2190         format WTPFALG2 z9.2 ;</span><br><span class="s">2191         format WTPFCNS2 z9.2 ;</span><br><span class="s">2192         format WTPFSD2 z9.2 ;</span><br><span class="s">2193         format WTPFMD2 z9.2 ;</span><br><span class="s">2194         format WTPFHSD2 z9.2 ;</span><br><span class="s">2195         format WTPFHMD2 z9.2 ;</span><br><span class="s">2196         format WTPQRP1 z9.2 ;</span><br><span class="s">2197         format WTPQRP2 z9.2 ;</span><br><span class="s">2198         format WTPQRP3 z9.2 ;</span><br><span class="s">2199         format WTPQRP4 z9.2 ;</span><br><span class="s">2200         format WTPQRP5 z9.2 ;</span><br><span class="s">2201         format WTPQRP6 z9.2 ;</span><br><span class="s">2202         format WTPQRP7 z9.2 ;</span><br><span class="s">2203         format WTPQRP8 z9.2 ;</span><br><span class="s">2204         format WTPQRP9 z9.2 ;</span><br><span class="s">2205         format WTPQRP10 z9.2 ;</span><br><span class="s">2206         format WTPQRP11 z9.2 ;</span><br><span class="s">2207         format WTPQRP12 z9.2 ;</span><br><span class="s">2208         format WTPQRP13 z9.2 ;</span><br><span class="s">2209         format WTPQRP14 z9.2 ;</span><br><span class="s">2210         format WTPQRP15 z9.2 ;</span><br><span class="s">2211         format WTPQRP16 z9.2 ;</span><br><span class="s">2212         format WTPQRP17 z9.2 ;</span><br><span class="s">2213         format WTPQRP18 z9.2 ;</span><br><span class="s">2214         format WTPQRP19 z9.2 ;</span><br><span class="s">2215         format WTPQRP20 z9.2 ;</span><br><span class="s">2216         format WTPQRP21 z9.2 ;</span><br><span class="s">2217         format WTPQRP22 z9.2 ;</span><br><span class="s">2218         format WTPQRP23 z9.2 ;</span><br><span class="s">2219         format WTPQRP24 z9.2 ;</span><br><span class="s">2220         format WTPQRP25 z9.2 ;</span><br><span class="s">2221         format WTPQRP26 z9.2 ;</span><br><span class="s">2222         format WTPQRP27 z9.2 ;</span><br><span class="s">2223         format WTPQRP28 z9.2 ;</span><br><span class="s">2224         format WTPQRP29 z9.2 ;</span><br><span class="s">2225         format WTPQRP30 z9.2 ;</span><br><span class="s">2226         format WTPQRP31 z9.2 ;</span><br><span class="s">2227         format WTPQRP32 z9.2 ;</span><br><span class="s">2228         format WTPQRP33 z9.2 ;</span><br><span class="s">2229         format WTPQRP34 z9.2 ;</span><br><span class="s">2230         format WTPQRP35 z9.2 ;</span><br><span class="s">2231         format WTPQRP36 z9.2 ;</span><br><span class="s">2232         format WTPQRP37 z9.2 ;</span><br><span class="s">2233         format WTPQRP38 z9.2 ;</span><br><span class="s">2234         format WTPQRP39 z9.2 ;</span><br><span class="s">2235         format WTPQRP40 z9.2 ;</span><br><span class="s">2236         format WTPQRP41 z9.2 ;</span><br><span class="s">2237         format WTPQRP42 z9.2 ;</span><br><span class="s">2238         format WTPQRP43 z9.2 ;</span><br><span class="s">2239         format WTPQRP44 z9.2 ;</span><br><span class="s">2240         format WTPQRP45 z9.2 ;</span><br><span class="s">2241         format WTPQRP46 z9.2 ;</span><br><span class="s">2242         format WTPQRP47 z9.2 ;</span><br><span class="s">2243         format WTPQRP48 z9.2 ;</span><br><span class="s">2244         format WTPQRP49 z9.2 ;</span><br><span class="s">2245         format WTPQRP50 z9.2 ;</span><br><span class="s">2246         format WTPQRP51 z9.2 ;</span><br><span class="s">2247         format WTPQRP52 z9.2 ;</span><br><span class="s">2248         format WTPXRP1 z9.2 ;</span><br><span class="s">2249         format WTPXRP2 z9.2 ;</span><br><span class="s">2250         format WTPXRP3 z9.2 ;</span><br><span class="s">2251         format WTPXRP4 z9.2 ;</span><br><span class="s">2252         format WTPXRP5 z9.2 ;</span><br><span class="s">2253         format WTPXRP6 z9.2 ;</span><br><span class="s">2254         format WTPXRP7 z9.2 ;</span><br><span class="s">2255         format WTPXRP8 z9.2 ;</span><br><span class="s">2256         format WTPXRP9 z9.2 ;</span><br><span class="s">2257         format WTPXRP10 z9.2 ;</span><br><span class="s">2258         format WTPXRP11 z9.2 ;</span><br><span class="s">2259         format WTPXRP12 z9.2 ;</span><br><span class="s">2260         format WTPXRP13 z9.2 ;</span><br><span class="s">2261         format WTPXRP14 z9.2 ;</span><br><span class="s">2262         format WTPXRP15 z9.2 ;</span><br><span class="s">2263         format WTPXRP16 z9.2 ;</span><br><span class="s">2264         format WTPXRP17 z9.2 ;</span><br><span class="s">2265         format WTPXRP18 z9.2 ;</span><br><span class="s">2266         format WTPXRP19 z9.2 ;</span><br><span class="s">2267         format WTPXRP20 z9.2 ;</span><br><span class="s">2268         format WTPXRP21 z9.2 ;</span><br><span class="s">2269         format WTPXRP22 z9.2 ;</span><br><span class="s">2270         format WTPXRP23 z9.2 ;</span><br><span class="s">2271         format WTPXRP24 z9.2 ;</span><br><span class="s">2272         format WTPXRP25 z9.2 ;</span><br><span class="s">2273         format WTPXRP26 z9.2 ;</span><br><span class="s">2274         format WTPXRP27 z9.2 ;</span><br><span class="s">2275         format WTPXRP28 z9.2 ;</span><br><span class="s">2276         format WTPXRP29 z9.2 ;</span><br><span class="s">2277         format WTPXRP30 z9.2 ;</span><br><span class="s">2278         format WTPXRP31 z9.2 ;</span><br><span class="s">2279         format WTPXRP32 z9.2 ;</span><br><span class="s">2280         format WTPXRP33 z9.2 ;</span><br><span class="s">2281         format WTPXRP34 z9.2 ;</span><br><span class="s">2282         format WTPXRP35 z9.2 ;</span><br><span class="s">2283         format WTPXRP36 z9.2 ;</span><br><span class="s">2284         format WTPXRP37 z9.2 ;</span><br><span class="s">2285         format WTPXRP38 z9.2 ;</span><br><span class="s">2286         format WTPXRP39 z9.2 ;</span><br><span class="s">2287         format WTPXRP40 z9.2 ;</span><br><span class="s">2288         format WTPXRP41 z9.2 ;</span><br><span class="s">2289         format WTPXRP42 z9.2 ;</span><br><span class="s">2290         format WTPXRP43 z9.2 ;</span><br><span class="s">2291         format WTPXRP44 z9.2 ;</span><br><span class="s">2292         format WTPXRP45 z9.2 ;</span><br><span class="s">2293         format WTPXRP46 z9.2 ;</span><br><span class="s">2294         format WTPXRP47 z9.2 ;</span><br><span class="s">2295         format WTPXRP48 z9.2 ;</span><br><span class="s">2296         format WTPXRP49 z9.2 ;</span><br><span class="s">2297         format WTPXRP50 z9.2 ;</span><br><span class="s">2298         format WTPXRP51 z9.2 ;</span><br><span class="s">2299         format WTPXRP52 z9.2 ;</span><br><span class="s">2300         format HYAITMO best12. ;</span><br><span class="s">2301         format MXPLANG best12. ;</span><br><span class="s">2302         format MXPSESSR best12. ;</span><br><span class="s">2303         format MXPTIDW best12. ;</span><br><span class="s">2304         format MXPAXTMR best12. ;</span><br><span class="s">2305         format HXPTIDW best12. ;</span><br><span class="s">2306         format HXPAXTMR best12. ;</span><br><span class="s">2307         format HXPSESSR best12. ;</span><br><span class="s">2308         format PHPLANG best12. ;</span><br><span class="s">2309         format PHPHEMO best12. ;</span><br><span class="s">2310         format PHPCHM2 best12. ;</span><br><span class="s">2311         format PHPINSU best12. ;</span><br><span class="s">2312         format PHPSNTI $5. ;</span><br><span class="s">2313         format PHPSNDA best12. ;</span><br><span class="s">2314         format PHPDRIN best12. ;</span><br><span class="s">2315         format PHPDRTI $5. ;</span><br><span class="s">2316         format PHPDRDA best12. ;</span><br><span class="s">2317         format PHPFAST 8.2 ;</span><br><span class="s">2318         format PHPBEST $5. ;</span><br><span class="s">2319         format WCP 8.2 ;</span><br><span class="s">2320         format WCPSI 8.2 ;</span><br><span class="s">2321         format LMPPCNT 8.2 ;</span><br><span class="s">2322         format MOPPCNT 8.2 ;</span><br><span class="s">2323         format GRPPCNT 8.2 ;</span><br><span class="s">2324         format LMP 8.2 ;</span><br><span class="s">2325         format MOP 7.2 ;</span><br><span class="s">2326         format GRP 8.2 ;</span><br><span class="s">2327         format RCP 7.2 ;</span><br><span class="s">2328         format RCPSI 7.2 ;</span><br><span class="s">2329         format HGP 8.2 ;</span><br><span class="s">2330         format HGPSI 7.1 ;</span><br><span class="s">2331         format HTP 8.2 ;</span><br><span class="s">2332         format HTPSI 9.3 ;</span><br><span class="s">2333         format MVPSI 8.2 ;</span><br><span class="s">2334         format MCPSI 8.2 ;</span><br><span class="s">2335         format MHP 8.2 ;</span><br><span class="s">2336         format MHPSI 7.1 ;</span><br><span class="s">2337         format RWP 8.2 ;</span><br><span class="s">2338         format RWPSI 11.4 ;</span><br><span class="s">2339         format PLP 7.1 ;</span><br><span class="s">2340         format PLPSI 7.1 ;</span><br><span class="s">2341         format DWP 8.2 ;</span><br><span class="s">2342         format PVPSI 8.2 ;</span><br><span class="s">2343         format GRPDIF best12. ;</span><br><span class="s">2344         format LMPDIF best12. ;</span><br><span class="s">2345         format MOPDIF best12. ;</span><br><span class="s">2346         format EOP best12. ;</span><br><span class="s">2347         format BOP best12. ;</span><br><span class="s">2348         format BLP best12. ;</span><br><span class="s">2349         format PRP best12. ;</span><br><span class="s">2350         format MEP best12. ;</span><br><span class="s">2351         format MLP best12. ;</span><br><span class="s">2352         format BAP best12. ;</span><br><span class="s">2353         format LAP best12. ;</span><br><span class="s">2354         format ANP best12. ;</span><br><span class="s">2355         format BSP best12. ;</span><br><span class="s">2356         format HZP best12. ;</span><br><span class="s">2357         format PKP best12. ;</span><br><span class="s">2358         format POP best12. ;</span><br><span class="s">2359         format MRP best12. ;</span><br><span class="s">2360         format MIP best12. ;</span><br><span class="s">2361         format SIP best12. ;</span><br><span class="s">2362         format SHP best12. ;</span><br><span class="s">2363         format TTP best12. ;</span><br><span class="s">2364         format TXP best12. ;</span><br><span class="s">2365         format VUP best12. ;</span><br><span class="s">2366         format PBP 6.1 ;</span><br><span class="s">2367         format PBPSI 9.3 ;</span><br><span class="s">2368         format EPP best12. ;</span><br><span class="s">2369         format EPPSI 8.2 ;</span><br><span class="s">2370         format FEP best12. ;</span><br><span class="s">2371         format FEPSI 8.2 ;</span><br><span class="s">2372         format TIP best12. ;</span><br><span class="s">2373         format TIPSI 9.2 ;</span><br><span class="s">2374         format PXP 6.1 ;</span><br><span class="s">2375         format FRP best12. ;</span><br><span class="s">2376         format FRPSI best12. ;</span><br><span class="s">2377         format FOP 7.1 ;</span><br><span class="s">2378         format FOPSI 7.1 ;</span><br><span class="s">2379         format RBP best12. ;</span><br><span class="s">2380         format RBPSI 8.1 ;</span><br><span class="s">2381         format VBP best12. ;</span><br><span class="s">2382         format VBPSI 11.2 ;</span><br><span class="s">2383         format VCP 7.2 ;</span><br><span class="s">2384         format VCPSI 9.2 ;</span><br><span class="s">2385         format ICPSI 7.2 ;</span><br><span class="s">2386         format CAPSI 7.2 ;</span><br><span class="s">2387         format SEP best12. ;</span><br><span class="s">2388         format SEPSI 7.2 ;</span><br><span class="s">2389         format VAP best12. ;</span><br><span class="s">2390         format VAPSI 7.2 ;</span><br><span class="s">2391         format VEP best12. ;</span><br><span class="s">2392         format VEPSI 9.2 ;</span><br><span class="s">2393         format ACP best12. ;</span><br><span class="s">2394         format ACPSI 7.2 ;</span><br><span class="s">2395         format BCP best12. ;</span><br><span class="s">2396         format BCPSI 8.2 ;</span><br><span class="s">2397         format BXP best12. ;</span><br><span class="s">2398         format BXPSI 7.2 ;</span><br><span class="s">2399         format LUP best12. ;</span><br><span class="s">2400         format LUPSI 7.2 ;</span><br><span class="s">2401         format LYP best12. ;</span><br><span class="s">2402         format LYPSI 7.2 ;</span><br><span class="s">2403         format REP best12. ;</span><br><span class="s">2404         format REPSI 7.2 ;</span><br><span class="s">2405         format COP 9.3 ;</span><br><span class="s">2406         format TCP 8. ;</span><br><span class="s">2407         format TCPSI 8.2 ;</span><br><span class="s">2408         format TGP 8. ;</span><br><span class="s">2409         format TGPSI 8.2 ;</span><br><span class="s">2410         format LCP 8. ;</span><br><span class="s">2411         format LCPSI 7.2 ;</span><br><span class="s">2412         format HDP 8. ;</span><br><span class="s">2413         format HDPSI 7.2 ;</span><br><span class="s">2414         format AAP 8. ;</span><br><span class="s">2415         format AAPSI 7.2 ;</span><br><span class="s">2416         format ABP 8. ;</span><br><span class="s">2417         format ABPSI 7.2 ;</span><br><span class="s">2418         format LPP 8. ;</span><br><span class="s">2419         format LPPSI 7.2 ;</span><br><span class="s">2420         format FHPSI 7.1 ;</span><br><span class="s">2421         format LHPSI 6.1 ;</span><br><span class="s">2422         format FBP 8. ;</span><br><span class="s">2423         format FBPSI 7.2 ;</span><br><span class="s">2424         format CRP 8.2 ;</span><br><span class="s">2425         format TEP 10.3 ;</span><br><span class="s">2426         format AHP 2. ;</span><br><span class="s">2427         format HBP 2. ;</span><br><span class="s">2428         format SSP 2. ;</span><br><span class="s">2429         format SAP 2. ;</span><br><span class="s">2430         format HCP 2. ;</span><br><span class="s">2431         format DHP 2. ;</span><br><span class="s">2432         format H1P 8. ;</span><br><span class="s">2433         format H2P 8. ;</span><br><span class="s">2434         format RUP 8.2 ;</span><br><span class="s">2435         format RUPUNIT 8. ;</span><br><span class="s">2436         format VRP 8.2 ;</span><br><span class="s">2437         format TOP best12. ;</span><br><span class="s">2438         format RFP 8. ;</span><br><span class="s">2439         format L1P 5.2 ;</span><br><span class="s">2440         format HPP 2. ;</span><br><span class="s">2441         format NAPSI 7.1 ;</span><br><span class="s">2442         format SKPSI 7.2 ;</span><br><span class="s">2443         format CLPSI 7.1 ;</span><br><span class="s">2444         format C3PSI 8. ;</span><br><span class="s">2445         format SCP 6.1 ;</span><br><span class="s">2446         format SCPSI 9.3 ;</span><br><span class="s">2447         format PSP 6.1 ;</span><br><span class="s">2448         format PSPSI 9.3 ;</span><br><span class="s">2449         format UAP 6.1 ;</span><br><span class="s">2450         format UAPSI 7.1 ;</span><br><span class="s">2451         format SGP 8. ;</span><br><span class="s">2452         format SGPSI 8.2 ;</span><br><span class="s">2453         format BUP 8. ;</span><br><span class="s">2454         format BUPSI 8.2 ;</span><br><span class="s">2455         format TBP 6.1 ;</span><br><span class="s">2456         format TBPSI 9.2 ;</span><br><span class="s">2457         format CEP 6.1 ;</span><br><span class="s">2458         format CEPSI 8.1 ;</span><br><span class="s">2459         format SFP 8. ;</span><br><span class="s">2460         format SFPSI 6.1 ;</span><br><span class="s">2461         format CHP 8. ;</span><br><span class="s">2462         format CHPSI 10.3 ;</span><br><span class="s">2463         format TRP 8. ;</span><br><span class="s">2464         format TRPSI 10.3 ;</span><br><span class="s">2465         format ASPSI 8. ;</span><br><span class="s">2466         format ATPSI 8. ;</span><br><span class="s">2467         format GGPSI 8. ;</span><br><span class="s">2468         format LDPSI 8. ;</span><br><span class="s">2469         format APPSI 8. ;</span><br><span class="s">2470         format TPP 6.1 ;</span><br><span class="s">2471         format TPPSI 8. ;</span><br><span class="s">2472         format AMP 5.1 ;</span><br><span class="s">2473         format AMPSI 8. ;</span><br><span class="s">2474         format GBP 5.1 ;</span><br><span class="s">2475         format GBPSI 8. ;</span><br><span class="s">2476         format OSPSI 8. ;</span><br><span class="s">2477         format GHP 6.1 ;</span><br><span class="s">2478         format GHPMETH 3. ;</span><br><span class="s">2479         format G1P 7.1 ;</span><br><span class="s">2480         format G1PSI 10.3 ;</span><br><span class="s">2481         format G1PCODE 2. ;</span><br><span class="s">2482         format G1PTIM1 4. ;</span><br><span class="s">2483         format G1PTIM2 4. ;</span><br><span class="s">2484         format G2P 7.1 ;</span><br><span class="s">2485         format G2PSI 10.3 ;</span><br><span class="s">2486         format C1P 9.3 ;</span><br><span class="s">2487         format C1PSI 9.3 ;</span><br><span class="s">2488         format C2P 10.3 ;</span><br><span class="s">2489         format C2PSI 10.3 ;</span><br><span class="s">2490         format I1P 9.2 ;</span><br><span class="s">2491         format I1PSI 10.2 ;</span><br><span class="s">2492         format I1P2PFLG best12. ;</span><br><span class="s">2493         format I2P 9.2 ;</span><br><span class="s">2494         format I2PSI 10.2 ;</span><br><span class="s">2495         format UDP 8.2 ;</span><br><span class="s">2496         format UDPSI 9.2 ;</span><br><span class="s">2497         format URP 7.1 ;</span><br><span class="s">2498         format URPSI 6.1 ;</span><br><span class="s">2499         format UBP 8.1 ;</span><br><span class="s">2500         format UIP 9.1 ;</span><br><span class="s">2501       do;</span><br><span class="s">2502         EFIOUT + 1;</span><br><span class="s">2503         put SEQN @;</span><br><span class="s">2504         put DMPFSEQ @;</span><br><span class="s">2505         put DMPSTAT @;</span><br><span class="s">2506         put DMARETHN @;</span><br><span class="s">2507         put DMARACER @;</span><br><span class="s">2508         put DMAETHNR @;</span><br><span class="s">2509         put HSSEX @;</span><br><span class="s">2510         put HSAGEIR @;</span><br><span class="s">2511         put HSAGEU @;</span><br><span class="s">2512         put HSAITMOR @;</span><br><span class="s">2513         put HSFSIZER @;</span><br><span class="s">2514         put HSHSIZER @;</span><br><span class="s">2515         put DMPCNTYR @;</span><br><span class="s">2516         put DMPFIPSR @;</span><br><span class="s">2517         put DMPMETRO @;</span><br><span class="s">2518         put DMPCREGN @;</span><br><span class="s">2519         put DMPPIR @;</span><br><span class="s">2520         put SDPPHASE @;</span><br><span class="s">2521         put SDPPSU6 @;</span><br><span class="s">2522         put SDPSTRA6 @;</span><br><span class="s">2523         put SDPPSU1 @;</span><br><span class="s">2524         put SDPSTRA1 @;</span><br><span class="s">2525         put SDPPSU2 @;</span><br><span class="s">2526         put SDPSTRA2 @;</span><br><span class="s">2527         put WTPFQX6 @;</span><br><span class="s">2528         put WTPFEX6 @;</span><br><span class="s">2529         put WTPFHX6 @;</span><br><span class="s">2530         put WTPFALG6 @;</span><br><span class="s">2531         put WTPFCNS6 @;</span><br><span class="s">2532         put WTPFSD6 @;</span><br><span class="s">2533         put WTPFMD6 @;</span><br><span class="s">2534         put WTPFHSD6 @;</span><br><span class="s">2535         put WTPFHMD6 @;</span><br><span class="s">2536         put WTPFQX1 @;</span><br><span class="s">2537         put WTPFEX1 @;</span><br><span class="s">2538         put WTPFHX1 @;</span><br><span class="s">2539         put WTPFALG1 @;</span><br><span class="s">2540         put WTPFCNS1 @;</span><br><span class="s">2541         put WTPFSD1 @;</span><br><span class="s">2542         put WTPFMD1 @;</span><br><span class="s">2543         put WTPFHSD1 @;</span><br><span class="s">2544         put WTPFHMD1 @;</span><br><span class="s">2545         put WTPFQX2 @;</span><br><span class="s">2546         put WTPFEX2 @;</span><br><span class="s">2547         put WTPFHX2 @;</span><br><span class="s">2548         put WTPFALG2 @;</span><br><span class="s">2549         put WTPFCNS2 @;</span><br><span class="s">2550         put WTPFSD2 @;</span><br><span class="s">2551         put WTPFMD2 @;</span><br><span class="s">2552         put WTPFHSD2 @;</span><br><span class="s">2553         put WTPFHMD2 @;</span><br><span class="s">2554         put WTPQRP1 @;</span><br><span class="s">2555         put WTPQRP2 @;</span><br><span class="s">2556         put WTPQRP3 @;</span><br><span class="s">2557         put WTPQRP4 @;</span><br><span class="s">2558         put WTPQRP5 @;</span><br><span class="s">2559         put WTPQRP6 @;</span><br><span class="s">2560         put WTPQRP7 @;</span><br><span class="s">2561         put WTPQRP8 @;</span><br><span class="s">2562         put WTPQRP9 @;</span><br><span class="s">2563         put WTPQRP10 @;</span><br><span class="s">2564         put WTPQRP11 @;</span><br><span class="s">2565         put WTPQRP12 @;</span><br><span class="s">2566         put WTPQRP13 @;</span><br><span class="s">2567         put WTPQRP14 @;</span><br><span class="s">2568         put WTPQRP15 @;</span><br><span class="s">2569         put WTPQRP16 @;</span><br><span class="s">2570         put WTPQRP17 @;</span><br><span class="s">2571         put WTPQRP18 @;</span><br><span class="s">2572         put WTPQRP19 @;</span><br><span class="s">2573         put WTPQRP20 @;</span><br><span class="s">2574         put WTPQRP21 @;</span><br><span class="s">2575         put WTPQRP22 @;</span><br><span class="s">2576         put WTPQRP23 @;</span><br><span class="s">2577         put WTPQRP24 @;</span><br><span class="s">2578         put WTPQRP25 @;</span><br><span class="s">2579         put WTPQRP26 @;</span><br><span class="s">2580         put WTPQRP27 @;</span><br><span class="s">2581         put WTPQRP28 @;</span><br><span class="s">2582         put WTPQRP29 @;</span><br><span class="s">2583         put WTPQRP30 @;</span><br><span class="s">2584         put WTPQRP31 @;</span><br><span class="s">2585         put WTPQRP32 @;</span><br><span class="s">2586         put WTPQRP33 @;</span><br><span class="s">2587         put WTPQRP34 @;</span><br><span class="s">2588         put WTPQRP35 @;</span><br><span class="s">2589         put WTPQRP36 @;</span><br><span class="s">2590         put WTPQRP37 @;</span><br><span class="s">2591         put WTPQRP38 @;</span><br><span class="s">2592         put WTPQRP39 @;</span><br><span class="s">2593         put WTPQRP40 @;</span><br><span class="s">2594         put WTPQRP41 @;</span><br><span class="s">2595         put WTPQRP42 @;</span><br><span class="s">2596         put WTPQRP43 @;</span><br><span class="s">2597         put WTPQRP44 @;</span><br><span class="s">2598         put WTPQRP45 @;</span><br><span class="s">2599         put WTPQRP46 @;</span><br><span class="s">2600         put WTPQRP47 @;</span><br><span class="s">2601         put WTPQRP48 @;</span><br><span class="s">2602         put WTPQRP49 @;</span><br><span class="s">2603         put WTPQRP50 @;</span><br><span class="s">2604         put WTPQRP51 @;</span><br><span class="s">2605         put WTPQRP52 @;</span><br><span class="s">2606         put WTPXRP1 @;</span><br><span class="s">2607         put WTPXRP2 @;</span><br><span class="s">2608         put WTPXRP3 @;</span><br><span class="s">2609         put WTPXRP4 @;</span><br><span class="s">2610         put WTPXRP5 @;</span><br><span class="s">2611         put WTPXRP6 @;</span><br><span class="s">2612         put WTPXRP7 @;</span><br><span class="s">2613         put WTPXRP8 @;</span><br><span class="s">2614         put WTPXRP9 @;</span><br><span class="s">2615         put WTPXRP10 @;</span><br><span class="s">2616         put WTPXRP11 @;</span><br><span class="s">2617         put WTPXRP12 @;</span><br><span class="s">2618         put WTPXRP13 @;</span><br><span class="s">2619         put WTPXRP14 @;</span><br><span class="s">2620         put WTPXRP15 @;</span><br><span class="s">2621         put WTPXRP16 @;</span><br><span class="s">2622         put WTPXRP17 @;</span><br><span class="s">2623         put WTPXRP18 @;</span><br><span class="s">2624         put WTPXRP19 @;</span><br><span class="s">2625         put WTPXRP20 @;</span><br><span class="s">2626         put WTPXRP21 @;</span><br><span class="s">2627         put WTPXRP22 @;</span><br><span class="s">2628         put WTPXRP23 @;</span><br><span class="s">2629         put WTPXRP24 @;</span><br><span class="s">2630         put WTPXRP25 @;</span><br><span class="s">2631         put WTPXRP26 @;</span><br><span class="s">2632         put WTPXRP27 @;</span><br><span class="s">2633         put WTPXRP28 @;</span><br><span class="s">2634         put WTPXRP29 @;</span><br><span class="s">2635         put WTPXRP30 @;</span><br><span class="s">2636         put WTPXRP31 @;</span><br><span class="s">2637         put WTPXRP32 @;</span><br><span class="s">2638         put WTPXRP33 @;</span><br><span class="s">2639         put WTPXRP34 @;</span><br><span class="s">2640         put WTPXRP35 @;</span><br><span class="s">2641         put WTPXRP36 @;</span><br><span class="s">2642         put WTPXRP37 @;</span><br><span class="s">2643         put WTPXRP38 @;</span><br><span class="s">2644         put WTPXRP39 @;</span><br><span class="s">2645         put WTPXRP40 @;</span><br><span class="s">2646         put WTPXRP41 @;</span><br><span class="s">2647         put WTPXRP42 @;</span><br><span class="s">2648         put WTPXRP43 @;</span><br><span class="s">2649         put WTPXRP44 @;</span><br><span class="s">2650         put WTPXRP45 @;</span><br><span class="s">2651         put WTPXRP46 @;</span><br><span class="s">2652         put WTPXRP47 @;</span><br><span class="s">2653         put WTPXRP48 @;</span><br><span class="s">2654         put WTPXRP49 @;</span><br><span class="s">2655         put WTPXRP50 @;</span><br><span class="s">2656         put WTPXRP51 @;</span><br><span class="s">2657         put WTPXRP52 @;</span><br><span class="s">2658         put HYAITMO @;</span><br><span class="s">2659         put MXPLANG @;</span><br><span class="s">2660         put MXPSESSR @;</span><br><span class="s">2661         put MXPTIDW @;</span><br><span class="s">2662         put MXPAXTMR @;</span><br><span class="s">2663         put HXPTIDW @;</span><br><span class="s">2664         put HXPAXTMR @;</span><br><span class="s">2665         put HXPSESSR @;</span><br><span class="s">2666         put PHPLANG @;</span><br><span class="s">2667         put PHPHEMO @;</span><br><span class="s">2668         put PHPCHM2 @;</span><br><span class="s">2669         put PHPINSU @;</span><br><span class="s">2670         put PHPSNTI $ @;</span><br><span class="s">2671         put PHPSNDA @;</span><br><span class="s">2672         put PHPDRIN @;</span><br><span class="s">2673         put PHPDRTI $ @;</span><br><span class="s">2674         put PHPDRDA @;</span><br><span class="s">2675         put PHPFAST @;</span><br><span class="s">2676         put PHPBEST $ @;</span><br><span class="s">2677         put WCP @;</span><br><span class="s">2678         put WCPSI @;</span><br><span class="s">2679         put LMPPCNT @;</span><br><span class="s">2680         put MOPPCNT @;</span><br><span class="s">2681         put GRPPCNT @;</span><br><span class="s">2682         put LMP @;</span><br><span class="s">2683         put MOP @;</span><br><span class="s">2684         put GRP @;</span><br><span class="s">2685         put RCP @;</span><br><span class="s">2686         put RCPSI @;</span><br><span class="s">2687         put HGP @;</span><br><span class="s">2688         put HGPSI @;</span><br><span class="s">2689         put HTP @;</span><br><span class="s">2690         put HTPSI @;</span><br><span class="s">2691         put MVPSI @;</span><br><span class="s">2692         put MCPSI @;</span><br><span class="s">2693         put MHP @;</span><br><span class="s">2694         put MHPSI @;</span><br><span class="s">2695         put RWP @;</span><br><span class="s">2696         put RWPSI @;</span><br><span class="s">2697         put PLP @;</span><br><span class="s">2698         put PLPSI @;</span><br><span class="s">2699         put DWP @;</span><br><span class="s">2700         put PVPSI @;</span><br><span class="s">2701         put GRPDIF @;</span><br><span class="s">2702         put LMPDIF @;</span><br><span class="s">2703         put MOPDIF @;</span><br><span class="s">2704         put EOP @;</span><br><span class="s">2705         put BOP @;</span><br><span class="s">2706         put BLP @;</span><br><span class="s">2707         put PRP @;</span><br><span class="s">2708         put MEP @;</span><br><span class="s">2709         put MLP @;</span><br><span class="s">2710         put BAP @;</span><br><span class="s">2711         put LAP @;</span><br><span class="s">2712         put ANP @;</span><br><span class="s">2713         put BSP @;</span><br><span class="s">2714         put HZP @;</span><br><span class="s">2715         put PKP @;</span><br><span class="s">2716         put POP @;</span><br><span class="s">2717         put MRP @;</span><br><span class="s">2718         put MIP @;</span><br><span class="s">2719         put SIP @;</span><br><span class="s">2720         put SHP @;</span><br><span class="s">2721         put TTP @;</span><br><span class="s">2722         put TXP @;</span><br><span class="s">2723         put VUP @;</span><br><span class="s">2724         put PBP @;</span><br><span class="s">2725         put PBPSI @;</span><br><span class="s">2726         put EPP @;</span><br><span class="s">2727         put EPPSI @;</span><br><span class="s">2728         put FEP @;</span><br><span class="s">2729         put FEPSI @;</span><br><span class="s">2730         put TIP @;</span><br><span class="s">2731         put TIPSI @;</span><br><span class="s">2732         put PXP @;</span><br><span class="s">2733         put FRP @;</span><br><span class="s">2734         put FRPSI @;</span><br><span class="s">2735         put FOP @;</span><br><span class="s">2736         put FOPSI @;</span><br><span class="s">2737         put RBP @;</span><br><span class="s">2738         put RBPSI @;</span><br><span class="s">2739         put VBP @;</span><br><span class="s">2740         put VBPSI @;</span><br><span class="s">2741         put VCP @;</span><br><span class="s">2742         put VCPSI @;</span><br><span class="s">2743         put ICPSI @;</span><br><span class="s">2744         put CAPSI @;</span><br><span class="s">2745         put SEP @;</span><br><span class="s">2746         put SEPSI @;</span><br><span class="s">2747         put VAP @;</span><br><span class="s">2748         put VAPSI @;</span><br><span class="s">2749         put VEP @;</span><br><span class="s">2750         put VEPSI @;</span><br><span class="s">2751         put ACP @;</span><br><span class="s">2752         put ACPSI @;</span><br><span class="s">2753         put BCP @;</span><br><span class="s">2754         put BCPSI @;</span><br><span class="s">2755         put BXP @;</span><br><span class="s">2756         put BXPSI @;</span><br><span class="s">2757         put LUP @;</span><br><span class="s">2758         put LUPSI @;</span><br><span class="s">2759         put LYP @;</span><br><span class="s">2760         put LYPSI @;</span><br><span class="s">2761         put REP @;</span><br><span class="s">2762         put REPSI @;</span><br><span class="s">2763         put COP @;</span><br><span class="s">2764         put TCP @;</span><br><span class="s">2765         put TCPSI @;</span><br><span class="s">2766         put TGP @;</span><br><span class="s">2767         put TGPSI @;</span><br><span class="s">2768         put LCP @;</span><br><span class="s">2769         put LCPSI @;</span><br><span class="s">2770         put HDP @;</span><br><span class="s">2771         put HDPSI @;</span><br><span class="s">2772         put AAP @;</span><br><span class="s">2773         put AAPSI @;</span><br><span class="s">2774         put ABP @;</span><br><span class="s">2775         put ABPSI @;</span><br><span class="s">2776         put LPP @;</span><br><span class="s">2777         put LPPSI @;</span><br><span class="s">2778         put FHPSI @;</span><br><span class="s">2779         put LHPSI @;</span><br><span class="s">2780         put FBP @;</span><br><span class="s">2781         put FBPSI @;</span><br><span class="s">2782         put CRP @;</span><br><span class="s">2783         put TEP @;</span><br><span class="s">2784         put AHP @;</span><br><span class="s">2785         put HBP @;</span><br><span class="s">2786         put SSP @;</span><br><span class="s">2787         put SAP @;</span><br><span class="s">2788         put HCP @;</span><br><span class="s">2789         put DHP @;</span><br><span class="s">2790         put H1P @;</span><br><span class="s">2791         put H2P @;</span><br><span class="s">2792         put RUP @;</span><br><span class="s">2793         put RUPUNIT @;</span><br><span class="s">2794         put VRP @;</span><br><span class="s">2795         put TOP @;</span><br><span class="s">2796         put RFP @;</span><br><span class="s">2797         put L1P @;</span><br><span class="s">2798         put HPP @;</span><br><span class="s">2799         put NAPSI @;</span><br><span class="s">2800         put SKPSI @;</span><br><span class="s">2801         put CLPSI @;</span><br><span class="s">2802         put C3PSI @;</span><br><span class="s">2803         put SCP @;</span><br><span class="s">2804         put SCPSI @;</span><br><span class="s">2805         put PSP @;</span><br><span class="s">2806         put PSPSI @;</span><br><span class="s">2807         put UAP @;</span><br><span class="s">2808         put UAPSI @;</span><br><span class="s">2809         put SGP @;</span><br><span class="s">2810         put SGPSI @;</span><br><span class="s">2811         put BUP @;</span><br><span class="s">2812         put BUPSI @;</span><br><span class="s">2813         put TBP @;</span><br><span class="s">2814         put TBPSI @;</span><br><span class="s">2815         put CEP @;</span><br><span class="s">2816         put CEPSI @;</span><br><span class="s">2817         put SFP @;</span><br><span class="s">2818         put SFPSI @;</span><br><span class="s">2819         put CHP @;</span><br><span class="s">2820         put CHPSI @;</span><br><span class="s">2821         put TRP @;</span><br><span class="s">2822         put TRPSI @;</span><br><span class="s">2823         put ASPSI @;</span><br><span class="s">2824         put ATPSI @;</span><br><span class="s">2825         put GGPSI @;</span><br><span class="s">2826         put LDPSI @;</span><br><span class="s">2827         put APPSI @;</span><br><span class="s">2828         put TPP @;</span><br><span class="s">2829         put TPPSI @;</span><br><span class="s">2830         put AMP @;</span><br><span class="s">2831         put AMPSI @;</span><br><span class="s">2832         put GBP @;</span><br><span class="s">2833         put GBPSI @;</span><br><span class="s">2834         put OSPSI @;</span><br><span class="s">2835         put GHP @;</span><br><span class="s">2836         put GHPMETH @;</span><br><span class="s">2837         put G1P @;</span><br><span class="s">2838         put G1PSI @;</span><br><span class="s">2839         put G1PCODE @;</span><br><span class="s">2840         put G1PTIM1 @;</span><br><span class="s">2841         put G1PTIM2 @;</span><br><span class="s">2842         put G2P @;</span><br><span class="s">2843         put G2PSI @;</span><br><span class="s">2844         put C1P @;</span><br><span class="s">2845         put C1PSI @;</span><br><span class="s">2846         put C2P @;</span><br><span class="s">2847         put C2PSI @;</span><br><span class="s">2848         put I1P @;</span><br><span class="s">2849         put I1PSI @;</span><br><span class="s">2850         put I1P2PFLG @;</span><br><span class="s">2851         put I2P @;</span><br><span class="s">2852         put I2PSI @;</span><br><span class="s">2853         put UDP @;</span><br><span class="s">2854         put UDPSI @;</span><br><span class="s">2855         put URP @;</span><br><span class="s">2856         put URPSI @;</span><br><span class="s">2857         put UBP @;</span><br><span class="s">2858         put UIP ;</span><br><span class="s">2859         ;</span><br><span class="s">2860       end;</span><br><span class="s">2861      if _ERROR_ then call symputx(&#39;_EFIERR_&#39;,1);  /* set ERROR detection macro variable */</span><br><span class="s">2862      if EFIEOD then call symputx(&#39;_EFIREC_&#39;,EFIOUT);</span><br><span class="s">2863      run;</span><br><span class="cm">NOTE: The file &#39;lab.csv&#39; is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/lab.csv,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=29Mar2018:12:49:48</span><br><br><span class="cm">NOTE: 29315 records were written to the file &#39;lab.csv&#39;.</span><br><span class="cm">      The minimum record length was 1390.</span><br><span class="cm">      The maximum record length was 2429.</span><br><span class="cm">NOTE: There were 29314 observations read from the data set WORK.LAB.</span><br><span class="cm">NOTE: At least one W.D format was too small for the number to be printed. The decimal may be shifted by the &quot;BEST&quot; format.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           6.94 seconds</span><br><span class="cm">      cpu time            6.09 seconds</span><br><span class="cm">      </span><br><span class="s">29314 records created in lab.csv from LAB.</span><br><span class="s">  </span><br><span class="s">  </span><br><span class="cm">NOTE: &quot;lab.csv&quot; file was successfully created.</span><br><span class="cm">NOTE: PROCEDURE EXPORT used (Total process time):</span><br><span class="cm">      real time           7.45 seconds</span><br><span class="cm">      cpu time            6.32 seconds</span><br><span class="cm">      </span><br><span class="s">2864  </span><br><span class="s">2865  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">2866  </span><br></pre></div>
</body>
</html>



