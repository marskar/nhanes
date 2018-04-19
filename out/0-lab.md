

```sas
FILENAME ADULT "adult.dat" LRECL=3348;
*** LRECL includes 2 positions for CRLF, assuming use of PC SAS;
```

    SAS Connection established. Subprocess id is 3726
    





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

<div class="highlight"><pre><span></span><span class="s">34   ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">34 ! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">35   </span><br><span class="s">36   FILENAME ADULT &quot;adult.dat&quot; LRECL=3348;</span><br><span class="s">37   *** LRECL includes 2 positions for CRLF, assuming use of PC SAS;</span><br><span class="s">38   </span><br><span class="s">39   ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">40   </span><br></pre></div>
</body>
</html>





```sas
DATA ADULT;
INFILE ADULT MISSOVER;

LENGTH
SEQN      7
DMPFSEQ   5
DMPSTAT   3
DMARETHN  3
DMARACER  3
DMAETHNR  3
HSSEX     3
HSDOIMO   3
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
MXPTIMO   3
MXPTIDW   3
MXPAXTMR  4
HXPSESSR  3
HXPTIMO   3
HXPTIDW   3
HXPAXTMR  4
HFVERS    3
HFINTVR   4
HFLANG    3
HFA6XCR   3
HFA8R     3
HFA12     3
HFA13     3
HFB1      3
HFB2      3
HFB3      3
HFB4      3
HFB5      3
HFB6      3
HFB7      3
HFB8      3
HFB9      3
HFB10     3
HFB11     3
HFB11A    3
HFB11B    3
HFB11C    3
HFB11D    3
HFB11E    3
HFB12     3
HFB13     3
HFB14AB   3
HFB14AC   3
HFB14AD   3
HFB14AE   3
HFB14AF   3
HFB14AG   3
HFB14AI   3
HFB14BA   3
HFB14BB   3
HFB14BC   3
HFB14BD   3
HFB14BE   3
HFB14BF   3
HFB14BG   3
HFB14BH   3
HFB16A    3
HFB16B    3
HFB17     3
HFC1      3
HFC2S     3
HFC3S     3
HFC4S     3
HFC5S     3
HFC6A     3
HFC6A1    3
HFC6B     3
HFC6B1    3
HFC6C     3
HFC6C1    3
HFC6D     3
HFC6D1    3
HFC6E     3
HFC6E1    3
HFC7S     4
HFC8S     4
HFC9      3
HFC10     3
HFC11     3
HFD1      3
HFD2      3
HFD3      3
HFD4      3
HFD5      3
HFD9R     3
HFD10R    3
HFD12     3
HFE1      3
HFE2      3
HFE3      3
HFE4      3
HFE5      3
HFE6      3
HFE7      3
HFE8A     3
HFE8B     3
HFE8C     3
HFE8D     3
HFE8E     3
HFE9      3
HFE10     3
HFE11     3
HFE12     3
HFE13     3
HFE14     3
HFE15     3
HFE16     3
HFE17     3
HFE18     3
HFF1      3
HFF2R     3
HFF3A     3
HFF3B     3
HFF3C     3
HFF3D     3
HFF3E     3
HFF3F     3
HFF4      3
HFF5      3
HFF6A     3
HFF6B     3
HFF6C     3
HFF6D     3
HFF7      3
HFF8      3
HFF9      3
HFF10     3
HFF11     3
HFF12A    3
HFF12B    3
HFF13A    3
HFF13B    3
HFF13DA   3
HFF13DB   3
HFF13E    3
HFF14A    3
HFF14B    3
HFF14D    3
HFF15A    3
HFF15B    3
HFF16A    3
HFF16B    3
HFF16D    3
HFF16E    3
HFF17A    3
HFF17B    3
HFF18     3
HFF19R    3
HFF20R    3
HFHSEQN   7
HFHAGER   3
HFHSEX    3
HFHFIPCR  3
HFHEDUCR  3
HFHEMPL   3
HFHMRST   3
HFHMLSV   3
HFRELR    3
HFAGERR   3
HAVERS    3
HAINTVR   4
HALANG    3
HAA1      3
HAA2      3
HAA2A     3
HAA3      3
HAA4      3
HAA5      3
HAA6A     3
HAA6B     3
HAA6C     3
HAA6D     3
HAB1      3
HAB2      3
HAB3      3
HAB4      3
HAB5      3
HAB6S     3
HAB7      3
HAC1A     3
HAC1B     3
HAC1C     3
HAC1D     3
HAC1E     3
HAC1F     3
HAC1G     3
HAC1H     3
HAC1I     3
HAC1J     3
HAC1K     3
HAC1L     3
HAC1M     3
HAC1N     3
HAC1O     3
HAC2E     3
HAC2F     3
HAC2H     3
HAC2J     3
HAC2K     3
HAC3AR    3
HAC3CR    3
HAC3DR    3
HAC3ER    3
HAC3FR    3
HAC3GR    3
HAC3HR    3
HAC3IR    3
HAC3JR    3
HAC3KR    3
HAC3LR    3
HAC3MR    3
HAC3NR    3
HAC3OR    3
HAC3OS    3
HAC4A     3
HAC4B     3
HAC5A1    3
HAC5A2    3
HAC5A3    3
HAC5A4    3
HAC5A5    3
HAC5A6    3
HAC5A7    3
HAC5A8    3
HAC5A9    3
HAC5A10   3
HAC5A11   3
HAC5A12   3
HAC5B1    3
HAC5B2    3
HAC5B3    3
HAC5B4    3
HAC5B5    3
HAC5B6    3
HAC5B7    3
HAC5B8    3
HAC5B9    3
HAC5B10   3
HAC5B11   3
HAC5B12   3
HAC6      3
HAC7      3
HAC7A     3
HAC8      3
HAD1      3
HAD2      3
HAD3      3
HAD4      3
HAD5R     3
HAD6      3
HAD7S     3
HAD8      3
HAD9S     3
HAD10     3
HAD11AS   3
HAD11BS   3
HAD12S    4
HAD13S    4
HAD14     3
HAD15     3
HAE1      3
HAE2      3
HAE3      3
HAE4A     3
HAE4B     3
HAE4C     3
HAE4D     3
HAE4D1    3
HAE4D2    3
HAE4D3    3
HAE4D4    3
HAE4D5    3
HAE4D6    3
HAE5A     3
HAE5B     3
HAE5C     3
HAE5D1    3
HAE5D2    3
HAE5D3    3
HAE5D4    3
HAE5D5    3
HAE5D6    3
HAE6      3
HAE7      3
HAE8A     3
HAE8B     3
HAE8C     3
HAE8D     3
HAE9A     3
HAE9B     3
HAE9C     3
HAE9D     3
HAE10     3
HAE11A    3
HAE11B    3
HAE11C    3
HAF1      3
HAF2      3
HAF3      3
HAF4      3
HAF5      3
HAF6      3
HAF7A     3
HAF7B     3
HAF7C     3
HAF7D     3
HAF7E     3
HAF7F     3
HAF7G     3
HAF7H     3
HAF9      3
HAF10     3
HAF11     3
HAF12R    3
HAF13R    3
HAF14     3
HAF15     3
HAF16     3
HAF17     3
HAF18     3
HAF19     3
HAF20     3
HAF21     3
HAF22     3
HAF23     3
HAF24     3
HAF25     3
HAF26     3
HAF27     3
HAG1      3
HAG2      3
HAG3      3
HAG4A     3
HAG4B     3
HAG4C     3
HAG5A     3
HAG5B     3
HAG5C     3
HAG6A     3
HAG6B     3
HAG6C     3
HAG7      3
HAG8A     3
HAG8B     3
HAG8C     3
HAG8D     3
HAG8E     3
HAG8F     3
HAG9AR    3
HAG9BR    3
HAG9CR    3
HAG9DR    3
HAG9ER    3
HAG9FR    3
HAG10A    3
HAG10B    3
HAG10C    3
HAG10D    3
HAG10E    3
HAG10F    3
HAG11     3
HAG12     3
HAG13     3
HAG14     3
HAG15     3
HAG16     3
HAG17A    3
HAG17B    3
HAG17C    3
HAG17D    3
HAG17E    3
HAG17F    3
HAG17G    3
HAG17H    3
HAG17I    3
HAG17J    3
HAG17K    3
HAG17L    3
HAG17M    3
HAG17N    3
HAG17O    3
HAG17FF   3
HAG17P    3
HAG17Q    3
HAG17R    3
HAG17S    3
HAG17T    3
HAG17U    3
HAG17V    3
HAG17W    3
HAG17X    3
HAG17Y    3
HAG17Z    3
HAG17AA   3
HAG17BB   3
HAG17CC   3
HAG17DD   3
HAG17EE   3
HAG18     3
HAG19A    3
HAG19B    3
HAG19C    3
HAG19D    3
HAG19E    3
HAG19F    3
HAG19G    3
HAG19H    3
HAG19I    3
HAG19J    3
HAG19K    3
HAG19L    3
HAG19M    3
HAG19N    3
HAG19O    3
HAG19FF   3
HAG19P    3
HAG19Q    3
HAG19R    3
HAG19S    3
HAG19T    3
HAG19U    3
HAG19V    3
HAG19W    3
HAG19X    3
HAG19Y    3
HAG19Z    3
HAG19AA   3
HAG19BB   3
HAG19CC   3
HAG19DD   3
HAG19EE   3
HAG20     3
HAG21     3
HAG22     3
HAG23     3
HAG24     3
HAG25     3
HAG26     3
HAG27     3
HAG28     3
HAG29     3
HAG30     3
HAG31     3
HAG32     3
HAG33     3
HAG34     3
HAH1      3
HAH2      3
HAH3      3
HAH4      3
HAH5      3
HAH6      3
HAH7      3
HAH8      3
HAH9      3
HAH10     3
HAH11     3
HAH12     3
HAH13     3
HAH14     3
HAH15     3
HAH16     3
HAH17     3
HAJ0      3
HAJ1      3
HAJ2A     3
HAJ2B     3
HAJ2C     3
HAJ3S     4
HAJ4      3
HAJ5      3
HAJ6      3
HAJ7      3
HAJ8      3
HAJ9      3
HAJ10     3
HAJ11     3
HAJ12     3
HAJ13     3
HAJ14     3
HAJ15     3
HAJ16     3
HAJ17     3
HAJ18R    3
HAK1      3
HAK2      3
HAK3A     3
HAK3A1    3
HAK3B     3
HAK3B1R   3
HAK3C     3
HAK3C1R   3
HAK4      3
HAK5      3
HAK6      3
HAK7      3
HAK8      3
HAK9      3
HAK10     3
HAK11     3
HAK12     3
HAK13     3
HAK14     3
HAL1      3
HAL2      3
HAL3      3
HAL4      3
HAL5      3
HAL6      3
HAL7      3
HAL8      3
HAL9      3
HAL10     3
HAL11A    3
HAL11B    3
HAL12     3
HAL13     3
HAL14A    3
HAL14B    3
HAL14C    3
HAL14D    3
HAL14E    3
HAL15A    3
HAL15B    3
HAL15C    3
HAL15D    3
HAL15E    3
HAL15F    3
HAL15G    3
HAL15H    3
HAL15I    3
HAL15J    3
HAL15K    3
HAL15L    3
HAL15M    3
HAL16A    3
HAL16B    3
HAL17     3
HAL18     3
HAL19A    3
HAL19B    3
HAL19C    3
HAL20A    3
HAL20B    3
HAL20C    3
HAM1      3
HAM2      3
HAM3      3
HAM4      3
HAM5S     3
HAM6S     3
HAM7      3
HAM8S     3
HAM9S     3
HAM10S    3
HAM11     3
HAM12     3
HAM13     3
HAM14     3
HAM15A    3
HAM15B    3
HAM15C    3
HAM15D    3
HAM15E    3
HAM15F    3
HAM15G    3
HAM15H    3
HAM15K    3
HAM15L    3
HAM15M    3
HAM15N    3
HAM15O    3
HAM15P    3
HAM15Q    3
HAM15R    3
HAM15S    3
HAM15T    3
HAM15U    3
HAM15V    3
HAM15W    3
HAM15X    3
HAM15Y    3
HAM15Z    3
HAN1AS    3
HAN1BS    4
HAN1C     3
HAN1D     3
HAN1ES    3
HAN1FS    3
HAN1GS    3
HAN1HS    3
HAN1IS    3
HAN2AS    3
HAN2BS    3
HAN2CS    4
HAN2DS    3
HAN2ES    3
HAN2FS    3
HAN2GS    3
HAN2HS    3
HAN2IS    3
HAN2JS    3
HAN3AS    3
HAN3BS    3
HAN3CS    3
HAN3DS    3
HAN3ES    3
HAN3FS    3
HAN4AS    3
HAN4BS    3
HAN4CS    3
HAN4DS    3
HAN4ES    3
HAN4FS    3
HAN4GS    3
HAN4HS    3
HAN4IS    3
HAN4JS    3
HAN4KS    3
HAN4LS    3
HAN5AS    3
HAN5BS    3
HAN5CS    3
HAN5DS    3
HAN5ES    3
HAN5FS    3
HAN5GS    3
HAN5HS    3
HAN5IS    3
HAN5JS    3
HAN5KS    3
HAN5LS    3
HAN6AS    4
HAN6BS    3
HAN6CS    4
HAN6DS    3
HAN6ES    4
HAN6FS    4
HAN6GS    4
HAN6HS    3
HAN6IS    3
HAN6JS    3
HAN7AS    3
HAN7BS    3
HAN7CS    3
HAN8      3
HAN8ACD   3
HAN8AS    4
HAN8BCD   3
HAN8BS    4
HAN8CCD   3
HAN8CS    3
HAN8DCD   3
HAN8DS    3
HAN8ECD   3
HAN8ES    3
HAN8FCD   3
HAN8FS    3
HAN9      3
HAN10A    3
HAN10B    3
HAN10C    3
HAN10D    3
HAN10E    3
HAP1      3
HAP1A     3
HAP2      3
HAP3      3
HAP4      3
HAP5      3
HAP6      3
HAP7      3
HAP8      3
HAP9      3
HAP10     3
HAP10A    3
HAP11     3
HAP12     3
HAP13     3
HAP14     3
HAP15     3
HAP16     3
HAP17A1   3
HAP17A2   3
HAP17A3   3
HAP17B    3
HAP18A    3
HAP18B    3
HAP18C    3
HAP18D    3
HAP18E    3
HAP19A    3
HAP19B    3
HAP19C    3
HAQ1      3
HAQ2A     3
HAQ2B     3
HAQ2C     3
HAQ2D     3
HAQ2E     3
HAQ2F     3
HAQ2G     3
HAQ2I     3
HAQ2K     3
HAQ2L     3
HAQ3S     4
HAQ4      3
HAQ5      3
HAQ6      3
HAQ7      3
HAQ8      3
HAQ9      3
HAR1      3
HAR2      3
HAR3      3
HAR4S     3
HAR5      3
HAR6      3
HAR7S     4
HAR8      3
HAR9      3
HAR10     3
HAR11R    3
HAR12S    3
HAR13     3
HAR14     3
HAR15     3
HAR16     3
HAR17     3
HAR18AS   3
HAR18BS   3
HAR19A    3
HAR19B    3
HAR20R    3
HAR21     3
HAR22     3
HAR23     3
HAR24     3
HAR25     3
HAR26     3
HAR27     3
HAR28     3
HAS1      3
HAS2      3
HAS3      3
HAS4      3
HAS5      3
HAS8R     3
HAS9R     3
HAS11     3
HAS12S    3
HAS13     3
HAS14     3
HAS15     3
HAS16A    3
HAS16B    3
HAS16C    3
HAS16D    3
HAS17     3
HAS17R    3
HAS18     3
HAS19     3
HAS19R    3
HAS21     3
HAS22     3
HAS23     3
HAS24     3
HAS25     3
HAS26     3
HAS27A    3
HAS27B    3
HAS27C    3
HAS27D    3
HAS27E    3
HAS27F    3
HAS27G    3
HAS27H    3
HAS27HCD  3
HAS28     3
HAS29     3
HAT1S     3
HAT1MET   8
HAT2      3
HAT2MET   3
HAT3S     3
HAT4      3
HAT4MET   3
HAT5S     3
HAT6      3
HAT6MET   3
HAT7S     3
HAT8      3
HAT8MET   3
HAT9S     3
HAT10     3
HAT10MET  8
HAT11S    3
HAT12     3
HAT12MET  8
HAT13S    3
HAT14     3
HAT14MET  3
HAT15S    3
HAT16     3
HAT16MET  3
HAT17S    3
HAT18     3
HAT19CD   4
HAT19MET  8
HAT20S    3
HAT21CD   4
HAT21MET  8
HAT22S    3
HAT23CD   4
HAT23MET  8
HAT24S    3
HAT25CD   4
HAT25MET  8
HAT26S    3
HAT27     3
HAT28     3
HAT29     3
HAT30     3
HAV1S     3
HAV2S     4
HAV3S     4
HAV4S     3
HAV5      3
HAV6S     3
HAV7R     3
HAV8      3
HAV9      3
HAV10R    3
HAV11     3
HAV12R    3
HAV13R    3
HAX1A     3
HAX1B     3
HAX1C     3
HAX2A     3
HAX2B     3
HAX2C     3
HAX3CG    3
HAX3DG    3
HAX6SG    4
HAX8SG    4
HAX3CH    3
HAX3DH    3
HAX6SH    4
HAX8SH    4
HAX3CI    3
HAX3DI    3
HAX6SI    4
HAX8SI    4
HAX3CJ    3
HAX3DJ    3
HAX6SJ    4
HAX8SJ    4
HAX3CK    3
HAX3DK    3
HAX6SK    4
HAX8SK    4
HAX3CL    3
HAX3DL    3
HAX6SL    4
HAX8SL    4
HAX3CM    3
HAX3DM    3
HAX6SM    4
HAX8SM    4
HAX3CN    3
HAX3DN    3
HAX6SN    4
HAX8SN    4
HAX3CO    3
HAX3DO    3
HAX6SO    4
HAX8SO    4
HAX3CP    3
HAX3DP    3
HAX6SP    4
HAX8SP    4
HAX3CQ    3
HAX3DQ    3
HAX6SQ    4
HAX8SQ    4
HAX3CR    3
HAX3DR    3
HAX6SR    4
HAX8SR    4
HAX3CS    3
HAX3DS    3
HAX6SS    4
HAX8SS    4
HAX3CT    3
HAX3DT    3
HAX6ST    4
HAX8ST    4
HAX3CU    3
HAX3DU    3
HAX6SU    4
HAX8SU    4
HAX3CV    3
HAX3DV    3
HAX6SV    4
HAX8SV    4
HAX3CW    3
HAX3DW    3
HAX6SW    4
HAX8SW    4
HAX9DG    4
HAX9EG    4
HAX9FG    4
HAX11AG  $6
HAX12SG   4
HAX9DH    4
HAX9EH    4
HAX9FH    4
HAX11AH  $6
HAX12SH   4
HAX9DI    4
HAX9EI    4
HAX9FI    4
HAX11AI  $6
HAX12SI   4
HAX9DJ    4
HAX9EJ    4
HAX9FJ    4
HAX11AJ  $6
HAX12SJ   4
HAX9DK    4
HAX9EK    4
HAX9FK    4
HAX11AK  $6
HAX12SK   4
HAX9DL    4
HAX9EL    4
HAX9FL    4
HAX11AL  $6
HAX12SL   4
HAX9DM    4
HAX9EM    4
HAX9FM    4
HAX11AM  $6
HAX12SM   4
HAX9DN    4
HAX9EN    4
HAX9FN    4
HAX11AN  $6
HAX12SN   4
HAX9DO    4
HAX9EO    4
HAX9FO    4
HAX11AO  $6
HAX12SO   4
HAX9DP    4
HAX9EP    4
HAX9FP    4
HAX11AP  $6
HAX12SP   4
HAX9DQ    4
HAX9EQ    4
HAX9FQ    4
HAX11AQ  $6
HAX12SQ   4
HAX9DR    4
HAX9ER    4
HAX9FR    4
HAX11AR  $6
HAX12SR   4
HAX9DS    4
HAX9ES    4
HAX9FS    4
HAX11AS  $6
HAX12SS   4
HAX9DT    4
HAX9ET    4
HAX9FT    4
HAX11AT  $6
HAX12ST   4
HAX9DU    4
HAX9EU    4
HAX9FU    4
HAX11AU  $6
HAX12SU   4
HAX9DV    4
HAX9EV    4
HAX9FV    4
HAX11AV  $6
HAX12SV   4
HAX13AG   3
HAX15SG   3
HAX16AG   3
HAX16A1G  3
HAX17SG   4
HAX13AH   3
HAX15SH   3
HAX16AH   3
HAX16A1H  3
HAX17SH   4
HAX13AI   3
HAX15SI   3
HAX16AI   3
HAX16A1I  3
HAX17SI   4
HAX13AJ   3
HAX15SJ   3
HAX16AJ   3
HAX16A1J  3
HAX17SJ   4
HAX18A    3
HAX19AS   3
HAX18B    3
HAX19BS   3
HAX18C    3
HAX19CS   3
HAX18D    3
HAX18DB   3
HAX19DS   3
HAX18E    3
HAX18EB   3
HAX19ES   3
HAX18F    3
HAX18FB   3
HAX19FS   3
HAX18G    3
HAX18GB   3
HAX19GS   3
HAY6      3
HAY7      3
HAY8      3
HAY9      3
HAY10     3
HAY11A    3
HAY11B    3
HAY11C    3
HAY11D    3
HAY11E    3
HAY11F    3
HAY11G    3
HAY11H    3
HAY11I    3
HAY11J    3
HAZA1     3
HAZA1A    3
HAZA1CC  $30
HAZA2     3
HAZA2A1   3
HAZA2A2   3
HAZA2A3   3
HAZA2A4   3
HAZA3     3
HAZA4     3
HAZA4A    3
HAZA5     3
HAZA5R    3
HAZA6     3
HAZA7A    3
HAZA7AA   3
HAZA7B    3
HAZA7BA   3
HAZA8AK1  3
HAZA8AK5  3
HAZA8A3   3
HAZA8A4   3
HAZA8BK1  3
HAZA8BK5  3
HAZA8B3   3
HAZA8B4   3
HAZA8CK1  3
HAZA8CK5  3
HAZA8C3   3
HAZA8C4   3
HAZA8DK1  3
HAZA8DK5  3
HAZA8D3   3
HAZA8D4   3
HAZA9     3
HAZA10    3
HAZA11A   3
HAZA11AR  3
HAZA11B   3
HAZA11BR  3
HAZA12    3
HAZMNK1R  3
HAZNOK1R  3
HAZMNK5R  3
HAZNOK5R  3
;

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
HAT1MET  Z3.2
HAT10MET Z3.2
HAT12MET Z3.2
HAT19MET Z4.2
HAT21MET Z4.2
HAT23MET Z4.2
HAT25MET Z3.2
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

<div class="highlight"><pre><span></span><span class="s">42   ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">42 ! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">43   </span><br><span class="s">44   DATA ADULT;</span><br><span class="s">45   INFILE ADULT MISSOVER;</span><br><span class="s">46   </span><br><span class="s">47   LENGTH</span><br><span class="s">48   SEQN      7</span><br><span class="s">49   DMPFSEQ   5</span><br><span class="s">50   DMPSTAT   3</span><br><span class="s">51   DMARETHN  3</span><br><span class="s">52   DMARACER  3</span><br><span class="s">53   DMAETHNR  3</span><br><span class="s">54   HSSEX     3</span><br><span class="s">55   HSDOIMO   3</span><br><span class="s">56   HSAGEIR   3</span><br><span class="s">57   HSAGEU    3</span><br><span class="s">58   HSAITMOR  4</span><br><span class="s">59   HSFSIZER  3</span><br><span class="s">60   HSHSIZER  3</span><br><span class="s">61   DMPCNTYR  3</span><br><span class="s">62   DMPFIPSR  3</span><br><span class="s">63   DMPMETRO  3</span><br><span class="s">64   DMPCREGN  3</span><br><span class="s">65   DMPPIR    8</span><br><span class="s">66   SDPPHASE  3</span><br><span class="s">67   SDPPSU6   4</span><br><span class="s">68   SDPSTRA6  4</span><br><span class="s">69   SDPPSU1   4</span><br><span class="s">70   SDPSTRA1  4</span><br><span class="s">71   SDPPSU2   4</span><br><span class="s">72   SDPSTRA2  4</span><br><span class="s">73   WTPFQX6   8</span><br><span class="s">74   WTPFEX6   8</span><br><span class="s">75   WTPFHX6   8</span><br><span class="s">76   WTPFALG6  8</span><br><span class="s">77   WTPFCNS6  8</span><br><span class="s">78   WTPFSD6   8</span><br><span class="s">79   WTPFMD6   8</span><br><span class="s">80   WTPFHSD6  8</span><br><span class="s">81   WTPFHMD6  8</span><br><span class="s">82   WTPFQX1   8</span><br><span class="s">83   WTPFEX1   8</span><br><span class="s">84   WTPFHX1   8</span><br><span class="s">85   WTPFALG1  8</span><br><span class="s">86   WTPFCNS1  8</span><br><span class="s">87   WTPFSD1   8</span><br><span class="s">88   WTPFMD1   8</span><br><span class="s">89   WTPFHSD1  8</span><br><span class="s">90   WTPFHMD1  8</span><br><span class="s">91   WTPFQX2   8</span><br><span class="s">92   WTPFEX2   8</span><br><span class="s">93   WTPFHX2   8</span><br><span class="s">94   WTPFALG2  8</span><br><span class="s">95   WTPFCNS2  8</span><br><span class="s">96   WTPFSD2   8</span><br><span class="s">97   WTPFMD2   8</span><br><span class="s">98   WTPFHSD2  8</span><br><span class="s">99   WTPFHMD2  8</span><br><span class="s">100  WTPQRP1   8</span><br><span class="s">101  WTPQRP2   8</span><br><span class="s">102  WTPQRP3   8</span><br><span class="s">103  WTPQRP4   8</span><br><span class="s">104  WTPQRP5   8</span><br><span class="s">105  WTPQRP6   8</span><br><span class="s">106  WTPQRP7   8</span><br><span class="s">107  WTPQRP8   8</span><br><span class="s">108  WTPQRP9   8</span><br><span class="s">109  WTPQRP10  8</span><br><span class="s">110  WTPQRP11  8</span><br><span class="s">111  WTPQRP12  8</span><br><span class="s">112  WTPQRP13  8</span><br><span class="s">113  WTPQRP14  8</span><br><span class="s">114  WTPQRP15  8</span><br><span class="s">115  WTPQRP16  8</span><br><span class="s">116  WTPQRP17  8</span><br><span class="s">117  WTPQRP18  8</span><br><span class="s">118  WTPQRP19  8</span><br><span class="s">119  WTPQRP20  8</span><br><span class="s">120  WTPQRP21  8</span><br><span class="s">121  WTPQRP22  8</span><br><span class="s">122  WTPQRP23  8</span><br><span class="s">123  WTPQRP24  8</span><br><span class="s">124  WTPQRP25  8</span><br><span class="s">125  WTPQRP26  8</span><br><span class="s">126  WTPQRP27  8</span><br><span class="s">127  WTPQRP28  8</span><br><span class="s">128  WTPQRP29  8</span><br><span class="s">129  WTPQRP30  8</span><br><span class="s">130  WTPQRP31  8</span><br><span class="s">131  WTPQRP32  8</span><br><span class="s">132  WTPQRP33  8</span><br><span class="s">133  WTPQRP34  8</span><br><span class="s">134  WTPQRP35  8</span><br><span class="s">135  WTPQRP36  8</span><br><span class="s">136  WTPQRP37  8</span><br><span class="s">137  WTPQRP38  8</span><br><span class="s">138  WTPQRP39  8</span><br><span class="s">139  WTPQRP40  8</span><br><span class="s">140  WTPQRP41  8</span><br><span class="s">141  WTPQRP42  8</span><br><span class="s">142  WTPQRP43  8</span><br><span class="s">143  WTPQRP44  8</span><br><span class="s">144  WTPQRP45  8</span><br><span class="s">145  WTPQRP46  8</span><br><span class="s">146  WTPQRP47  8</span><br><span class="s">147  WTPQRP48  8</span><br><span class="s">148  WTPQRP49  8</span><br><span class="s">149  WTPQRP50  8</span><br><span class="s">150  WTPQRP51  8</span><br><span class="s">151  WTPQRP52  8</span><br><span class="s">152  WTPXRP1   8</span><br><span class="s">153  WTPXRP2   8</span><br><span class="s">154  WTPXRP3   8</span><br><span class="s">155  WTPXRP4   8</span><br><span class="s">156  WTPXRP5   8</span><br><span class="s">157  WTPXRP6   8</span><br><span class="s">158  WTPXRP7   8</span><br><span class="s">159  WTPXRP8   8</span><br><span class="s">160  WTPXRP9   8</span><br><span class="s">161  WTPXRP10  8</span><br><span class="s">162  WTPXRP11  8</span><br><span class="s">163  WTPXRP12  8</span><br><span class="s">164  WTPXRP13  8</span><br><span class="s">165  WTPXRP14  8</span><br><span class="s">166  WTPXRP15  8</span><br><span class="s">167  WTPXRP16  8</span><br><span class="s">168  WTPXRP17  8</span><br><span class="s">169  WTPXRP18  8</span><br><span class="s">170  WTPXRP19  8</span><br><span class="s">171  WTPXRP20  8</span><br><span class="s">172  WTPXRP21  8</span><br><span class="s">173  WTPXRP22  8</span><br><span class="s">174  WTPXRP23  8</span><br><span class="s">175  WTPXRP24  8</span><br><span class="s">176  WTPXRP25  8</span><br><span class="s">177  WTPXRP26  8</span><br><span class="s">178  WTPXRP27  8</span><br><span class="s">179  WTPXRP28  8</span><br><span class="s">180  WTPXRP29  8</span><br><span class="s">181  WTPXRP30  8</span><br><span class="s">182  WTPXRP31  8</span><br><span class="s">183  WTPXRP32  8</span><br><span class="s">184  WTPXRP33  8</span><br><span class="s">185  WTPXRP34  8</span><br><span class="s">186  WTPXRP35  8</span><br><span class="s">187  WTPXRP36  8</span><br><span class="s">188  WTPXRP37  8</span><br><span class="s">189  WTPXRP38  8</span><br><span class="s">190  WTPXRP39  8</span><br><span class="s">191  WTPXRP40  8</span><br><span class="s">192  WTPXRP41  8</span><br><span class="s">193  WTPXRP42  8</span><br><span class="s">194  WTPXRP43  8</span><br><span class="s">195  WTPXRP44  8</span><br><span class="s">196  WTPXRP45  8</span><br><span class="s">197  WTPXRP46  8</span><br><span class="s">198  WTPXRP47  8</span><br><span class="s">199  WTPXRP48  8</span><br><span class="s">200  WTPXRP49  8</span><br><span class="s">201  WTPXRP50  8</span><br><span class="s">202  WTPXRP51  8</span><br><span class="s">203  WTPXRP52  8</span><br><span class="s">204  HYAITMO   3</span><br><span class="s">205  MXPLANG   3</span><br><span class="s">206  MXPSESSR  3</span><br><span class="s">207  MXPTIMO   3</span><br><span class="s">208  MXPTIDW   3</span><br><span class="s">209  MXPAXTMR  4</span><br><span class="s">210  HXPSESSR  3</span><br><span class="s">211  HXPTIMO   3</span><br><span class="s">212  HXPTIDW   3</span><br><span class="s">213  HXPAXTMR  4</span><br><span class="s">214  HFVERS    3</span><br><span class="s">215  HFINTVR   4</span><br><span class="s">216  HFLANG    3</span><br><span class="s">217  HFA6XCR   3</span><br><span class="s">218  HFA8R     3</span><br><span class="s">219  HFA12     3</span><br><span class="s">220  HFA13     3</span><br><span class="s">221  HFB1      3</span><br><span class="s">222  HFB2      3</span><br><span class="s">223  HFB3      3</span><br><span class="s">224  HFB4      3</span><br><span class="s">225  HFB5      3</span><br><span class="s">226  HFB6      3</span><br><span class="s">227  HFB7      3</span><br><span class="s">228  HFB8      3</span><br><span class="s">229  HFB9      3</span><br><span class="s">230  HFB10     3</span><br><span class="s">231  HFB11     3</span><br><span class="s">232  HFB11A    3</span><br><span class="s">233  HFB11B    3</span><br><span class="s">234  HFB11C    3</span><br><span class="s">235  HFB11D    3</span><br><span class="s">236  HFB11E    3</span><br><span class="s">237  HFB12     3</span><br><span class="s">238  HFB13     3</span><br><span class="s">239  HFB14AB   3</span><br><span class="s">240  HFB14AC   3</span><br><span class="s">241  HFB14AD   3</span><br><span class="s">242  HFB14AE   3</span><br><span class="s">243  HFB14AF   3</span><br><span class="s">244  HFB14AG   3</span><br><span class="s">245  HFB14AI   3</span><br><span class="s">246  HFB14BA   3</span><br><span class="s">247  HFB14BB   3</span><br><span class="s">248  HFB14BC   3</span><br><span class="s">249  HFB14BD   3</span><br><span class="s">250  HFB14BE   3</span><br><span class="s">251  HFB14BF   3</span><br><span class="s">252  HFB14BG   3</span><br><span class="s">253  HFB14BH   3</span><br><span class="s">254  HFB16A    3</span><br><span class="s">255  HFB16B    3</span><br><span class="s">256  HFB17     3</span><br><span class="s">257  HFC1      3</span><br><span class="s">258  HFC2S     3</span><br><span class="s">259  HFC3S     3</span><br><span class="s">260  HFC4S     3</span><br><span class="s">261  HFC5S     3</span><br><span class="s">262  HFC6A     3</span><br><span class="s">263  HFC6A1    3</span><br><span class="s">264  HFC6B     3</span><br><span class="s">265  HFC6B1    3</span><br><span class="s">266  HFC6C     3</span><br><span class="s">267  HFC6C1    3</span><br><span class="s">268  HFC6D     3</span><br><span class="s">269  HFC6D1    3</span><br><span class="s">270  HFC6E     3</span><br><span class="s">271  HFC6E1    3</span><br><span class="s">272  HFC7S     4</span><br><span class="s">273  HFC8S     4</span><br><span class="s">274  HFC9      3</span><br><span class="s">275  HFC10     3</span><br><span class="s">276  HFC11     3</span><br><span class="s">277  HFD1      3</span><br><span class="s">278  HFD2      3</span><br><span class="s">279  HFD3      3</span><br><span class="s">280  HFD4      3</span><br><span class="s">281  HFD5      3</span><br><span class="s">282  HFD9R     3</span><br><span class="s">283  HFD10R    3</span><br><span class="s">284  HFD12     3</span><br><span class="s">285  HFE1      3</span><br><span class="s">286  HFE2      3</span><br><span class="s">287  HFE3      3</span><br><span class="s">288  HFE4      3</span><br><span class="s">289  HFE5      3</span><br><span class="s">290  HFE6      3</span><br><span class="s">291  HFE7      3</span><br><span class="s">292  HFE8A     3</span><br><span class="s">293  HFE8B     3</span><br><span class="s">294  HFE8C     3</span><br><span class="s">295  HFE8D     3</span><br><span class="s">296  HFE8E     3</span><br><span class="s">297  HFE9      3</span><br><span class="s">298  HFE10     3</span><br><span class="s">299  HFE11     3</span><br><span class="s">300  HFE12     3</span><br><span class="s">301  HFE13     3</span><br><span class="s">302  HFE14     3</span><br><span class="s">303  HFE15     3</span><br><span class="s">304  HFE16     3</span><br><span class="s">305  HFE17     3</span><br><span class="s">306  HFE18     3</span><br><span class="s">307  HFF1      3</span><br><span class="s">308  HFF2R     3</span><br><span class="s">309  HFF3A     3</span><br><span class="s">310  HFF3B     3</span><br><span class="s">311  HFF3C     3</span><br><span class="s">312  HFF3D     3</span><br><span class="s">313  HFF3E     3</span><br><span class="s">314  HFF3F     3</span><br><span class="s">315  HFF4      3</span><br><span class="s">316  HFF5      3</span><br><span class="s">317  HFF6A     3</span><br><span class="s">318  HFF6B     3</span><br><span class="s">319  HFF6C     3</span><br><span class="s">320  HFF6D     3</span><br><span class="s">321  HFF7      3</span><br><span class="s">322  HFF8      3</span><br><span class="s">323  HFF9      3</span><br><span class="s">324  HFF10     3</span><br><span class="s">325  HFF11     3</span><br><span class="s">326  HFF12A    3</span><br><span class="s">327  HFF12B    3</span><br><span class="s">328  HFF13A    3</span><br><span class="s">329  HFF13B    3</span><br><span class="s">330  HFF13DA   3</span><br><span class="s">331  HFF13DB   3</span><br><span class="s">332  HFF13E    3</span><br><span class="s">333  HFF14A    3</span><br><span class="s">334  HFF14B    3</span><br><span class="s">335  HFF14D    3</span><br><span class="s">336  HFF15A    3</span><br><span class="s">337  HFF15B    3</span><br><span class="s">338  HFF16A    3</span><br><span class="s">339  HFF16B    3</span><br><span class="s">340  HFF16D    3</span><br><span class="s">341  HFF16E    3</span><br><span class="s">342  HFF17A    3</span><br><span class="s">343  HFF17B    3</span><br><span class="s">344  HFF18     3</span><br><span class="s">345  HFF19R    3</span><br><span class="s">346  HFF20R    3</span><br><span class="s">347  HFHSEQN   7</span><br><span class="s">348  HFHAGER   3</span><br><span class="s">349  HFHSEX    3</span><br><span class="s">350  HFHFIPCR  3</span><br><span class="s">351  HFHEDUCR  3</span><br><span class="s">352  HFHEMPL   3</span><br><span class="s">353  HFHMRST   3</span><br><span class="s">354  HFHMLSV   3</span><br><span class="s">355  HFRELR    3</span><br><span class="s">356  HFAGERR   3</span><br><span class="s">357  HAVERS    3</span><br><span class="s">358  HAINTVR   4</span><br><span class="s">359  HALANG    3</span><br><span class="s">360  HAA1      3</span><br><span class="s">361  HAA2      3</span><br><span class="s">362  HAA2A     3</span><br><span class="s">363  HAA3      3</span><br><span class="s">364  HAA4      3</span><br><span class="s">365  HAA5      3</span><br><span class="s">366  HAA6A     3</span><br><span class="s">367  HAA6B     3</span><br><span class="s">368  HAA6C     3</span><br><span class="s">369  HAA6D     3</span><br><span class="s">370  HAB1      3</span><br><span class="s">371  HAB2      3</span><br><span class="s">372  HAB3      3</span><br><span class="s">373  HAB4      3</span><br><span class="s">374  HAB5      3</span><br><span class="s">375  HAB6S     3</span><br><span class="s">376  HAB7      3</span><br><span class="s">377  HAC1A     3</span><br><span class="s">378  HAC1B     3</span><br><span class="s">379  HAC1C     3</span><br><span class="s">380  HAC1D     3</span><br><span class="s">381  HAC1E     3</span><br><span class="s">382  HAC1F     3</span><br><span class="s">383  HAC1G     3</span><br><span class="s">384  HAC1H     3</span><br><span class="s">385  HAC1I     3</span><br><span class="s">386  HAC1J     3</span><br><span class="s">387  HAC1K     3</span><br><span class="s">388  HAC1L     3</span><br><span class="s">389  HAC1M     3</span><br><span class="s">390  HAC1N     3</span><br><span class="s">391  HAC1O     3</span><br><span class="s">392  HAC2E     3</span><br><span class="s">393  HAC2F     3</span><br><span class="s">394  HAC2H     3</span><br><span class="s">395  HAC2J     3</span><br><span class="s">396  HAC2K     3</span><br><span class="s">397  HAC3AR    3</span><br><span class="s">398  HAC3CR    3</span><br><span class="s">399  HAC3DR    3</span><br><span class="s">400  HAC3ER    3</span><br><span class="s">401  HAC3FR    3</span><br><span class="s">402  HAC3GR    3</span><br><span class="s">403  HAC3HR    3</span><br><span class="s">404  HAC3IR    3</span><br><span class="s">405  HAC3JR    3</span><br><span class="s">406  HAC3KR    3</span><br><span class="s">407  HAC3LR    3</span><br><span class="s">408  HAC3MR    3</span><br><span class="s">409  HAC3NR    3</span><br><span class="s">410  HAC3OR    3</span><br><span class="s">411  HAC3OS    3</span><br><span class="s">412  HAC4A     3</span><br><span class="s">413  HAC4B     3</span><br><span class="s">414  HAC5A1    3</span><br><span class="s">415  HAC5A2    3</span><br><span class="s">416  HAC5A3    3</span><br><span class="s">417  HAC5A4    3</span><br><span class="s">418  HAC5A5    3</span><br><span class="s">419  HAC5A6    3</span><br><span class="s">420  HAC5A7    3</span><br><span class="s">421  HAC5A8    3</span><br><span class="s">422  HAC5A9    3</span><br><span class="s">423  HAC5A10   3</span><br><span class="s">424  HAC5A11   3</span><br><span class="s">425  HAC5A12   3</span><br><span class="s">426  HAC5B1    3</span><br><span class="s">427  HAC5B2    3</span><br><span class="s">428  HAC5B3    3</span><br><span class="s">429  HAC5B4    3</span><br><span class="s">430  HAC5B5    3</span><br><span class="s">431  HAC5B6    3</span><br><span class="s">432  HAC5B7    3</span><br><span class="s">433  HAC5B8    3</span><br><span class="s">434  HAC5B9    3</span><br><span class="s">435  HAC5B10   3</span><br><span class="s">436  HAC5B11   3</span><br><span class="s">437  HAC5B12   3</span><br><span class="s">438  HAC6      3</span><br><span class="s">439  HAC7      3</span><br><span class="s">440  HAC7A     3</span><br><span class="s">441  HAC8      3</span><br><span class="s">442  HAD1      3</span><br><span class="s">443  HAD2      3</span><br><span class="s">444  HAD3      3</span><br><span class="s">445  HAD4      3</span><br><span class="s">446  HAD5R     3</span><br><span class="s">447  HAD6      3</span><br><span class="s">448  HAD7S     3</span><br><span class="s">449  HAD8      3</span><br><span class="s">450  HAD9S     3</span><br><span class="s">451  HAD10     3</span><br><span class="s">452  HAD11AS   3</span><br><span class="s">453  HAD11BS   3</span><br><span class="s">454  HAD12S    4</span><br><span class="s">455  HAD13S    4</span><br><span class="s">456  HAD14     3</span><br><span class="s">457  HAD15     3</span><br><span class="s">458  HAE1      3</span><br><span class="s">459  HAE2      3</span><br><span class="s">460  HAE3      3</span><br><span class="s">461  HAE4A     3</span><br><span class="s">462  HAE4B     3</span><br><span class="s">463  HAE4C     3</span><br><span class="s">464  HAE4D     3</span><br><span class="s">465  HAE4D1    3</span><br><span class="s">466  HAE4D2    3</span><br><span class="s">467  HAE4D3    3</span><br><span class="s">468  HAE4D4    3</span><br><span class="s">469  HAE4D5    3</span><br><span class="s">470  HAE4D6    3</span><br><span class="s">471  HAE5A     3</span><br><span class="s">472  HAE5B     3</span><br><span class="s">473  HAE5C     3</span><br><span class="s">474  HAE5D1    3</span><br><span class="s">475  HAE5D2    3</span><br><span class="s">476  HAE5D3    3</span><br><span class="s">477  HAE5D4    3</span><br><span class="s">478  HAE5D5    3</span><br><span class="s">479  HAE5D6    3</span><br><span class="s">480  HAE6      3</span><br><span class="s">481  HAE7      3</span><br><span class="s">482  HAE8A     3</span><br><span class="s">483  HAE8B     3</span><br><span class="s">484  HAE8C     3</span><br><span class="s">485  HAE8D     3</span><br><span class="s">486  HAE9A     3</span><br><span class="s">487  HAE9B     3</span><br><span class="s">488  HAE9C     3</span><br><span class="s">489  HAE9D     3</span><br><span class="s">490  HAE10     3</span><br><span class="s">491  HAE11A    3</span><br><span class="s">492  HAE11B    3</span><br><span class="s">493  HAE11C    3</span><br><span class="s">494  HAF1      3</span><br><span class="s">495  HAF2      3</span><br><span class="s">496  HAF3      3</span><br><span class="s">497  HAF4      3</span><br><span class="s">498  HAF5      3</span><br><span class="s">499  HAF6      3</span><br><span class="s">500  HAF7A     3</span><br><span class="s">501  HAF7B     3</span><br><span class="s">502  HAF7C     3</span><br><span class="s">503  HAF7D     3</span><br><span class="s">504  HAF7E     3</span><br><span class="s">505  HAF7F     3</span><br><span class="s">506  HAF7G     3</span><br><span class="s">507  HAF7H     3</span><br><span class="s">508  HAF9      3</span><br><span class="s">509  HAF10     3</span><br><span class="s">510  HAF11     3</span><br><span class="s">511  HAF12R    3</span><br><span class="s">512  HAF13R    3</span><br><span class="s">513  HAF14     3</span><br><span class="s">514  HAF15     3</span><br><span class="s">515  HAF16     3</span><br><span class="s">516  HAF17     3</span><br><span class="s">517  HAF18     3</span><br><span class="s">518  HAF19     3</span><br><span class="s">519  HAF20     3</span><br><span class="s">520  HAF21     3</span><br><span class="s">521  HAF22     3</span><br><span class="s">522  HAF23     3</span><br><span class="s">523  HAF24     3</span><br><span class="s">524  HAF25     3</span><br><span class="s">525  HAF26     3</span><br><span class="s">526  HAF27     3</span><br><span class="s">527  HAG1      3</span><br><span class="s">528  HAG2      3</span><br><span class="s">529  HAG3      3</span><br><span class="s">530  HAG4A     3</span><br><span class="s">531  HAG4B     3</span><br><span class="s">532  HAG4C     3</span><br><span class="s">533  HAG5A     3</span><br><span class="s">534  HAG5B     3</span><br><span class="s">535  HAG5C     3</span><br><span class="s">536  HAG6A     3</span><br><span class="s">537  HAG6B     3</span><br><span class="s">538  HAG6C     3</span><br><span class="s">539  HAG7      3</span><br><span class="s">540  HAG8A     3</span><br><span class="s">541  HAG8B     3</span><br><span class="s">542  HAG8C     3</span><br><span class="s">543  HAG8D     3</span><br><span class="s">544  HAG8E     3</span><br><span class="s">545  HAG8F     3</span><br><span class="s">546  HAG9AR    3</span><br><span class="s">547  HAG9BR    3</span><br><span class="s">548  HAG9CR    3</span><br><span class="s">549  HAG9DR    3</span><br><span class="s">550  HAG9ER    3</span><br><span class="s">551  HAG9FR    3</span><br><span class="s">552  HAG10A    3</span><br><span class="s">553  HAG10B    3</span><br><span class="s">554  HAG10C    3</span><br><span class="s">555  HAG10D    3</span><br><span class="s">556  HAG10E    3</span><br><span class="s">557  HAG10F    3</span><br><span class="s">558  HAG11     3</span><br><span class="s">559  HAG12     3</span><br><span class="s">560  HAG13     3</span><br><span class="s">561  HAG14     3</span><br><span class="s">562  HAG15     3</span><br><span class="s">563  HAG16     3</span><br><span class="s">564  HAG17A    3</span><br><span class="s">565  HAG17B    3</span><br><span class="s">566  HAG17C    3</span><br><span class="s">567  HAG17D    3</span><br><span class="s">568  HAG17E    3</span><br><span class="s">569  HAG17F    3</span><br><span class="s">570  HAG17G    3</span><br><span class="s">571  HAG17H    3</span><br><span class="s">572  HAG17I    3</span><br><span class="s">573  HAG17J    3</span><br><span class="s">574  HAG17K    3</span><br><span class="s">575  HAG17L    3</span><br><span class="s">576  HAG17M    3</span><br><span class="s">577  HAG17N    3</span><br><span class="s">578  HAG17O    3</span><br><span class="s">579  HAG17FF   3</span><br><span class="s">580  HAG17P    3</span><br><span class="s">581  HAG17Q    3</span><br><span class="s">582  HAG17R    3</span><br><span class="s">583  HAG17S    3</span><br><span class="s">584  HAG17T    3</span><br><span class="s">585  HAG17U    3</span><br><span class="s">586  HAG17V    3</span><br><span class="s">587  HAG17W    3</span><br><span class="s">588  HAG17X    3</span><br><span class="s">589  HAG17Y    3</span><br><span class="s">590  HAG17Z    3</span><br><span class="s">591  HAG17AA   3</span><br><span class="s">592  HAG17BB   3</span><br><span class="s">593  HAG17CC   3</span><br><span class="s">594  HAG17DD   3</span><br><span class="s">595  HAG17EE   3</span><br><span class="s">596  HAG18     3</span><br><span class="s">597  HAG19A    3</span><br><span class="s">598  HAG19B    3</span><br><span class="s">599  HAG19C    3</span><br><span class="s">600  HAG19D    3</span><br><span class="s">601  HAG19E    3</span><br><span class="s">602  HAG19F    3</span><br><span class="s">603  HAG19G    3</span><br><span class="s">604  HAG19H    3</span><br><span class="s">605  HAG19I    3</span><br><span class="s">606  HAG19J    3</span><br><span class="s">607  HAG19K    3</span><br><span class="s">608  HAG19L    3</span><br><span class="s">609  HAG19M    3</span><br><span class="s">610  HAG19N    3</span><br><span class="s">611  HAG19O    3</span><br><span class="s">612  HAG19FF   3</span><br><span class="s">613  HAG19P    3</span><br><span class="s">614  HAG19Q    3</span><br><span class="s">615  HAG19R    3</span><br><span class="s">616  HAG19S    3</span><br><span class="s">617  HAG19T    3</span><br><span class="s">618  HAG19U    3</span><br><span class="s">619  HAG19V    3</span><br><span class="s">620  HAG19W    3</span><br><span class="s">621  HAG19X    3</span><br><span class="s">622  HAG19Y    3</span><br><span class="s">623  HAG19Z    3</span><br><span class="s">624  HAG19AA   3</span><br><span class="s">625  HAG19BB   3</span><br><span class="s">626  HAG19CC   3</span><br><span class="s">627  HAG19DD   3</span><br><span class="s">628  HAG19EE   3</span><br><span class="s">629  HAG20     3</span><br><span class="s">630  HAG21     3</span><br><span class="s">631  HAG22     3</span><br><span class="s">632  HAG23     3</span><br><span class="s">633  HAG24     3</span><br><span class="s">634  HAG25     3</span><br><span class="s">635  HAG26     3</span><br><span class="s">636  HAG27     3</span><br><span class="s">637  HAG28     3</span><br><span class="s">638  HAG29     3</span><br><span class="s">639  HAG30     3</span><br><span class="s">640  HAG31     3</span><br><span class="s">641  HAG32     3</span><br><span class="s">642  HAG33     3</span><br><span class="s">643  HAG34     3</span><br><span class="s">644  HAH1      3</span><br><span class="s">645  HAH2      3</span><br><span class="s">646  HAH3      3</span><br><span class="s">647  HAH4      3</span><br><span class="s">648  HAH5      3</span><br><span class="s">649  HAH6      3</span><br><span class="s">650  HAH7      3</span><br><span class="s">651  HAH8      3</span><br><span class="s">652  HAH9      3</span><br><span class="s">653  HAH10     3</span><br><span class="s">654  HAH11     3</span><br><span class="s">655  HAH12     3</span><br><span class="s">656  HAH13     3</span><br><span class="s">657  HAH14     3</span><br><span class="s">658  HAH15     3</span><br><span class="s">659  HAH16     3</span><br><span class="s">660  HAH17     3</span><br><span class="s">661  HAJ0      3</span><br><span class="s">662  HAJ1      3</span><br><span class="s">663  HAJ2A     3</span><br><span class="s">664  HAJ2B     3</span><br><span class="s">665  HAJ2C     3</span><br><span class="s">666  HAJ3S     4</span><br><span class="s">667  HAJ4      3</span><br><span class="s">668  HAJ5      3</span><br><span class="s">669  HAJ6      3</span><br><span class="s">670  HAJ7      3</span><br><span class="s">671  HAJ8      3</span><br><span class="s">672  HAJ9      3</span><br><span class="s">673  HAJ10     3</span><br><span class="s">674  HAJ11     3</span><br><span class="s">675  HAJ12     3</span><br><span class="s">676  HAJ13     3</span><br><span class="s">677  HAJ14     3</span><br><span class="s">678  HAJ15     3</span><br><span class="s">679  HAJ16     3</span><br><span class="s">680  HAJ17     3</span><br><span class="s">681  HAJ18R    3</span><br><span class="s">682  HAK1      3</span><br><span class="s">683  HAK2      3</span><br><span class="s">684  HAK3A     3</span><br><span class="s">685  HAK3A1    3</span><br><span class="s">686  HAK3B     3</span><br><span class="s">687  HAK3B1R   3</span><br><span class="s">688  HAK3C     3</span><br><span class="s">689  HAK3C1R   3</span><br><span class="s">690  HAK4      3</span><br><span class="s">691  HAK5      3</span><br><span class="s">692  HAK6      3</span><br><span class="s">693  HAK7      3</span><br><span class="s">694  HAK8      3</span><br><span class="s">695  HAK9      3</span><br><span class="s">696  HAK10     3</span><br><span class="s">697  HAK11     3</span><br><span class="s">698  HAK12     3</span><br><span class="s">699  HAK13     3</span><br><span class="s">700  HAK14     3</span><br><span class="s">701  HAL1      3</span><br><span class="s">702  HAL2      3</span><br><span class="s">703  HAL3      3</span><br><span class="s">704  HAL4      3</span><br><span class="s">705  HAL5      3</span><br><span class="s">706  HAL6      3</span><br><span class="s">707  HAL7      3</span><br><span class="s">708  HAL8      3</span><br><span class="s">709  HAL9      3</span><br><span class="s">710  HAL10     3</span><br><span class="s">711  HAL11A    3</span><br><span class="s">712  HAL11B    3</span><br><span class="s">713  HAL12     3</span><br><span class="s">714  HAL13     3</span><br><span class="s">715  HAL14A    3</span><br><span class="s">716  HAL14B    3</span><br><span class="s">717  HAL14C    3</span><br><span class="s">718  HAL14D    3</span><br><span class="s">719  HAL14E    3</span><br><span class="s">720  HAL15A    3</span><br><span class="s">721  HAL15B    3</span><br><span class="s">722  HAL15C    3</span><br><span class="s">723  HAL15D    3</span><br><span class="s">724  HAL15E    3</span><br><span class="s">725  HAL15F    3</span><br><span class="s">726  HAL15G    3</span><br><span class="s">727  HAL15H    3</span><br><span class="s">728  HAL15I    3</span><br><span class="s">729  HAL15J    3</span><br><span class="s">730  HAL15K    3</span><br><span class="s">731  HAL15L    3</span><br><span class="s">732  HAL15M    3</span><br><span class="s">733  HAL16A    3</span><br><span class="s">734  HAL16B    3</span><br><span class="s">735  HAL17     3</span><br><span class="s">736  HAL18     3</span><br><span class="s">737  HAL19A    3</span><br><span class="s">738  HAL19B    3</span><br><span class="s">739  HAL19C    3</span><br><span class="s">740  HAL20A    3</span><br><span class="s">741  HAL20B    3</span><br><span class="s">742  HAL20C    3</span><br><span class="s">743  HAM1      3</span><br><span class="s">744  HAM2      3</span><br><span class="s">745  HAM3      3</span><br><span class="s">746  HAM4      3</span><br><span class="s">747  HAM5S     3</span><br><span class="s">748  HAM6S     3</span><br><span class="s">749  HAM7      3</span><br><span class="s">750  HAM8S     3</span><br><span class="s">751  HAM9S     3</span><br><span class="s">752  HAM10S    3</span><br><span class="s">753  HAM11     3</span><br><span class="s">754  HAM12     3</span><br><span class="s">755  HAM13     3</span><br><span class="s">756  HAM14     3</span><br><span class="s">757  HAM15A    3</span><br><span class="s">758  HAM15B    3</span><br><span class="s">759  HAM15C    3</span><br><span class="s">760  HAM15D    3</span><br><span class="s">761  HAM15E    3</span><br><span class="s">762  HAM15F    3</span><br><span class="s">763  HAM15G    3</span><br><span class="s">764  HAM15H    3</span><br><span class="s">765  HAM15K    3</span><br><span class="s">766  HAM15L    3</span><br><span class="s">767  HAM15M    3</span><br><span class="s">768  HAM15N    3</span><br><span class="s">769  HAM15O    3</span><br><span class="s">770  HAM15P    3</span><br><span class="s">771  HAM15Q    3</span><br><span class="s">772  HAM15R    3</span><br><span class="s">773  HAM15S    3</span><br><span class="s">774  HAM15T    3</span><br><span class="s">775  HAM15U    3</span><br><span class="s">776  HAM15V    3</span><br><span class="s">777  HAM15W    3</span><br><span class="s">778  HAM15X    3</span><br><span class="s">779  HAM15Y    3</span><br><span class="s">780  HAM15Z    3</span><br><span class="s">781  HAN1AS    3</span><br><span class="s">782  HAN1BS    4</span><br><span class="s">783  HAN1C     3</span><br><span class="s">784  HAN1D     3</span><br><span class="s">785  HAN1ES    3</span><br><span class="s">786  HAN1FS    3</span><br><span class="s">787  HAN1GS    3</span><br><span class="s">788  HAN1HS    3</span><br><span class="s">789  HAN1IS    3</span><br><span class="s">790  HAN2AS    3</span><br><span class="s">791  HAN2BS    3</span><br><span class="s">792  HAN2CS    4</span><br><span class="s">793  HAN2DS    3</span><br><span class="s">794  HAN2ES    3</span><br><span class="s">795  HAN2FS    3</span><br><span class="s">796  HAN2GS    3</span><br><span class="s">797  HAN2HS    3</span><br><span class="s">798  HAN2IS    3</span><br><span class="s">799  HAN2JS    3</span><br><span class="s">800  HAN3AS    3</span><br><span class="s">801  HAN3BS    3</span><br><span class="s">802  HAN3CS    3</span><br><span class="s">803  HAN3DS    3</span><br><span class="s">804  HAN3ES    3</span><br><span class="s">805  HAN3FS    3</span><br><span class="s">806  HAN4AS    3</span><br><span class="s">807  HAN4BS    3</span><br><span class="s">808  HAN4CS    3</span><br><span class="s">809  HAN4DS    3</span><br><span class="s">810  HAN4ES    3</span><br><span class="s">811  HAN4FS    3</span><br><span class="s">812  HAN4GS    3</span><br><span class="s">813  HAN4HS    3</span><br><span class="s">814  HAN4IS    3</span><br><span class="s">815  HAN4JS    3</span><br><span class="s">816  HAN4KS    3</span><br><span class="s">817  HAN4LS    3</span><br><span class="s">818  HAN5AS    3</span><br><span class="s">819  HAN5BS    3</span><br><span class="s">820  HAN5CS    3</span><br><span class="s">821  HAN5DS    3</span><br><span class="s">822  HAN5ES    3</span><br><span class="s">823  HAN5FS    3</span><br><span class="s">824  HAN5GS    3</span><br><span class="s">825  HAN5HS    3</span><br><span class="s">826  HAN5IS    3</span><br><span class="s">827  HAN5JS    3</span><br><span class="s">828  HAN5KS    3</span><br><span class="s">829  HAN5LS    3</span><br><span class="s">830  HAN6AS    4</span><br><span class="s">831  HAN6BS    3</span><br><span class="s">832  HAN6CS    4</span><br><span class="s">833  HAN6DS    3</span><br><span class="s">834  HAN6ES    4</span><br><span class="s">835  HAN6FS    4</span><br><span class="s">836  HAN6GS    4</span><br><span class="s">837  HAN6HS    3</span><br><span class="s">838  HAN6IS    3</span><br><span class="s">839  HAN6JS    3</span><br><span class="s">840  HAN7AS    3</span><br><span class="s">841  HAN7BS    3</span><br><span class="s">842  HAN7CS    3</span><br><span class="s">843  HAN8      3</span><br><span class="s">844  HAN8ACD   3</span><br><span class="s">845  HAN8AS    4</span><br><span class="s">846  HAN8BCD   3</span><br><span class="s">847  HAN8BS    4</span><br><span class="s">848  HAN8CCD   3</span><br><span class="s">849  HAN8CS    3</span><br><span class="s">850  HAN8DCD   3</span><br><span class="s">851  HAN8DS    3</span><br><span class="s">852  HAN8ECD   3</span><br><span class="s">853  HAN8ES    3</span><br><span class="s">854  HAN8FCD   3</span><br><span class="s">855  HAN8FS    3</span><br><span class="s">856  HAN9      3</span><br><span class="s">857  HAN10A    3</span><br><span class="s">858  HAN10B    3</span><br><span class="s">859  HAN10C    3</span><br><span class="s">860  HAN10D    3</span><br><span class="s">861  HAN10E    3</span><br><span class="s">862  HAP1      3</span><br><span class="s">863  HAP1A     3</span><br><span class="s">864  HAP2      3</span><br><span class="s">865  HAP3      3</span><br><span class="s">866  HAP4      3</span><br><span class="s">867  HAP5      3</span><br><span class="s">868  HAP6      3</span><br><span class="s">869  HAP7      3</span><br><span class="s">870  HAP8      3</span><br><span class="s">871  HAP9      3</span><br><span class="s">872  HAP10     3</span><br><span class="s">873  HAP10A    3</span><br><span class="s">874  HAP11     3</span><br><span class="s">875  HAP12     3</span><br><span class="s">876  HAP13     3</span><br><span class="s">877  HAP14     3</span><br><span class="s">878  HAP15     3</span><br><span class="s">879  HAP16     3</span><br><span class="s">880  HAP17A1   3</span><br><span class="s">881  HAP17A2   3</span><br><span class="s">882  HAP17A3   3</span><br><span class="s">883  HAP17B    3</span><br><span class="s">884  HAP18A    3</span><br><span class="s">885  HAP18B    3</span><br><span class="s">886  HAP18C    3</span><br><span class="s">887  HAP18D    3</span><br><span class="s">888  HAP18E    3</span><br><span class="s">889  HAP19A    3</span><br><span class="s">890  HAP19B    3</span><br><span class="s">891  HAP19C    3</span><br><span class="s">892  HAQ1      3</span><br><span class="s">893  HAQ2A     3</span><br><span class="s">894  HAQ2B     3</span><br><span class="s">895  HAQ2C     3</span><br><span class="s">896  HAQ2D     3</span><br><span class="s">897  HAQ2E     3</span><br><span class="s">898  HAQ2F     3</span><br><span class="s">899  HAQ2G     3</span><br><span class="s">900  HAQ2I     3</span><br><span class="s">901  HAQ2K     3</span><br><span class="s">902  HAQ2L     3</span><br><span class="s">903  HAQ3S     4</span><br><span class="s">904  HAQ4      3</span><br><span class="s">905  HAQ5      3</span><br><span class="s">906  HAQ6      3</span><br><span class="s">907  HAQ7      3</span><br><span class="s">908  HAQ8      3</span><br><span class="s">909  HAQ9      3</span><br><span class="s">910  HAR1      3</span><br><span class="s">911  HAR2      3</span><br><span class="s">912  HAR3      3</span><br><span class="s">913  HAR4S     3</span><br><span class="s">914  HAR5      3</span><br><span class="s">915  HAR6      3</span><br><span class="s">916  HAR7S     4</span><br><span class="s">917  HAR8      3</span><br><span class="s">918  HAR9      3</span><br><span class="s">919  HAR10     3</span><br><span class="s">920  HAR11R    3</span><br><span class="s">921  HAR12S    3</span><br><span class="s">922  HAR13     3</span><br><span class="s">923  HAR14     3</span><br><span class="s">924  HAR15     3</span><br><span class="s">925  HAR16     3</span><br><span class="s">926  HAR17     3</span><br><span class="s">927  HAR18AS   3</span><br><span class="s">928  HAR18BS   3</span><br><span class="s">929  HAR19A    3</span><br><span class="s">930  HAR19B    3</span><br><span class="s">931  HAR20R    3</span><br><span class="s">932  HAR21     3</span><br><span class="s">933  HAR22     3</span><br><span class="s">934  HAR23     3</span><br><span class="s">935  HAR24     3</span><br><span class="s">936  HAR25     3</span><br><span class="s">937  HAR26     3</span><br><span class="s">938  HAR27     3</span><br><span class="s">939  HAR28     3</span><br><span class="s">940  HAS1      3</span><br><span class="s">941  HAS2      3</span><br><span class="s">942  HAS3      3</span><br><span class="s">943  HAS4      3</span><br><span class="s">944  HAS5      3</span><br><span class="s">945  HAS8R     3</span><br><span class="s">946  HAS9R     3</span><br><span class="s">947  HAS11     3</span><br><span class="s">948  HAS12S    3</span><br><span class="s">949  HAS13     3</span><br><span class="s">950  HAS14     3</span><br><span class="s">951  HAS15     3</span><br><span class="s">952  HAS16A    3</span><br><span class="s">953  HAS16B    3</span><br><span class="s">954  HAS16C    3</span><br><span class="s">955  HAS16D    3</span><br><span class="s">956  HAS17     3</span><br><span class="s">957  HAS17R    3</span><br><span class="s">958  HAS18     3</span><br><span class="s">959  HAS19     3</span><br><span class="s">960  HAS19R    3</span><br><span class="s">961  HAS21     3</span><br><span class="s">962  HAS22     3</span><br><span class="s">963  HAS23     3</span><br><span class="s">964  HAS24     3</span><br><span class="s">965  HAS25     3</span><br><span class="s">966  HAS26     3</span><br><span class="s">967  HAS27A    3</span><br><span class="s">968  HAS27B    3</span><br><span class="s">969  HAS27C    3</span><br><span class="s">970  HAS27D    3</span><br><span class="s">971  HAS27E    3</span><br><span class="s">972  HAS27F    3</span><br><span class="s">973  HAS27G    3</span><br><span class="s">974  HAS27H    3</span><br><span class="s">975  HAS27HCD  3</span><br><span class="s">976  HAS28     3</span><br><span class="s">977  HAS29     3</span><br><span class="s">978  HAT1S     3</span><br><span class="s">979  HAT1MET   8</span><br><span class="s">980  HAT2      3</span><br><span class="s">981  HAT2MET   3</span><br><span class="s">982  HAT3S     3</span><br><span class="s">983  HAT4      3</span><br><span class="s">984  HAT4MET   3</span><br><span class="s">985  HAT5S     3</span><br><span class="s">986  HAT6      3</span><br><span class="s">987  HAT6MET   3</span><br><span class="s">988  HAT7S     3</span><br><span class="s">989  HAT8      3</span><br><span class="s">990  HAT8MET   3</span><br><span class="s">991  HAT9S     3</span><br><span class="s">992  HAT10     3</span><br><span class="s">993  HAT10MET  8</span><br><span class="s">994  HAT11S    3</span><br><span class="s">995  HAT12     3</span><br><span class="s">996  HAT12MET  8</span><br><span class="s">997  HAT13S    3</span><br><span class="s">998  HAT14     3</span><br><span class="s">999  HAT14MET  3</span><br><span class="s">1000  HAT15S    3</span><br><span class="s">1001  HAT16     3</span><br><span class="s">1002  HAT16MET  3</span><br><span class="s">1003  HAT17S    3</span><br><span class="s">1004  HAT18     3</span><br><span class="s">1005  HAT19CD   4</span><br><span class="s">1006  HAT19MET  8</span><br><span class="s">1007  HAT20S    3</span><br><span class="s">1008  HAT21CD   4</span><br><span class="s">1009  HAT21MET  8</span><br><span class="s">1010  HAT22S    3</span><br><span class="s">1011  HAT23CD   4</span><br><span class="s">1012  HAT23MET  8</span><br><span class="s">1013  HAT24S    3</span><br><span class="s">1014  HAT25CD   4</span><br><span class="s">1015  HAT25MET  8</span><br><span class="s">1016  HAT26S    3</span><br><span class="s">1017  HAT27     3</span><br><span class="s">1018  HAT28     3</span><br><span class="s">1019  HAT29     3</span><br><span class="s">1020  HAT30     3</span><br><span class="s">1021  HAV1S     3</span><br><span class="s">1022  HAV2S     4</span><br><span class="s">1023  HAV3S     4</span><br><span class="s">1024  HAV4S     3</span><br><span class="s">1025  HAV5      3</span><br><span class="s">1026  HAV6S     3</span><br><span class="s">1027  HAV7R     3</span><br><span class="s">1028  HAV8      3</span><br><span class="s">1029  HAV9      3</span><br><span class="s">1030  HAV10R    3</span><br><span class="s">1031  HAV11     3</span><br><span class="s">1032  HAV12R    3</span><br><span class="s">1033  HAV13R    3</span><br><span class="s">1034  HAX1A     3</span><br><span class="s">1035  HAX1B     3</span><br><span class="s">1036  HAX1C     3</span><br><span class="s">1037  HAX2A     3</span><br><span class="s">1038  HAX2B     3</span><br><span class="s">1039  HAX2C     3</span><br><span class="s">1040  HAX3CG    3</span><br><span class="s">1041  HAX3DG    3</span><br><span class="s">1042  HAX6SG    4</span><br><span class="s">1043  HAX8SG    4</span><br><span class="s">1044  HAX3CH    3</span><br><span class="s">1045  HAX3DH    3</span><br><span class="s">1046  HAX6SH    4</span><br><span class="s">1047  HAX8SH    4</span><br><span class="s">1048  HAX3CI    3</span><br><span class="s">1049  HAX3DI    3</span><br><span class="s">1050  HAX6SI    4</span><br><span class="s">1051  HAX8SI    4</span><br><span class="s">1052  HAX3CJ    3</span><br><span class="s">1053  HAX3DJ    3</span><br><span class="s">1054  HAX6SJ    4</span><br><span class="s">1055  HAX8SJ    4</span><br><span class="s">1056  HAX3CK    3</span><br><span class="s">1057  HAX3DK    3</span><br><span class="s">1058  HAX6SK    4</span><br><span class="s">1059  HAX8SK    4</span><br><span class="s">1060  HAX3CL    3</span><br><span class="s">1061  HAX3DL    3</span><br><span class="s">1062  HAX6SL    4</span><br><span class="s">1063  HAX8SL    4</span><br><span class="s">1064  HAX3CM    3</span><br><span class="s">1065  HAX3DM    3</span><br><span class="s">1066  HAX6SM    4</span><br><span class="s">1067  HAX8SM    4</span><br><span class="s">1068  HAX3CN    3</span><br><span class="s">1069  HAX3DN    3</span><br><span class="s">1070  HAX6SN    4</span><br><span class="s">1071  HAX8SN    4</span><br><span class="s">1072  HAX3CO    3</span><br><span class="s">1073  HAX3DO    3</span><br><span class="s">1074  HAX6SO    4</span><br><span class="s">1075  HAX8SO    4</span><br><span class="s">1076  HAX3CP    3</span><br><span class="s">1077  HAX3DP    3</span><br><span class="s">1078  HAX6SP    4</span><br><span class="s">1079  HAX8SP    4</span><br><span class="s">1080  HAX3CQ    3</span><br><span class="s">1081  HAX3DQ    3</span><br><span class="s">1082  HAX6SQ    4</span><br><span class="s">1083  HAX8SQ    4</span><br><span class="s">1084  HAX3CR    3</span><br><span class="s">1085  HAX3DR    3</span><br><span class="s">1086  HAX6SR    4</span><br><span class="s">1087  HAX8SR    4</span><br><span class="s">1088  HAX3CS    3</span><br><span class="s">1089  HAX3DS    3</span><br><span class="s">1090  HAX6SS    4</span><br><span class="s">1091  HAX8SS    4</span><br><span class="s">1092  HAX3CT    3</span><br><span class="s">1093  HAX3DT    3</span><br><span class="s">1094  HAX6ST    4</span><br><span class="s">1095  HAX8ST    4</span><br><span class="s">1096  HAX3CU    3</span><br><span class="s">1097  HAX3DU    3</span><br><span class="s">1098  HAX6SU    4</span><br><span class="s">1099  HAX8SU    4</span><br><span class="s">1100  HAX3CV    3</span><br><span class="s">1101  HAX3DV    3</span><br><span class="s">1102  HAX6SV    4</span><br><span class="s">1103  HAX8SV    4</span><br><span class="s">1104  HAX3CW    3</span><br><span class="s">1105  HAX3DW    3</span><br><span class="s">1106  HAX6SW    4</span><br><span class="s">1107  HAX8SW    4</span><br><span class="s">1108  HAX9DG    4</span><br><span class="s">1109  HAX9EG    4</span><br><span class="s">1110  HAX9FG    4</span><br><span class="s">1111  HAX11AG  $6</span><br><span class="s">1112  HAX12SG   4</span><br><span class="s">1113  HAX9DH    4</span><br><span class="s">1114  HAX9EH    4</span><br><span class="s">1115  HAX9FH    4</span><br><span class="s">1116  HAX11AH  $6</span><br><span class="s">1117  HAX12SH   4</span><br><span class="s">1118  HAX9DI    4</span><br><span class="s">1119  HAX9EI    4</span><br><span class="s">1120  HAX9FI    4</span><br><span class="s">1121  HAX11AI  $6</span><br><span class="s">1122  HAX12SI   4</span><br><span class="s">1123  HAX9DJ    4</span><br><span class="s">1124  HAX9EJ    4</span><br><span class="s">1125  HAX9FJ    4</span><br><span class="s">1126  HAX11AJ  $6</span><br><span class="s">1127  HAX12SJ   4</span><br><span class="s">1128  HAX9DK    4</span><br><span class="s">1129  HAX9EK    4</span><br><span class="s">1130  HAX9FK    4</span><br><span class="s">1131  HAX11AK  $6</span><br><span class="s">1132  HAX12SK   4</span><br><span class="s">1133  HAX9DL    4</span><br><span class="s">1134  HAX9EL    4</span><br><span class="s">1135  HAX9FL    4</span><br><span class="s">1136  HAX11AL  $6</span><br><span class="s">1137  HAX12SL   4</span><br><span class="s">1138  HAX9DM    4</span><br><span class="s">1139  HAX9EM    4</span><br><span class="s">1140  HAX9FM    4</span><br><span class="s">1141  HAX11AM  $6</span><br><span class="s">1142  HAX12SM   4</span><br><span class="s">1143  HAX9DN    4</span><br><span class="s">1144  HAX9EN    4</span><br><span class="s">1145  HAX9FN    4</span><br><span class="s">1146  HAX11AN  $6</span><br><span class="s">1147  HAX12SN   4</span><br><span class="s">1148  HAX9DO    4</span><br><span class="s">1149  HAX9EO    4</span><br><span class="s">1150  HAX9FO    4</span><br><span class="s">1151  HAX11AO  $6</span><br><span class="s">1152  HAX12SO   4</span><br><span class="s">1153  HAX9DP    4</span><br><span class="s">1154  HAX9EP    4</span><br><span class="s">1155  HAX9FP    4</span><br><span class="s">1156  HAX11AP  $6</span><br><span class="s">1157  HAX12SP   4</span><br><span class="s">1158  HAX9DQ    4</span><br><span class="s">1159  HAX9EQ    4</span><br><span class="s">1160  HAX9FQ    4</span><br><span class="s">1161  HAX11AQ  $6</span><br><span class="s">1162  HAX12SQ   4</span><br><span class="s">1163  HAX9DR    4</span><br><span class="s">1164  HAX9ER    4</span><br><span class="s">1165  HAX9FR    4</span><br><span class="s">1166  HAX11AR  $6</span><br><span class="s">1167  HAX12SR   4</span><br><span class="s">1168  HAX9DS    4</span><br><span class="s">1169  HAX9ES    4</span><br><span class="s">1170  HAX9FS    4</span><br><span class="s">1171  HAX11AS  $6</span><br><span class="s">1172  HAX12SS   4</span><br><span class="s">1173  HAX9DT    4</span><br><span class="s">1174  HAX9ET    4</span><br><span class="s">1175  HAX9FT    4</span><br><span class="s">1176  HAX11AT  $6</span><br><span class="s">1177  HAX12ST   4</span><br><span class="s">1178  HAX9DU    4</span><br><span class="s">1179  HAX9EU    4</span><br><span class="s">1180  HAX9FU    4</span><br><span class="s">1181  HAX11AU  $6</span><br><span class="s">1182  HAX12SU   4</span><br><span class="s">1183  HAX9DV    4</span><br><span class="s">1184  HAX9EV    4</span><br><span class="s">1185  HAX9FV    4</span><br><span class="s">1186  HAX11AV  $6</span><br><span class="s">1187  HAX12SV   4</span><br><span class="s">1188  HAX13AG   3</span><br><span class="s">1189  HAX15SG   3</span><br><span class="s">1190  HAX16AG   3</span><br><span class="s">1191  HAX16A1G  3</span><br><span class="s">1192  HAX17SG   4</span><br><span class="s">1193  HAX13AH   3</span><br><span class="s">1194  HAX15SH   3</span><br><span class="s">1195  HAX16AH   3</span><br><span class="s">1196  HAX16A1H  3</span><br><span class="s">1197  HAX17SH   4</span><br><span class="s">1198  HAX13AI   3</span><br><span class="s">1199  HAX15SI   3</span><br><span class="s">1200  HAX16AI   3</span><br><span class="s">1201  HAX16A1I  3</span><br><span class="s">1202  HAX17SI   4</span><br><span class="s">1203  HAX13AJ   3</span><br><span class="s">1204  HAX15SJ   3</span><br><span class="s">1205  HAX16AJ   3</span><br><span class="s">1206  HAX16A1J  3</span><br><span class="s">1207  HAX17SJ   4</span><br><span class="s">1208  HAX18A    3</span><br><span class="s">1209  HAX19AS   3</span><br><span class="s">1210  HAX18B    3</span><br><span class="s">1211  HAX19BS   3</span><br><span class="s">1212  HAX18C    3</span><br><span class="s">1213  HAX19CS   3</span><br><span class="s">1214  HAX18D    3</span><br><span class="s">1215  HAX18DB   3</span><br><span class="s">1216  HAX19DS   3</span><br><span class="s">1217  HAX18E    3</span><br><span class="s">1218  HAX18EB   3</span><br><span class="s">1219  HAX19ES   3</span><br><span class="s">1220  HAX18F    3</span><br><span class="s">1221  HAX18FB   3</span><br><span class="s">1222  HAX19FS   3</span><br><span class="s">1223  HAX18G    3</span><br><span class="s">1224  HAX18GB   3</span><br><span class="s">1225  HAX19GS   3</span><br><span class="s">1226  HAY6      3</span><br><span class="s">1227  HAY7      3</span><br><span class="s">1228  HAY8      3</span><br><span class="s">1229  HAY9      3</span><br><span class="s">1230  HAY10     3</span><br><span class="s">1231  HAY11A    3</span><br><span class="s">1232  HAY11B    3</span><br><span class="s">1233  HAY11C    3</span><br><span class="s">1234  HAY11D    3</span><br><span class="s">1235  HAY11E    3</span><br><span class="s">1236  HAY11F    3</span><br><span class="s">1237  HAY11G    3</span><br><span class="s">1238  HAY11H    3</span><br><span class="s">1239  HAY11I    3</span><br><span class="s">1240  HAY11J    3</span><br><span class="s">1241  HAZA1     3</span><br><span class="s">1242  HAZA1A    3</span><br><span class="s">1243  HAZA1CC  $30</span><br><span class="s">1244  HAZA2     3</span><br><span class="s">1245  HAZA2A1   3</span><br><span class="s">1246  HAZA2A2   3</span><br><span class="s">1247  HAZA2A3   3</span><br><span class="s">1248  HAZA2A4   3</span><br><span class="s">1249  HAZA3     3</span><br><span class="s">1250  HAZA4     3</span><br><span class="s">1251  HAZA4A    3</span><br><span class="s">1252  HAZA5     3</span><br><span class="s">1253  HAZA5R    3</span><br><span class="s">1254  HAZA6     3</span><br><span class="s">1255  HAZA7A    3</span><br><span class="s">1256  HAZA7AA   3</span><br><span class="s">1257  HAZA7B    3</span><br><span class="s">1258  HAZA7BA   3</span><br><span class="s">1259  HAZA8AK1  3</span><br><span class="s">1260  HAZA8AK5  3</span><br><span class="s">1261  HAZA8A3   3</span><br><span class="s">1262  HAZA8A4   3</span><br><span class="s">1263  HAZA8BK1  3</span><br><span class="s">1264  HAZA8BK5  3</span><br><span class="s">1265  HAZA8B3   3</span><br><span class="s">1266  HAZA8B4   3</span><br><span class="s">1267  HAZA8CK1  3</span><br><span class="s">1268  HAZA8CK5  3</span><br><span class="s">1269  HAZA8C3   3</span><br><span class="s">1270  HAZA8C4   3</span><br><span class="s">1271  HAZA8DK1  3</span><br><span class="s">1272  HAZA8DK5  3</span><br><span class="s">1273  HAZA8D3   3</span><br><span class="s">1274  HAZA8D4   3</span><br><span class="s">1275  HAZA9     3</span><br><span class="s">1276  HAZA10    3</span><br><span class="s">1277  HAZA11A   3</span><br><span class="s">1278  HAZA11AR  3</span><br><span class="s">1279  HAZA11B   3</span><br><span class="s">1280  HAZA11BR  3</span><br><span class="s">1281  HAZA12    3</span><br><span class="s">1282  HAZMNK1R  3</span><br><span class="s">1283  HAZNOK1R  3</span><br><span class="s">1284  HAZMNK5R  3</span><br><span class="s">1285  HAZNOK5R  3</span><br><span class="s">1286  ;</span><br><span class="s">1287  </span><br><span class="s">1288  FORMAT</span><br><span class="s">1289  DMPPIR   Z6.3</span><br><span class="s">1290  WTPFQX6  Z9.2</span><br><span class="s">1291  WTPFEX6  Z9.2</span><br><span class="s">1292  WTPFHX6  Z9.2</span><br><span class="s">1293  WTPFALG6 Z9.2</span><br><span class="s">1294  WTPFCNS6 Z9.2</span><br><span class="s">1295  WTPFSD6  Z9.2</span><br><span class="s">1296  WTPFMD6  Z9.2</span><br><span class="s">1297  WTPFHSD6 Z9.2</span><br><span class="s">1298  WTPFHMD6 Z9.2</span><br><span class="s">1299  WTPFQX1  Z9.2</span><br><span class="s">1300  WTPFEX1  Z9.2</span><br><span class="s">1301  WTPFHX1  Z9.2</span><br><span class="s">1302  WTPFALG1 Z9.2</span><br><span class="s">1303  WTPFCNS1 Z9.2</span><br><span class="s">1304  WTPFSD1  Z9.2</span><br><span class="s">1305  WTPFMD1  Z9.2</span><br><span class="s">1306  WTPFHSD1 Z9.2</span><br><span class="s">1307  WTPFHMD1 Z9.2</span><br><span class="s">1308  WTPFQX2  Z9.2</span><br><span class="s">1309  WTPFEX2  Z9.2</span><br><span class="s">1310  WTPFHX2  Z9.2</span><br><span class="s">1311  WTPFALG2 Z9.2</span><br><span class="s">1312  WTPFCNS2 Z9.2</span><br><span class="s">1313  WTPFSD2  Z9.2</span><br><span class="s">1314  WTPFMD2  Z9.2</span><br><span class="s">1315  WTPFHSD2 Z9.2</span><br><span class="s">1316  WTPFHMD2 Z9.2</span><br><span class="s">1317  WTPQRP1  Z9.2</span><br><span class="s">1318  WTPQRP2  Z9.2</span><br><span class="s">1319  WTPQRP3  Z9.2</span><br><span class="s">1320  WTPQRP4  Z9.2</span><br><span class="s">1321  WTPQRP5  Z9.2</span><br><span class="s">1322  WTPQRP6  Z9.2</span><br><span class="s">1323  WTPQRP7  Z9.2</span><br><span class="s">1324  WTPQRP8  Z9.2</span><br><span class="s">1325  WTPQRP9  Z9.2</span><br><span class="s">1326  WTPQRP10 Z9.2</span><br><span class="s">1327  WTPQRP11 Z9.2</span><br><span class="s">1328  WTPQRP12 Z9.2</span><br><span class="s">1329  WTPQRP13 Z9.2</span><br><span class="s">1330  WTPQRP14 Z9.2</span><br><span class="s">1331  WTPQRP15 Z9.2</span><br><span class="s">1332  WTPQRP16 Z9.2</span><br><span class="s">1333  WTPQRP17 Z9.2</span><br><span class="s">1334  WTPQRP18 Z9.2</span><br><span class="s">1335  WTPQRP19 Z9.2</span><br><span class="s">1336  WTPQRP20 Z9.2</span><br><span class="s">1337  WTPQRP21 Z9.2</span><br><span class="s">1338  WTPQRP22 Z9.2</span><br><span class="s">1339  WTPQRP23 Z9.2</span><br><span class="s">1340  WTPQRP24 Z9.2</span><br><span class="s">1341  WTPQRP25 Z9.2</span><br><span class="s">1342  WTPQRP26 Z9.2</span><br><span class="s">1343  WTPQRP27 Z9.2</span><br><span class="s">1344  WTPQRP28 Z9.2</span><br><span class="s">1345  WTPQRP29 Z9.2</span><br><span class="s">1346  WTPQRP30 Z9.2</span><br><span class="s">1347  WTPQRP31 Z9.2</span><br><span class="s">1348  WTPQRP32 Z9.2</span><br><span class="s">1349  WTPQRP33 Z9.2</span><br><span class="s">1350  WTPQRP34 Z9.2</span><br><span class="s">1351  WTPQRP35 Z9.2</span><br><span class="s">1352  WTPQRP36 Z9.2</span><br><span class="s">1353  WTPQRP37 Z9.2</span><br><span class="s">1354  WTPQRP38 Z9.2</span><br><span class="s">1355  WTPQRP39 Z9.2</span><br><span class="s">1356  WTPQRP40 Z9.2</span><br><span class="s">1357  WTPQRP41 Z9.2</span><br><span class="s">1358  WTPQRP42 Z9.2</span><br><span class="s">1359  WTPQRP43 Z9.2</span><br><span class="s">1360  WTPQRP44 Z9.2</span><br><span class="s">1361  WTPQRP45 Z9.2</span><br><span class="s">1362  WTPQRP46 Z9.2</span><br><span class="s">1363  WTPQRP47 Z9.2</span><br><span class="s">1364  WTPQRP48 Z9.2</span><br><span class="s">1365  WTPQRP49 Z9.2</span><br><span class="s">1366  WTPQRP50 Z9.2</span><br><span class="s">1367  WTPQRP51 Z9.2</span><br><span class="s">1368  WTPQRP52 Z9.2</span><br><span class="s">1369  WTPXRP1  Z9.2</span><br><span class="s">1370  WTPXRP2  Z9.2</span><br><span class="s">1371  WTPXRP3  Z9.2</span><br><span class="s">1372  WTPXRP4  Z9.2</span><br><span class="s">1373  WTPXRP5  Z9.2</span><br><span class="s">1374  WTPXRP6  Z9.2</span><br><span class="s">1375  WTPXRP7  Z9.2</span><br><span class="s">1376  WTPXRP8  Z9.2</span><br><span class="s">1377  WTPXRP9  Z9.2</span><br><span class="s">1378  WTPXRP10 Z9.2</span><br><span class="s">1379  WTPXRP11 Z9.2</span><br><span class="s">1380  WTPXRP12 Z9.2</span><br><span class="s">1381  WTPXRP13 Z9.2</span><br><span class="s">1382  WTPXRP14 Z9.2</span><br><span class="s">1383  WTPXRP15 Z9.2</span><br><span class="s">1384  WTPXRP16 Z9.2</span><br><span class="s">1385  WTPXRP17 Z9.2</span><br><span class="s">1386  WTPXRP18 Z9.2</span><br><span class="s">1387  WTPXRP19 Z9.2</span><br><span class="s">1388  WTPXRP20 Z9.2</span><br><span class="s">1389  WTPXRP21 Z9.2</span><br><span class="s">1390  WTPXRP22 Z9.2</span><br><span class="s">1391  WTPXRP23 Z9.2</span><br><span class="s">1392  WTPXRP24 Z9.2</span><br><span class="s">1393  WTPXRP25 Z9.2</span><br><span class="s">1394  WTPXRP26 Z9.2</span><br><span class="s">1395  WTPXRP27 Z9.2</span><br><span class="s">1396  WTPXRP28 Z9.2</span><br><span class="s">1397  WTPXRP29 Z9.2</span><br><span class="s">1398  WTPXRP30 Z9.2</span><br><span class="s">1399  WTPXRP31 Z9.2</span><br><span class="s">1400  WTPXRP32 Z9.2</span><br><span class="s">1401  WTPXRP33 Z9.2</span><br><span class="s">1402  WTPXRP34 Z9.2</span><br><span class="s">1403  WTPXRP35 Z9.2</span><br><span class="s">1404  WTPXRP36 Z9.2</span><br><span class="s">1405  WTPXRP37 Z9.2</span><br><span class="s">1406  WTPXRP38 Z9.2</span><br><span class="s">1407  WTPXRP39 Z9.2</span><br><span class="s">1408  WTPXRP40 Z9.2</span><br><span class="s">1409  WTPXRP41 Z9.2</span><br><span class="s">1410  WTPXRP42 Z9.2</span><br><span class="s">1411  WTPXRP43 Z9.2</span><br><span class="s">1412  WTPXRP44 Z9.2</span><br><span class="s">1413  WTPXRP45 Z9.2</span><br><span class="s">1414  WTPXRP46 Z9.2</span><br><span class="s">1415  WTPXRP47 Z9.2</span><br><span class="s">1416  WTPXRP48 Z9.2</span><br><span class="s">1417  WTPXRP49 Z9.2</span><br><span class="s">1418  WTPXRP50 Z9.2</span><br><span class="s">1419  WTPXRP51 Z9.2</span><br><span class="s">1420  WTPXRP52 Z9.2</span><br><span class="s">1421  HAT1MET  Z3.2</span><br><span class="s">1422  HAT10MET Z3.2</span><br><span class="s">1423  HAT12MET Z3.2</span><br><span class="s">1424  HAT19MET Z4.2</span><br><span class="s">1425  HAT21MET Z4.2</span><br><span class="s">1426  HAT23MET Z4.2</span><br><span class="s">1427  HAT25MET Z3.2</span><br><span class="s">1428  ;</span><br><span class="s">1429  </span><br><span class="s">1430  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">1431  </span><br></pre></div>
</body>
</html>





```sas
INPUT
SEQN     1-5
DMPFSEQ  6-10
DMPSTAT  11
DMARETHN 12
DMARACER 13
DMAETHNR 14
HSSEX    15
HSDOIMO  16-17
HSAGEIR  18-19
HSAGEU   20
HSAITMOR 21-24
HSFSIZER 25-26
HSHSIZER 27-28
DMPCNTYR 29-31
DMPFIPSR 32-33
DMPMETRO 34
DMPCREGN 35
DMPPIR   36-41
SDPPHASE 42
SDPPSU6  43
SDPSTRA6 44-45
SDPPSU1  46
SDPSTRA1 47-48
SDPPSU2  49
SDPSTRA2 50-51
WTPFQX6  52-60
WTPFEX6  61-69
WTPFHX6  70-78
WTPFALG6 79-87
WTPFCNS6 88-96
WTPFSD6  97-105
WTPFMD6  106-114
WTPFHSD6 115-123
WTPFHMD6 124-132
WTPFQX1  133-141
WTPFEX1  142-150
WTPFHX1  151-159
WTPFALG1 160-168
WTPFCNS1 169-177
WTPFSD1  178-186
WTPFMD1  187-195
WTPFHSD1 196-204
WTPFHMD1 205-213
WTPFQX2  214-222
WTPFEX2  223-231
WTPFHX2  232-240
WTPFALG2 241-249
WTPFCNS2 250-258
WTPFSD2  259-267
WTPFMD2  268-276
WTPFHSD2 277-285
WTPFHMD2 286-294
WTPQRP1  295-303
WTPQRP2  304-312
WTPQRP3  313-321
WTPQRP4  322-330
WTPQRP5  331-339
WTPQRP6  340-348
WTPQRP7  349-357
WTPQRP8  358-366
WTPQRP9  367-375
WTPQRP10 376-384
WTPQRP11 385-393
WTPQRP12 394-402
WTPQRP13 403-411
WTPQRP14 412-420
WTPQRP15 421-429
WTPQRP16 430-438
WTPQRP17 439-447
WTPQRP18 448-456
WTPQRP19 457-465
WTPQRP20 466-474
WTPQRP21 475-483
WTPQRP22 484-492
WTPQRP23 493-501
WTPQRP24 502-510
WTPQRP25 511-519
WTPQRP26 520-528
WTPQRP27 529-537
WTPQRP28 538-546
WTPQRP29 547-555
WTPQRP30 556-564
WTPQRP31 565-573
WTPQRP32 574-582
WTPQRP33 583-591
WTPQRP34 592-600
WTPQRP35 601-609
WTPQRP36 610-618
WTPQRP37 619-627
WTPQRP38 628-636
WTPQRP39 637-645
WTPQRP40 646-654
WTPQRP41 655-663
WTPQRP42 664-672
WTPQRP43 673-681
WTPQRP44 682-690
WTPQRP45 691-699
WTPQRP46 700-708
WTPQRP47 709-717
WTPQRP48 718-726
WTPQRP49 727-735
WTPQRP50 736-744
WTPQRP51 745-753
WTPQRP52 754-762
WTPXRP1  763-771
WTPXRP2  772-780
WTPXRP3  781-789
WTPXRP4  790-798
WTPXRP5  799-807
WTPXRP6  808-816
WTPXRP7  817-825
WTPXRP8  826-834
WTPXRP9  835-843
WTPXRP10 844-852
WTPXRP11 853-861
WTPXRP12 862-870
WTPXRP13 871-879
WTPXRP14 880-888
WTPXRP15 889-897
WTPXRP16 898-906
WTPXRP17 907-915
WTPXRP18 916-924
WTPXRP19 925-933
WTPXRP20 934-942
WTPXRP21 943-951
WTPXRP22 952-960
WTPXRP23 961-969
WTPXRP24 970-978
WTPXRP25 979-987
WTPXRP26 988-996
WTPXRP27 997-1005
WTPXRP28 1006-1014
WTPXRP29 1015-1023
WTPXRP30 1024-1032
WTPXRP31 1033-1041
WTPXRP32 1042-1050
WTPXRP33 1051-1059
WTPXRP34 1060-1068
WTPXRP35 1069-1077
WTPXRP36 1078-1086
WTPXRP37 1087-1095
WTPXRP38 1096-1104
WTPXRP39 1105-1113
WTPXRP40 1114-1122
WTPXRP41 1123-1131
WTPXRP42 1132-1140
WTPXRP43 1141-1149
WTPXRP44 1150-1158
WTPXRP45 1159-1167
WTPXRP46 1168-1176
WTPXRP47 1177-1185
WTPXRP48 1186-1194
WTPXRP49 1195-1203
WTPXRP50 1204-1212
WTPXRP51 1213-1221
WTPXRP52 1222-1230
HYAITMO  1231
MXPLANG  1232
MXPSESSR 1233
MXPTIMO  1234-1235
MXPTIDW  1236
MXPAXTMR 1237-1240
HXPSESSR 1241
HXPTIMO  1242-1243
HXPTIDW  1244
HXPAXTMR 1245-1248
HFVERS   1249
HFINTVR  1250-1253
HFLANG   1254
HFA6XCR  1255
HFA8R    1256-1257
HFA12    1258-1259
HFA13    1260
HFB1     1261
HFB2     1262
HFB3     1263
HFB4     1264
HFB5     1265
HFB6     1266
HFB7     1267
HFB8     1268
HFB9     1269
HFB10    1270
HFB11    1271
HFB11A   1272
HFB11B   1273
HFB11C   1274
HFB11D   1275
HFB11E   1276
HFB12    1277
HFB13    1278
HFB14AB  1279
HFB14AC  1280
HFB14AD  1281
HFB14AE  1282
HFB14AF  1283
HFB14AG  1284
HFB14AI  1285
HFB14BA  1286
HFB14BB  1287
HFB14BC  1288
HFB14BD  1289
HFB14BE  1290
HFB14BF  1291
HFB14BG  1292
HFB14BH  1293
HFB16A   1294-1295
HFB16B   1296-1297
HFB17    1298
HFC1     1299
HFC2S    1300
HFC3S    1301
HFC4S    1302
HFC5S    1303
HFC6A    1304
HFC6A1   1305
HFC6B    1306
HFC6B1   1307
HFC6C    1308
HFC6C1   1309
HFC6D    1310
HFC6D1   1311
HFC6E    1312
HFC6E1   1313
HFC7S    1314
HFC8S    1315
HFC9     1316
HFC10    1317
HFC11    1318
HFD1     1319
HFD2     1320
HFD3     1321
HFD4     1322
HFD5     1323
HFD9R    1324-1325
HFD10R   1326-1327
HFD12    1328-1329
HFE1     1330
HFE2     1331-1332
HFE3     1333-1335
HFE4     1336
HFE5     1337
HFE6     1338
HFE7     1339
HFE8A    1340
HFE8B    1341
HFE8C    1342
HFE8D    1343
HFE8E    1344
HFE9     1345
HFE10    1346
HFE11    1347
HFE12    1348-1349
HFE13    1350
HFE14    1351
HFE15    1352
HFE16    1353
HFE17    1354
HFE18    1355
HFF1     1356
HFF2R    1357-1358
HFF3A    1359-1361
HFF3B    1362-1364
HFF3C    1365-1367
HFF3D    1368-1370
HFF3E    1371-1373
HFF3F    1374-1376
HFF4     1377
HFF5     1378-1379
HFF6A    1380
HFF6B    1381
HFF6C    1382
HFF6D    1383
HFF7     1384
HFF8     1385
HFF9     1386
HFF10    1387
HFF11    1388
HFF12A   1389
HFF12B   1390
HFF13A   1391
HFF13B   1392
HFF13DA  1393
HFF13DB  1394-1395
HFF13E   1396
HFF14A   1397
HFF14B   1398
HFF14D   1399
HFF15A   1400
HFF15B   1401
HFF16A   1402
HFF16B   1403
HFF16D   1404
HFF16E   1405
HFF17A   1406
HFF17B   1407
HFF18    1408
HFF19R   1409-1410
HFF20R   1411-1412
HFHSEQN  1413-1417
HFHAGER  1418-1420
HFHSEX   1421
HFHFIPCR 1422
HFHEDUCR 1423-1424
HFHEMPL  1425
HFHMRST  1426-1427
HFHMLSV  1428
HFRELR   1429-1430
HFAGERR  1431-1433
HAVERS   1434
HAINTVR  1435-1438
HALANG   1439
HAA1     1440
HAA2     1441
HAA2A    1442-1443
HAA3     1444
HAA4     1445
HAA5     1446
HAA6A    1447
HAA6B    1448
HAA6C    1449
HAA6D    1450
HAB1     1451
HAB2     1452
HAB3     1453
HAB4     1454-1455
HAB5     1456-1458
HAB6S    1459-1462
HAB7     1463-1464
HAC1A    1465
HAC1B    1466
HAC1C    1467
HAC1D    1468
HAC1E    1469
HAC1F    1470
HAC1G    1471
HAC1H    1472
HAC1I    1473
HAC1J    1474
HAC1K    1475
HAC1L    1476
HAC1M    1477
HAC1N    1478
HAC1O    1479
HAC2E    1480
HAC2F    1481
HAC2H    1482
HAC2J    1483
HAC2K    1484
HAC3AR   1485-1487
HAC3CR   1488-1490
HAC3DR   1491-1493
HAC3ER   1494-1496
HAC3FR   1497-1499
HAC3GR   1500-1502
HAC3HR   1503-1505
HAC3IR   1506-1508
HAC3JR   1509-1511
HAC3KR   1512-1514
HAC3LR   1515-1517
HAC3MR   1518-1520
HAC3NR   1521-1523
HAC3OR   1524-1526
HAC3OS   1527-1528
HAC4A    1529
HAC4B    1530
HAC5A1   1531
HAC5A2   1532
HAC5A3   1533
HAC5A4   1534
HAC5A5   1535
HAC5A6   1536
HAC5A7   1537
HAC5A8   1538
HAC5A9   1539
HAC5A10  1540
HAC5A11  1541
HAC5A12  1542
HAC5B1   1543
HAC5B2   1544
HAC5B3   1545
HAC5B4   1546
HAC5B5   1547
HAC5B6   1548
HAC5B7   1549
HAC5B8   1550
HAC5B9   1551
HAC5B10  1552
HAC5B11  1553
HAC5B12  1554
HAC6     1555
HAC7     1556
HAC7A    1557
HAC8     1558-1560
HAD1     1561
HAD2     1562
HAD3     1563
HAD4     1564
HAD5R    1565-1567
HAD6     1568
HAD7S    1569-1570
HAD8     1571-1573
HAD9S    1574-1577
HAD10    1578
HAD11AS  1579-1581
HAD11BS  1582-1584
HAD12S   1585-1589
HAD13S   1590-1594
HAD14    1595
HAD15    1596
HAE1     1597
HAE2     1598
HAE3     1599
HAE4A    1600
HAE4B    1601
HAE4C    1602
HAE4D    1603
HAE4D1   1604
HAE4D2   1605
HAE4D3   1606
HAE4D4   1607
HAE4D5   1608
HAE4D6   1609
HAE5A    1610
HAE5B    1611
HAE5C    1612
HAE5D1   1613
HAE5D2   1614
HAE5D3   1615
HAE5D4   1616
HAE5D5   1617
HAE5D6   1618
HAE6     1619
HAE7     1620
HAE8A    1621
HAE8B    1622
HAE8C    1623
HAE8D    1624
HAE9A    1625
HAE9B    1626
HAE9C    1627
HAE9D    1628
HAE10    1629
HAE11A   1630
HAE11B   1631
HAE11C   1632
HAF1     1633
HAF2     1634
HAF3     1635
HAF4     1636
HAF5     1637
HAF6     1638
HAF7A    1639
HAF7B    1640
HAF7C    1641
HAF7D    1642
HAF7E    1643
HAF7F    1644
HAF7G    1645
HAF7H    1646
HAF9     1647
HAF10    1648
HAF11    1649-1650
HAF12R   1651-1653
HAF13R   1654-1656
HAF14    1657
HAF15    1658
HAF16    1659
HAF17    1660
HAF18    1661
HAF19    1662
HAF20    1663
HAF21    1664
HAF22    1665
HAF23    1666
HAF24    1667
HAF25    1668
HAF26    1669
HAF27    1670
HAG1     1671
HAG2     1672
HAG3     1673
HAG4A    1674
HAG4B    1675
HAG4C    1676
HAG5A    1677
HAG5B    1678
HAG5C    1679
HAG6A    1680-1681
HAG6B    1682-1683
HAG6C    1684-1685
HAG7     1686
HAG8A    1687
HAG8B    1688
HAG8C    1689
HAG8D    1690
HAG8E    1691
HAG8F    1692
HAG9AR   1693-1695
HAG9BR   1696-1698
HAG9CR   1699-1701
HAG9DR   1702-1704
HAG9ER   1705-1707
HAG9FR   1708-1710
HAG10A   1711
HAG10B   1712
HAG10C   1713
HAG10D   1714
HAG10E   1715
HAG10F   1716
HAG11    1717
HAG12    1718
HAG13    1719
HAG14    1720-1721
HAG15    1722
HAG16    1723
HAG17A   1724
HAG17B   1725
HAG17C   1726
HAG17D   1727
HAG17E   1728
HAG17F   1729
HAG17G   1730
HAG17H   1731
HAG17I   1732
HAG17J   1733
HAG17K   1734
HAG17L   1735
HAG17M   1736
HAG17N   1737
HAG17O   1738
HAG17FF  1739
HAG17P   1740
HAG17Q   1741
HAG17R   1742
HAG17S   1743
HAG17T   1744
HAG17U   1745
HAG17V   1746
HAG17W   1747
HAG17X   1748
HAG17Y   1749
HAG17Z   1750
HAG17AA  1751
HAG17BB  1752
HAG17CC  1753
HAG17DD  1754
HAG17EE  1755
HAG18    1756
HAG19A   1757
HAG19B   1758
HAG19C   1759
HAG19D   1760
HAG19E   1761
HAG19F   1762
HAG19G   1763
HAG19H   1764
HAG19I   1765
HAG19J   1766
HAG19K   1767
HAG19L   1768
HAG19M   1769
HAG19N   1770
HAG19O   1771
HAG19FF  1772
HAG19P   1773
HAG19Q   1774
HAG19R   1775
HAG19S   1776
HAG19T   1777
HAG19U   1778
HAG19V   1779
HAG19W   1780
HAG19X   1781
HAG19Y   1782
HAG19Z   1783
HAG19AA  1784
HAG19BB  1785
HAG19CC  1786
HAG19DD  1787
HAG19EE  1788
HAG20    1789
HAG21    1790
HAG22    1791
HAG23    1792
HAG24    1793
HAG25    1794
HAG26    1795
HAG27    1796
HAG28    1797
HAG29    1798
HAG30    1799
HAG31    1800
HAG32    1801
HAG33    1802
HAG34    1803
HAH1     1804
HAH2     1805
HAH3     1806
HAH4     1807
HAH5     1808
HAH6     1809
HAH7     1810
HAH8     1811
HAH9     1812
HAH10    1813
HAH11    1814
HAH12    1815
HAH13    1816
HAH14    1817
HAH15    1818
HAH16    1819
HAH17    1820
HAJ0     1821
HAJ1     1822
HAJ2A    1823
HAJ2B    1824
HAJ2C    1825
HAJ3S    1826-1831
HAJ4     1832-1834
HAJ5     1835
HAJ6     1836
HAJ7     1837
HAJ8     1838-1839
HAJ9     1840
HAJ10    1841-1842
HAJ11    1843
HAJ12    1844
HAJ13    1845-1847
HAJ14    1848
HAJ15    1849
HAJ16    1850
HAJ17    1851
HAJ18R   1852-1854
HAK1     1855
HAK2     1856-1857
HAK3A    1858
HAK3A1   1859-1861
HAK3B    1862
HAK3B1R  1863-1865
HAK3C    1866
HAK3C1R  1867-1869
HAK4     1870
HAK5     1871-1872
HAK6     1873
HAK7     1874
HAK8     1875-1877
HAK9     1878
HAK10    1879
HAK11    1880
HAK12    1881
HAK13    1882
HAK14    1883
HAL1     1884
HAL2     1885-1887
HAL3     1888
HAL4     1889-1891
HAL5     1892
HAL6     1893
HAL7     1894-1896
HAL8     1897-1899
HAL9     1900-1902
HAL10    1903
HAL11A   1904
HAL11B   1905
HAL12    1906-1908
HAL13    1909
HAL14A   1910
HAL14B   1911
HAL14C   1912
HAL14D   1913
HAL14E   1914
HAL15A   1915
HAL15B   1916
HAL15C   1917
HAL15D   1918
HAL15E   1919
HAL15F   1920
HAL15G   1921
HAL15H   1922
HAL15I   1923
HAL15J   1924
HAL15K   1925
HAL15L   1926
HAL15M   1927
HAL16A   1928
HAL16B   1929
HAL17    1930
HAL18    1931
HAL19A   1932
HAL19B   1933
HAL19C   1934
HAL20A   1935-1937
HAL20B   1938-1940
HAL20C   1941-1943
HAM1     1944
HAM2     1945
HAM3     1946
HAM4     1947
HAM5S    1948-1950
HAM6S    1951-1953
HAM7     1954
HAM8S    1955-1957
HAM9S    1958-1960
HAM10S   1961-1963
HAM11    1964
HAM12    1965
HAM13    1966
HAM14    1967
HAM15A   1968
HAM15B   1969
HAM15C   1970
HAM15D   1971
HAM15E   1972
HAM15F   1973
HAM15G   1974
HAM15H   1975
HAM15K   1976
HAM15L   1977
HAM15M   1978
HAM15N   1979
HAM15O   1980
HAM15P   1981
HAM15Q   1982
HAM15R   1983
HAM15S   1984
HAM15T   1985
HAM15U   1986
HAM15V   1987
HAM15W   1988
HAM15X   1989
HAM15Y   1990
HAM15Z   1991
HAN1AS   1992-1994
HAN1BS   1995-1998
HAN1C    1999
HAN1D    2000-2001
HAN1ES   2002-2004
HAN1FS   2005-2007
HAN1GS   2008-2010
HAN1HS   2011-2013
HAN1IS   2014-2016
HAN2AS   2017-2019
HAN2BS   2020-2022
HAN2CS   2023-2026
HAN2DS   2027-2029
HAN2ES   2030-2032
HAN2FS   2033-2035
HAN2GS   2036-2038
HAN2HS   2039-2041
HAN2IS   2042-2044
HAN2JS   2045-2047
HAN3AS   2048-2050
HAN3BS   2051-2053
HAN3CS   2054-2056
HAN3DS   2057-2059
HAN3ES   2060-2062
HAN3FS   2063-2065
HAN4AS   2066-2068
HAN4BS   2069-2071
HAN4CS   2072-2074
HAN4DS   2075-2077
HAN4ES   2078-2080
HAN4FS   2081-2083
HAN4GS   2084-2086
HAN4HS   2087-2089
HAN4IS   2090-2092
HAN4JS   2093-2095
HAN4KS   2096-2098
HAN4LS   2099-2101
HAN5AS   2102-2104
HAN5BS   2105-2107
HAN5CS   2108-2110
HAN5DS   2111-2113
HAN5ES   2114-2116
HAN5FS   2117-2119
HAN5GS   2120-2122
HAN5HS   2123-2125
HAN5IS   2126-2128
HAN5JS   2129-2131
HAN5KS   2132-2134
HAN5LS   2135-2137
HAN6AS   2138-2141
HAN6BS   2142-2144
HAN6CS   2145-2148
HAN6DS   2149-2151
HAN6ES   2152-2155
HAN6FS   2156-2159
HAN6GS   2160-2163
HAN6HS   2164-2166
HAN6IS   2167-2169
HAN6JS   2170-2172
HAN7AS   2173-2175
HAN7BS   2176-2178
HAN7CS   2179-2181
HAN8     2182
HAN8ACD  2183-2184
HAN8AS   2185-2188
HAN8BCD  2189-2190
HAN8BS   2191-2194
HAN8CCD  2195-2196
HAN8CS   2197-2199
HAN8DCD  2200-2201
HAN8DS   2202-2204
HAN8ECD  2205-2206
HAN8ES   2207-2209
HAN8FCD  2210-2211
HAN8FS   2212-2214
HAN9     2215
HAN10A   2216
HAN10B   2217
HAN10C   2218
HAN10D   2219
HAN10E   2220
HAP1     2221
HAP1A    2222
HAP2     2223
HAP3     2224
HAP4     2225
HAP5     2226
HAP6     2227
HAP7     2228
HAP8     2229
HAP9     2230
HAP10    2231
HAP10A   2232
HAP11    2233
HAP12    2234
HAP13    2235
HAP14    2236
HAP15    2237
HAP16    2238
HAP17A1  2239
HAP17A2  2240
HAP17A3  2241
HAP17B   2242
HAP18A   2243-2244
HAP18B   2245-2246
HAP18C   2247-2248
HAP18D   2249-2250
HAP18E   2251-2252
HAP19A   2253
HAP19B   2254
HAP19C   2255
HAQ1     2256-2257
HAQ2A    2258
HAQ2B    2259
HAQ2C    2260
HAQ2D    2261
HAQ2E    2262
HAQ2F    2263
HAQ2G    2264
HAQ2I    2265
HAQ2K    2266
HAQ2L    2267
HAQ3S    2268-2272
HAQ4     2273-2274
HAQ5     2275
HAQ6     2276
HAQ7     2277
HAQ8     2278
HAQ9     2279-2280
HAR1     2281
HAR2     2282-2284
HAR3     2285
HAR4S    2286-2288
HAR5     2289-2291
HAR6     2292
HAR7S    2293-2296
HAR8     2297-2299
HAR9     2300
HAR10    2301-2303
HAR11R   2304-2306
HAR12S   2307-2309
HAR13    2310
HAR14    2311
HAR15    2312-2314
HAR16    2315
HAR17    2316
HAR18AS  2317-2319
HAR18BS  2320-2322
HAR19A   2323
HAR19B   2324
HAR20R   2325-2327
HAR21    2328
HAR22    2329
HAR23    2330
HAR24    2331
HAR25    2332-2333
HAR26    2334
HAR27    2335
HAR28    2336-2337
HAS1     2338
HAS2     2339
HAS3     2340
HAS4     2341
HAS5     2342
HAS8R    2343-2344
HAS9R    2345-2346
HAS11    2347-2348
HAS12S   2349-2352
HAS13    2353
HAS14    2354-2355
HAS15    2356
HAS16A   2357
HAS16B   2358
HAS16C   2359
HAS16D   2360
HAS17    2361
HAS17R   2362-2363
HAS18    2364-2366
HAS19    2367
HAS19R   2368-2369
HAS21    2370
HAS22    2371-2372
HAS23    2373
HAS24    2374
HAS25    2375
HAS26    2376
HAS27A   2377
HAS27B   2378
HAS27C   2379
HAS27D   2380
HAS27E   2381
HAS27F   2382
HAS27G   2383
HAS27H   2384
HAS27HCD 2385
HAS28    2386
HAS29    2387-2388
HAT1S    2389-2392
HAT1MET  2393-2395
HAT2     2396
HAT2MET  2397
HAT3S    2398-2401
HAT4     2402
HAT4MET  2403
HAT5S    2404-2407
HAT6     2408
HAT6MET  2409
HAT7S    2410-2413
HAT8     2414
HAT8MET  2415
HAT9S    2416-2419
HAT10    2420
HAT10MET 2421-2423
HAT11S   2424-2427
HAT12    2428
HAT12MET 2429-2431
HAT13S   2432-2435
HAT14    2436
HAT14MET 2437
HAT15S   2438-2441
HAT16    2442
HAT16MET 2443
HAT17S   2444-2447
HAT18    2448
HAT19CD  2449-2453
HAT19MET 2454-2457
HAT20S   2458-2461
HAT21CD  2462-2466
HAT21MET 2467-2469
HAT22S   2470-2473
HAT23CD  2474-2478
HAT23MET 2479-2481
HAT24S   2482-2485
HAT25CD  2486-2490
HAT25MET 2491-2493
HAT26S   2494-2497
HAT27    2498
HAT28    2499
HAT29    2500
HAT30    2501
HAV1S    2502-2505
HAV2S    2506-2510
HAV3S    2511-2515
HAV4S    2516-2519
HAV5     2520
HAV6S    2521-2524
HAV7R    2525-2528
HAV8     2529-2530
HAV9     2531
HAV10R   2532
HAV11    2533-2534
HAV12R   2535
HAV13R   2536-2538
HAX1A    2539
HAX1B    2540
HAX1C    2541
HAX2A    2542-2543
HAX2B    2544-2545
HAX2C    2546-2547
HAX3CG   2548-2549
HAX3DG   2550-2551
HAX6SG   2552-2555
HAX8SG   2556-2559
HAX3CH   2560-2561
HAX3DH   2562-2563
HAX6SH   2564-2567
HAX8SH   2568-2571
HAX3CI   2572-2573
HAX3DI   2574-2575
HAX6SI   2576-2579
HAX8SI   2580-2583
HAX3CJ   2584-2585
HAX3DJ   2586-2587
HAX6SJ   2588-2591
HAX8SJ   2592-2595
HAX3CK   2596-2597
HAX3DK   2598-2599
HAX6SK   2600-2603
HAX8SK   2604-2607
HAX3CL   2608-2609
HAX3DL   2610-2611
HAX6SL   2612-2615
HAX8SL   2616-2619
HAX3CM   2620-2621
HAX3DM   2622-2623
HAX6SM   2624-2627
HAX8SM   2628-2631
HAX3CN   2632-2633
HAX3DN   2634-2635
HAX6SN   2636-2639
HAX8SN   2640-2643
HAX3CO   2644-2645
HAX3DO   2646-2647
HAX6SO   2648-2651
HAX8SO   2652-2655
HAX3CP   2656-2657
HAX3DP   2658-2659
HAX6SP   2660-2663
HAX8SP   2664-2667
HAX3CQ   2668-2669
HAX3DQ   2670-2671
HAX6SQ   2672-2675
HAX8SQ   2676-2679
HAX3CR   2680-2681
HAX3DR   2682-2683
HAX6SR   2684-2687
HAX8SR   2688-2691
HAX3CS   2692-2693
HAX3DS   2694-2695
HAX6SS   2696-2699
HAX8SS   2700-2703
HAX3CT   2704-2705
HAX3DT   2706-2707
HAX6ST   2708-2711
HAX8ST   2712-2715
HAX3CU   2716-2717
HAX3DU   2718-2719
HAX6SU   2720-2723
HAX8SU   2724-2727
HAX3CV   2728-2729
HAX3DV   2730-2731
HAX6SV   2732-2735
HAX8SV   2736-2739
HAX3CW   2740-2741
HAX3DW   2742-2743
HAX6SW   2744-2747
HAX8SW   2748-2751
HAX9DG   2752-2755
HAX9EG   2756-2759
HAX9FG   2760-2763
HAX11AG  2764-2769
HAX12SG  2770-2774
HAX9DH   2775-2778
HAX9EH   2779-2782
HAX9FH   2783-2786
HAX11AH  2787-2792
HAX12SH  2793-2797
HAX9DI   2798-2801
HAX9EI   2802-2805
HAX9FI   2806-2809
HAX11AI  2810-2815
HAX12SI  2816-2820
HAX9DJ   2821-2824
HAX9EJ   2825-2828
HAX9FJ   2829-2832
HAX11AJ  2833-2838
HAX12SJ  2839-2843
HAX9DK   2844-2847
HAX9EK   2848-2851
HAX9FK   2852-2855
HAX11AK  2856-2861
HAX12SK  2862-2866
HAX9DL   2867-2870
HAX9EL   2871-2874
HAX9FL   2875-2878
HAX11AL  2879-2884
HAX12SL  2885-2889
HAX9DM   2890-2893
HAX9EM   2894-2897
HAX9FM   2898-2901
HAX11AM  2902-2907
HAX12SM  2908-2912
HAX9DN   2913-2916
HAX9EN   2917-2920
HAX9FN   2921-2924
HAX11AN  2925-2930
HAX12SN  2931-2935
HAX9DO   2936-2939
HAX9EO   2940-2943
HAX9FO   2944-2947
HAX11AO  2948-2953
HAX12SO  2954-2958
HAX9DP   2959-2962
HAX9EP   2963-2966
HAX9FP   2967-2970
HAX11AP  2971-2976
HAX12SP  2977-2981
HAX9DQ   2982-2985
HAX9EQ   2986-2989
HAX9FQ   2990-2993
HAX11AQ  2994-2999
HAX12SQ  3000-3004
HAX9DR   3005-3008
HAX9ER   3009-3012
HAX9FR   3013-3016
HAX11AR  3017-3022
HAX12SR  3023-3027
HAX9DS   3028-3031
HAX9ES   3032-3035
HAX9FS   3036-3039
HAX11AS  3040-3045
HAX12SS  3046-3050
HAX9DT   3051-3054
HAX9ET   3055-3058
HAX9FT   3059-3062
HAX11AT  3063-3068
HAX12ST  3069-3073
HAX9DU   3074-3077
HAX9EU   3078-3081
HAX9FU   3082-3085
HAX11AU  3086-3091
HAX12SU  3092-3096
HAX9DV   3097-3100
HAX9EV   3101-3104
HAX9FV   3105-3108
HAX11AV  3109-3114
HAX12SV  3115-3119
HAX13AG  3120-3122
HAX15SG  3123-3126
HAX16AG  3127-3128
HAX16A1G 3129-3130
HAX17SG  3131-3134
HAX13AH  3135-3137
HAX15SH  3138-3141
HAX16AH  3142-3143
HAX16A1H 3144-3145
HAX17SH  3146-3149
HAX13AI  3150-3152
HAX15SI  3153-3156
HAX16AI  3157-3158
HAX16A1I 3159-3160
HAX17SI  3161-3164
HAX13AJ  3165-3167
HAX15SJ  3168-3171
HAX16AJ  3172-3173
HAX16A1J 3174-3175
HAX17SJ  3176-3179
HAX18A   3180
HAX19AS  3181-3183
HAX18B   3184
HAX19BS  3185-3187
HAX18C   3188
HAX19CS  3189-3191
HAX18D   3192
HAX18DB  3193-3194
HAX19DS  3195-3197
HAX18E   3198
HAX18EB  3199-3200
HAX19ES  3201-3203
HAX18F   3204
HAX18FB  3205-3206
HAX19FS  3207-3209
HAX18G   3210
HAX18GB  3211-3212
HAX19GS  3213-3215
HAY6     3216-3217
HAY7     3218-3219
HAY8     3220
HAY9     3221
HAY10    3222
HAY11A   3223
HAY11B   3224
HAY11C   3225
HAY11D   3226
HAY11E   3227
HAY11F   3228
HAY11G   3229
HAY11H   3230
HAY11I   3231
HAY11J   3232
HAZA1    3233
HAZA1A   3234
HAZA1CC  3235-3264
HAZA2    3265
HAZA2A1  3266
HAZA2A2  3267
HAZA2A3  3268
HAZA2A4  3269
HAZA3    3270
HAZA4    3271
HAZA4A   3272
HAZA5    3273-3275
HAZA5R   3276-3278
HAZA6    3279
HAZA7A   3280-3282
HAZA7AA  3283
HAZA7B   3284-3286
HAZA7BA  3287
HAZA8AK1 3288-3290
HAZA8AK5 3291-3293
HAZA8A3  3294
HAZA8A4  3295
HAZA8BK1 3296-3298
HAZA8BK5 3299-3301
HAZA8B3  3302
HAZA8B4  3303
HAZA8CK1 3304-3306
HAZA8CK5 3307-3309
HAZA8C3  3310
HAZA8C4  3311
HAZA8DK1 3312-3314
HAZA8DK5 3315-3317
HAZA8D3  3318
HAZA8D4  3319
HAZA9    3320-3321
HAZA10   3322-3323
HAZA11A  3324-3326
HAZA11AR 3327-3329
HAZA11B  3330-3332
HAZA11BR 3333-3335
HAZA12   3336
HAZMNK1R 3337-3339
HAZNOK1R 3340-3341
HAZMNK5R 3342-3344
HAZNOK5R 3345-3346
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

<div class="highlight"><pre><span></span><span class="s">1433  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">1433! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">1434  </span><br><span class="s">1435  INPUT</span><br><span class="s">1436  SEQN     1-5</span><br><span class="s">1437  DMPFSEQ  6-10</span><br><span class="s">1438  DMPSTAT  11</span><br><span class="s">1439  DMARETHN 12</span><br><span class="s">1440  DMARACER 13</span><br><span class="s">1441  DMAETHNR 14</span><br><span class="s">1442  HSSEX    15</span><br><span class="s">1443  HSDOIMO  16-17</span><br><span class="s">1444  HSAGEIR  18-19</span><br><span class="s">1445  HSAGEU   20</span><br><span class="s">1446  HSAITMOR 21-24</span><br><span class="s">1447  HSFSIZER 25-26</span><br><span class="s">1448  HSHSIZER 27-28</span><br><span class="s">1449  DMPCNTYR 29-31</span><br><span class="s">1450  DMPFIPSR 32-33</span><br><span class="s">1451  DMPMETRO 34</span><br><span class="s">1452  DMPCREGN 35</span><br><span class="s">1453  DMPPIR   36-41</span><br><span class="s">1454  SDPPHASE 42</span><br><span class="s">1455  SDPPSU6  43</span><br><span class="s">1456  SDPSTRA6 44-45</span><br><span class="s">1457  SDPPSU1  46</span><br><span class="s">1458  SDPSTRA1 47-48</span><br><span class="s">1459  SDPPSU2  49</span><br><span class="s">1460  SDPSTRA2 50-51</span><br><span class="s">1461  WTPFQX6  52-60</span><br><span class="s">1462  WTPFEX6  61-69</span><br><span class="s">1463  WTPFHX6  70-78</span><br><span class="s">1464  WTPFALG6 79-87</span><br><span class="s">1465  WTPFCNS6 88-96</span><br><span class="s">1466  WTPFSD6  97-105</span><br><span class="s">1467  WTPFMD6  106-114</span><br><span class="s">1468  WTPFHSD6 115-123</span><br><span class="s">1469  WTPFHMD6 124-132</span><br><span class="s">1470  WTPFQX1  133-141</span><br><span class="s">1471  WTPFEX1  142-150</span><br><span class="s">1472  WTPFHX1  151-159</span><br><span class="s">1473  WTPFALG1 160-168</span><br><span class="s">1474  WTPFCNS1 169-177</span><br><span class="s">1475  WTPFSD1  178-186</span><br><span class="s">1476  WTPFMD1  187-195</span><br><span class="s">1477  WTPFHSD1 196-204</span><br><span class="s">1478  WTPFHMD1 205-213</span><br><span class="s">1479  WTPFQX2  214-222</span><br><span class="s">1480  WTPFEX2  223-231</span><br><span class="s">1481  WTPFHX2  232-240</span><br><span class="s">1482  WTPFALG2 241-249</span><br><span class="s">1483  WTPFCNS2 250-258</span><br><span class="s">1484  WTPFSD2  259-267</span><br><span class="s">1485  WTPFMD2  268-276</span><br><span class="s">1486  WTPFHSD2 277-285</span><br><span class="s">1487  WTPFHMD2 286-294</span><br><span class="s">1488  WTPQRP1  295-303</span><br><span class="s">1489  WTPQRP2  304-312</span><br><span class="s">1490  WTPQRP3  313-321</span><br><span class="s">1491  WTPQRP4  322-330</span><br><span class="s">1492  WTPQRP5  331-339</span><br><span class="s">1493  WTPQRP6  340-348</span><br><span class="s">1494  WTPQRP7  349-357</span><br><span class="s">1495  WTPQRP8  358-366</span><br><span class="s">1496  WTPQRP9  367-375</span><br><span class="s">1497  WTPQRP10 376-384</span><br><span class="s">1498  WTPQRP11 385-393</span><br><span class="s">1499  WTPQRP12 394-402</span><br><span class="s">1500  WTPQRP13 403-411</span><br><span class="s">1501  WTPQRP14 412-420</span><br><span class="s">1502  WTPQRP15 421-429</span><br><span class="s">1503  WTPQRP16 430-438</span><br><span class="s">1504  WTPQRP17 439-447</span><br><span class="s">1505  WTPQRP18 448-456</span><br><span class="s">1506  WTPQRP19 457-465</span><br><span class="s">1507  WTPQRP20 466-474</span><br><span class="s">1508  WTPQRP21 475-483</span><br><span class="s">1509  WTPQRP22 484-492</span><br><span class="s">1510  WTPQRP23 493-501</span><br><span class="s">1511  WTPQRP24 502-510</span><br><span class="s">1512  WTPQRP25 511-519</span><br><span class="s">1513  WTPQRP26 520-528</span><br><span class="s">1514  WTPQRP27 529-537</span><br><span class="s">1515  WTPQRP28 538-546</span><br><span class="s">1516  WTPQRP29 547-555</span><br><span class="s">1517  WTPQRP30 556-564</span><br><span class="s">1518  WTPQRP31 565-573</span><br><span class="s">1519  WTPQRP32 574-582</span><br><span class="s">1520  WTPQRP33 583-591</span><br><span class="s">1521  WTPQRP34 592-600</span><br><span class="s">1522  WTPQRP35 601-609</span><br><span class="s">1523  WTPQRP36 610-618</span><br><span class="s">1524  WTPQRP37 619-627</span><br><span class="s">1525  WTPQRP38 628-636</span><br><span class="s">1526  WTPQRP39 637-645</span><br><span class="s">1527  WTPQRP40 646-654</span><br><span class="s">1528  WTPQRP41 655-663</span><br><span class="s">1529  WTPQRP42 664-672</span><br><span class="s">1530  WTPQRP43 673-681</span><br><span class="s">1531  WTPQRP44 682-690</span><br><span class="s">1532  WTPQRP45 691-699</span><br><span class="s">1533  WTPQRP46 700-708</span><br><span class="s">1534  WTPQRP47 709-717</span><br><span class="s">1535  WTPQRP48 718-726</span><br><span class="s">1536  WTPQRP49 727-735</span><br><span class="s">1537  WTPQRP50 736-744</span><br><span class="s">1538  WTPQRP51 745-753</span><br><span class="s">1539  WTPQRP52 754-762</span><br><span class="s">1540  WTPXRP1  763-771</span><br><span class="s">1541  WTPXRP2  772-780</span><br><span class="s">1542  WTPXRP3  781-789</span><br><span class="s">1543  WTPXRP4  790-798</span><br><span class="s">1544  WTPXRP5  799-807</span><br><span class="s">1545  WTPXRP6  808-816</span><br><span class="s">1546  WTPXRP7  817-825</span><br><span class="s">1547  WTPXRP8  826-834</span><br><span class="s">1548  WTPXRP9  835-843</span><br><span class="s">1549  WTPXRP10 844-852</span><br><span class="s">1550  WTPXRP11 853-861</span><br><span class="s">1551  WTPXRP12 862-870</span><br><span class="s">1552  WTPXRP13 871-879</span><br><span class="s">1553  WTPXRP14 880-888</span><br><span class="s">1554  WTPXRP15 889-897</span><br><span class="s">1555  WTPXRP16 898-906</span><br><span class="s">1556  WTPXRP17 907-915</span><br><span class="s">1557  WTPXRP18 916-924</span><br><span class="s">1558  WTPXRP19 925-933</span><br><span class="s">1559  WTPXRP20 934-942</span><br><span class="s">1560  WTPXRP21 943-951</span><br><span class="s">1561  WTPXRP22 952-960</span><br><span class="s">1562  WTPXRP23 961-969</span><br><span class="s">1563  WTPXRP24 970-978</span><br><span class="s">1564  WTPXRP25 979-987</span><br><span class="s">1565  WTPXRP26 988-996</span><br><span class="s">1566  WTPXRP27 997-1005</span><br><span class="s">1567  WTPXRP28 1006-1014</span><br><span class="s">1568  WTPXRP29 1015-1023</span><br><span class="s">1569  WTPXRP30 1024-1032</span><br><span class="s">1570  WTPXRP31 1033-1041</span><br><span class="s">1571  WTPXRP32 1042-1050</span><br><span class="s">1572  WTPXRP33 1051-1059</span><br><span class="s">1573  WTPXRP34 1060-1068</span><br><span class="s">1574  WTPXRP35 1069-1077</span><br><span class="s">1575  WTPXRP36 1078-1086</span><br><span class="s">1576  WTPXRP37 1087-1095</span><br><span class="s">1577  WTPXRP38 1096-1104</span><br><span class="s">1578  WTPXRP39 1105-1113</span><br><span class="s">1579  WTPXRP40 1114-1122</span><br><span class="s">1580  WTPXRP41 1123-1131</span><br><span class="s">1581  WTPXRP42 1132-1140</span><br><span class="s">1582  WTPXRP43 1141-1149</span><br><span class="s">1583  WTPXRP44 1150-1158</span><br><span class="s">1584  WTPXRP45 1159-1167</span><br><span class="s">1585  WTPXRP46 1168-1176</span><br><span class="s">1586  WTPXRP47 1177-1185</span><br><span class="s">1587  WTPXRP48 1186-1194</span><br><span class="s">1588  WTPXRP49 1195-1203</span><br><span class="s">1589  WTPXRP50 1204-1212</span><br><span class="s">1590  WTPXRP51 1213-1221</span><br><span class="s">1591  WTPXRP52 1222-1230</span><br><span class="s">1592  HYAITMO  1231</span><br><span class="s">1593  MXPLANG  1232</span><br><span class="s">1594  MXPSESSR 1233</span><br><span class="s">1595  MXPTIMO  1234-1235</span><br><span class="s">1596  MXPTIDW  1236</span><br><span class="s">1597  MXPAXTMR 1237-1240</span><br><span class="s">1598  HXPSESSR 1241</span><br><span class="s">1599  HXPTIMO  1242-1243</span><br><span class="s">1600  HXPTIDW  1244</span><br><span class="s">1601  HXPAXTMR 1245-1248</span><br><span class="s">1602  HFVERS   1249</span><br><span class="s">1603  HFINTVR  1250-1253</span><br><span class="s">1604  HFLANG   1254</span><br><span class="s">1605  HFA6XCR  1255</span><br><span class="s">1606  HFA8R    1256-1257</span><br><span class="s">1607  HFA12    1258-1259</span><br><span class="s">1608  HFA13    1260</span><br><span class="s">1609  HFB1     1261</span><br><span class="s">1610  HFB2     1262</span><br><span class="s">1611  HFB3     1263</span><br><span class="s">1612  HFB4     1264</span><br><span class="s">1613  HFB5     1265</span><br><span class="s">1614  HFB6     1266</span><br><span class="s">1615  HFB7     1267</span><br><span class="s">1616  HFB8     1268</span><br><span class="s">1617  HFB9     1269</span><br><span class="s">1618  HFB10    1270</span><br><span class="s">1619  HFB11    1271</span><br><span class="s">1620  HFB11A   1272</span><br><span class="s">1621  HFB11B   1273</span><br><span class="s">1622  HFB11C   1274</span><br><span class="s">1623  HFB11D   1275</span><br><span class="s">1624  HFB11E   1276</span><br><span class="s">1625  HFB12    1277</span><br><span class="s">1626  HFB13    1278</span><br><span class="s">1627  HFB14AB  1279</span><br><span class="s">1628  HFB14AC  1280</span><br><span class="s">1629  HFB14AD  1281</span><br><span class="s">1630  HFB14AE  1282</span><br><span class="s">1631  HFB14AF  1283</span><br><span class="s">1632  HFB14AG  1284</span><br><span class="s">1633  HFB14AI  1285</span><br><span class="s">1634  HFB14BA  1286</span><br><span class="s">1635  HFB14BB  1287</span><br><span class="s">1636  HFB14BC  1288</span><br><span class="s">1637  HFB14BD  1289</span><br><span class="s">1638  HFB14BE  1290</span><br><span class="s">1639  HFB14BF  1291</span><br><span class="s">1640  HFB14BG  1292</span><br><span class="s">1641  HFB14BH  1293</span><br><span class="s">1642  HFB16A   1294-1295</span><br><span class="s">1643  HFB16B   1296-1297</span><br><span class="s">1644  HFB17    1298</span><br><span class="s">1645  HFC1     1299</span><br><span class="s">1646  HFC2S    1300</span><br><span class="s">1647  HFC3S    1301</span><br><span class="s">1648  HFC4S    1302</span><br><span class="s">1649  HFC5S    1303</span><br><span class="s">1650  HFC6A    1304</span><br><span class="s">1651  HFC6A1   1305</span><br><span class="s">1652  HFC6B    1306</span><br><span class="s">1653  HFC6B1   1307</span><br><span class="s">1654  HFC6C    1308</span><br><span class="s">1655  HFC6C1   1309</span><br><span class="s">1656  HFC6D    1310</span><br><span class="s">1657  HFC6D1   1311</span><br><span class="s">1658  HFC6E    1312</span><br><span class="s">1659  HFC6E1   1313</span><br><span class="s">1660  HFC7S    1314</span><br><span class="s">1661  HFC8S    1315</span><br><span class="s">1662  HFC9     1316</span><br><span class="s">1663  HFC10    1317</span><br><span class="s">1664  HFC11    1318</span><br><span class="s">1665  HFD1     1319</span><br><span class="s">1666  HFD2     1320</span><br><span class="s">1667  HFD3     1321</span><br><span class="s">1668  HFD4     1322</span><br><span class="s">1669  HFD5     1323</span><br><span class="s">1670  HFD9R    1324-1325</span><br><span class="s">1671  HFD10R   1326-1327</span><br><span class="s">1672  HFD12    1328-1329</span><br><span class="s">1673  HFE1     1330</span><br><span class="s">1674  HFE2     1331-1332</span><br><span class="s">1675  HFE3     1333-1335</span><br><span class="s">1676  HFE4     1336</span><br><span class="s">1677  HFE5     1337</span><br><span class="s">1678  HFE6     1338</span><br><span class="s">1679  HFE7     1339</span><br><span class="s">1680  HFE8A    1340</span><br><span class="s">1681  HFE8B    1341</span><br><span class="s">1682  HFE8C    1342</span><br><span class="s">1683  HFE8D    1343</span><br><span class="s">1684  HFE8E    1344</span><br><span class="s">1685  HFE9     1345</span><br><span class="s">1686  HFE10    1346</span><br><span class="s">1687  HFE11    1347</span><br><span class="s">1688  HFE12    1348-1349</span><br><span class="s">1689  HFE13    1350</span><br><span class="s">1690  HFE14    1351</span><br><span class="s">1691  HFE15    1352</span><br><span class="s">1692  HFE16    1353</span><br><span class="s">1693  HFE17    1354</span><br><span class="s">1694  HFE18    1355</span><br><span class="s">1695  HFF1     1356</span><br><span class="s">1696  HFF2R    1357-1358</span><br><span class="s">1697  HFF3A    1359-1361</span><br><span class="s">1698  HFF3B    1362-1364</span><br><span class="s">1699  HFF3C    1365-1367</span><br><span class="s">1700  HFF3D    1368-1370</span><br><span class="s">1701  HFF3E    1371-1373</span><br><span class="s">1702  HFF3F    1374-1376</span><br><span class="s">1703  HFF4     1377</span><br><span class="s">1704  HFF5     1378-1379</span><br><span class="s">1705  HFF6A    1380</span><br><span class="s">1706  HFF6B    1381</span><br><span class="s">1707  HFF6C    1382</span><br><span class="s">1708  HFF6D    1383</span><br><span class="s">1709  HFF7     1384</span><br><span class="s">1710  HFF8     1385</span><br><span class="s">1711  HFF9     1386</span><br><span class="s">1712  HFF10    1387</span><br><span class="s">1713  HFF11    1388</span><br><span class="s">1714  HFF12A   1389</span><br><span class="s">1715  HFF12B   1390</span><br><span class="s">1716  HFF13A   1391</span><br><span class="s">1717  HFF13B   1392</span><br><span class="s">1718  HFF13DA  1393</span><br><span class="s">1719  HFF13DB  1394-1395</span><br><span class="s">1720  HFF13E   1396</span><br><span class="s">1721  HFF14A   1397</span><br><span class="s">1722  HFF14B   1398</span><br><span class="s">1723  HFF14D   1399</span><br><span class="s">1724  HFF15A   1400</span><br><span class="s">1725  HFF15B   1401</span><br><span class="s">1726  HFF16A   1402</span><br><span class="s">1727  HFF16B   1403</span><br><span class="s">1728  HFF16D   1404</span><br><span class="s">1729  HFF16E   1405</span><br><span class="s">1730  HFF17A   1406</span><br><span class="s">1731  HFF17B   1407</span><br><span class="s">1732  HFF18    1408</span><br><span class="s">1733  HFF19R   1409-1410</span><br><span class="s">1734  HFF20R   1411-1412</span><br><span class="s">1735  HFHSEQN  1413-1417</span><br><span class="s">1736  HFHAGER  1418-1420</span><br><span class="s">1737  HFHSEX   1421</span><br><span class="s">1738  HFHFIPCR 1422</span><br><span class="s">1739  HFHEDUCR 1423-1424</span><br><span class="s">1740  HFHEMPL  1425</span><br><span class="s">1741  HFHMRST  1426-1427</span><br><span class="s">1742  HFHMLSV  1428</span><br><span class="s">1743  HFRELR   1429-1430</span><br><span class="s">1744  HFAGERR  1431-1433</span><br><span class="s">1745  HAVERS   1434</span><br><span class="s">1746  HAINTVR  1435-1438</span><br><span class="s">1747  HALANG   1439</span><br><span class="s">1748  HAA1     1440</span><br><span class="s">1749  HAA2     1441</span><br><span class="s">1750  HAA2A    1442-1443</span><br><span class="s">1751  HAA3     1444</span><br><span class="s">1752  HAA4     1445</span><br><span class="s">1753  HAA5     1446</span><br><span class="s">1754  HAA6A    1447</span><br><span class="s">1755  HAA6B    1448</span><br><span class="s">1756  HAA6C    1449</span><br><span class="s">1757  HAA6D    1450</span><br><span class="s">1758  HAB1     1451</span><br><span class="s">1759  HAB2     1452</span><br><span class="s">1760  HAB3     1453</span><br><span class="s">1761  HAB4     1454-1455</span><br><span class="s">1762  HAB5     1456-1458</span><br><span class="s">1763  HAB6S    1459-1462</span><br><span class="s">1764  HAB7     1463-1464</span><br><span class="s">1765  HAC1A    1465</span><br><span class="s">1766  HAC1B    1466</span><br><span class="s">1767  HAC1C    1467</span><br><span class="s">1768  HAC1D    1468</span><br><span class="s">1769  HAC1E    1469</span><br><span class="s">1770  HAC1F    1470</span><br><span class="s">1771  HAC1G    1471</span><br><span class="s">1772  HAC1H    1472</span><br><span class="s">1773  HAC1I    1473</span><br><span class="s">1774  HAC1J    1474</span><br><span class="s">1775  HAC1K    1475</span><br><span class="s">1776  HAC1L    1476</span><br><span class="s">1777  HAC1M    1477</span><br><span class="s">1778  HAC1N    1478</span><br><span class="s">1779  HAC1O    1479</span><br><span class="s">1780  HAC2E    1480</span><br><span class="s">1781  HAC2F    1481</span><br><span class="s">1782  HAC2H    1482</span><br><span class="s">1783  HAC2J    1483</span><br><span class="s">1784  HAC2K    1484</span><br><span class="s">1785  HAC3AR   1485-1487</span><br><span class="s">1786  HAC3CR   1488-1490</span><br><span class="s">1787  HAC3DR   1491-1493</span><br><span class="s">1788  HAC3ER   1494-1496</span><br><span class="s">1789  HAC3FR   1497-1499</span><br><span class="s">1790  HAC3GR   1500-1502</span><br><span class="s">1791  HAC3HR   1503-1505</span><br><span class="s">1792  HAC3IR   1506-1508</span><br><span class="s">1793  HAC3JR   1509-1511</span><br><span class="s">1794  HAC3KR   1512-1514</span><br><span class="s">1795  HAC3LR   1515-1517</span><br><span class="s">1796  HAC3MR   1518-1520</span><br><span class="s">1797  HAC3NR   1521-1523</span><br><span class="s">1798  HAC3OR   1524-1526</span><br><span class="s">1799  HAC3OS   1527-1528</span><br><span class="s">1800  HAC4A    1529</span><br><span class="s">1801  HAC4B    1530</span><br><span class="s">1802  HAC5A1   1531</span><br><span class="s">1803  HAC5A2   1532</span><br><span class="s">1804  HAC5A3   1533</span><br><span class="s">1805  HAC5A4   1534</span><br><span class="s">1806  HAC5A5   1535</span><br><span class="s">1807  HAC5A6   1536</span><br><span class="s">1808  HAC5A7   1537</span><br><span class="s">1809  HAC5A8   1538</span><br><span class="s">1810  HAC5A9   1539</span><br><span class="s">1811  HAC5A10  1540</span><br><span class="s">1812  HAC5A11  1541</span><br><span class="s">1813  HAC5A12  1542</span><br><span class="s">1814  HAC5B1   1543</span><br><span class="s">1815  HAC5B2   1544</span><br><span class="s">1816  HAC5B3   1545</span><br><span class="s">1817  HAC5B4   1546</span><br><span class="s">1818  HAC5B5   1547</span><br><span class="s">1819  HAC5B6   1548</span><br><span class="s">1820  HAC5B7   1549</span><br><span class="s">1821  HAC5B8   1550</span><br><span class="s">1822  HAC5B9   1551</span><br><span class="s">1823  HAC5B10  1552</span><br><span class="s">1824  HAC5B11  1553</span><br><span class="s">1825  HAC5B12  1554</span><br><span class="s">1826  HAC6     1555</span><br><span class="s">1827  HAC7     1556</span><br><span class="s">1828  HAC7A    1557</span><br><span class="s">1829  HAC8     1558-1560</span><br><span class="s">1830  HAD1     1561</span><br><span class="s">1831  HAD2     1562</span><br><span class="s">1832  HAD3     1563</span><br><span class="s">1833  HAD4     1564</span><br><span class="s">1834  HAD5R    1565-1567</span><br><span class="s">1835  HAD6     1568</span><br><span class="s">1836  HAD7S    1569-1570</span><br><span class="s">1837  HAD8     1571-1573</span><br><span class="s">1838  HAD9S    1574-1577</span><br><span class="s">1839  HAD10    1578</span><br><span class="s">1840  HAD11AS  1579-1581</span><br><span class="s">1841  HAD11BS  1582-1584</span><br><span class="s">1842  HAD12S   1585-1589</span><br><span class="s">1843  HAD13S   1590-1594</span><br><span class="s">1844  HAD14    1595</span><br><span class="s">1845  HAD15    1596</span><br><span class="s">1846  HAE1     1597</span><br><span class="s">1847  HAE2     1598</span><br><span class="s">1848  HAE3     1599</span><br><span class="s">1849  HAE4A    1600</span><br><span class="s">1850  HAE4B    1601</span><br><span class="s">1851  HAE4C    1602</span><br><span class="s">1852  HAE4D    1603</span><br><span class="s">1853  HAE4D1   1604</span><br><span class="s">1854  HAE4D2   1605</span><br><span class="s">1855  HAE4D3   1606</span><br><span class="s">1856  HAE4D4   1607</span><br><span class="s">1857  HAE4D5   1608</span><br><span class="s">1858  HAE4D6   1609</span><br><span class="s">1859  HAE5A    1610</span><br><span class="s">1860  HAE5B    1611</span><br><span class="s">1861  HAE5C    1612</span><br><span class="s">1862  HAE5D1   1613</span><br><span class="s">1863  HAE5D2   1614</span><br><span class="s">1864  HAE5D3   1615</span><br><span class="s">1865  HAE5D4   1616</span><br><span class="s">1866  HAE5D5   1617</span><br><span class="s">1867  HAE5D6   1618</span><br><span class="s">1868  HAE6     1619</span><br><span class="s">1869  HAE7     1620</span><br><span class="s">1870  HAE8A    1621</span><br><span class="s">1871  HAE8B    1622</span><br><span class="s">1872  HAE8C    1623</span><br><span class="s">1873  HAE8D    1624</span><br><span class="s">1874  HAE9A    1625</span><br><span class="s">1875  HAE9B    1626</span><br><span class="s">1876  HAE9C    1627</span><br><span class="s">1877  HAE9D    1628</span><br><span class="s">1878  HAE10    1629</span><br><span class="s">1879  HAE11A   1630</span><br><span class="s">1880  HAE11B   1631</span><br><span class="s">1881  HAE11C   1632</span><br><span class="s">1882  HAF1     1633</span><br><span class="s">1883  HAF2     1634</span><br><span class="s">1884  HAF3     1635</span><br><span class="s">1885  HAF4     1636</span><br><span class="s">1886  HAF5     1637</span><br><span class="s">1887  HAF6     1638</span><br><span class="s">1888  HAF7A    1639</span><br><span class="s">1889  HAF7B    1640</span><br><span class="s">1890  HAF7C    1641</span><br><span class="s">1891  HAF7D    1642</span><br><span class="s">1892  HAF7E    1643</span><br><span class="s">1893  HAF7F    1644</span><br><span class="s">1894  HAF7G    1645</span><br><span class="s">1895  HAF7H    1646</span><br><span class="s">1896  HAF9     1647</span><br><span class="s">1897  HAF10    1648</span><br><span class="s">1898  HAF11    1649-1650</span><br><span class="s">1899  HAF12R   1651-1653</span><br><span class="s">1900  HAF13R   1654-1656</span><br><span class="s">1901  HAF14    1657</span><br><span class="s">1902  HAF15    1658</span><br><span class="s">1903  HAF16    1659</span><br><span class="s">1904  HAF17    1660</span><br><span class="s">1905  HAF18    1661</span><br><span class="s">1906  HAF19    1662</span><br><span class="s">1907  HAF20    1663</span><br><span class="s">1908  HAF21    1664</span><br><span class="s">1909  HAF22    1665</span><br><span class="s">1910  HAF23    1666</span><br><span class="s">1911  HAF24    1667</span><br><span class="s">1912  HAF25    1668</span><br><span class="s">1913  HAF26    1669</span><br><span class="s">1914  HAF27    1670</span><br><span class="s">1915  HAG1     1671</span><br><span class="s">1916  HAG2     1672</span><br><span class="s">1917  HAG3     1673</span><br><span class="s">1918  HAG4A    1674</span><br><span class="s">1919  HAG4B    1675</span><br><span class="s">1920  HAG4C    1676</span><br><span class="s">1921  HAG5A    1677</span><br><span class="s">1922  HAG5B    1678</span><br><span class="s">1923  HAG5C    1679</span><br><span class="s">1924  HAG6A    1680-1681</span><br><span class="s">1925  HAG6B    1682-1683</span><br><span class="s">1926  HAG6C    1684-1685</span><br><span class="s">1927  HAG7     1686</span><br><span class="s">1928  HAG8A    1687</span><br><span class="s">1929  HAG8B    1688</span><br><span class="s">1930  HAG8C    1689</span><br><span class="s">1931  HAG8D    1690</span><br><span class="s">1932  HAG8E    1691</span><br><span class="s">1933  HAG8F    1692</span><br><span class="s">1934  HAG9AR   1693-1695</span><br><span class="s">1935  HAG9BR   1696-1698</span><br><span class="s">1936  HAG9CR   1699-1701</span><br><span class="s">1937  HAG9DR   1702-1704</span><br><span class="s">1938  HAG9ER   1705-1707</span><br><span class="s">1939  HAG9FR   1708-1710</span><br><span class="s">1940  HAG10A   1711</span><br><span class="s">1941  HAG10B   1712</span><br><span class="s">1942  HAG10C   1713</span><br><span class="s">1943  HAG10D   1714</span><br><span class="s">1944  HAG10E   1715</span><br><span class="s">1945  HAG10F   1716</span><br><span class="s">1946  HAG11    1717</span><br><span class="s">1947  HAG12    1718</span><br><span class="s">1948  HAG13    1719</span><br><span class="s">1949  HAG14    1720-1721</span><br><span class="s">1950  HAG15    1722</span><br><span class="s">1951  HAG16    1723</span><br><span class="s">1952  HAG17A   1724</span><br><span class="s">1953  HAG17B   1725</span><br><span class="s">1954  HAG17C   1726</span><br><span class="s">1955  HAG17D   1727</span><br><span class="s">1956  HAG17E   1728</span><br><span class="s">1957  HAG17F   1729</span><br><span class="s">1958  HAG17G   1730</span><br><span class="s">1959  HAG17H   1731</span><br><span class="s">1960  HAG17I   1732</span><br><span class="s">1961  HAG17J   1733</span><br><span class="s">1962  HAG17K   1734</span><br><span class="s">1963  HAG17L   1735</span><br><span class="s">1964  HAG17M   1736</span><br><span class="s">1965  HAG17N   1737</span><br><span class="s">1966  HAG17O   1738</span><br><span class="s">1967  HAG17FF  1739</span><br><span class="s">1968  HAG17P   1740</span><br><span class="s">1969  HAG17Q   1741</span><br><span class="s">1970  HAG17R   1742</span><br><span class="s">1971  HAG17S   1743</span><br><span class="s">1972  HAG17T   1744</span><br><span class="s">1973  HAG17U   1745</span><br><span class="s">1974  HAG17V   1746</span><br><span class="s">1975  HAG17W   1747</span><br><span class="s">1976  HAG17X   1748</span><br><span class="s">1977  HAG17Y   1749</span><br><span class="s">1978  HAG17Z   1750</span><br><span class="s">1979  HAG17AA  1751</span><br><span class="s">1980  HAG17BB  1752</span><br><span class="s">1981  HAG17CC  1753</span><br><span class="s">1982  HAG17DD  1754</span><br><span class="s">1983  HAG17EE  1755</span><br><span class="s">1984  HAG18    1756</span><br><span class="s">1985  HAG19A   1757</span><br><span class="s">1986  HAG19B   1758</span><br><span class="s">1987  HAG19C   1759</span><br><span class="s">1988  HAG19D   1760</span><br><span class="s">1989  HAG19E   1761</span><br><span class="s">1990  HAG19F   1762</span><br><span class="s">1991  HAG19G   1763</span><br><span class="s">1992  HAG19H   1764</span><br><span class="s">1993  HAG19I   1765</span><br><span class="s">1994  HAG19J   1766</span><br><span class="s">1995  HAG19K   1767</span><br><span class="s">1996  HAG19L   1768</span><br><span class="s">1997  HAG19M   1769</span><br><span class="s">1998  HAG19N   1770</span><br><span class="s">1999  HAG19O   1771</span><br><span class="s">2000  HAG19FF  1772</span><br><span class="s">2001  HAG19P   1773</span><br><span class="s">2002  HAG19Q   1774</span><br><span class="s">2003  HAG19R   1775</span><br><span class="s">2004  HAG19S   1776</span><br><span class="s">2005  HAG19T   1777</span><br><span class="s">2006  HAG19U   1778</span><br><span class="s">2007  HAG19V   1779</span><br><span class="s">2008  HAG19W   1780</span><br><span class="s">2009  HAG19X   1781</span><br><span class="s">2010  HAG19Y   1782</span><br><span class="s">2011  HAG19Z   1783</span><br><span class="s">2012  HAG19AA  1784</span><br><span class="s">2013  HAG19BB  1785</span><br><span class="s">2014  HAG19CC  1786</span><br><span class="s">2015  HAG19DD  1787</span><br><span class="s">2016  HAG19EE  1788</span><br><span class="s">2017  HAG20    1789</span><br><span class="s">2018  HAG21    1790</span><br><span class="s">2019  HAG22    1791</span><br><span class="s">2020  HAG23    1792</span><br><span class="s">2021  HAG24    1793</span><br><span class="s">2022  HAG25    1794</span><br><span class="s">2023  HAG26    1795</span><br><span class="s">2024  HAG27    1796</span><br><span class="s">2025  HAG28    1797</span><br><span class="s">2026  HAG29    1798</span><br><span class="s">2027  HAG30    1799</span><br><span class="s">2028  HAG31    1800</span><br><span class="s">2029  HAG32    1801</span><br><span class="s">2030  HAG33    1802</span><br><span class="s">2031  HAG34    1803</span><br><span class="s">2032  HAH1     1804</span><br><span class="s">2033  HAH2     1805</span><br><span class="s">2034  HAH3     1806</span><br><span class="s">2035  HAH4     1807</span><br><span class="s">2036  HAH5     1808</span><br><span class="s">2037  HAH6     1809</span><br><span class="s">2038  HAH7     1810</span><br><span class="s">2039  HAH8     1811</span><br><span class="s">2040  HAH9     1812</span><br><span class="s">2041  HAH10    1813</span><br><span class="s">2042  HAH11    1814</span><br><span class="s">2043  HAH12    1815</span><br><span class="s">2044  HAH13    1816</span><br><span class="s">2045  HAH14    1817</span><br><span class="s">2046  HAH15    1818</span><br><span class="s">2047  HAH16    1819</span><br><span class="s">2048  HAH17    1820</span><br><span class="s">2049  HAJ0     1821</span><br><span class="s">2050  HAJ1     1822</span><br><span class="s">2051  HAJ2A    1823</span><br><span class="s">2052  HAJ2B    1824</span><br><span class="s">2053  HAJ2C    1825</span><br><span class="s">2054  HAJ3S    1826-1831</span><br><span class="s">2055  HAJ4     1832-1834</span><br><span class="s">2056  HAJ5     1835</span><br><span class="s">2057  HAJ6     1836</span><br><span class="s">2058  HAJ7     1837</span><br><span class="s">2059  HAJ8     1838-1839</span><br><span class="s">2060  HAJ9     1840</span><br><span class="s">2061  HAJ10    1841-1842</span><br><span class="s">2062  HAJ11    1843</span><br><span class="s">2063  HAJ12    1844</span><br><span class="s">2064  HAJ13    1845-1847</span><br><span class="s">2065  HAJ14    1848</span><br><span class="s">2066  HAJ15    1849</span><br><span class="s">2067  HAJ16    1850</span><br><span class="s">2068  HAJ17    1851</span><br><span class="s">2069  HAJ18R   1852-1854</span><br><span class="s">2070  HAK1     1855</span><br><span class="s">2071  HAK2     1856-1857</span><br><span class="s">2072  HAK3A    1858</span><br><span class="s">2073  HAK3A1   1859-1861</span><br><span class="s">2074  HAK3B    1862</span><br><span class="s">2075  HAK3B1R  1863-1865</span><br><span class="s">2076  HAK3C    1866</span><br><span class="s">2077  HAK3C1R  1867-1869</span><br><span class="s">2078  HAK4     1870</span><br><span class="s">2079  HAK5     1871-1872</span><br><span class="s">2080  HAK6     1873</span><br><span class="s">2081  HAK7     1874</span><br><span class="s">2082  HAK8     1875-1877</span><br><span class="s">2083  HAK9     1878</span><br><span class="s">2084  HAK10    1879</span><br><span class="s">2085  HAK11    1880</span><br><span class="s">2086  HAK12    1881</span><br><span class="s">2087  HAK13    1882</span><br><span class="s">2088  HAK14    1883</span><br><span class="s">2089  HAL1     1884</span><br><span class="s">2090  HAL2     1885-1887</span><br><span class="s">2091  HAL3     1888</span><br><span class="s">2092  HAL4     1889-1891</span><br><span class="s">2093  HAL5     1892</span><br><span class="s">2094  HAL6     1893</span><br><span class="s">2095  HAL7     1894-1896</span><br><span class="s">2096  HAL8     1897-1899</span><br><span class="s">2097  HAL9     1900-1902</span><br><span class="s">2098  HAL10    1903</span><br><span class="s">2099  HAL11A   1904</span><br><span class="s">2100  HAL11B   1905</span><br><span class="s">2101  HAL12    1906-1908</span><br><span class="s">2102  HAL13    1909</span><br><span class="s">2103  HAL14A   1910</span><br><span class="s">2104  HAL14B   1911</span><br><span class="s">2105  HAL14C   1912</span><br><span class="s">2106  HAL14D   1913</span><br><span class="s">2107  HAL14E   1914</span><br><span class="s">2108  HAL15A   1915</span><br><span class="s">2109  HAL15B   1916</span><br><span class="s">2110  HAL15C   1917</span><br><span class="s">2111  HAL15D   1918</span><br><span class="s">2112  HAL15E   1919</span><br><span class="s">2113  HAL15F   1920</span><br><span class="s">2114  HAL15G   1921</span><br><span class="s">2115  HAL15H   1922</span><br><span class="s">2116  HAL15I   1923</span><br><span class="s">2117  HAL15J   1924</span><br><span class="s">2118  HAL15K   1925</span><br><span class="s">2119  HAL15L   1926</span><br><span class="s">2120  HAL15M   1927</span><br><span class="s">2121  HAL16A   1928</span><br><span class="s">2122  HAL16B   1929</span><br><span class="s">2123  HAL17    1930</span><br><span class="s">2124  HAL18    1931</span><br><span class="s">2125  HAL19A   1932</span><br><span class="s">2126  HAL19B   1933</span><br><span class="s">2127  HAL19C   1934</span><br><span class="s">2128  HAL20A   1935-1937</span><br><span class="s">2129  HAL20B   1938-1940</span><br><span class="s">2130  HAL20C   1941-1943</span><br><span class="s">2131  HAM1     1944</span><br><span class="s">2132  HAM2     1945</span><br><span class="s">2133  HAM3     1946</span><br><span class="s">2134  HAM4     1947</span><br><span class="s">2135  HAM5S    1948-1950</span><br><span class="s">2136  HAM6S    1951-1953</span><br><span class="s">2137  HAM7     1954</span><br><span class="s">2138  HAM8S    1955-1957</span><br><span class="s">2139  HAM9S    1958-1960</span><br><span class="s">2140  HAM10S   1961-1963</span><br><span class="s">2141  HAM11    1964</span><br><span class="s">2142  HAM12    1965</span><br><span class="s">2143  HAM13    1966</span><br><span class="s">2144  HAM14    1967</span><br><span class="s">2145  HAM15A   1968</span><br><span class="s">2146  HAM15B   1969</span><br><span class="s">2147  HAM15C   1970</span><br><span class="s">2148  HAM15D   1971</span><br><span class="s">2149  HAM15E   1972</span><br><span class="s">2150  HAM15F   1973</span><br><span class="s">2151  HAM15G   1974</span><br><span class="s">2152  HAM15H   1975</span><br><span class="s">2153  HAM15K   1976</span><br><span class="s">2154  HAM15L   1977</span><br><span class="s">2155  HAM15M   1978</span><br><span class="s">2156  HAM15N   1979</span><br><span class="s">2157  HAM15O   1980</span><br><span class="s">2158  HAM15P   1981</span><br><span class="s">2159  HAM15Q   1982</span><br><span class="s">2160  HAM15R   1983</span><br><span class="s">2161  HAM15S   1984</span><br><span class="s">2162  HAM15T   1985</span><br><span class="s">2163  HAM15U   1986</span><br><span class="s">2164  HAM15V   1987</span><br><span class="s">2165  HAM15W   1988</span><br><span class="s">2166  HAM15X   1989</span><br><span class="s">2167  HAM15Y   1990</span><br><span class="s">2168  HAM15Z   1991</span><br><span class="s">2169  HAN1AS   1992-1994</span><br><span class="s">2170  HAN1BS   1995-1998</span><br><span class="s">2171  HAN1C    1999</span><br><span class="s">2172  HAN1D    2000-2001</span><br><span class="s">2173  HAN1ES   2002-2004</span><br><span class="s">2174  HAN1FS   2005-2007</span><br><span class="s">2175  HAN1GS   2008-2010</span><br><span class="s">2176  HAN1HS   2011-2013</span><br><span class="s">2177  HAN1IS   2014-2016</span><br><span class="s">2178  HAN2AS   2017-2019</span><br><span class="s">2179  HAN2BS   2020-2022</span><br><span class="s">2180  HAN2CS   2023-2026</span><br><span class="s">2181  HAN2DS   2027-2029</span><br><span class="s">2182  HAN2ES   2030-2032</span><br><span class="s">2183  HAN2FS   2033-2035</span><br><span class="s">2184  HAN2GS   2036-2038</span><br><span class="s">2185  HAN2HS   2039-2041</span><br><span class="s">2186  HAN2IS   2042-2044</span><br><span class="s">2187  HAN2JS   2045-2047</span><br><span class="s">2188  HAN3AS   2048-2050</span><br><span class="s">2189  HAN3BS   2051-2053</span><br><span class="s">2190  HAN3CS   2054-2056</span><br><span class="s">2191  HAN3DS   2057-2059</span><br><span class="s">2192  HAN3ES   2060-2062</span><br><span class="s">2193  HAN3FS   2063-2065</span><br><span class="s">2194  HAN4AS   2066-2068</span><br><span class="s">2195  HAN4BS   2069-2071</span><br><span class="s">2196  HAN4CS   2072-2074</span><br><span class="s">2197  HAN4DS   2075-2077</span><br><span class="s">2198  HAN4ES   2078-2080</span><br><span class="s">2199  HAN4FS   2081-2083</span><br><span class="s">2200  HAN4GS   2084-2086</span><br><span class="s">2201  HAN4HS   2087-2089</span><br><span class="s">2202  HAN4IS   2090-2092</span><br><span class="s">2203  HAN4JS   2093-2095</span><br><span class="s">2204  HAN4KS   2096-2098</span><br><span class="s">2205  HAN4LS   2099-2101</span><br><span class="s">2206  HAN5AS   2102-2104</span><br><span class="s">2207  HAN5BS   2105-2107</span><br><span class="s">2208  HAN5CS   2108-2110</span><br><span class="s">2209  HAN5DS   2111-2113</span><br><span class="s">2210  HAN5ES   2114-2116</span><br><span class="s">2211  HAN5FS   2117-2119</span><br><span class="s">2212  HAN5GS   2120-2122</span><br><span class="s">2213  HAN5HS   2123-2125</span><br><span class="s">2214  HAN5IS   2126-2128</span><br><span class="s">2215  HAN5JS   2129-2131</span><br><span class="s">2216  HAN5KS   2132-2134</span><br><span class="s">2217  HAN5LS   2135-2137</span><br><span class="s">2218  HAN6AS   2138-2141</span><br><span class="s">2219  HAN6BS   2142-2144</span><br><span class="s">2220  HAN6CS   2145-2148</span><br><span class="s">2221  HAN6DS   2149-2151</span><br><span class="s">2222  HAN6ES   2152-2155</span><br><span class="s">2223  HAN6FS   2156-2159</span><br><span class="s">2224  HAN6GS   2160-2163</span><br><span class="s">2225  HAN6HS   2164-2166</span><br><span class="s">2226  HAN6IS   2167-2169</span><br><span class="s">2227  HAN6JS   2170-2172</span><br><span class="s">2228  HAN7AS   2173-2175</span><br><span class="s">2229  HAN7BS   2176-2178</span><br><span class="s">2230  HAN7CS   2179-2181</span><br><span class="s">2231  HAN8     2182</span><br><span class="s">2232  HAN8ACD  2183-2184</span><br><span class="s">2233  HAN8AS   2185-2188</span><br><span class="s">2234  HAN8BCD  2189-2190</span><br><span class="s">2235  HAN8BS   2191-2194</span><br><span class="s">2236  HAN8CCD  2195-2196</span><br><span class="s">2237  HAN8CS   2197-2199</span><br><span class="s">2238  HAN8DCD  2200-2201</span><br><span class="s">2239  HAN8DS   2202-2204</span><br><span class="s">2240  HAN8ECD  2205-2206</span><br><span class="s">2241  HAN8ES   2207-2209</span><br><span class="s">2242  HAN8FCD  2210-2211</span><br><span class="s">2243  HAN8FS   2212-2214</span><br><span class="s">2244  HAN9     2215</span><br><span class="s">2245  HAN10A   2216</span><br><span class="s">2246  HAN10B   2217</span><br><span class="s">2247  HAN10C   2218</span><br><span class="s">2248  HAN10D   2219</span><br><span class="s">2249  HAN10E   2220</span><br><span class="s">2250  HAP1     2221</span><br><span class="s">2251  HAP1A    2222</span><br><span class="s">2252  HAP2     2223</span><br><span class="s">2253  HAP3     2224</span><br><span class="s">2254  HAP4     2225</span><br><span class="s">2255  HAP5     2226</span><br><span class="s">2256  HAP6     2227</span><br><span class="s">2257  HAP7     2228</span><br><span class="s">2258  HAP8     2229</span><br><span class="s">2259  HAP9     2230</span><br><span class="s">2260  HAP10    2231</span><br><span class="s">2261  HAP10A   2232</span><br><span class="s">2262  HAP11    2233</span><br><span class="s">2263  HAP12    2234</span><br><span class="s">2264  HAP13    2235</span><br><span class="s">2265  HAP14    2236</span><br><span class="s">2266  HAP15    2237</span><br><span class="s">2267  HAP16    2238</span><br><span class="s">2268  HAP17A1  2239</span><br><span class="s">2269  HAP17A2  2240</span><br><span class="s">2270  HAP17A3  2241</span><br><span class="s">2271  HAP17B   2242</span><br><span class="s">2272  HAP18A   2243-2244</span><br><span class="s">2273  HAP18B   2245-2246</span><br><span class="s">2274  HAP18C   2247-2248</span><br><span class="s">2275  HAP18D   2249-2250</span><br><span class="s">2276  HAP18E   2251-2252</span><br><span class="s">2277  HAP19A   2253</span><br><span class="s">2278  HAP19B   2254</span><br><span class="s">2279  HAP19C   2255</span><br><span class="s">2280  HAQ1     2256-2257</span><br><span class="s">2281  HAQ2A    2258</span><br><span class="s">2282  HAQ2B    2259</span><br><span class="s">2283  HAQ2C    2260</span><br><span class="s">2284  HAQ2D    2261</span><br><span class="s">2285  HAQ2E    2262</span><br><span class="s">2286  HAQ2F    2263</span><br><span class="s">2287  HAQ2G    2264</span><br><span class="s">2288  HAQ2I    2265</span><br><span class="s">2289  HAQ2K    2266</span><br><span class="s">2290  HAQ2L    2267</span><br><span class="s">2291  HAQ3S    2268-2272</span><br><span class="s">2292  HAQ4     2273-2274</span><br><span class="s">2293  HAQ5     2275</span><br><span class="s">2294  HAQ6     2276</span><br><span class="s">2295  HAQ7     2277</span><br><span class="s">2296  HAQ8     2278</span><br><span class="s">2297  HAQ9     2279-2280</span><br><span class="s">2298  HAR1     2281</span><br><span class="s">2299  HAR2     2282-2284</span><br><span class="s">2300  HAR3     2285</span><br><span class="s">2301  HAR4S    2286-2288</span><br><span class="s">2302  HAR5     2289-2291</span><br><span class="s">2303  HAR6     2292</span><br><span class="s">2304  HAR7S    2293-2296</span><br><span class="s">2305  HAR8     2297-2299</span><br><span class="s">2306  HAR9     2300</span><br><span class="s">2307  HAR10    2301-2303</span><br><span class="s">2308  HAR11R   2304-2306</span><br><span class="s">2309  HAR12S   2307-2309</span><br><span class="s">2310  HAR13    2310</span><br><span class="s">2311  HAR14    2311</span><br><span class="s">2312  HAR15    2312-2314</span><br><span class="s">2313  HAR16    2315</span><br><span class="s">2314  HAR17    2316</span><br><span class="s">2315  HAR18AS  2317-2319</span><br><span class="s">2316  HAR18BS  2320-2322</span><br><span class="s">2317  HAR19A   2323</span><br><span class="s">2318  HAR19B   2324</span><br><span class="s">2319  HAR20R   2325-2327</span><br><span class="s">2320  HAR21    2328</span><br><span class="s">2321  HAR22    2329</span><br><span class="s">2322  HAR23    2330</span><br><span class="s">2323  HAR24    2331</span><br><span class="s">2324  HAR25    2332-2333</span><br><span class="s">2325  HAR26    2334</span><br><span class="s">2326  HAR27    2335</span><br><span class="s">2327  HAR28    2336-2337</span><br><span class="s">2328  HAS1     2338</span><br><span class="s">2329  HAS2     2339</span><br><span class="s">2330  HAS3     2340</span><br><span class="s">2331  HAS4     2341</span><br><span class="s">2332  HAS5     2342</span><br><span class="s">2333  HAS8R    2343-2344</span><br><span class="s">2334  HAS9R    2345-2346</span><br><span class="s">2335  HAS11    2347-2348</span><br><span class="s">2336  HAS12S   2349-2352</span><br><span class="s">2337  HAS13    2353</span><br><span class="s">2338  HAS14    2354-2355</span><br><span class="s">2339  HAS15    2356</span><br><span class="s">2340  HAS16A   2357</span><br><span class="s">2341  HAS16B   2358</span><br><span class="s">2342  HAS16C   2359</span><br><span class="s">2343  HAS16D   2360</span><br><span class="s">2344  HAS17    2361</span><br><span class="s">2345  HAS17R   2362-2363</span><br><span class="s">2346  HAS18    2364-2366</span><br><span class="s">2347  HAS19    2367</span><br><span class="s">2348  HAS19R   2368-2369</span><br><span class="s">2349  HAS21    2370</span><br><span class="s">2350  HAS22    2371-2372</span><br><span class="s">2351  HAS23    2373</span><br><span class="s">2352  HAS24    2374</span><br><span class="s">2353  HAS25    2375</span><br><span class="s">2354  HAS26    2376</span><br><span class="s">2355  HAS27A   2377</span><br><span class="s">2356  HAS27B   2378</span><br><span class="s">2357  HAS27C   2379</span><br><span class="s">2358  HAS27D   2380</span><br><span class="s">2359  HAS27E   2381</span><br><span class="s">2360  HAS27F   2382</span><br><span class="s">2361  HAS27G   2383</span><br><span class="s">2362  HAS27H   2384</span><br><span class="s">2363  HAS27HCD 2385</span><br><span class="s">2364  HAS28    2386</span><br><span class="s">2365  HAS29    2387-2388</span><br><span class="s">2366  HAT1S    2389-2392</span><br><span class="s">2367  HAT1MET  2393-2395</span><br><span class="s">2368  HAT2     2396</span><br><span class="s">2369  HAT2MET  2397</span><br><span class="s">2370  HAT3S    2398-2401</span><br><span class="s">2371  HAT4     2402</span><br><span class="s">2372  HAT4MET  2403</span><br><span class="s">2373  HAT5S    2404-2407</span><br><span class="s">2374  HAT6     2408</span><br><span class="s">2375  HAT6MET  2409</span><br><span class="s">2376  HAT7S    2410-2413</span><br><span class="s">2377  HAT8     2414</span><br><span class="s">2378  HAT8MET  2415</span><br><span class="s">2379  HAT9S    2416-2419</span><br><span class="s">2380  HAT10    2420</span><br><span class="s">2381  HAT10MET 2421-2423</span><br><span class="s">2382  HAT11S   2424-2427</span><br><span class="s">2383  HAT12    2428</span><br><span class="s">2384  HAT12MET 2429-2431</span><br><span class="s">2385  HAT13S   2432-2435</span><br><span class="s">2386  HAT14    2436</span><br><span class="s">2387  HAT14MET 2437</span><br><span class="s">2388  HAT15S   2438-2441</span><br><span class="s">2389  HAT16    2442</span><br><span class="s">2390  HAT16MET 2443</span><br><span class="s">2391  HAT17S   2444-2447</span><br><span class="s">2392  HAT18    2448</span><br><span class="s">2393  HAT19CD  2449-2453</span><br><span class="s">2394  HAT19MET 2454-2457</span><br><span class="s">2395  HAT20S   2458-2461</span><br><span class="s">2396  HAT21CD  2462-2466</span><br><span class="s">2397  HAT21MET 2467-2469</span><br><span class="s">2398  HAT22S   2470-2473</span><br><span class="s">2399  HAT23CD  2474-2478</span><br><span class="s">2400  HAT23MET 2479-2481</span><br><span class="s">2401  HAT24S   2482-2485</span><br><span class="s">2402  HAT25CD  2486-2490</span><br><span class="s">2403  HAT25MET 2491-2493</span><br><span class="s">2404  HAT26S   2494-2497</span><br><span class="s">2405  HAT27    2498</span><br><span class="s">2406  HAT28    2499</span><br><span class="s">2407  HAT29    2500</span><br><span class="s">2408  HAT30    2501</span><br><span class="s">2409  HAV1S    2502-2505</span><br><span class="s">2410  HAV2S    2506-2510</span><br><span class="s">2411  HAV3S    2511-2515</span><br><span class="s">2412  HAV4S    2516-2519</span><br><span class="s">2413  HAV5     2520</span><br><span class="s">2414  HAV6S    2521-2524</span><br><span class="s">2415  HAV7R    2525-2528</span><br><span class="s">2416  HAV8     2529-2530</span><br><span class="s">2417  HAV9     2531</span><br><span class="s">2418  HAV10R   2532</span><br><span class="s">2419  HAV11    2533-2534</span><br><span class="s">2420  HAV12R   2535</span><br><span class="s">2421  HAV13R   2536-2538</span><br><span class="s">2422  HAX1A    2539</span><br><span class="s">2423  HAX1B    2540</span><br><span class="s">2424  HAX1C    2541</span><br><span class="s">2425  HAX2A    2542-2543</span><br><span class="s">2426  HAX2B    2544-2545</span><br><span class="s">2427  HAX2C    2546-2547</span><br><span class="s">2428  HAX3CG   2548-2549</span><br><span class="s">2429  HAX3DG   2550-2551</span><br><span class="s">2430  HAX6SG   2552-2555</span><br><span class="s">2431  HAX8SG   2556-2559</span><br><span class="s">2432  HAX3CH   2560-2561</span><br><span class="s">2433  HAX3DH   2562-2563</span><br><span class="s">2434  HAX6SH   2564-2567</span><br><span class="s">2435  HAX8SH   2568-2571</span><br><span class="s">2436  HAX3CI   2572-2573</span><br><span class="s">2437  HAX3DI   2574-2575</span><br><span class="s">2438  HAX6SI   2576-2579</span><br><span class="s">2439  HAX8SI   2580-2583</span><br><span class="s">2440  HAX3CJ   2584-2585</span><br><span class="s">2441  HAX3DJ   2586-2587</span><br><span class="s">2442  HAX6SJ   2588-2591</span><br><span class="s">2443  HAX8SJ   2592-2595</span><br><span class="s">2444  HAX3CK   2596-2597</span><br><span class="s">2445  HAX3DK   2598-2599</span><br><span class="s">2446  HAX6SK   2600-2603</span><br><span class="s">2447  HAX8SK   2604-2607</span><br><span class="s">2448  HAX3CL   2608-2609</span><br><span class="s">2449  HAX3DL   2610-2611</span><br><span class="s">2450  HAX6SL   2612-2615</span><br><span class="s">2451  HAX8SL   2616-2619</span><br><span class="s">2452  HAX3CM   2620-2621</span><br><span class="s">2453  HAX3DM   2622-2623</span><br><span class="s">2454  HAX6SM   2624-2627</span><br><span class="s">2455  HAX8SM   2628-2631</span><br><span class="s">2456  HAX3CN   2632-2633</span><br><span class="s">2457  HAX3DN   2634-2635</span><br><span class="s">2458  HAX6SN   2636-2639</span><br><span class="s">2459  HAX8SN   2640-2643</span><br><span class="s">2460  HAX3CO   2644-2645</span><br><span class="s">2461  HAX3DO   2646-2647</span><br><span class="s">2462  HAX6SO   2648-2651</span><br><span class="s">2463  HAX8SO   2652-2655</span><br><span class="s">2464  HAX3CP   2656-2657</span><br><span class="s">2465  HAX3DP   2658-2659</span><br><span class="s">2466  HAX6SP   2660-2663</span><br><span class="s">2467  HAX8SP   2664-2667</span><br><span class="s">2468  HAX3CQ   2668-2669</span><br><span class="s">2469  HAX3DQ   2670-2671</span><br><span class="s">2470  HAX6SQ   2672-2675</span><br><span class="s">2471  HAX8SQ   2676-2679</span><br><span class="s">2472  HAX3CR   2680-2681</span><br><span class="s">2473  HAX3DR   2682-2683</span><br><span class="s">2474  HAX6SR   2684-2687</span><br><span class="s">2475  HAX8SR   2688-2691</span><br><span class="s">2476  HAX3CS   2692-2693</span><br><span class="s">2477  HAX3DS   2694-2695</span><br><span class="s">2478  HAX6SS   2696-2699</span><br><span class="s">2479  HAX8SS   2700-2703</span><br><span class="s">2480  HAX3CT   2704-2705</span><br><span class="s">2481  HAX3DT   2706-2707</span><br><span class="s">2482  HAX6ST   2708-2711</span><br><span class="s">2483  HAX8ST   2712-2715</span><br><span class="s">2484  HAX3CU   2716-2717</span><br><span class="s">2485  HAX3DU   2718-2719</span><br><span class="s">2486  HAX6SU   2720-2723</span><br><span class="s">2487  HAX8SU   2724-2727</span><br><span class="s">2488  HAX3CV   2728-2729</span><br><span class="s">2489  HAX3DV   2730-2731</span><br><span class="s">2490  HAX6SV   2732-2735</span><br><span class="s">2491  HAX8SV   2736-2739</span><br><span class="s">2492  HAX3CW   2740-2741</span><br><span class="s">2493  HAX3DW   2742-2743</span><br><span class="s">2494  HAX6SW   2744-2747</span><br><span class="s">2495  HAX8SW   2748-2751</span><br><span class="s">2496  HAX9DG   2752-2755</span><br><span class="s">2497  HAX9EG   2756-2759</span><br><span class="s">2498  HAX9FG   2760-2763</span><br><span class="s">2499  HAX11AG  2764-2769</span><br><span class="s">2500  HAX12SG  2770-2774</span><br><span class="s">2501  HAX9DH   2775-2778</span><br><span class="s">2502  HAX9EH   2779-2782</span><br><span class="s">2503  HAX9FH   2783-2786</span><br><span class="s">2504  HAX11AH  2787-2792</span><br><span class="s">2505  HAX12SH  2793-2797</span><br><span class="s">2506  HAX9DI   2798-2801</span><br><span class="s">2507  HAX9EI   2802-2805</span><br><span class="s">2508  HAX9FI   2806-2809</span><br><span class="s">2509  HAX11AI  2810-2815</span><br><span class="s">2510  HAX12SI  2816-2820</span><br><span class="s">2511  HAX9DJ   2821-2824</span><br><span class="s">2512  HAX9EJ   2825-2828</span><br><span class="s">2513  HAX9FJ   2829-2832</span><br><span class="s">2514  HAX11AJ  2833-2838</span><br><span class="s">2515  HAX12SJ  2839-2843</span><br><span class="s">2516  HAX9DK   2844-2847</span><br><span class="s">2517  HAX9EK   2848-2851</span><br><span class="s">2518  HAX9FK   2852-2855</span><br><span class="s">2519  HAX11AK  2856-2861</span><br><span class="s">2520  HAX12SK  2862-2866</span><br><span class="s">2521  HAX9DL   2867-2870</span><br><span class="s">2522  HAX9EL   2871-2874</span><br><span class="s">2523  HAX9FL   2875-2878</span><br><span class="s">2524  HAX11AL  2879-2884</span><br><span class="s">2525  HAX12SL  2885-2889</span><br><span class="s">2526  HAX9DM   2890-2893</span><br><span class="s">2527  HAX9EM   2894-2897</span><br><span class="s">2528  HAX9FM   2898-2901</span><br><span class="s">2529  HAX11AM  2902-2907</span><br><span class="s">2530  HAX12SM  2908-2912</span><br><span class="s">2531  HAX9DN   2913-2916</span><br><span class="s">2532  HAX9EN   2917-2920</span><br><span class="s">2533  HAX9FN   2921-2924</span><br><span class="s">2534  HAX11AN  2925-2930</span><br><span class="s">2535  HAX12SN  2931-2935</span><br><span class="s">2536  HAX9DO   2936-2939</span><br><span class="s">2537  HAX9EO   2940-2943</span><br><span class="s">2538  HAX9FO   2944-2947</span><br><span class="s">2539  HAX11AO  2948-2953</span><br><span class="s">2540  HAX12SO  2954-2958</span><br><span class="s">2541  HAX9DP   2959-2962</span><br><span class="s">2542  HAX9EP   2963-2966</span><br><span class="s">2543  HAX9FP   2967-2970</span><br><span class="s">2544  HAX11AP  2971-2976</span><br><span class="s">2545  HAX12SP  2977-2981</span><br><span class="s">2546  HAX9DQ   2982-2985</span><br><span class="s">2547  HAX9EQ   2986-2989</span><br><span class="s">2548  HAX9FQ   2990-2993</span><br><span class="s">2549  HAX11AQ  2994-2999</span><br><span class="s">2550  HAX12SQ  3000-3004</span><br><span class="s">2551  HAX9DR   3005-3008</span><br><span class="s">2552  HAX9ER   3009-3012</span><br><span class="s">2553  HAX9FR   3013-3016</span><br><span class="s">2554  HAX11AR  3017-3022</span><br><span class="s">2555  HAX12SR  3023-3027</span><br><span class="s">2556  HAX9DS   3028-3031</span><br><span class="s">2557  HAX9ES   3032-3035</span><br><span class="s">2558  HAX9FS   3036-3039</span><br><span class="s">2559  HAX11AS  3040-3045</span><br><span class="s">2560  HAX12SS  3046-3050</span><br><span class="s">2561  HAX9DT   3051-3054</span><br><span class="s">2562  HAX9ET   3055-3058</span><br><span class="s">2563  HAX9FT   3059-3062</span><br><span class="s">2564  HAX11AT  3063-3068</span><br><span class="s">2565  HAX12ST  3069-3073</span><br><span class="s">2566  HAX9DU   3074-3077</span><br><span class="s">2567  HAX9EU   3078-3081</span><br><span class="s">2568  HAX9FU   3082-3085</span><br><span class="s">2569  HAX11AU  3086-3091</span><br><span class="s">2570  HAX12SU  3092-3096</span><br><span class="s">2571  HAX9DV   3097-3100</span><br><span class="s">2572  HAX9EV   3101-3104</span><br><span class="s">2573  HAX9FV   3105-3108</span><br><span class="s">2574  HAX11AV  3109-3114</span><br><span class="s">2575  HAX12SV  3115-3119</span><br><span class="s">2576  HAX13AG  3120-3122</span><br><span class="s">2577  HAX15SG  3123-3126</span><br><span class="s">2578  HAX16AG  3127-3128</span><br><span class="s">2579  HAX16A1G 3129-3130</span><br><span class="s">2580  HAX17SG  3131-3134</span><br><span class="s">2581  HAX13AH  3135-3137</span><br><span class="s">2582  HAX15SH  3138-3141</span><br><span class="s">2583  HAX16AH  3142-3143</span><br><span class="s">2584  HAX16A1H 3144-3145</span><br><span class="s">2585  HAX17SH  3146-3149</span><br><span class="s">2586  HAX13AI  3150-3152</span><br><span class="s">2587  HAX15SI  3153-3156</span><br><span class="s">2588  HAX16AI  3157-3158</span><br><span class="s">2589  HAX16A1I 3159-3160</span><br><span class="s">2590  HAX17SI  3161-3164</span><br><span class="s">2591  HAX13AJ  3165-3167</span><br><span class="s">2592  HAX15SJ  3168-3171</span><br><span class="s">2593  HAX16AJ  3172-3173</span><br><span class="s">2594  HAX16A1J 3174-3175</span><br><span class="s">2595  HAX17SJ  3176-3179</span><br><span class="s">2596  HAX18A   3180</span><br><span class="s">2597  HAX19AS  3181-3183</span><br><span class="s">2598  HAX18B   3184</span><br><span class="s">2599  HAX19BS  3185-3187</span><br><span class="s">2600  HAX18C   3188</span><br><span class="s">2601  HAX19CS  3189-3191</span><br><span class="s">2602  HAX18D   3192</span><br><span class="s">2603  HAX18DB  3193-3194</span><br><span class="s">2604  HAX19DS  3195-3197</span><br><span class="s">2605  HAX18E   3198</span><br><span class="s">2606  HAX18EB  3199-3200</span><br><span class="s">2607  HAX19ES  3201-3203</span><br><span class="s">2608  HAX18F   3204</span><br><span class="s">2609  HAX18FB  3205-3206</span><br><span class="s">2610  HAX19FS  3207-3209</span><br><span class="s">2611  HAX18G   3210</span><br><span class="s">2612  HAX18GB  3211-3212</span><br><span class="s">2613  HAX19GS  3213-3215</span><br><span class="s">2614  HAY6     3216-3217</span><br><span class="s">2615  HAY7     3218-3219</span><br><span class="s">2616  HAY8     3220</span><br><span class="s">2617  HAY9     3221</span><br><span class="s">2618  HAY10    3222</span><br><span class="s">2619  HAY11A   3223</span><br><span class="s">2620  HAY11B   3224</span><br><span class="s">2621  HAY11C   3225</span><br><span class="s">2622  HAY11D   3226</span><br><span class="s">2623  HAY11E   3227</span><br><span class="s">2624  HAY11F   3228</span><br><span class="s">2625  HAY11G   3229</span><br><span class="s">2626  HAY11H   3230</span><br><span class="s">2627  HAY11I   3231</span><br><span class="s">2628  HAY11J   3232</span><br><span class="s">2629  HAZA1    3233</span><br><span class="s">2630  HAZA1A   3234</span><br><span class="s">2631  HAZA1CC  3235-3264</span><br><span class="s">2632  HAZA2    3265</span><br><span class="s">2633  HAZA2A1  3266</span><br><span class="s">2634  HAZA2A2  3267</span><br><span class="s">2635  HAZA2A3  3268</span><br><span class="s">2636  HAZA2A4  3269</span><br><span class="s">2637  HAZA3    3270</span><br><span class="s">2638  HAZA4    3271</span><br><span class="s">2639  HAZA4A   3272</span><br><span class="s">2640  HAZA5    3273-3275</span><br><span class="s">2641  HAZA5R   3276-3278</span><br><span class="s">2642  HAZA6    3279</span><br><span class="s">2643  HAZA7A   3280-3282</span><br><span class="s">2644  HAZA7AA  3283</span><br><span class="s">2645  HAZA7B   3284-3286</span><br><span class="s">2646  HAZA7BA  3287</span><br><span class="s">2647  HAZA8AK1 3288-3290</span><br><span class="s">2648  HAZA8AK5 3291-3293</span><br><span class="s">2649  HAZA8A3  3294</span><br><span class="s">2650  HAZA8A4  3295</span><br><span class="s">2651  HAZA8BK1 3296-3298</span><br><span class="s">2652  HAZA8BK5 3299-3301</span><br><span class="s">2653  HAZA8B3  3302</span><br><span class="s">2654  HAZA8B4  3303</span><br><span class="s">2655  HAZA8CK1 3304-3306</span><br><span class="s">2656  HAZA8CK5 3307-3309</span><br><span class="s">2657  HAZA8C3  3310</span><br><span class="s">2658  HAZA8C4  3311</span><br><span class="s">2659  HAZA8DK1 3312-3314</span><br><span class="s">2660  HAZA8DK5 3315-3317</span><br><span class="s">2661  HAZA8D3  3318</span><br><span class="s">2662  HAZA8D4  3319</span><br><span class="s">2663  HAZA9    3320-3321</span><br><span class="s">2664  HAZA10   3322-3323</span><br><span class="s">2665  HAZA11A  3324-3326</span><br><span class="s">2666  HAZA11AR 3327-3329</span><br><span class="s">2667  HAZA11B  3330-3332</span><br><span class="s">2668  HAZA11BR 3333-3335</span><br><span class="s">2669  HAZA12   3336</span><br><span class="s">2670  HAZMNK1R 3337-3339</span><br><span class="s">2671  HAZNOK1R 3340-3341</span><br><span class="s">2672  HAZMNK5R 3342-3344</span><br><span class="s">2673  HAZNOK5R 3345-3346</span><br><span class="s">2674  ;</span><br><span class="s">2675  </span><br><span class="s">2676  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">2677  </span><br></pre></div>
</body>
</html>





```sas
LABEL
SEQN     = "Sequence number"
DMPFSEQ  = "Family sequence number"
DMPSTAT  = "Examination/interview status"
DMARETHN = "Race-ethnicity"
DMARACER = "Race"
DMAETHNR = "Ethnicity"
HSSEX    = "Sex"
HSDOIMO  = "Date of screener: month"
HSAGEIR  = "Age at interview (screener) - qty"
HSAGEU   = "Age at interview (screener) - unit"
HSAITMOR = "Age in months at interview (screener)"
HSFSIZER = "Family size (persons in family)"
HSHSIZER = "Household size (persons in dwelling)"
DMPCNTYR = "County code"
DMPFIPSR = "FIPS code for State"
DMPMETRO = "Rural/urban code based on USDA code"
DMPCREGN = "Census region, weighting(Texas in south)"
DMPPIR   = "Poverty Income Ratio (unimputed income)"
SDPPHASE = "Phase of NHANES III Survey"
SDPPSU6  = "Total NHANES III pseudo-PSU"
SDPSTRA6 = "Total NHANES III pseudo-stratum"
SDPPSU1  = "Pseudo-PSU for phase 1"
SDPSTRA1 = "Pseudo-stratum for phase 1"
SDPPSU2  = "Pseudo-PSU for phase 2"
SDPSTRA2 = "Pseudo-stratum for phase 2"
WTPFQX6  = "Total interviewed sample final weight"
WTPFEX6  = "Total MEC examined sample final weight"
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
MXPTIMO  = "Date of MEC exam time in: month"
MXPTIDW  = "Day of week of MEC exam"
MXPAXTMR = "Age in months at MEC exam"
HXPSESSR = "Session for home examination"
HXPTIMO  = "Date of home exam: month"
HXPTIDW  = "Day of week of home exam"
HXPAXTMR = "Age in months at home exam"
HFVERS   = "Version of household family quex"
HFINTVR  = "Family interviewer number"
HFLANG   = "Language of family interview"
HFA6XCR  = "State or foreign country of birth"
HFA8R    = "Highest grade or yr of school completed"
HFA12    = "Marital status"
HFA13    = "Military service"
HFB1     = "Any SP covered by Medicare in last month"
HFB2     = "Covered by Medicare in last month"
HFB3     = "Type of Medicare coverage"
HFB4     = "Covered by Medicare last mo for hospital"
HFB5     = "Covered by Medicare last mo for doctor"
HFB6     = "Any SP covered by Medicaid in last month"
HFB7     = "Covered by Medicaid in last month"
HFB8     = "Any SP covered by CHAMPUS, etc, last mo"
HFB9     = "Covered by CHAMPUS/VA/military last mo"
HFB10    = "Any SP cov by other health insur last mo"
HFB11    = "Covered by other health insur last month"
HFB11A   = "Any plan cover any hospital expenses"
HFB11B   = "Any plan cover routine doctor's care"
HFB11C   = "Any plan cover dental care (phase 2)"
HFB11D   = "Any plan from employer or union (phase2)"
HFB11E   = "Covered plan pays for operations (ph 1)"
HFB12    = "Refused/limited insur, poor health (ph2)"
HFB13    = "Insurance coverage check item"
HFB14AB  = "No insurance: unemployed or related(ph1)"
HFB14AC  = "No insur: poor health, illness, age(ph1)"
HFB14AD  = "No insurance: can't afford (phase 1)"
HFB14AE  = "No insur: dissatisfied w/ previous (ph1)"
HFB14AF  = "No insurance: don't believe in (phase 1)"
HFB14AG  = "No insurance: healthy, no need (phase 1)"
HFB14AI  = "No insurance: some other reason(phase 1)"
HFB14BA  = "No insur: refused for health reason(ph2)"
HFB14BB  = "No insur: not employed,can't afford(ph2)"
HFB14BC  = "No insur: not employed,not continue(ph2)"
HFB14BD  = "No insur: employer does not offer (ph 2)"
HFB14BE  = "No insur:emplyr offers,not eligible(ph2)"
HFB14BF  = "No insur:emplyr offers,can't afford(ph2)"
HFB14BG  = "No insur:no believe/not get/no need(ph2)"
HFB14BH  = "No insurance:some other reason (phase 2)"
HFB16A   = "Main reason not covered (phase 1)"
HFB16B   = "Main reason not covered (phase 2)"
HFB17    = "Insurance that pays any dental (phase 1)"
HFC1     = "Age 17+ years check item"
HFC2S    = "Mother's weight calculated in pounds"
HFC3S    = "Mother's height calculated in inches"
HFC4S    = "Father's weight calculated in pounds"
HFC5S    = "Father's height calculated in inches"
HFC6A    = "Parent high blood pres/stroke before 50"
HFC6A1   = "Which parent, high blood pres/stroke"
HFC6B    = "Parent heart attack/angina before 50"
HFC6B1   = "Which parent, heart attack/angina"
HFC6C    = "Parent high blood cholesterol at any age"
HFC6C1   = "Which parent, high blood cholesterol"
HFC6D    = "Parent asthma or hay fever at any age"
HFC6D1   = "Which parent, asthma or hay fever"
HFC6E    = "Parent diabetes at any age"
HFC6E1   = "Which parent, diabetes"
HFC7S    = "How long at address calculated in weeks"
HFC8S    = "How long in city/town/area calc in weeks"
HFC9     = "How many times moved"
HFC10    = "Country mother born"
HFC11    = "Country father born"
HFD1     = "Head of family check item"
HFD2     = "Work at job during past 2 weeks"
HFD3     = "Had job/business during last 2 weeks"
HFD4     = "Looking for work or on layoff"
HFD5     = "Which, looking for work or on layoff"
HFD9R    = "What kind of business or industry"
HFD10R   = "What kind of work was person doing"
HFD12    = "Class of worker"
HFE1     = "When house/structure originally built"
HFE2     = "How many rooms are in this home"
HFE3     = "How long family lived at address - years"
HFE4     = "Is home drinking water bottled or tap"
HFE5     = "What is source of your home tap water"
HFE6     = "Water softening or conditioning system"
HFE7     = "Do any pets live in this home"
HFE8A    = "Pet lives here - a dog"
HFE8B    = "Pet lives here - a cat"
HFE8C    = "Pet lives here - a bird"
HFE8D    = "Pet lives here - a fish"
HFE8E    = "Pet lives here - other pet"
HFE9     = "Was forced air heat used in past 12 mo"
HFE10    = "Furnace fueled by oil, gas, elect, other"
HFE11    = "Was space heater used in past 12 months"
HFE12    = "Space htr fueled by elect, oil,gas,other"
HFE13    = "Was wood stove used in past 12 months"
HFE14    = "Was fireplace used in past 12 months"
HFE15    = "Is gas stove or oven used for cooking"
HFE16    = "Is exhaust fan near this stove"
HFE17    = "How often is exhaust fan used"
HFE18    = "Was stove/oven used to heat, past 12 mo"
HFF1     = "Anyone living here smoke cigs in home"
HFF2R    = "# persons who smoke cigarettes in home"
HFF3A    = "Cigarettes per day person 1 smokes"
HFF3B    = "Cigarettes per day person 2 smokes"
HFF3C    = "Cigarettes per day person 3 smokes"
HFF3D    = "Cigarettes per day person 4 smokes"
HFF3E    = "Cigarettes per day person 5 smokes"
HFF3F    = "Cigarettes per day person 6 smokes"
HFF4     = "Do you have enough food to eat"
HFF5     = "# days had no food/money in past month"
HFF6A    = "Reason no food: transportation problems"
HFF6B    = "Reason no food: no working appliances"
HFF6C    = "Reason no food: no money/food stamps/WIC"
HFF6D    = "Reason no food: other reason"
HFF7     = "Cut meal size, no money/food, past month"
HFF8     = "Cut child's meal size, no money, past mo"
HFF9     = "Any receive benefits from WIC in last mo"
HFF10    = "Any receive food stamps in last 12 month"
HFF11    = "Any receive food stamps at present time"
HFF12A   = "Any receive employment income,last month"
HFF12B   = "Receive employment income in last month"
HFF13A   = "Anyone receive SS/RR pay in last month"
HFF13B   = "Receive SS/RR pay in last month"
HFF13DA  = "Reason getting SS/RR (phase 1)"
HFF13DB  = "Reason getting SS/RR (phase 2)"
HFF13E   = "Another reason getting SS (phase 1)"
HFF14A   = "Any receive SSI pay, Federal, last month"
HFF14B   = "Receive SSI pay, Federal, in last month"
HFF14D   = "Recv separate SSI,welfare,past 4 mo(ph1)"
HFF15A   = "Any receive other pension/disabl,last mo"
HFF15B   = "Receive other pension/disability,last mo"
HFF16A   = "Any receive public asst/welfare, last mo"
HFF16B   = "Receive public assist/welfare, last mo"
HFF16D   = "Anyone receive AFDC/ADC in last month"
HFF16E   = "Receive AFDC/ADC in last month"
HFF17A   = "Anyone receive other income, last month"
HFF17B   = "Receive other income in last month"
HFF18    = "Total family 12 month income < $20,000"
HFF19R   = "Total family 12 month income group (ph1)"
HFF20R   = "Total family income, last mo, group(ph1)"
HFHSEQN  = "Family reference person sequence number"
HFHAGER  = "Family reference person age - years"
HFHSEX   = "Family reference person sex"
HFHFIPCR = "Family reference person birthplace"
HFHEDUCR = "Family refer person high grade completed"
HFHEMPL  = "Family refer person employed, past 2 wks"
HFHMRST  = "Family reference person marital status"
HFHMLSV  = "Family reference person military service"
HFRELR   = "Respondent relationship to refer person"
HFAGERR  = "Respondent age in years"
HAVERS   = "Phase and questionnaire version"
HAINTVR  = "Interviewer number"
HALANG   = "Language of interview"
HAA1     = "Did SP receive introductory letter"
HAA2     = "Did SP hear about survey any other way"
HAA2A    = "Other way heard about the survey"
HAA3     = "Check Item. Refer to age of  SP"
HAA4     = "What is today's date"
HAA5     = "What is the day of the week"
HAA6A    = "What is your complete address: street"
HAA6B    = "What is your complete address: city/town"
HAA6C    = "What is your complete address: state"
HAA6D    = "What is your complete address: zip code"
HAB1     = "Is health in general excellent,...,poor"
HAB2     = "Go to particular place for health care"
HAB3     = "Is there one particular doctor you see"
HAB4     = "Past 12 mos, # times stayed in hospital"
HAB5     = "Past 12 months, # times saw doctor"
HAB6S    = "How long since saw doctor, etc - months"
HAB7     = "Past 12 mos, # times in nursing home"
HAC1A    = "Doctor ever told you had: arthritis"
HAC1B    = "Type arthritis:rheumatoid,osteoarthritis"
HAC1C    = "Doctor told: congestive heart failure"
HAC1D    = "Doctor ever told you had: stroke"
HAC1E    = "Doctor ever told you had: asthma"
HAC1F    = "Doctor ever told had: chronic bronchitis"
HAC1G    = "Doctor ever told you had: emphysema"
HAC1H    = "Doctor ever told you had: hay fever"
HAC1I    = "Doctor ever told you had: cataracts"
HAC1J    = "Doctor ever told you had: goiter"
HAC1K    = "Doctor ever told you had:thyroid disease"
HAC1L    = "Doctor ever told you had: lupus"
HAC1M    = "Doctor ever told you had: gout"
HAC1N    = "Doctor ever told you had: skin cancer"
HAC1O    = "Doctor ever told you had: other cancer"
HAC2E    = "Do you still have asthma"
HAC2F    = "Do you still have bronchitis"
HAC2H    = "Do you still have hay fever"
HAC2J    = "Do you still have goiter"
HAC2K    = "Do you still have thyroid disease"
HAC3AR   = "Age when first told you had arth -- yrs"
HAC3CR   = "Age 1st told had cong heart fail -- yrs"
HAC3DR   = "Age when 1st told you had stroke -- yrs"
HAC3ER   = "Age when 1st told you had asthma -- yrs"
HAC3FR   = "Age when 1st told you had bronch -- yrs"
HAC3GR   = "Age when first told you had emph -- yrs"
HAC3HR   = "Age when 1st told you had hay fev -- yrs"
HAC3IR   = "Age when 1st told you had catar -- yrs"
HAC3JR   = "Age when 1st told you had goiter -- yrs"
HAC3KR   = "Age 1st told had other thyr dis -- yrs"
HAC3LR   = "Age when first told you had lupus -- yrs"
HAC3MR   = "Age when first told you had gout -- yrs"
HAC3NR   = "Age when 1st told had skin cancer -- yrs"
HAC3OR   = "Age when 1st told had other cancr -- yrs"
HAC3OS   = "Where was cancer located when first told"
HAC4A    = "Doctor told relatives they had diabetes"
HAC4B    = "Any relatives had heart attack before 50"
HAC5A1   = "Did grandmother have diabetes"
HAC5A2   = "Did grandfather have diabetes"
HAC5A3   = "Did mother have diabetes"
HAC5A4   = "Did father have diabetes"
HAC5A5   = "Did sister have diabetes"
HAC5A6   = "Did brother have diabetes"
HAC5A7   = "Did aunt have diabetes"
HAC5A8   = "Did uncle have diabetes"
HAC5A9   = "Did cousin have diabetes"
HAC5A10  = "Did son have diabetes"
HAC5A11  = "Did daughter have diabetes"
HAC5A12  = "Did other relative have diabetes"
HAC5B1   = "Did grandmother have heart attack"
HAC5B2   = "Did grandfather have heart attack"
HAC5B3   = "Did mother have heart attack"
HAC5B4   = "Did father have heart attack"
HAC5B5   = "Did sister have heart attack"
HAC5B6   = "Did brother have heart attack"
HAC5B7   = "Did aunt have heart attack"
HAC5B8   = "Did uncle have heart attack"
HAC5B9   = "Did cousin have heart attack"
HAC5B10  = "Did son have heart attack"
HAC5B11  = "Did daughter have heart attack"
HAC5B12  = "Did other relative have heart attack"
HAC6     = "Doctor told mother she had osteoporosis"
HAC7     = "Did your bio mother ever fracture hip"
HAC7A    = "How many times mother fractured hip"
HAC8     = "Age of mother at first hip fracture"
HAD1     = "Ever been told you have sugar/diabetes"
HAD2     = "Check item. Refer to sex of SP"
HAD3     = "Were you pregnant when told had diabetes"
HAD4     = "Other than pregnant,doctor told diabetes"
HAD5R    = "Age first told you had diabetes -- yrs"
HAD6     = "Are you now taking insulin"
HAD7S    = "How often you take insulin - times/week"
HAD8     = "On average, how many units per day taken"
HAD9S    = "How long have you taken insulin - months"
HAD10    = "Are you now taking diabetes pills"
HAD11AS  = "How often check urine for sugar-times/mo"
HAD11BS  = "How often check blood for sugar-times/mo"
HAD12S   = "# days since last eye exam by doctor"
HAD13S   = "# days since eye exam w/ pupils dilated"
HAD14    = "Ever had photographs taken of retina"
HAD15    = "Ever told diabetes affected your eyes"
HAE1     = "How long since doctor took blood press"
HAE2     = "Doctor ever told had hypertension/HBP"
HAE3     = "Told 2+ times you had hypertension/HBP"
HAE4A    = "Doctor told take prescribed med for HBP"
HAE4B    = "Doctor told control/lose weight for HBP"
HAE4C    = "Doctor told cut salt intake for HBP"
HAE4D    = "Doctor told do anything else for HBP"
HAE4D1   = "Doctor told exercise more for HBP"
HAE4D2   = "Doctor told restrict alcohol for HBP"
HAE4D3   = "Doctor told stop smoking for HBP"
HAE4D4   = "Doctor told reduce tension for HBP"
HAE4D5   = "Doctor told change diet for HBP"
HAE4D6   = "Doctor told make other changes for HBP"
HAE5A    = "Now taking prescribed medicine for HBP"
HAE5B    = "Now controlling or losing weight for HBP"
HAE5C    = "Now using less salt or sodium for HBP"
HAE5D1   = "Now exercising for high blood pressure"
HAE5D2   = "Now restricting alcohol for HBP"
HAE5D3   = "Now quit smoking for high blood pressure"
HAE5D4   = "Now reduced tension for HBP"
HAE5D5   = "Now made diet changes for HBP"
HAE5D6   = "Now made other changes for HBP"
HAE6     = "Ever had blood cholesterol checked"
HAE7     = "Doctor told blood cholesterol level high"
HAE8A    = "Doctor told eat less fat for HBC"
HAE8B    = "Doctor told lose weight for HBC"
HAE8C    = "Doctor told exercise for HBC"
HAE8D    = "Doctor told take medicine for HBC"
HAE9A    = "Now eat less high fat foods for HBC"
HAE9B    = "Now losing weight to lower cholesterol"
HAE9C    = "Now exercising to lower cholesterol"
HAE9D    = "Take prescribed med to lower cholesterol"
HAE10    = "Check item. Mark first applicable box"
HAE11A   = "On own for HBC, eat fewer high fat foods"
HAE11B   = "On own for HBC, controlled/lost weight"
HAE11C   = "On own for HBC, exercise more"
HAF1     = "Ever had any pain or discomfort in chest"
HAF2     = "Get chest pain when walk uphill or hurry"
HAF3     = "Get chest pain if walk at ordinary pace"
HAF4     = "What do if get chest pain while walking"
HAF5     = "If stand still is chest pain relieved"
HAF6     = "How soon is the chest pain relieved"
HAF7A    = "Where is pain/discomfort located -area 1"
HAF7B    = "Where is pain/discomfort located -area 2"
HAF7C    = "Where is pain/discomfort located -area 3"
HAF7D    = "Where is pain/discomfort located -area 4"
HAF7E    = "Where is pain/discomfort located -area 5"
HAF7F    = "Where is pain/discomfort located -area 6"
HAF7G    = "Where is pain/discomfort located -area 7"
HAF7H    = "Where is pain/discomfort located -area 8"
HAF9     = "Ever had severe chest pain for half hr +"
HAF10    = "Doctor ever told you had a heart attack"
HAF11    = "How many heart attacks have you had"
HAF12R   = "Age when you had 1st heart attack -- yrs"
HAF13R   = "Age when had last heart attack -- yrs"
HAF14    = "Get pain in either leg while walking"
HAF15    = "Leg pain begin while stand still/sitting"
HAF16    = "In what part of leg do you feel it"
HAF17    = "Get leg pain when walk uphill or hurry"
HAF18    = "Get leg pain,walk at ordinary pace,level"
HAF19    = "Leg pain ever disappear while walking"
HAF20    = "If leg pain: stop walking or continue"
HAF21    = "Is leg pain relieved if you stand still"
HAF22    = "How soon is leg pain relieved"
HAF23    = "Weak/paralysis on face,arm,leg for >5min"
HAF24    = "Numbness etc,1 side face/body for >5 min"
HAF25    = "Loss of vision in 1/both eyes for >5 min"
HAF26    = "Severe dizziness for more than 5 minutes"
HAF27    = "Problem with ability to speak/understand"
HAG1     = "Check item. Refer to age of SP"
HAG2     = "Ever had back pain most days for 1+ mo"
HAG3     = "Have you had back pain in past 12 months"
HAG4A    = "What part of back is pain - area 1"
HAG4B    = "What part of back is pain - area 2"
HAG4C    = "What part of back is pain - area 3"
HAG5A    = "Doctor told you had broken/fractured hip"
HAG5B    = "Doctor told had broken/fractured wrist"
HAG5C    = "Doctor told had broken/fractured spine"
HAG6A    = "Number of times you fractured your hip"
HAG6B    = "Number of times fractured your wrist"
HAG6C    = "Number of times fractured your spine"
HAG7     = "Check item. Refer to G5"
HAG8A    = "Site of fracture 1"
HAG8B    = "Site of fracture 2"
HAG8C    = "Site of fracture 3"
HAG8D    = "Site of fracture 4"
HAG8E    = "Site of fracture 5"
HAG8F    = "Site of fracture 6"
HAG9AR   = "Age when fractured ...- 1st time -- yrs"
HAG9BR   = "Age when fractured ...- 2nd time -- yrs"
HAG9CR   = "Age when fractured ...- 3rd time -- yrs"
HAG9DR   = "Age when fractured ...- 4th time -- yrs"
HAG9ER   = "Age when fractured ...- 5th time -- yrs"
HAG9FR   = "Age when fractured ...- 6th time -- yrs"
HAG10A   = "Fracture 1: low/hi fall or severe trauma"
HAG10B   = "Fracture 2: low/hi fall or severe trauma"
HAG10C   = "Fracture 3: low/hi fall or severe trauma"
HAG10D   = "Fracture 4: low/hi fall or severe trauma"
HAG10E   = "Fracture 5: low/hi fall or severe trauma"
HAG10F   = "Fracture 6: low/hi fall or severe trauma"
HAG11    = "Doctor ever told you had osteoporosis"
HAG12    = "Were you treated for osteoporosis"
HAG13    = "Check item. Refer to age of SP"
HAG14    = "# times fall on floor/object past 12 mo"
HAG15    = "Fall cause broken bone, injury, med care"
HAG16    = "Ever had hand pain most days for 6+ wks"
HAG17A   = "Pain, stiff right hand, joint 1"
HAG17B   = "Pain, stiff right hand, joint 2"
HAG17C   = "Pain, stiff right hand, joint 3"
HAG17D   = "Pain, stiff right hand, joint 4"
HAG17E   = "Pain, stiff right hand, joint 5"
HAG17F   = "Pain, stiff right hand, joint 6"
HAG17G   = "Pain, stiff right hand, joint 7"
HAG17H   = "Pain, stiff right hand, joint 8"
HAG17I   = "Pain, stiff right hand, joint 9"
HAG17J   = "Pain, stiff right hand, joint 10"
HAG17K   = "Pain, stiff right hand, joint 11"
HAG17L   = "Pain, stiff right hand, joint 12"
HAG17M   = "Pain, stiff right hand, joint 13"
HAG17N   = "Pain, stiff right hand, joint 14"
HAG17O   = "Pain, stiff right hand, joint 15"
HAG17FF  = "Pain, stiff right hand, joint 32"
HAG17P   = "Pain, stiff left hand, joint 16"
HAG17Q   = "Pain, stiff left hand, joint 17"
HAG17R   = "Pain, stiff left hand, joint 18"
HAG17S   = "Pain, stiff left hand, joint 19"
HAG17T   = "Pain, stiff left hand, joint 20"
HAG17U   = "Pain, stiff left hand, joint 21"
HAG17V   = "Pain, stiff left hand, joint 22"
HAG17W   = "Pain, stiff left hand, joint 23"
HAG17X   = "Pain, stiff left hand, joint 24"
HAG17Y   = "Pain, stiff left hand, joint 25"
HAG17Z   = "Pain, stiff left hand, joint 26"
HAG17AA  = "Pain, stiff left hand, joint 27"
HAG17BB  = "Pain, stiff left hand, joint 28"
HAG17CC  = "Pain, stiff left hand, joint 29"
HAG17DD  = "Pain, stiff left hand, joint 30"
HAG17EE  = "Pain, stiff left hand, joint 31"
HAG18    = "Swelling in hands...most days for 6+ wks"
HAG19A   = "Swelling in right hand, joint 1"
HAG19B   = "Swelling in right hand, joint 2"
HAG19C   = "Swelling in right hand, joint 3"
HAG19D   = "Swelling in right hand, joint 4"
HAG19E   = "Swelling in right hand, joint 5"
HAG19F   = "Swelling in right hand, joint 6"
HAG19G   = "Swelling in right hand, joint 7"
HAG19H   = "Swelling in right hand, joint 8"
HAG19I   = "Swelling in right hand, joint 9"
HAG19J   = "Swelling in right hand, joint 10"
HAG19K   = "Swelling in right hand, joint 11"
HAG19L   = "Swelling in right hand, joint 12"
HAG19M   = "Swelling in right hand, joint 13"
HAG19N   = "Swelling in right hand, joint 14"
HAG19O   = "Swelling in right hand, joint 15"
HAG19FF  = "Swelling in right hand, joint 32"
HAG19P   = "Swelling in left  hand, joint 16"
HAG19Q   = "Swelling in left hand, joint 17"
HAG19R   = "Swelling in left hand, joint 18"
HAG19S   = "Swelling in left hand, joint 19"
HAG19T   = "Swelling in left hand, joint 20"
HAG19U   = "Swelling in left hand, joint 21"
HAG19V   = "Swelling in left hand, joint 22"
HAG19W   = "Swelling in left hand, joint 23"
HAG19X   = "Swelling in left hand, joint 24"
HAG19Y   = "Swelling in left hand, joint 25"
HAG19Z   = "Swelling in left hand, joint 26"
HAG19AA  = "Swelling in left hand, joint 27"
HAG19BB  = "Swelling in left hand, joint 28"
HAG19CC  = "Swelling in left hand, joint 29"
HAG19DD  = "Swelling in left hand, joint 30"
HAG19EE  = "Swelling in left hand, joint 31"
HAG20    = "Stiff hands in morn most days for 6+ wks"
HAG21    = "How long does morning stiffness last"
HAG22    = "Ever have knee pain most days for 6+ wks"
HAG23    = "Have pain in right, left, or both knees"
HAG24    = "Does knee hurt at rest as well as moving"
HAG25    = "Swelling in knees...most days for 6+ wks"
HAG26    = "Swelling in right, left, or both knees"
HAG27    = "Stiff knees in morn most days for 6+ wks"
HAG28    = "Stiffness in right, left, or both knees"
HAG29    = "How long morning knee stiffness last"
HAG30    = "Ever had hip pain most days for 6+ weeks"
HAG31    = "Have pain in right, left, or both hips"
HAG32    = "Doctor ever told you had hip dysplasia"
HAG33    = "Doctor ever told you had scoliosis"
HAG34    = "Do you have chronic limp (lasted >3 mo)"
HAH1     = "Difficulty walking a quarter of a mile"
HAH2     = "Difficulty walking 10 steps without rest"
HAH3     = "Difficulty stooping, crouching, kneeling"
HAH4     = "Difficulty lifting or carrying 10 pounds"
HAH5     = "Difficulty doing chores around the house"
HAH6     = "Difficulty preparing own meals"
HAH7     = "Difficulty managing your money"
HAH8     = "Difficulty walking room to room, 1 level"
HAH9     = "Difficulty standing from armless chair"
HAH10    = "Difficulty getting in or out of bed"
HAH11    = "Difficulty eating"
HAH12    = "Difficulty dressing yourself"
HAH13    = "Need help with personal care needs"
HAH14    = "Need help in handling routine needs"
HAH15    = "Use device to help get around: cane, etc"
HAH16    = "Do you use any special eating utensils"
HAH17    = "Use aids or devices to help you dress"
HAJ0     = "Check item. Refer to age of SP"
HAJ1     = "Pain in area in diagram in past 12 mo"
HAJ2A    = "Most uncomfortable pain located - area 1"
HAJ2B    = "Most uncomfortable pain located - area 2"
HAJ2C    = "Most uncomfortable pain located - area 3"
HAJ3S    = "Past 12 mo, longest episode of pain -min"
HAJ4     = "How many days had pain in past 12 months"
HAJ5     = "Was pain continuous or did come and go"
HAJ6     = "If moved around,hurt more/less/no differ"
HAJ7     = "Ever seen doctor about this pain"
HAJ8     = "What did the doctor say caused the pain"
HAJ9     = "Doctor ever told you had gallstones"
HAJ10    = "Reason visit doctor when told gallstones"
HAJ11    = "Gallstone medical treatment, not surgery"
HAJ12    = "Have you ever had gallbladder surgery"
HAJ13    = "Age when you had gallbladder surgery"
HAJ14    = "Check item. Refer to J8, J10, and J12"
HAJ15    = "Pain continue after gallbladder surgery"
HAJ16    = "Doctor ever told you had gallstones"
HAJ17    = "Have you ever had gallbladder surgery"
HAJ18R   = "Age when had gallbladder surgery -- yrs"
HAK1     = "Have you ever had kidney stones"
HAK2     = "How many times you passed a kidney stone"
HAK3A    = "Ever had medication for kidney stones"
HAK3A1   = "Age had first kidney stone medication"
HAK3B    = "Ever had lithotripsy for kidney stones"
HAK3B1R  = "Age you had first lithotripsy-recode"
HAK3C    = "Ever had surgery to remove kidney stones"
HAK3C1R  = "Age 1st surgery for kidney stones-recode"
HAK4     = "# times had bladder infection"
HAK5     = "# of bladder infections in past 12 mos"
HAK6     = "Symptoms of bladder infection for >3 mo"
HAK7     = "Interstitial cystitis or painful bladder"
HAK8     = "Age 1st had inter.cystitis/painful blad."
HAK9     = "# times per night you get up to urinate"
HAK10    = "When urinate,feel like bladder not empty"
HAK11    = "Usually have trouble starting to urinate"
HAK12    = "Check item. Refer to sex and age of SP"
HAK13    = "Has urinary stream decreased over years"
HAK14    = "Ever had non-cancer prostate surgery"
HAL1     = "Cough most days, 3+ consecutive mo in yr"
HAL2     = "How many years have you had this cough"
HAL3     = "Bring up phlegm, 3+ consecutive mo in yr"
HAL4     = "How many years had trouble with phlegm"
HAL5     = "Shortness of breath, hurry/walk up hill"
HAL6     = "Had wheezing,whistle in chest past 12 mo"
HAL7     = "# episodes,wheezing/whistling past 12 mo"
HAL8     = "# times in hospital, wheezing, past 12mo"
HAL9     = "# times to doctor/ER, wheezing,past 12mo"
HAL10    = "No cold but chest sounds wheezy/whistles"
HAL11A   = "Stuffy, itchy, or runny nose, past 12 mo"
HAL11B   = "Watery, itchy eyes in past 12 months"
HAL12    = "# episodes itchy...nose/eyes, past 12 mo"
HAL13    = "Check item. Refer to L6 - L11"
HAL14A   = "Symptoms brought on by:exercise/cold air"
HAL14B   = "Symptoms brought on by: animals"
HAL14C   = "Symptoms brought on by: house dust"
HAL14D   = "Symptoms brought on by: work environment"
HAL14E   = "Symptoms brought on by: pollen"
HAL15A   = "Month pollen symptoms worse: all months"
HAL15B   = "Month pollen symptoms worse: January"
HAL15C   = "Month pollen symptoms worse: February"
HAL15D   = "Month pollen symptoms worse: March"
HAL15E   = "Month pollen symptoms worse: April"
HAL15F   = "Month pollen symptoms worse: May"
HAL15G   = "Month pollen symptoms worse: June"
HAL15H   = "Month pollen symptoms worse: July"
HAL15I   = "Month pollen symptoms worse: August"
HAL15J   = "Month pollen symptoms worse: September"
HAL15K   = "Month pollen symptoms worse: October"
HAL15L   = "Month pollen symptoms worse: November"
HAL15M   = "Month pollen symptoms worse: December"
HAL16A   = "Severe reaction from insect sting"
HAL16B   = "Severe reaction < one hour after eating"
HAL17    = "Severe reaction after allergy shot/test"
HAL18    = "Ever give up/avoid pet due to allergies"
HAL19A   = "In past 12 months had: cold or flu"
HAL19B   = "In past 12 mo had: sinusitis/sinus prob"
HAL19C   = "In past 12 months had: pneumonia"
HAL20A   = "# episodes in past 12 month: cold or flu"
HAL20B   = "# episodes in past 12 months: sinusitis"
HAL20C   = "# episodes in past 12 months: pneumonia"
HAM1     = "Check item. Refer to age of SP"
HAM2     = "Receive meals from senior program"
HAM3     = "Are senior meals delivered to your home"
HAM4     = "How often do you eat breakfast"
HAM5S    = "How tall are you without shoes - inches"
HAM6S    = "How much do you weigh w/out clothes -lbs"
HAM7     = "Check item. Refer to age of SP"
HAM8S    = "How much did you weigh 10 years ago -lbs"
HAM9S    = "How much did you weigh at age 25 - lbs"
HAM10S   = "Up to present time,most ever weighed-lbs"
HAM11    = "Consider self over/under/right weight"
HAM12    = "Would you like to weigh more,less,same"
HAM13    = "Tried to lose weight in past 12 months"
HAM14    = "Past 12 mo, changed what eat, med reason"
HAM15A   = "Medical reason to change eating: obesity"
HAM15B   = "Medical reason to change eating: high BP"
HAM15C   = "Med reason to change eating: cholesterol"
HAM15D   = "Medical reason to change eating:diabetes"
HAM15E   = "Med reason change eating: heart disease"
HAM15F   = "Medical reason to change eating: allergy"
HAM15G   = "Medical reason to change eating: ulcer"
HAM15H   = "Med reason to change eating:other reason"
HAM15K   = "Med reason to change eating: pregnancy"
HAM15L   = "Med reason to change eating: arthritis"
HAM15M   = "Med reason to change eating: back pain"
HAM15N   = "Med reason change eating:stomach/gastric"
HAM15O   = "Med reason change eating: cancer/tumors"
HAM15P   = "Med reason change eat: dental/oral probs"
HAM15Q   = "Med reason to change eating:constipation"
HAM15R   = "Med reason change eat: gallstone/bladder"
HAM15S   = "Med reason change eat: intestinal probs"
HAM15T   = "Medical reason to change eating: hernia"
HAM15U   = "Medical reason to change eating: anemia"
HAM15V   = "Medical reason to change eating: stroke"
HAM15W   = "Med reason change eating: psychological"
HAM15X   = "Med to change eating:infections/viruses"
HAM15Y   = "Medical reason to change eating: dietary"
HAM15Z   = "Med reason to change eat: general health"
HAN1AS   = "Chocolate milk and hot cocoa - times/mo"
HAN1BS   = "Milk to drink or on cereal - times/month"
HAN1C    = "Question 1a check item, used in skip"
HAN1D    = "What type of milk - whole, 2%, 1%, skim"
HAN1ES   = "Yogurt and frozen yogurt - times/month"
HAN1FS   = "Ice cream,ice milk,milkshakes - times/mo"
HAN1GS   = "Cheese, all types - times/month"
HAN1HS   = "Pizza, calzone, lasagna - times/month"
HAN1IS   = "Cheese dishes - times/month"
HAN2AS   = "Stew or soup with vegetables - times/mo"
HAN2BS   = "Spaghetti/pasta w/ tomato sauce-times/mo"
HAN2CS   = "Bacon/sausage/processed meats - times/mo"
HAN2DS   = "Liver and other organ meats - times/mo"
HAN2ES   = "Beef - times/month"
HAN2FS   = "Pork and ham - times/month"
HAN2GS   = "Shrimp, clams, etc - times/mo"
HAN2HS   = "Fish - times/month"
HAN2IS   = "Chicken and turkey - times/month"
HAN2JS   = "Eggs - times/month"
HAN3AS   = "Orange juice, etc - times/month"
HAN3BS   = "Other fruit juices - times/month"
HAN3CS   = "Citrus fruits - times/month"
HAN3DS   = "Melons - times/month"
HAN3ES   = "Peaches, nectarines, etc - times/month"
HAN3FS   = "Any other fruits - times/month"
HAN4AS   = "Carrots - times/month"
HAN4BS   = "Broccoli - times/month"
HAN4CS   = "Brussel sprouts/cauliflower - times/mo"
HAN4DS   = "White potatoes - times/month"
HAN4ES   = "Sweet potatoes, yams, etc - times/month"
HAN4FS   = "Tomatoes - times/month"
HAN4GS   = "Spinach, greens, etc - times/month"
HAN4HS   = "Tossed salad - times/month"
HAN4IS   = "Cabbage, cole slaw, sauerkraut-times/mo"
HAN4JS   = "Hot red chili peppers - times/month"
HAN4KS   = "Other peppers - times/month"
HAN4LS   = "Any other vegetables - times/month"
HAN5AS   = "Beans, lentils, chickpeas - times/month"
HAN5BS   = "Peanuts, peanut butter, etc - times/mo"
HAN5CS   = "Cereals: All-Bran, etc - times/month"
HAN5DS   = "Cereals: Total, etc - times/month"
HAN5ES   = "All other cold cereals - times/month"
HAN5FS   = "Cooked, hot cereals - times/month"
HAN5GS   = "White bread, rolls, etc - times/month"
HAN5HS   = "Dark breads and rolls - times/month"
HAN5IS   = "Corn bread, muffins, tortillas-times/mo"
HAN5JS   = "Flour tortillas - times/month"
HAN5KS   = "Rice - times/month"
HAN5LS   = "Salted snacks - times/month"
HAN6AS   = "Cakes, cookies, brownies, etc - times/mo"
HAN6BS   = "Chocolate candy and fudge - times/month"
HAN6CS   = "Hi-C, Tang, Koolaid, etc - times/month"
HAN6DS   = "Diet colas, diet sodas, etc - times/mo"
HAN6ES   = "Regular colas and sodas - times/month"
HAN6FS   = "Regular coffee - times/month"
HAN6GS   = "Regular tea - times/month"
HAN6HS   = "Beer and lite beer - times/month"
HAN6IS   = "Wine, etc - times/month"
HAN6JS   = "Hard liquor - times/month"
HAN7AS   = "Margarine - times/month"
HAN7BS   = "Butter - times/month"
HAN7CS   = "Oil/vinegar, mayonnaise, etc - times/mo"
HAN8     = "Have I missed any foods/bev?"
HAN8ACD  = "1st other food or beverage - specified"
HAN8AS   = "1st other food or beverage - times/month"
HAN8BCD  = "2nd other food or beverage - specified"
HAN8BS   = "2nd other food or beverage - times/month"
HAN8CCD  = "3rd other food or beverage - specified"
HAN8CS   = "3rd other food or beverage - times/month"
HAN8DCD  = "4th other food or beverage - specified"
HAN8DS   = "4th other food or beverage - times/month"
HAN8ECD  = "5th other food or beverage - specified"
HAN8ES   = "5th other food or beverage - times/month"
HAN8FCD  = "6th other food or beverage - specified"
HAN8FS   = "6th other food or beverage - times/month"
HAN9     = "Check item. Refer to age of SP"
HAN10A   = "How often drink milk when child (5-12)"
HAN10B   = "How often drnk milk when teenager(13-17)"
HAN10C   = "How often drink milk, young adult(18-35)"
HAN10D   = "How often drnk milk,mid-age adult(36-65)"
HAN10E   = "How often drink milk,older adult(over65)"
HAP1     = "Have total blindness in one or both eyes"
HAP1A    = "Total blindness in 1 eye or in both eyes"
HAP2     = "Do you use glasses, contacts, or both"
HAP3     = "Trouble seeing w/one/both eyes w/glasses"
HAP4     = "W/glasses recognize friend across street"
HAP5     = "W/ glasses recognize friend across room"
HAP6     = "W/ glasses recognize friend arms length"
HAP7     = "W/glasses recognize friend face,close up"
HAP8     = "W/ glasses see enough to read news print"
HAP9     = "W/ glasses see enough to read headlines"
HAP10    = "Have total deafness in one or both ears"
HAP10A   = "Total deafness in 1 ear or in both ears"
HAP11    = "Do you use a hearing aid"
HAP12    = "Have trouble hearing even w/hearing aid"
HAP13    = "W/ aid can hear most things people say"
HAP14    = "W/aid can hear only few words/loud noise"
HAP15    = "Difficulty using phone, hearing problems"
HAP16    = "Check item. Refer to age of SP"
HAP17A1  = "Repeat item: 'apple' (first trial)"
HAP17A2  = "Repeat item: 'table' (first trial)"
HAP17A3  = "Repeat item: 'penny' (first trial)"
HAP17B   = "Number of trials until objects learned"
HAP18A   = "Dollars left: have $20 and take away $3"
HAP18B   = "Dollars left: subtract $3 from $17"
HAP18C   = "Dollars left: subtract $3 from $14"
HAP18D   = "Dollars left: subtract $3 from $11"
HAP18E   = "Dollars left: subtract $3 from $8"
HAP19A   = "Repeat item: 'apple' (second trial)"
HAP19B   = "Repeat item: 'table' (second trial)"
HAP19C   = "Repeat item: 'penny' (second trial)"
HAQ1     = "Describe natural teeth: excellent...poor"
HAQ2A    = "Dental care needed:teeth filled/replaced"
HAQ2B    = "Dental care needed: teeth pulled"
HAQ2C    = "Dental care needed: gum treatment"
HAQ2D    = "Dental care needed: denture work"
HAQ2E    = "Dental care needed: relief of pain"
HAQ2F    = "Dental care needed:to improve appearance"
HAQ2G    = "Dental care needed: other"
HAQ2I    = "Dental care needed: nothing"
HAQ2K    = "Dental care needed: cleaning"
HAQ2L    = "Dental care needed: checkup"
HAQ3S    = "# days ago last visit dentist/hygienist"
HAQ4     = "How often do you go to dentist/hygienist"
HAQ5     = "Past 12 mo,had cold sores/fever blisters"
HAQ6     = "Past 12 months, had canker/mouth sores"
HAQ7     = "Check item. Refer to age of SP"
HAQ8     = "Ever received orthodontic treatment"
HAQ9     = "Age started recent orthodontic treatment"
HAR1     = "Have you smoked 100+ cigarettes in life"
HAR2     = "Age when you started smoking regularly"
HAR3     = "Do you smoke cigarettes now"
HAR4S    = "# cigarettes smoked per day"
HAR5     = "How many yrs have you smoked this amount"
HAR6     = "Ever period of 1+ years when smoked more"
HAR7S    = "# cigarettes per day when smoking most"
HAR8     = "How many years did you smoke that amount"
HAR9     = "Ever quit smoking for one year or longer"
HAR10    = "How many years not smoked since started"
HAR11R   = "Age last smoke cigarettes reg -- yrs"
HAR12S   = "# cigarettes smoked per day at that time"
HAR13    = "Quit smoking,health problem from smoking"
HAR14    = "Ever used chewing tabacco or snuff"
HAR15    = "Age 1st use chew tobacco/snuff regularly"
HAR16    = "Do you use chewing tobacco or snuff now"
HAR17    = "Which - chewing tobacco or snuff"
HAR18AS  = "# containers of snuff used per week"
HAR18BS  = "# containers of chewing tobacco per week"
HAR19A   = "Place in right, left, or front of mouth"
HAR19B   = "Place in top or bottom of mouth"
HAR20R   = "Age last use chew tob/snuf reg -- yrs"
HAR21    = "Which used, chewing tobacco or snuff"
HAR22    = "Quit chew/snuff, related health problem"
HAR23    = "Ever smoke at least 20 cigars in life"
HAR24    = "Do you now smoke cigars"
HAR25    = "How many cigars do you smoke per day"
HAR26    = "Ever smoke 20 pipes of tobacco in life"
HAR27    = "Do you now smoke a pipe"
HAR28    = "How many pipefuls tobacco smoke per day"
HAS1     = "Past 2 wks, did you work at job/business"
HAS2     = "Past 2 weeks, did you have job/business"
HAS3     = "Looking for work or on layoff from job"
HAS4     = "Which, looking for work or on layoff"
HAS5     = "Check item.  Refer to S2"
HAS8R    = "What kind of business or industry -- rcd"
HAS9R    = "What kind of work were you doing -- rcd"
HAS11    = "Class of worker"
HAS12S   = "How long in months worked at that job"
HAS13    = "Check item. Refer to S1 and S2"
HAS14    = "At work, hours per day can smell smoking"
HAS15    = "In job, ever wear protective equipment"
HAS16A   = "Ever wear eye protection"
HAS16B   = "Ever wear protective gloves"
HAS16C   = "Ever wear dust mask"
HAS16D   = "Ever wear respirator"
HAS17    = "What kind of work were you doing longest"
HAS17R   = "What kind of work doing longest  -- rcd"
HAS18    = "How long this kind of work-all employers"
HAS19    = "What business/industry worked in longest"
HAS19R   = "Business/industry worked in longest--rcd"
HAS21    = "Check item. Refer to S1 and S12"
HAS22    = "What were you doing most of past 12 mo"
HAS23    = "Limited in work by health problem"
HAS24    = "Limited in housework by health problem"
HAS25    = "Limited in activities by health problem"
HAS26    = "Ever change work/housework, health prob"
HAS27A   = "Did you change permanently to easier job"
HAS27B   = "Did you change temporarily to easier job"
HAS27C   = "Did you cut down to part-time work only"
HAS27D   = "Did you have to stop work for few months"
HAS27E   = "Did you retire because of a disability"
HAS27F   = "Did you have to cut down on housework"
HAS27G   = "Did you stop doing all housework"
HAS27H   = "Did you make some other change"
HAS27HCD = "Other specify - coded"
HAS28    = "Language you mainly speak at home"
HAS29    = "Language you mainly speak at work/school"
HAT1S    = "Past mo,how often walk mile without stop"
HAT1MET  = "Walking activity - intensity rating"
HAT2     = "In the past month, did you jog or run"
HAT2MET  = "Jog or run activity - intensity rating"
HAT3S    = "Past month, how often did you jog or run"
HAT4     = "Past mo, ride bicycle/exercise bicycle"
HAT4MET  = "Bicycle activity - intensity rating"
HAT5S    = "Past mo, how often ride bike/exer bike"
HAT6     = "In the past month did you swim"
HAT6MET  = "Swim activity - intensity rating"
HAT7S    = "Past month, how often did you swim"
HAT8     = "Past mo, do aerobics or aerobic dancing"
HAT8MET  = "Aerobics activity - intensity rating"
HAT9S    = "Past mo, how often did aerobics/dancing"
HAT10    = "Past month, did you do other dancing"
HAT10MET = "Other dancing activity -intensity rating"
HAT11S   = "Past month, how often did other dancing"
HAT12    = "Past month, do calisthenics or exercises"
HAT12MET = "Calisthenics activity - intensity rating"
HAT13S   = "Past mo, how often did calisthenics/exer"
HAT14    = "Past month, did you do garden/yard work"
HAT14MET = "Garden/yard activity - intensity rating"
HAT15S   = "Past mo, how often did garden/yard work"
HAT16    = "In the past month, did you lift weights"
HAT16MET = "Lift weights activity - intensity rating"
HAT17S   = "Past mo, how often did you lift weights"
HAT18    = "Past mo, any other exercises, sports ..."
HAT19CD  = "PROBE: What - coded"
HAT19MET = "Other activity - intensity rating"
HAT20S   = "Past mo, how often did other activity"
HAT21CD  = "PROBE: Any others - coded (activity 2)"
HAT21MET = "Other activity 2 - intensity rating"
HAT22S   = "Past mo, how often did other activity 2"
HAT23CD  = "PROBE: Any others - coded (activity 3)"
HAT23MET = "Other activity 3 - intensity rating"
HAT24S   = "Past mo, how often did other activity 3"
HAT25CD  = "PROBE: Any others - Coded (activity 4)"
HAT25MET = "Other activity 4 - intensity rating"
HAT26S   = "Past mo, how often did other activity 4"
HAT27    = "Compare activity for past mo to past yr"
HAT28    = "Active compared with men/women your age"
HAT29    = "Check item. Refer to age of SP"
HAT30    = "Active now compared with self 10 yrs ago"
HAV1S    = "# times/week on phone w/ family, friends"
HAV2S    = "How often per yr together w/friends/rels"
HAV3S    = "How often per year you visit w/neighbors"
HAV4S    = "How often per yr attend church/services"
HAV5     = "Do you belong to any clubs or groups"
HAV6S    = "How often per year attend club meetings"
HAV7R    = "Weeks lived at this address -- recode"
HAV8     = "How long lived in this city/town/area"
HAV9     = "Have you lived anywhere longer than here"
HAV10R   = "Where did you live longest -- recode"
HAV11    = "How long did you live in longest place"
HAV12R   = "Where were you born -- recode"
HAV13R   = "If not born US, how long lived US -- yrs"
HAX1A    = "Taken vitamins/minerals in past month"
HAX1B    = "Taken prescriptn medicines in past month"
HAX1C    = "Taken antacids in past month"
HAX2A    = "How many vitamins/minerals taken"
HAX2B    = "How many prescription medicines taken"
HAX2C    = "How many antacids taken"
HAX3CG   = "Certainty index code-1st"
HAX3DG   = "Product class-1st"
HAX6SG   = "How often did you take in past month-1st"
HAX8SG   = "How long been taking (month)-1st"
HAX3CH   = "Certainty index code-2nd"
HAX3DH   = "Product class-2nd"
HAX6SH   = "How often did you take in past month-2nd"
HAX8SH   = "How long been taking (month)-2nd"
HAX3CI   = "Certainty index code-3rd"
HAX3DI   = "Product class-3rd"
HAX6SI   = "How often did you take in past month-3rd"
HAX8SI   = "How long been taking (month)-3rd"
HAX3CJ   = "Certainty index code-4th"
HAX3DJ   = "Product class-4th"
HAX6SJ   = "How often did you take in past month-4th"
HAX8SJ   = "How long been taking (month)-4th"
HAX3CK   = "Certainty index code-5th"
HAX3DK   = "Product class-5th"
HAX6SK   = "How often did you take in past month-5th"
HAX8SK   = "How long been taking (month)-5th"
HAX3CL   = "Certainty index code-6th"
HAX3DL   = "Product class-6th"
HAX6SL   = "How often did you take in past month-6th"
HAX8SL   = "How long been taking (month)-6th"
HAX3CM   = "Certainty index code-7th"
HAX3DM   = "Product class-7th"
HAX6SM   = "How often did you take in past month-7th"
HAX8SM   = "How long been taking (month)-7th"
HAX3CN   = "Certainty index code-8th"
HAX3DN   = "Product class-8th"
HAX6SN   = "How often did you take in past month-8th"
HAX8SN   = "How long been taking (month)-8th"
HAX3CO   = "Certainty index code-9th"
HAX3DO   = "Product class-9th"
HAX6SO   = "How often did you take in past month-9th"
HAX8SO   = "How long been taking (month)-9th"
HAX3CP   = "Certainty index code-10th"
HAX3DP   = "Product class-10th"
HAX6SP   = "How often did you take in past mnth-10th"
HAX8SP   = "How long been taking (month)-10th"
HAX3CQ   = "Certainty index code-11th"
HAX3DQ   = "Product class-11th"
HAX6SQ   = "How often did you take in past mnth-11th"
HAX8SQ   = "How long been taking (month)-11th"
HAX3CR   = "Certainty index code-12th"
HAX3DR   = "Product class-12th"
HAX6SR   = "How often did you take in past mnth-12th"
HAX8SR   = "How long been taking (month)-12th"
HAX3CS   = "Certainty index code-13th"
HAX3DS   = "Product class-13th"
HAX6SS   = "How often did you take in past mnth-13th"
HAX8SS   = "How long been taking (month)-13th"
HAX3CT   = "Certainty index code-14th"
HAX3DT   = "Product class-14th"
HAX6ST   = "How often did you take in past mnth-14th"
HAX8ST   = "How long been taking (month)-14th"
HAX3CU   = "Certainty index code-15th"
HAX3DU   = "Product class-15th"
HAX6SU   = "How often did you take in past mnth-15th"
HAX8SU   = "How long been taking (month)-15th"
HAX3CV   = "Certainty index code-16th"
HAX3DV   = "Product class-16th"
HAX6SV   = "How often did you take in past mnth-16th"
HAX8SV   = "How long been taking (month)-16th"
HAX3CW   = "Certainty index code-17th"
HAX3DW   = "Product class-17th"
HAX6SW   = "How often did you take in past mnth-17th"
HAX8SW   = "How long been taking (month)-17th"
HAX9DG   = "Primary drug class code-1st"
HAX9EG   = "Secondary drug class code-1st"
HAX9FG   = "Tertiary drug class code-1st"
HAX11AG  = "ICD-9-CM code-1st"
HAX12SG  = "For how long been taking (days)-1st"
HAX9DH   = "Primary drug class code-2nd"
HAX9EH   = "Secondary drug class code-2nd"
HAX9FH   = "Tertiary drug class code-2nd"
HAX11AH  = "ICD-9-CM code-2nd"
HAX12SH  = "For how long been taking (days)-2nd"
HAX9DI   = "Primary drug class code-3rd"
HAX9EI   = "Secondary drug class code-3rd"
HAX9FI   = "Tertiary drug class code-3rd"
HAX11AI  = "ICD-9-CM code-3rd"
HAX12SI  = "For how long been taking (days)-3rd"
HAX9DJ   = "Primary drug class code-4th"
HAX9EJ   = "Secondary drug class code-4th"
HAX9FJ   = "Tertiary drug class code-4th"
HAX11AJ  = "ICD-9-CM code-4th"
HAX12SJ  = "For how long been taking (days)-4th"
HAX9DK   = "Primary drug class code-5th"
HAX9EK   = "Secondary drug class code-5th"
HAX9FK   = "Tertiary drug class code-5th"
HAX11AK  = "ICD-9-CM code-5th"
HAX12SK  = "For how long been taking (days)-5th"
HAX9DL   = "Primary drug class code-6th"
HAX9EL   = "Secondary drug class code-6th"
HAX9FL   = "Tertiary drug class code-6th"
HAX11AL  = "ICD-9-CM code-6th"
HAX12SL  = "For how long been taking (days)-6th"
HAX9DM   = "Primary drug class code-7th"
HAX9EM   = "Secondary drug class code-7th"
HAX9FM   = "Tertiary drug class code-7th"
HAX11AM  = "ICD-9-CM code-7th"
HAX12SM  = "For how long been taking (days)-7th"
HAX9DN   = "Primary drug class code-8th"
HAX9EN   = "Secondary drug class code-8th"
HAX9FN   = "Tertiary drug class code-8th"
HAX11AN  = "ICD-9-CM code-8th"
HAX12SN  = "For how long been taking (days)-8th"
HAX9DO   = "Primary drug class code-9th"
HAX9EO   = "Secondary drug class code-9th"
HAX9FO   = "Tertiary drug class code-9th"
HAX11AO  = "ICD-9-CM code-9th"
HAX12SO  = "For how long been taking (days)-9th"
HAX9DP   = "Primary drug class code-10th"
HAX9EP   = "Secondary drug class code-10th"
HAX9FP   = "Tertiary drug class code-10th"
HAX11AP  = "ICD-9-CM code-10th"
HAX12SP  = "For how long been taking (days)-10th"
HAX9DQ   = "Primary drug class code-11th"
HAX9EQ   = "Secondary drug class code-11th"
HAX9FQ   = "Tertiary drug class code-11th"
HAX11AQ  = "ICD-9-CM code-11th"
HAX12SQ  = "For how long been taking (days)-11th"
HAX9DR   = "Primary drug class code-12th"
HAX9ER   = "Secondary drug class code-12th"
HAX9FR   = "Tertiary drug class code-12th"
HAX11AR  = "ICD-9-CM code-12th"
HAX12SR  = "For how long been taking (days)-12th"
HAX9DS   = "Primary drug class code-13th"
HAX9ES   = "Secondary drug class code-13th"
HAX9FS   = "Tertiary drug class code-13th"
HAX11AS  = "ICD-9-CM code-13th"
HAX12SS  = "For how long been taking (days)-13th"
HAX9DT   = "Primary drug class code-14th"
HAX9ET   = "Secondary drug class code-14th"
HAX9FT   = "Tertiary drug class code-14th"
HAX11AT  = "ICD-9-CM code-14th"
HAX12ST  = "For how long been taking (days)-14th"
HAX9DU   = "Primary drug class code-15th"
HAX9EU   = "Secondary drug class code-15th"
HAX9FU   = "Tertiary drug class code-15th"
HAX11AU  = "ICD-9-CM code-15th"
HAX12SU  = "For how long been taking (days)-15th"
HAX9DV   = "Primary drug class code-16th"
HAX9EV   = "Secondary drug class code-16th"
HAX9FV   = "Tertiary drug class code-16th"
HAX11AV  = "ICD-9-CM code-16th"
HAX12SV  = "For how long been taking (days)-16th"
HAX13AG  = "Antacid identification code-1st"
HAX15SG  = "How often did you take in past month-1st"
HAX16AG  = "How much did you take ea time (quan)-1st"
HAX16A1G = "How much did you take ea time (unit)-1st" 
HAX17SG  = "How long been taking (months)-1st"
HAX13AH  = "Antacid identification code-2nd"
HAX15SH  = "How often did you take in past month-2nd"
HAX16AH  = "How much did you take ea time (quan)-2nd"
HAX16A1H = "How much did you take ea time (unit)-2nd"
HAX17SH  = "How long been taking (months)-2nd"
HAX13AI  = "Antacid identification code-3rd"
HAX15SI  = "How often did you take in past month-3rd"
HAX16AI  = "How much did you take ea time (quan)-3rd"
HAX16A1I = "How much did you take ea time (unit)-3rd"
HAX17SI  = "How long been taking (months)-3rd"
HAX13AJ  = "Antacid identification code-4th"
HAX15SJ  = "How often did you take in past month-4th"
HAX16AJ  = "How much did you take ea time (quan)-4th"
HAX16A1J = "How much did you take ea time (unit)-4th"
HAX17SJ  = "How long been taking (months)-4th"
HAX18A   = "Taken aspirin, etc. in past month"
HAX19AS  = "How often did you take in past month"
HAX18B   = "Taken acetaminophen, etc. in past month"
HAX19BS  = "How often did you take in past month"
HAX18C   = "Taken ibuprofen, etc. in past month"
HAX19CS  = "How often did you take in past month"
HAX18D   = "Taken other pain rel. in past month-1st"
HAX18DB  = "Other pain rel. product type-1st"
HAX19DS  = "How often did you take in past month-1st"
HAX18E   = "Taken other pain rel. in past month-2nd"
HAX18EB  = "Other pain rel. product type-2nd"
HAX19ES  = "How often did you take in past month-2nd"
HAX18F   = "Taken other pain rel. in past month-3rd"
HAX18FB  = "Other pain rel. product type-3rd"
HAX19FS  = "How often did you take in past month-3rd"
HAX18G   = "Taken other pain rel. in past month-4th"
HAX18GB  = "Other pain rel. product type-4th"
HAX19GS  = "How often did you take in past month-4th"
HAY6     = "Main respondent for household adult quex"
HAY7     = "Reason for accepting proxy respondent"
HAY8     = "Was SP present during any of interview"
HAY9     = "Anyone else present during interview"
HAY10    = "Quality of interview"
HAY11A   = "Observed SP: in bed"
HAY11B   = "Observed SP: in wheelchair"
HAY11C   = "Observed SP:uses cane,crutches,or walker"
HAY11D   = "Observed SP: walks slowly or shuffles"
HAY11E   = "Observed SP: paralysis in hands or legs"
HAY11F   = "Observed SP: hearing impairment"
HAY11G   = "Observe SP:speech problems(not language)"
HAY11H   = "Observed SP: coughs continuously"
HAY11I   = "Observed SP: dressed in street clothes"
HAY11J   = "Observed SP:overweight, average, or thin"
HAZA1    = "Any medical reason procedure not be done"
HAZA1A   = "Med reason BP not taken(survey years4-6)"
HAZA1CC  = "Med reason BP not taken - other(yrs 5-6)"
HAZA2    = "Have you consumed food, etc last 30 min"
HAZA2A1  = "Have you consumed food in last 30 min"
HAZA2A2  = "Have you consumed alcohol in last 30 min"
HAZA2A3  = "Have you consumed coffee in last 30 min"
HAZA2A4  = "Have you smoked cigarettes last 30 min"
HAZA3    = "Cuff size used"
HAZA4    = "Arm selected"
HAZA4A   = "Reason left arm selected(survey yrs 4-6)"
HAZA5    = "Radial pulse (30 seconds)"
HAZA5R   = "Radial pulse rate (beats/min)"
HAZA6    = "Radial pulse regular/rhythmic"
HAZA7A   = "First maximum inflation rate (MIL, mmHg)"
HAZA7AA  = "Reason first MIL not taken (years 4-6)"
HAZA7B   = "Second MIL (mm Hg) (survey years 4-6)"
HAZA7BA  = "Reason second MIL not taken (years 4-6)"
HAZA8AK1 = "K1 for first BP measure (systolic, mmHg)"
HAZA8AK5 = "K5 for first BP measure (diastolic,mmHg)"
HAZA8A3  = "Reason first BP measurement not done"
HAZA8A4  = "Reason first BP measurement refused"
HAZA8BK1 = "K1 for second BP measure (systolic,mmHg)"
HAZA8BK5 = "K5 for second BP measure(diastolic,mmHg)"
HAZA8B3  = "Reason second BP measurement not done"
HAZA8B4  = "Reason second BP measurement refused"
HAZA8CK1 = "K1 for third BP measure (systolic, mmHg)"
HAZA8CK5 = "K5 for third BP measure (diastolic,mmHg)"
HAZA8C3  = "Reason third BP measurement not done"
HAZA8C4  = "Reason third BP measurement refused"
HAZA8DK1 = "K1 for fourth BP (systolic,mmHg,yrs 4-6)"
HAZA8DK5 = "K5 for fourth BP(diastolic,mmHg,yrs 4-6)"
HAZA8D3  = "Reason fourth BP not done (years 4-6)"
HAZA8D4  = "Reason fourth BP refused (years 4-6)"
HAZA9    = "Reason for not taking BP (years 5-6)"
HAZA10   = "Code determining BP averaging (yrs 5-6)"
HAZA11A  = "Average K1 BP (survey years 5 and 6)"
HAZA11AR = "Average K1 BP after data edits"
HAZA11B  = "Average K5 BP (survey years 5-6)"
HAZA11BR = "Average K5 BP after data edits"
HAZA12   = "BP statement read to SP (years 5 and 6)"
HAZMNK1R = "Average K1 BP from household and MEC"
HAZNOK1R = "Number of BP's used for average K1"
HAZMNK5R = "Average K5 BP from household and MEC"
HAZNOK5R = "Number of BP's used for average K5";
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

<div class="highlight"><pre><span></span><span class="s">2679  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">2679! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">2680  </span><br><span class="s">2681  LABEL</span><br><span class="s">2682  SEQN     = &quot;Sequence number&quot;</span><br><span class="s">2683  DMPFSEQ  = &quot;Family sequence number&quot;</span><br><span class="s">2684  DMPSTAT  = &quot;Examination/interview status&quot;</span><br><span class="s">2685  DMARETHN = &quot;Race-ethnicity&quot;</span><br><span class="s">2686  DMARACER = &quot;Race&quot;</span><br><span class="s">2687  DMAETHNR = &quot;Ethnicity&quot;</span><br><span class="s">2688  HSSEX    = &quot;Sex&quot;</span><br><span class="s">2689  HSDOIMO  = &quot;Date of screener: month&quot;</span><br><span class="s">2690  HSAGEIR  = &quot;Age at interview (screener) - qty&quot;</span><br><span class="s">2691  HSAGEU   = &quot;Age at interview (screener) - unit&quot;</span><br><span class="s">2692  HSAITMOR = &quot;Age in months at interview (screener)&quot;</span><br><span class="s">2693  HSFSIZER = &quot;Family size (persons in family)&quot;</span><br><span class="s">2694  HSHSIZER = &quot;Household size (persons in dwelling)&quot;</span><br><span class="s">2695  DMPCNTYR = &quot;County code&quot;</span><br><span class="s">2696  DMPFIPSR = &quot;FIPS code for State&quot;</span><br><span class="s">2697  DMPMETRO = &quot;Rural/urban code based on USDA code&quot;</span><br><span class="s">2698  DMPCREGN = &quot;Census region, weighting(Texas in south)&quot;</span><br><span class="s">2699  DMPPIR   = &quot;Poverty Income Ratio (unimputed income)&quot;</span><br><span class="s">2700  SDPPHASE = &quot;Phase of NHANES III Survey&quot;</span><br><span class="s">2701  SDPPSU6  = &quot;Total NHANES III pseudo-PSU&quot;</span><br><span class="s">2702  SDPSTRA6 = &quot;Total NHANES III pseudo-stratum&quot;</span><br><span class="s">2703  SDPPSU1  = &quot;Pseudo-PSU for phase 1&quot;</span><br><span class="s">2704  SDPSTRA1 = &quot;Pseudo-stratum for phase 1&quot;</span><br><span class="s">2705  SDPPSU2  = &quot;Pseudo-PSU for phase 2&quot;</span><br><span class="s">2706  SDPSTRA2 = &quot;Pseudo-stratum for phase 2&quot;</span><br><span class="s">2707  WTPFQX6  = &quot;Total interviewed sample final weight&quot;</span><br><span class="s">2708  WTPFEX6  = &quot;Total MEC examined sample final weight&quot;</span><br><span class="s">2709  WTPFHX6  = &quot;Total M+H examined sample final weight&quot;</span><br><span class="s">2710  WTPFALG6 = &quot;Total allergy subsample final weight&quot;</span><br><span class="s">2711  WTPFCNS6 = &quot;Total CNS subsample final weight&quot;</span><br><span class="s">2712  WTPFSD6  = &quot;Total morning subsample final wgt&quot;</span><br><span class="s">2713  WTPFMD6  = &quot;Total afternoon/eve subsample final wgt&quot;</span><br><span class="s">2714  WTPFHSD6 = &quot;Total M+H morning subsample final wgt&quot;</span><br><span class="s">2715  WTPFHMD6 = &quot;Total M+H afternoon subsample final wgt&quot;</span><br><span class="s">2716  WTPFQX1  = &quot;Phase 1 interviewed sample final wgt&quot;</span><br><span class="s">2717  WTPFEX1  = &quot;Phase 1 MEC examined sample final wgt&quot;</span><br><span class="s">2718  WTPFHX1  = &quot;Phase 1 M+H examined sample final wgt&quot;</span><br><span class="s">2719  WTPFALG1 = &quot;Phase 1 allergy subsample final wgt&quot;</span><br><span class="s">2720  WTPFCNS1 = &quot;Phase 1 CNS subsample final wgt&quot;</span><br><span class="s">2721  WTPFSD1  = &quot;Phase 1 morning sess subsample final wgt&quot;</span><br><span class="s">2722  WTPFMD1  = &quot;Phase 1 aft/eve subsample final wgt&quot;</span><br><span class="s">2723  WTPFHSD1 = &quot;Phase 1 morning M+H subsample final wgt&quot;</span><br><span class="s">2724  WTPFHMD1 = &quot;Phase 1 aft/eve M+H subsample final wgt&quot;</span><br><span class="s">2725  WTPFQX2  = &quot;Phase 2 interviewed sample final wgt&quot;</span><br><span class="s">2726  WTPFEX2  = &quot;Phase 2 MEC examined sample final wgt&quot;</span><br><span class="s">2727  WTPFHX2  = &quot;Phase 2 M+H examined sample final wgt&quot;</span><br><span class="s">2728  WTPFALG2 = &quot;Phase 2 allergy subsample final wgt&quot;</span><br><span class="s">2729  WTPFCNS2 = &quot;Phase 2 CNS subsample final wgt&quot;</span><br><span class="s">2730  WTPFSD2  = &quot;Phase 2 morning sess subsample final wgt&quot;</span><br><span class="s">2731  WTPFMD2  = &quot;Phase 2 aft/eve subsample final wgt&quot;</span><br><span class="s">2732  WTPFHSD2 = &quot;Phase 2 morning M+H subsample final wgt&quot;</span><br><span class="s">2733  WTPFHMD2 = &quot;Phase 2 aft/eve M+H subsample final wgt&quot;</span><br><span class="s">2734  WTPQRP1  = &quot;Replicate 1 final interview weight&quot;</span><br><span class="s">2735  WTPQRP2  = &quot;Replicate 2 final interview weight&quot;</span><br><span class="s">2736  WTPQRP3  = &quot;Replicate 3 final interview weight&quot;</span><br><span class="s">2737  WTPQRP4  = &quot;Replicate 4 final interview weight&quot;</span><br><span class="s">2738  WTPQRP5  = &quot;Replicate 5 final interview weight&quot;</span><br><span class="s">2739  WTPQRP6  = &quot;Replicate 6 final interview weight&quot;</span><br><span class="s">2740  WTPQRP7  = &quot;Replicate 7 final interview weight&quot;</span><br><span class="s">2741  WTPQRP8  = &quot;Replicate 8 final interview weight&quot;</span><br><span class="s">2742  WTPQRP9  = &quot;Replicate 9 final interview weight&quot;</span><br><span class="s">2743  WTPQRP10 = &quot;Replicate 10 final interview weight&quot;</span><br><span class="s">2744  WTPQRP11 = &quot;Replicate 11 final interview weight&quot;</span><br><span class="s">2745  WTPQRP12 = &quot;Replicate 12 final interview weight&quot;</span><br><span class="s">2746  WTPQRP13 = &quot;Replicate 13 final interview weight&quot;</span><br><span class="s">2747  WTPQRP14 = &quot;Replicate 14 final interview weight&quot;</span><br><span class="s">2748  WTPQRP15 = &quot;Replicate 15 final interview weight&quot;</span><br><span class="s">2749  WTPQRP16 = &quot;Replicate 16 final interview weight&quot;</span><br><span class="s">2750  WTPQRP17 = &quot;Replicate 17 final interview weight&quot;</span><br><span class="s">2751  WTPQRP18 = &quot;Replicate 18 final interview weight&quot;</span><br><span class="s">2752  WTPQRP19 = &quot;Replicate 19 final interview weight&quot;</span><br><span class="s">2753  WTPQRP20 = &quot;Replicate 20 final interview weight&quot;</span><br><span class="s">2754  WTPQRP21 = &quot;Replicate 21 final interview weight&quot;</span><br><span class="s">2755  WTPQRP22 = &quot;Replicate 22 final interview weight&quot;</span><br><span class="s">2756  WTPQRP23 = &quot;Replicate 23 final interview weight&quot;</span><br><span class="s">2757  WTPQRP24 = &quot;Replicate 24 final interview weight&quot;</span><br><span class="s">2758  WTPQRP25 = &quot;Replicate 25 final interview weight&quot;</span><br><span class="s">2759  WTPQRP26 = &quot;Replicate 26 final interview weight&quot;</span><br><span class="s">2760  WTPQRP27 = &quot;Replicate 27 final interview weight&quot;</span><br><span class="s">2761  WTPQRP28 = &quot;Replicate 28 final interview weight&quot;</span><br><span class="s">2762  WTPQRP29 = &quot;Replicate 29 final interview weight&quot;</span><br><span class="s">2763  WTPQRP30 = &quot;Replicate 30 final interview weight&quot;</span><br><span class="s">2764  WTPQRP31 = &quot;Replicate 31 final interview weight&quot;</span><br><span class="s">2765  WTPQRP32 = &quot;Replicate 32 final interview weight&quot;</span><br><span class="s">2766  WTPQRP33 = &quot;Replicate 33 final interview weight&quot;</span><br><span class="s">2767  WTPQRP34 = &quot;Replicate 34 final interview weight&quot;</span><br><span class="s">2768  WTPQRP35 = &quot;Replicate 35 final interview weight&quot;</span><br><span class="s">2769  WTPQRP36 = &quot;Replicate 36 final interview weight&quot;</span><br><span class="s">2770  WTPQRP37 = &quot;Replicate 37 final interview weight&quot;</span><br><span class="s">2771  WTPQRP38 = &quot;Replicate 38 final interview weight&quot;</span><br><span class="s">2772  WTPQRP39 = &quot;Replicate 39 final interview weight&quot;</span><br><span class="s">2773  WTPQRP40 = &quot;Replicate 40 final interview weight&quot;</span><br><span class="s">2774  WTPQRP41 = &quot;Replicate 41 final interview weight&quot;</span><br><span class="s">2775  WTPQRP42 = &quot;Replicate 42 final interview weight&quot;</span><br><span class="s">2776  WTPQRP43 = &quot;Replicate 43 final interview weight&quot;</span><br><span class="s">2777  WTPQRP44 = &quot;Replicate 44 final interview weight&quot;</span><br><span class="s">2778  WTPQRP45 = &quot;Replicate 45 final interview weight&quot;</span><br><span class="s">2779  WTPQRP46 = &quot;Replicate 46 final interview weight&quot;</span><br><span class="s">2780  WTPQRP47 = &quot;Replicate 47 final interview weight&quot;</span><br><span class="s">2781  WTPQRP48 = &quot;Replicate 48 final interview weight&quot;</span><br><span class="s">2782  WTPQRP49 = &quot;Replicate 49 final interview weight&quot;</span><br><span class="s">2783  WTPQRP50 = &quot;Replicate 50 final interview weight&quot;</span><br><span class="s">2784  WTPQRP51 = &quot;Replicate 51 final interview weight&quot;</span><br><span class="s">2785  WTPQRP52 = &quot;Replicate 52 final interview weight&quot;</span><br><span class="s">2786  WTPXRP1  = &quot;Replicate 1 final exam weight&quot;</span><br><span class="s">2787  WTPXRP2  = &quot;Replicate 2 final exam weight&quot;</span><br><span class="s">2788  WTPXRP3  = &quot;Replicate 3 final exam weight&quot;</span><br><span class="s">2789  WTPXRP4  = &quot;Replicate 4 final exam weight&quot;</span><br><span class="s">2790  WTPXRP5  = &quot;Replicate 5 final exam weight&quot;</span><br><span class="s">2791  WTPXRP6  = &quot;Replicate 6 final exam weight&quot;</span><br><span class="s">2792  WTPXRP7  = &quot;Replicate 7 final exam weight&quot;</span><br><span class="s">2793  WTPXRP8  = &quot;Replicate 8 final exam weight&quot;</span><br><span class="s">2794  WTPXRP9  = &quot;Replicate 9 final exam weight&quot;</span><br><span class="s">2795  WTPXRP10 = &quot;Replicate 10 final exam weight&quot;</span><br><span class="s">2796  WTPXRP11 = &quot;Replicate 11 final exam weight&quot;</span><br><span class="s">2797  WTPXRP12 = &quot;Replicate 12 final exam weight&quot;</span><br><span class="s">2798  WTPXRP13 = &quot;Replicate 13 final exam weight&quot;</span><br><span class="s">2799  WTPXRP14 = &quot;Replicate 14 final exam weight&quot;</span><br><span class="s">2800  WTPXRP15 = &quot;Replicate 15 final exam weight&quot;</span><br><span class="s">2801  WTPXRP16 = &quot;Replicate 16 final exam weight&quot;</span><br><span class="s">2802  WTPXRP17 = &quot;Replicate 17 final exam weight&quot;</span><br><span class="s">2803  WTPXRP18 = &quot;Replicate 18 final exam weight&quot;</span><br><span class="s">2804  WTPXRP19 = &quot;Replicate 19 final exam weight&quot;</span><br><span class="s">2805  WTPXRP20 = &quot;Replicate 20 final exam weight&quot;</span><br><span class="s">2806  WTPXRP21 = &quot;Replicate 21 final exam weight&quot;</span><br><span class="s">2807  WTPXRP22 = &quot;Replicate 22 final exam weight&quot;</span><br><span class="s">2808  WTPXRP23 = &quot;Replicate 23 final exam weight&quot;</span><br><span class="s">2809  WTPXRP24 = &quot;Replicate 24 final exam weight&quot;</span><br><span class="s">2810  WTPXRP25 = &quot;Replicate 25 final exam weight&quot;</span><br><span class="s">2811  WTPXRP26 = &quot;Replicate 26 final exam weight&quot;</span><br><span class="s">2812  WTPXRP27 = &quot;Replicate 27 final exam weight&quot;</span><br><span class="s">2813  WTPXRP28 = &quot;Replicate 28 final exam weight&quot;</span><br><span class="s">2814  WTPXRP29 = &quot;Replicate 29 final exam weight&quot;</span><br><span class="s">2815  WTPXRP30 = &quot;Replicate 30 final exam weight&quot;</span><br><span class="s">2816  WTPXRP31 = &quot;Replicate 31 final exam weight&quot;</span><br><span class="s">2817  WTPXRP32 = &quot;Replicate 32 final exam weight&quot;</span><br><span class="s">2818  WTPXRP33 = &quot;Replicate 33 final exam weight&quot;</span><br><span class="s">2819  WTPXRP34 = &quot;Replicate 34 final exam weight&quot;</span><br><span class="s">2820  WTPXRP35 = &quot;Replicate 35 final exam weight&quot;</span><br><span class="s">2821  WTPXRP36 = &quot;Replicate 36 final exam weight&quot;</span><br><span class="s">2822  WTPXRP37 = &quot;Replicate 37 final exam weight&quot;</span><br><span class="s">2823  WTPXRP38 = &quot;Replicate 38 final exam weight&quot;</span><br><span class="s">2824  WTPXRP39 = &quot;Replicate 39 final exam weight&quot;</span><br><span class="s">2825  WTPXRP40 = &quot;Replicate 40 final exam weight&quot;</span><br><span class="s">2826  WTPXRP41 = &quot;Replicate 41 final exam weight&quot;</span><br><span class="s">2827  WTPXRP42 = &quot;Replicate 42 final exam weight&quot;</span><br><span class="s">2828  WTPXRP43 = &quot;Replicate 43 final exam weight&quot;</span><br><span class="s">2829  WTPXRP44 = &quot;Replicate 44 final exam weight&quot;</span><br><span class="s">2830  WTPXRP45 = &quot;Replicate 45 final exam weight&quot;</span><br><span class="s">2831  WTPXRP46 = &quot;Replicate 46 final exam weight&quot;</span><br><span class="s">2832  WTPXRP47 = &quot;Replicate 47 final exam weight&quot;</span><br><span class="s">2833  WTPXRP48 = &quot;Replicate 48 final exam weight&quot;</span><br><span class="s">2834  WTPXRP49 = &quot;Replicate 49 final exam weight&quot;</span><br><span class="s">2835  WTPXRP50 = &quot;Replicate 50 final exam weight&quot;</span><br><span class="s">2836  WTPXRP51 = &quot;Replicate 51 final exam weight&quot;</span><br><span class="s">2837  WTPXRP52 = &quot;Replicate 52 final exam weight&quot;</span><br><span class="s">2838  HYAITMO  = &quot;Age in months at youth interview&quot;</span><br><span class="s">2839  MXPLANG  = &quot;Language used by SP in MEC&quot;</span><br><span class="s">2840  MXPSESSR = &quot;Session for MEC examination&quot;</span><br><span class="s">2841  MXPTIMO  = &quot;Date of MEC exam time in: month&quot;</span><br><span class="s">2842  MXPTIDW  = &quot;Day of week of MEC exam&quot;</span><br><span class="s">2843  MXPAXTMR = &quot;Age in months at MEC exam&quot;</span><br><span class="s">2844  HXPSESSR = &quot;Session for home examination&quot;</span><br><span class="s">2845  HXPTIMO  = &quot;Date of home exam: month&quot;</span><br><span class="s">2846  HXPTIDW  = &quot;Day of week of home exam&quot;</span><br><span class="s">2847  HXPAXTMR = &quot;Age in months at home exam&quot;</span><br><span class="s">2848  HFVERS   = &quot;Version of household family quex&quot;</span><br><span class="s">2849  HFINTVR  = &quot;Family interviewer number&quot;</span><br><span class="s">2850  HFLANG   = &quot;Language of family interview&quot;</span><br><span class="s">2851  HFA6XCR  = &quot;State or foreign country of birth&quot;</span><br><span class="s">2852  HFA8R    = &quot;Highest grade or yr of school completed&quot;</span><br><span class="s">2853  HFA12    = &quot;Marital status&quot;</span><br><span class="s">2854  HFA13    = &quot;Military service&quot;</span><br><span class="s">2855  HFB1     = &quot;Any SP covered by Medicare in last month&quot;</span><br><span class="s">2856  HFB2     = &quot;Covered by Medicare in last month&quot;</span><br><span class="s">2857  HFB3     = &quot;Type of Medicare coverage&quot;</span><br><span class="s">2858  HFB4     = &quot;Covered by Medicare last mo for hospital&quot;</span><br><span class="s">2859  HFB5     = &quot;Covered by Medicare last mo for doctor&quot;</span><br><span class="s">2860  HFB6     = &quot;Any SP covered by Medicaid in last month&quot;</span><br><span class="s">2861  HFB7     = &quot;Covered by Medicaid in last month&quot;</span><br><span class="s">2862  HFB8     = &quot;Any SP covered by CHAMPUS, etc, last mo&quot;</span><br><span class="s">2863  HFB9     = &quot;Covered by CHAMPUS/VA/military last mo&quot;</span><br><span class="s">2864  HFB10    = &quot;Any SP cov by other health insur last mo&quot;</span><br><span class="s">2865  HFB11    = &quot;Covered by other health insur last month&quot;</span><br><span class="s">2866  HFB11A   = &quot;Any plan cover any hospital expenses&quot;</span><br><span class="s">2867  HFB11B   = &quot;Any plan cover routine doctor&#39;s care&quot;</span><br><span class="s">2868  HFB11C   = &quot;Any plan cover dental care (phase 2)&quot;</span><br><span class="s">2869  HFB11D   = &quot;Any plan from employer or union (phase2)&quot;</span><br><span class="s">2870  HFB11E   = &quot;Covered plan pays for operations (ph 1)&quot;</span><br><span class="s">2871  HFB12    = &quot;Refused/limited insur, poor health (ph2)&quot;</span><br><span class="s">2872  HFB13    = &quot;Insurance coverage check item&quot;</span><br><span class="s">2873  HFB14AB  = &quot;No insurance: unemployed or related(ph1)&quot;</span><br><span class="s">2874  HFB14AC  = &quot;No insur: poor health, illness, age(ph1)&quot;</span><br><span class="s">2875  HFB14AD  = &quot;No insurance: can&#39;t afford (phase 1)&quot;</span><br><span class="s">2876  HFB14AE  = &quot;No insur: dissatisfied w/ previous (ph1)&quot;</span><br><span class="s">2877  HFB14AF  = &quot;No insurance: don&#39;t believe in (phase 1)&quot;</span><br><span class="s">2878  HFB14AG  = &quot;No insurance: healthy, no need (phase 1)&quot;</span><br><span class="s">2879  HFB14AI  = &quot;No insurance: some other reason(phase 1)&quot;</span><br><span class="s">2880  HFB14BA  = &quot;No insur: refused for health reason(ph2)&quot;</span><br><span class="s">2881  HFB14BB  = &quot;No insur: not employed,can&#39;t afford(ph2)&quot;</span><br><span class="s">2882  HFB14BC  = &quot;No insur: not employed,not continue(ph2)&quot;</span><br><span class="s">2883  HFB14BD  = &quot;No insur: employer does not offer (ph 2)&quot;</span><br><span class="s">2884  HFB14BE  = &quot;No insur:emplyr offers,not eligible(ph2)&quot;</span><br><span class="s">2885  HFB14BF  = &quot;No insur:emplyr offers,can&#39;t afford(ph2)&quot;</span><br><span class="s">2886  HFB14BG  = &quot;No insur:no believe/not get/no need(ph2)&quot;</span><br><span class="s">2887  HFB14BH  = &quot;No insurance:some other reason (phase 2)&quot;</span><br><span class="s">2888  HFB16A   = &quot;Main reason not covered (phase 1)&quot;</span><br><span class="s">2889  HFB16B   = &quot;Main reason not covered (phase 2)&quot;</span><br><span class="s">2890  HFB17    = &quot;Insurance that pays any dental (phase 1)&quot;</span><br><span class="s">2891  HFC1     = &quot;Age 17+ years check item&quot;</span><br><span class="s">2892  HFC2S    = &quot;Mother&#39;s weight calculated in pounds&quot;</span><br><span class="s">2893  HFC3S    = &quot;Mother&#39;s height calculated in inches&quot;</span><br><span class="s">2894  HFC4S    = &quot;Father&#39;s weight calculated in pounds&quot;</span><br><span class="s">2895  HFC5S    = &quot;Father&#39;s height calculated in inches&quot;</span><br><span class="s">2896  HFC6A    = &quot;Parent high blood pres/stroke before 50&quot;</span><br><span class="s">2897  HFC6A1   = &quot;Which parent, high blood pres/stroke&quot;</span><br><span class="s">2898  HFC6B    = &quot;Parent heart attack/angina before 50&quot;</span><br><span class="s">2899  HFC6B1   = &quot;Which parent, heart attack/angina&quot;</span><br><span class="s">2900  HFC6C    = &quot;Parent high blood cholesterol at any age&quot;</span><br><span class="s">2901  HFC6C1   = &quot;Which parent, high blood cholesterol&quot;</span><br><span class="s">2902  HFC6D    = &quot;Parent asthma or hay fever at any age&quot;</span><br><span class="s">2903  HFC6D1   = &quot;Which parent, asthma or hay fever&quot;</span><br><span class="s">2904  HFC6E    = &quot;Parent diabetes at any age&quot;</span><br><span class="s">2905  HFC6E1   = &quot;Which parent, diabetes&quot;</span><br><span class="s">2906  HFC7S    = &quot;How long at address calculated in weeks&quot;</span><br><span class="s">2907  HFC8S    = &quot;How long in city/town/area calc in weeks&quot;</span><br><span class="s">2908  HFC9     = &quot;How many times moved&quot;</span><br><span class="s">2909  HFC10    = &quot;Country mother born&quot;</span><br><span class="s">2910  HFC11    = &quot;Country father born&quot;</span><br><span class="s">2911  HFD1     = &quot;Head of family check item&quot;</span><br><span class="s">2912  HFD2     = &quot;Work at job during past 2 weeks&quot;</span><br><span class="s">2913  HFD3     = &quot;Had job/business during last 2 weeks&quot;</span><br><span class="s">2914  HFD4     = &quot;Looking for work or on layoff&quot;</span><br><span class="s">2915  HFD5     = &quot;Which, looking for work or on layoff&quot;</span><br><span class="s">2916  HFD9R    = &quot;What kind of business or industry&quot;</span><br><span class="s">2917  HFD10R   = &quot;What kind of work was person doing&quot;</span><br><span class="s">2918  HFD12    = &quot;Class of worker&quot;</span><br><span class="s">2919  HFE1     = &quot;When house/structure originally built&quot;</span><br><span class="s">2920  HFE2     = &quot;How many rooms are in this home&quot;</span><br><span class="s">2921  HFE3     = &quot;How long family lived at address - years&quot;</span><br><span class="s">2922  HFE4     = &quot;Is home drinking water bottled or tap&quot;</span><br><span class="s">2923  HFE5     = &quot;What is source of your home tap water&quot;</span><br><span class="s">2924  HFE6     = &quot;Water softening or conditioning system&quot;</span><br><span class="s">2925  HFE7     = &quot;Do any pets live in this home&quot;</span><br><span class="s">2926  HFE8A    = &quot;Pet lives here - a dog&quot;</span><br><span class="s">2927  HFE8B    = &quot;Pet lives here - a cat&quot;</span><br><span class="s">2928  HFE8C    = &quot;Pet lives here - a bird&quot;</span><br><span class="s">2929  HFE8D    = &quot;Pet lives here - a fish&quot;</span><br><span class="s">2930  HFE8E    = &quot;Pet lives here - other pet&quot;</span><br><span class="s">2931  HFE9     = &quot;Was forced air heat used in past 12 mo&quot;</span><br><span class="s">2932  HFE10    = &quot;Furnace fueled by oil, gas, elect, other&quot;</span><br><span class="s">2933  HFE11    = &quot;Was space heater used in past 12 months&quot;</span><br><span class="s">2934  HFE12    = &quot;Space htr fueled by elect, oil,gas,other&quot;</span><br><span class="s">2935  HFE13    = &quot;Was wood stove used in past 12 months&quot;</span><br><span class="s">2936  HFE14    = &quot;Was fireplace used in past 12 months&quot;</span><br><span class="s">2937  HFE15    = &quot;Is gas stove or oven used for cooking&quot;</span><br><span class="s">2938  HFE16    = &quot;Is exhaust fan near this stove&quot;</span><br><span class="s">2939  HFE17    = &quot;How often is exhaust fan used&quot;</span><br><span class="s">2940  HFE18    = &quot;Was stove/oven used to heat, past 12 mo&quot;</span><br><span class="s">2941  HFF1     = &quot;Anyone living here smoke cigs in home&quot;</span><br><span class="s">2942  HFF2R    = &quot;# persons who smoke cigarettes in home&quot;</span><br><span class="s">2943  HFF3A    = &quot;Cigarettes per day person 1 smokes&quot;</span><br><span class="s">2944  HFF3B    = &quot;Cigarettes per day person 2 smokes&quot;</span><br><span class="s">2945  HFF3C    = &quot;Cigarettes per day person 3 smokes&quot;</span><br><span class="s">2946  HFF3D    = &quot;Cigarettes per day person 4 smokes&quot;</span><br><span class="s">2947  HFF3E    = &quot;Cigarettes per day person 5 smokes&quot;</span><br><span class="s">2948  HFF3F    = &quot;Cigarettes per day person 6 smokes&quot;</span><br><span class="s">2949  HFF4     = &quot;Do you have enough food to eat&quot;</span><br><span class="s">2950  HFF5     = &quot;# days had no food/money in past month&quot;</span><br><span class="s">2951  HFF6A    = &quot;Reason no food: transportation problems&quot;</span><br><span class="s">2952  HFF6B    = &quot;Reason no food: no working appliances&quot;</span><br><span class="s">2953  HFF6C    = &quot;Reason no food: no money/food stamps/WIC&quot;</span><br><span class="s">2954  HFF6D    = &quot;Reason no food: other reason&quot;</span><br><span class="s">2955  HFF7     = &quot;Cut meal size, no money/food, past month&quot;</span><br><span class="s">2956  HFF8     = &quot;Cut child&#39;s meal size, no money, past mo&quot;</span><br><span class="s">2957  HFF9     = &quot;Any receive benefits from WIC in last mo&quot;</span><br><span class="s">2958  HFF10    = &quot;Any receive food stamps in last 12 month&quot;</span><br><span class="s">2959  HFF11    = &quot;Any receive food stamps at present time&quot;</span><br><span class="s">2960  HFF12A   = &quot;Any receive employment income,last month&quot;</span><br><span class="s">2961  HFF12B   = &quot;Receive employment income in last month&quot;</span><br><span class="s">2962  HFF13A   = &quot;Anyone receive SS/RR pay in last month&quot;</span><br><span class="s">2963  HFF13B   = &quot;Receive SS/RR pay in last month&quot;</span><br><span class="s">2964  HFF13DA  = &quot;Reason getting SS/RR (phase 1)&quot;</span><br><span class="s">2965  HFF13DB  = &quot;Reason getting SS/RR (phase 2)&quot;</span><br><span class="s">2966  HFF13E   = &quot;Another reason getting SS (phase 1)&quot;</span><br><span class="s">2967  HFF14A   = &quot;Any receive SSI pay, Federal, last month&quot;</span><br><span class="s">2968  HFF14B   = &quot;Receive SSI pay, Federal, in last month&quot;</span><br><span class="s">2969  HFF14D   = &quot;Recv separate SSI,welfare,past 4 mo(ph1)&quot;</span><br><span class="s">2970  HFF15A   = &quot;Any receive other pension/disabl,last mo&quot;</span><br><span class="s">2971  HFF15B   = &quot;Receive other pension/disability,last mo&quot;</span><br><span class="s">2972  HFF16A   = &quot;Any receive public asst/welfare, last mo&quot;</span><br><span class="s">2973  HFF16B   = &quot;Receive public assist/welfare, last mo&quot;</span><br><span class="s">2974  HFF16D   = &quot;Anyone receive AFDC/ADC in last month&quot;</span><br><span class="s">2975  HFF16E   = &quot;Receive AFDC/ADC in last month&quot;</span><br><span class="s">2976  HFF17A   = &quot;Anyone receive other income, last month&quot;</span><br><span class="s">2977  HFF17B   = &quot;Receive other income in last month&quot;</span><br><span class="s">2978  HFF18    = &quot;Total family 12 month income &lt; $20,000&quot;</span><br><span class="s">2979  HFF19R   = &quot;Total family 12 month income group (ph1)&quot;</span><br><span class="s">2980  HFF20R   = &quot;Total family income, last mo, group(ph1)&quot;</span><br><span class="s">2981  HFHSEQN  = &quot;Family reference person sequence number&quot;</span><br><span class="s">2982  HFHAGER  = &quot;Family reference person age - years&quot;</span><br><span class="s">2983  HFHSEX   = &quot;Family reference person sex&quot;</span><br><span class="s">2984  HFHFIPCR = &quot;Family reference person birthplace&quot;</span><br><span class="s">2985  HFHEDUCR = &quot;Family refer person high grade completed&quot;</span><br><span class="s">2986  HFHEMPL  = &quot;Family refer person employed, past 2 wks&quot;</span><br><span class="s">2987  HFHMRST  = &quot;Family reference person marital status&quot;</span><br><span class="s">2988  HFHMLSV  = &quot;Family reference person military service&quot;</span><br><span class="s">2989  HFRELR   = &quot;Respondent relationship to refer person&quot;</span><br><span class="s">2990  HFAGERR  = &quot;Respondent age in years&quot;</span><br><span class="s">2991  HAVERS   = &quot;Phase and questionnaire version&quot;</span><br><span class="s">2992  HAINTVR  = &quot;Interviewer number&quot;</span><br><span class="s">2993  HALANG   = &quot;Language of interview&quot;</span><br><span class="s">2994  HAA1     = &quot;Did SP receive introductory letter&quot;</span><br><span class="s">2995  HAA2     = &quot;Did SP hear about survey any other way&quot;</span><br><span class="s">2996  HAA2A    = &quot;Other way heard about the survey&quot;</span><br><span class="s">2997  HAA3     = &quot;Check Item. Refer to age of  SP&quot;</span><br><span class="s">2998  HAA4     = &quot;What is today&#39;s date&quot;</span><br><span class="s">2999  HAA5     = &quot;What is the day of the week&quot;</span><br><span class="s">3000  HAA6A    = &quot;What is your complete address: street&quot;</span><br><span class="s">3001  HAA6B    = &quot;What is your complete address: city/town&quot;</span><br><span class="s">3002  HAA6C    = &quot;What is your complete address: state&quot;</span><br><span class="s">3003  HAA6D    = &quot;What is your complete address: zip code&quot;</span><br><span class="s">3004  HAB1     = &quot;Is health in general excellent,...,poor&quot;</span><br><span class="s">3005  HAB2     = &quot;Go to particular place for health care&quot;</span><br><span class="s">3006  HAB3     = &quot;Is there one particular doctor you see&quot;</span><br><span class="s">3007  HAB4     = &quot;Past 12 mos, # times stayed in hospital&quot;</span><br><span class="s">3008  HAB5     = &quot;Past 12 months, # times saw doctor&quot;</span><br><span class="s">3009  HAB6S    = &quot;How long since saw doctor, etc - months&quot;</span><br><span class="s">3010  HAB7     = &quot;Past 12 mos, # times in nursing home&quot;</span><br><span class="s">3011  HAC1A    = &quot;Doctor ever told you had: arthritis&quot;</span><br><span class="s">3012  HAC1B    = &quot;Type arthritis:rheumatoid,osteoarthritis&quot;</span><br><span class="s">3013  HAC1C    = &quot;Doctor told: congestive heart failure&quot;</span><br><span class="s">3014  HAC1D    = &quot;Doctor ever told you had: stroke&quot;</span><br><span class="s">3015  HAC1E    = &quot;Doctor ever told you had: asthma&quot;</span><br><span class="s">3016  HAC1F    = &quot;Doctor ever told had: chronic bronchitis&quot;</span><br><span class="s">3017  HAC1G    = &quot;Doctor ever told you had: emphysema&quot;</span><br><span class="s">3018  HAC1H    = &quot;Doctor ever told you had: hay fever&quot;</span><br><span class="s">3019  HAC1I    = &quot;Doctor ever told you had: cataracts&quot;</span><br><span class="s">3020  HAC1J    = &quot;Doctor ever told you had: goiter&quot;</span><br><span class="s">3021  HAC1K    = &quot;Doctor ever told you had:thyroid disease&quot;</span><br><span class="s">3022  HAC1L    = &quot;Doctor ever told you had: lupus&quot;</span><br><span class="s">3023  HAC1M    = &quot;Doctor ever told you had: gout&quot;</span><br><span class="s">3024  HAC1N    = &quot;Doctor ever told you had: skin cancer&quot;</span><br><span class="s">3025  HAC1O    = &quot;Doctor ever told you had: other cancer&quot;</span><br><span class="s">3026  HAC2E    = &quot;Do you still have asthma&quot;</span><br><span class="s">3027  HAC2F    = &quot;Do you still have bronchitis&quot;</span><br><span class="s">3028  HAC2H    = &quot;Do you still have hay fever&quot;</span><br><span class="s">3029  HAC2J    = &quot;Do you still have goiter&quot;</span><br><span class="s">3030  HAC2K    = &quot;Do you still have thyroid disease&quot;</span><br><span class="s">3031  HAC3AR   = &quot;Age when first told you had arth -- yrs&quot;</span><br><span class="s">3032  HAC3CR   = &quot;Age 1st told had cong heart fail -- yrs&quot;</span><br><span class="s">3033  HAC3DR   = &quot;Age when 1st told you had stroke -- yrs&quot;</span><br><span class="s">3034  HAC3ER   = &quot;Age when 1st told you had asthma -- yrs&quot;</span><br><span class="s">3035  HAC3FR   = &quot;Age when 1st told you had bronch -- yrs&quot;</span><br><span class="s">3036  HAC3GR   = &quot;Age when first told you had emph -- yrs&quot;</span><br><span class="s">3037  HAC3HR   = &quot;Age when 1st told you had hay fev -- yrs&quot;</span><br><span class="s">3038  HAC3IR   = &quot;Age when 1st told you had catar -- yrs&quot;</span><br><span class="s">3039  HAC3JR   = &quot;Age when 1st told you had goiter -- yrs&quot;</span><br><span class="s">3040  HAC3KR   = &quot;Age 1st told had other thyr dis -- yrs&quot;</span><br><span class="s">3041  HAC3LR   = &quot;Age when first told you had lupus -- yrs&quot;</span><br><span class="s">3042  HAC3MR   = &quot;Age when first told you had gout -- yrs&quot;</span><br><span class="s">3043  HAC3NR   = &quot;Age when 1st told had skin cancer -- yrs&quot;</span><br><span class="s">3044  HAC3OR   = &quot;Age when 1st told had other cancr -- yrs&quot;</span><br><span class="s">3045  HAC3OS   = &quot;Where was cancer located when first told&quot;</span><br><span class="s">3046  HAC4A    = &quot;Doctor told relatives they had diabetes&quot;</span><br><span class="s">3047  HAC4B    = &quot;Any relatives had heart attack before 50&quot;</span><br><span class="s">3048  HAC5A1   = &quot;Did grandmother have diabetes&quot;</span><br><span class="s">3049  HAC5A2   = &quot;Did grandfather have diabetes&quot;</span><br><span class="s">3050  HAC5A3   = &quot;Did mother have diabetes&quot;</span><br><span class="s">3051  HAC5A4   = &quot;Did father have diabetes&quot;</span><br><span class="s">3052  HAC5A5   = &quot;Did sister have diabetes&quot;</span><br><span class="s">3053  HAC5A6   = &quot;Did brother have diabetes&quot;</span><br><span class="s">3054  HAC5A7   = &quot;Did aunt have diabetes&quot;</span><br><span class="s">3055  HAC5A8   = &quot;Did uncle have diabetes&quot;</span><br><span class="s">3056  HAC5A9   = &quot;Did cousin have diabetes&quot;</span><br><span class="s">3057  HAC5A10  = &quot;Did son have diabetes&quot;</span><br><span class="s">3058  HAC5A11  = &quot;Did daughter have diabetes&quot;</span><br><span class="s">3059  HAC5A12  = &quot;Did other relative have diabetes&quot;</span><br><span class="s">3060  HAC5B1   = &quot;Did grandmother have heart attack&quot;</span><br><span class="s">3061  HAC5B2   = &quot;Did grandfather have heart attack&quot;</span><br><span class="s">3062  HAC5B3   = &quot;Did mother have heart attack&quot;</span><br><span class="s">3063  HAC5B4   = &quot;Did father have heart attack&quot;</span><br><span class="s">3064  HAC5B5   = &quot;Did sister have heart attack&quot;</span><br><span class="s">3065  HAC5B6   = &quot;Did brother have heart attack&quot;</span><br><span class="s">3066  HAC5B7   = &quot;Did aunt have heart attack&quot;</span><br><span class="s">3067  HAC5B8   = &quot;Did uncle have heart attack&quot;</span><br><span class="s">3068  HAC5B9   = &quot;Did cousin have heart attack&quot;</span><br><span class="s">3069  HAC5B10  = &quot;Did son have heart attack&quot;</span><br><span class="s">3070  HAC5B11  = &quot;Did daughter have heart attack&quot;</span><br><span class="s">3071  HAC5B12  = &quot;Did other relative have heart attack&quot;</span><br><span class="s">3072  HAC6     = &quot;Doctor told mother she had osteoporosis&quot;</span><br><span class="s">3073  HAC7     = &quot;Did your bio mother ever fracture hip&quot;</span><br><span class="s">3074  HAC7A    = &quot;How many times mother fractured hip&quot;</span><br><span class="s">3075  HAC8     = &quot;Age of mother at first hip fracture&quot;</span><br><span class="s">3076  HAD1     = &quot;Ever been told you have sugar/diabetes&quot;</span><br><span class="s">3077  HAD2     = &quot;Check item. Refer to sex of SP&quot;</span><br><span class="s">3078  HAD3     = &quot;Were you pregnant when told had diabetes&quot;</span><br><span class="s">3079  HAD4     = &quot;Other than pregnant,doctor told diabetes&quot;</span><br><span class="s">3080  HAD5R    = &quot;Age first told you had diabetes -- yrs&quot;</span><br><span class="s">3081  HAD6     = &quot;Are you now taking insulin&quot;</span><br><span class="s">3082  HAD7S    = &quot;How often you take insulin - times/week&quot;</span><br><span class="s">3083  HAD8     = &quot;On average, how many units per day taken&quot;</span><br><span class="s">3084  HAD9S    = &quot;How long have you taken insulin - months&quot;</span><br><span class="s">3085  HAD10    = &quot;Are you now taking diabetes pills&quot;</span><br><span class="s">3086  HAD11AS  = &quot;How often check urine for sugar-times/mo&quot;</span><br><span class="s">3087  HAD11BS  = &quot;How often check blood for sugar-times/mo&quot;</span><br><span class="s">3088  HAD12S   = &quot;# days since last eye exam by doctor&quot;</span><br><span class="s">3089  HAD13S   = &quot;# days since eye exam w/ pupils dilated&quot;</span><br><span class="s">3090  HAD14    = &quot;Ever had photographs taken of retina&quot;</span><br><span class="s">3091  HAD15    = &quot;Ever told diabetes affected your eyes&quot;</span><br><span class="s">3092  HAE1     = &quot;How long since doctor took blood press&quot;</span><br><span class="s">3093  HAE2     = &quot;Doctor ever told had hypertension/HBP&quot;</span><br><span class="s">3094  HAE3     = &quot;Told 2+ times you had hypertension/HBP&quot;</span><br><span class="s">3095  HAE4A    = &quot;Doctor told take prescribed med for HBP&quot;</span><br><span class="s">3096  HAE4B    = &quot;Doctor told control/lose weight for HBP&quot;</span><br><span class="s">3097  HAE4C    = &quot;Doctor told cut salt intake for HBP&quot;</span><br><span class="s">3098  HAE4D    = &quot;Doctor told do anything else for HBP&quot;</span><br><span class="s">3099  HAE4D1   = &quot;Doctor told exercise more for HBP&quot;</span><br><span class="s">3100  HAE4D2   = &quot;Doctor told restrict alcohol for HBP&quot;</span><br><span class="s">3101  HAE4D3   = &quot;Doctor told stop smoking for HBP&quot;</span><br><span class="s">3102  HAE4D4   = &quot;Doctor told reduce tension for HBP&quot;</span><br><span class="s">3103  HAE4D5   = &quot;Doctor told change diet for HBP&quot;</span><br><span class="s">3104  HAE4D6   = &quot;Doctor told make other changes for HBP&quot;</span><br><span class="s">3105  HAE5A    = &quot;Now taking prescribed medicine for HBP&quot;</span><br><span class="s">3106  HAE5B    = &quot;Now controlling or losing weight for HBP&quot;</span><br><span class="s">3107  HAE5C    = &quot;Now using less salt or sodium for HBP&quot;</span><br><span class="s">3108  HAE5D1   = &quot;Now exercising for high blood pressure&quot;</span><br><span class="s">3109  HAE5D2   = &quot;Now restricting alcohol for HBP&quot;</span><br><span class="s">3110  HAE5D3   = &quot;Now quit smoking for high blood pressure&quot;</span><br><span class="s">3111  HAE5D4   = &quot;Now reduced tension for HBP&quot;</span><br><span class="s">3112  HAE5D5   = &quot;Now made diet changes for HBP&quot;</span><br><span class="s">3113  HAE5D6   = &quot;Now made other changes for HBP&quot;</span><br><span class="s">3114  HAE6     = &quot;Ever had blood cholesterol checked&quot;</span><br><span class="s">3115  HAE7     = &quot;Doctor told blood cholesterol level high&quot;</span><br><span class="s">3116  HAE8A    = &quot;Doctor told eat less fat for HBC&quot;</span><br><span class="s">3117  HAE8B    = &quot;Doctor told lose weight for HBC&quot;</span><br><span class="s">3118  HAE8C    = &quot;Doctor told exercise for HBC&quot;</span><br><span class="s">3119  HAE8D    = &quot;Doctor told take medicine for HBC&quot;</span><br><span class="s">3120  HAE9A    = &quot;Now eat less high fat foods for HBC&quot;</span><br><span class="s">3121  HAE9B    = &quot;Now losing weight to lower cholesterol&quot;</span><br><span class="s">3122  HAE9C    = &quot;Now exercising to lower cholesterol&quot;</span><br><span class="s">3123  HAE9D    = &quot;Take prescribed med to lower cholesterol&quot;</span><br><span class="s">3124  HAE10    = &quot;Check item. Mark first applicable box&quot;</span><br><span class="s">3125  HAE11A   = &quot;On own for HBC, eat fewer high fat foods&quot;</span><br><span class="s">3126  HAE11B   = &quot;On own for HBC, controlled/lost weight&quot;</span><br><span class="s">3127  HAE11C   = &quot;On own for HBC, exercise more&quot;</span><br><span class="s">3128  HAF1     = &quot;Ever had any pain or discomfort in chest&quot;</span><br><span class="s">3129  HAF2     = &quot;Get chest pain when walk uphill or hurry&quot;</span><br><span class="s">3130  HAF3     = &quot;Get chest pain if walk at ordinary pace&quot;</span><br><span class="s">3131  HAF4     = &quot;What do if get chest pain while walking&quot;</span><br><span class="s">3132  HAF5     = &quot;If stand still is chest pain relieved&quot;</span><br><span class="s">3133  HAF6     = &quot;How soon is the chest pain relieved&quot;</span><br><span class="s">3134  HAF7A    = &quot;Where is pain/discomfort located -area 1&quot;</span><br><span class="s">3135  HAF7B    = &quot;Where is pain/discomfort located -area 2&quot;</span><br><span class="s">3136  HAF7C    = &quot;Where is pain/discomfort located -area 3&quot;</span><br><span class="s">3137  HAF7D    = &quot;Where is pain/discomfort located -area 4&quot;</span><br><span class="s">3138  HAF7E    = &quot;Where is pain/discomfort located -area 5&quot;</span><br><span class="s">3139  HAF7F    = &quot;Where is pain/discomfort located -area 6&quot;</span><br><span class="s">3140  HAF7G    = &quot;Where is pain/discomfort located -area 7&quot;</span><br><span class="s">3141  HAF7H    = &quot;Where is pain/discomfort located -area 8&quot;</span><br><span class="s">3142  HAF9     = &quot;Ever had severe chest pain for half hr +&quot;</span><br><span class="s">3143  HAF10    = &quot;Doctor ever told you had a heart attack&quot;</span><br><span class="s">3144  HAF11    = &quot;How many heart attacks have you had&quot;</span><br><span class="s">3145  HAF12R   = &quot;Age when you had 1st heart attack -- yrs&quot;</span><br><span class="s">3146  HAF13R   = &quot;Age when had last heart attack -- yrs&quot;</span><br><span class="s">3147  HAF14    = &quot;Get pain in either leg while walking&quot;</span><br><span class="s">3148  HAF15    = &quot;Leg pain begin while stand still/sitting&quot;</span><br><span class="s">3149  HAF16    = &quot;In what part of leg do you feel it&quot;</span><br><span class="s">3150  HAF17    = &quot;Get leg pain when walk uphill or hurry&quot;</span><br><span class="s">3151  HAF18    = &quot;Get leg pain,walk at ordinary pace,level&quot;</span><br><span class="s">3152  HAF19    = &quot;Leg pain ever disappear while walking&quot;</span><br><span class="s">3153  HAF20    = &quot;If leg pain: stop walking or continue&quot;</span><br><span class="s">3154  HAF21    = &quot;Is leg pain relieved if you stand still&quot;</span><br><span class="s">3155  HAF22    = &quot;How soon is leg pain relieved&quot;</span><br><span class="s">3156  HAF23    = &quot;Weak/paralysis on face,arm,leg for &gt;5min&quot;</span><br><span class="s">3157  HAF24    = &quot;Numbness etc,1 side face/body for &gt;5 min&quot;</span><br><span class="s">3158  HAF25    = &quot;Loss of vision in 1/both eyes for &gt;5 min&quot;</span><br><span class="s">3159  HAF26    = &quot;Severe dizziness for more than 5 minutes&quot;</span><br><span class="s">3160  HAF27    = &quot;Problem with ability to speak/understand&quot;</span><br><span class="s">3161  HAG1     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3162  HAG2     = &quot;Ever had back pain most days for 1+ mo&quot;</span><br><span class="s">3163  HAG3     = &quot;Have you had back pain in past 12 months&quot;</span><br><span class="s">3164  HAG4A    = &quot;What part of back is pain - area 1&quot;</span><br><span class="s">3165  HAG4B    = &quot;What part of back is pain - area 2&quot;</span><br><span class="s">3166  HAG4C    = &quot;What part of back is pain - area 3&quot;</span><br><span class="s">3167  HAG5A    = &quot;Doctor told you had broken/fractured hip&quot;</span><br><span class="s">3168  HAG5B    = &quot;Doctor told had broken/fractured wrist&quot;</span><br><span class="s">3169  HAG5C    = &quot;Doctor told had broken/fractured spine&quot;</span><br><span class="s">3170  HAG6A    = &quot;Number of times you fractured your hip&quot;</span><br><span class="s">3171  HAG6B    = &quot;Number of times fractured your wrist&quot;</span><br><span class="s">3172  HAG6C    = &quot;Number of times fractured your spine&quot;</span><br><span class="s">3173  HAG7     = &quot;Check item. Refer to G5&quot;</span><br><span class="s">3174  HAG8A    = &quot;Site of fracture 1&quot;</span><br><span class="s">3175  HAG8B    = &quot;Site of fracture 2&quot;</span><br><span class="s">3176  HAG8C    = &quot;Site of fracture 3&quot;</span><br><span class="s">3177  HAG8D    = &quot;Site of fracture 4&quot;</span><br><span class="s">3178  HAG8E    = &quot;Site of fracture 5&quot;</span><br><span class="s">3179  HAG8F    = &quot;Site of fracture 6&quot;</span><br><span class="s">3180  HAG9AR   = &quot;Age when fractured ...- 1st time -- yrs&quot;</span><br><span class="s">3181  HAG9BR   = &quot;Age when fractured ...- 2nd time -- yrs&quot;</span><br><span class="s">3182  HAG9CR   = &quot;Age when fractured ...- 3rd time -- yrs&quot;</span><br><span class="s">3183  HAG9DR   = &quot;Age when fractured ...- 4th time -- yrs&quot;</span><br><span class="s">3184  HAG9ER   = &quot;Age when fractured ...- 5th time -- yrs&quot;</span><br><span class="s">3185  HAG9FR   = &quot;Age when fractured ...- 6th time -- yrs&quot;</span><br><span class="s">3186  HAG10A   = &quot;Fracture 1: low/hi fall or severe trauma&quot;</span><br><span class="s">3187  HAG10B   = &quot;Fracture 2: low/hi fall or severe trauma&quot;</span><br><span class="s">3188  HAG10C   = &quot;Fracture 3: low/hi fall or severe trauma&quot;</span><br><span class="s">3189  HAG10D   = &quot;Fracture 4: low/hi fall or severe trauma&quot;</span><br><span class="s">3190  HAG10E   = &quot;Fracture 5: low/hi fall or severe trauma&quot;</span><br><span class="s">3191  HAG10F   = &quot;Fracture 6: low/hi fall or severe trauma&quot;</span><br><span class="s">3192  HAG11    = &quot;Doctor ever told you had osteoporosis&quot;</span><br><span class="s">3193  HAG12    = &quot;Were you treated for osteoporosis&quot;</span><br><span class="s">3194  HAG13    = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3195  HAG14    = &quot;# times fall on floor/object past 12 mo&quot;</span><br><span class="s">3196  HAG15    = &quot;Fall cause broken bone, injury, med care&quot;</span><br><span class="s">3197  HAG16    = &quot;Ever had hand pain most days for 6+ wks&quot;</span><br><span class="s">3198  HAG17A   = &quot;Pain, stiff right hand, joint 1&quot;</span><br><span class="s">3199  HAG17B   = &quot;Pain, stiff right hand, joint 2&quot;</span><br><span class="s">3200  HAG17C   = &quot;Pain, stiff right hand, joint 3&quot;</span><br><span class="s">3201  HAG17D   = &quot;Pain, stiff right hand, joint 4&quot;</span><br><span class="s">3202  HAG17E   = &quot;Pain, stiff right hand, joint 5&quot;</span><br><span class="s">3203  HAG17F   = &quot;Pain, stiff right hand, joint 6&quot;</span><br><span class="s">3204  HAG17G   = &quot;Pain, stiff right hand, joint 7&quot;</span><br><span class="s">3205  HAG17H   = &quot;Pain, stiff right hand, joint 8&quot;</span><br><span class="s">3206  HAG17I   = &quot;Pain, stiff right hand, joint 9&quot;</span><br><span class="s">3207  HAG17J   = &quot;Pain, stiff right hand, joint 10&quot;</span><br><span class="s">3208  HAG17K   = &quot;Pain, stiff right hand, joint 11&quot;</span><br><span class="s">3209  HAG17L   = &quot;Pain, stiff right hand, joint 12&quot;</span><br><span class="s">3210  HAG17M   = &quot;Pain, stiff right hand, joint 13&quot;</span><br><span class="s">3211  HAG17N   = &quot;Pain, stiff right hand, joint 14&quot;</span><br><span class="s">3212  HAG17O   = &quot;Pain, stiff right hand, joint 15&quot;</span><br><span class="s">3213  HAG17FF  = &quot;Pain, stiff right hand, joint 32&quot;</span><br><span class="s">3214  HAG17P   = &quot;Pain, stiff left hand, joint 16&quot;</span><br><span class="s">3215  HAG17Q   = &quot;Pain, stiff left hand, joint 17&quot;</span><br><span class="s">3216  HAG17R   = &quot;Pain, stiff left hand, joint 18&quot;</span><br><span class="s">3217  HAG17S   = &quot;Pain, stiff left hand, joint 19&quot;</span><br><span class="s">3218  HAG17T   = &quot;Pain, stiff left hand, joint 20&quot;</span><br><span class="s">3219  HAG17U   = &quot;Pain, stiff left hand, joint 21&quot;</span><br><span class="s">3220  HAG17V   = &quot;Pain, stiff left hand, joint 22&quot;</span><br><span class="s">3221  HAG17W   = &quot;Pain, stiff left hand, joint 23&quot;</span><br><span class="s">3222  HAG17X   = &quot;Pain, stiff left hand, joint 24&quot;</span><br><span class="s">3223  HAG17Y   = &quot;Pain, stiff left hand, joint 25&quot;</span><br><span class="s">3224  HAG17Z   = &quot;Pain, stiff left hand, joint 26&quot;</span><br><span class="s">3225  HAG17AA  = &quot;Pain, stiff left hand, joint 27&quot;</span><br><span class="s">3226  HAG17BB  = &quot;Pain, stiff left hand, joint 28&quot;</span><br><span class="s">3227  HAG17CC  = &quot;Pain, stiff left hand, joint 29&quot;</span><br><span class="s">3228  HAG17DD  = &quot;Pain, stiff left hand, joint 30&quot;</span><br><span class="s">3229  HAG17EE  = &quot;Pain, stiff left hand, joint 31&quot;</span><br><span class="s">3230  HAG18    = &quot;Swelling in hands...most days for 6+ wks&quot;</span><br><span class="s">3231  HAG19A   = &quot;Swelling in right hand, joint 1&quot;</span><br><span class="s">3232  HAG19B   = &quot;Swelling in right hand, joint 2&quot;</span><br><span class="s">3233  HAG19C   = &quot;Swelling in right hand, joint 3&quot;</span><br><span class="s">3234  HAG19D   = &quot;Swelling in right hand, joint 4&quot;</span><br><span class="s">3235  HAG19E   = &quot;Swelling in right hand, joint 5&quot;</span><br><span class="s">3236  HAG19F   = &quot;Swelling in right hand, joint 6&quot;</span><br><span class="s">3237  HAG19G   = &quot;Swelling in right hand, joint 7&quot;</span><br><span class="s">3238  HAG19H   = &quot;Swelling in right hand, joint 8&quot;</span><br><span class="s">3239  HAG19I   = &quot;Swelling in right hand, joint 9&quot;</span><br><span class="s">3240  HAG19J   = &quot;Swelling in right hand, joint 10&quot;</span><br><span class="s">3241  HAG19K   = &quot;Swelling in right hand, joint 11&quot;</span><br><span class="s">3242  HAG19L   = &quot;Swelling in right hand, joint 12&quot;</span><br><span class="s">3243  HAG19M   = &quot;Swelling in right hand, joint 13&quot;</span><br><span class="s">3244  HAG19N   = &quot;Swelling in right hand, joint 14&quot;</span><br><span class="s">3245  HAG19O   = &quot;Swelling in right hand, joint 15&quot;</span><br><span class="s">3246  HAG19FF  = &quot;Swelling in right hand, joint 32&quot;</span><br><span class="s">3247  HAG19P   = &quot;Swelling in left  hand, joint 16&quot;</span><br><span class="s">3248  HAG19Q   = &quot;Swelling in left hand, joint 17&quot;</span><br><span class="s">3249  HAG19R   = &quot;Swelling in left hand, joint 18&quot;</span><br><span class="s">3250  HAG19S   = &quot;Swelling in left hand, joint 19&quot;</span><br><span class="s">3251  HAG19T   = &quot;Swelling in left hand, joint 20&quot;</span><br><span class="s">3252  HAG19U   = &quot;Swelling in left hand, joint 21&quot;</span><br><span class="s">3253  HAG19V   = &quot;Swelling in left hand, joint 22&quot;</span><br><span class="s">3254  HAG19W   = &quot;Swelling in left hand, joint 23&quot;</span><br><span class="s">3255  HAG19X   = &quot;Swelling in left hand, joint 24&quot;</span><br><span class="s">3256  HAG19Y   = &quot;Swelling in left hand, joint 25&quot;</span><br><span class="s">3257  HAG19Z   = &quot;Swelling in left hand, joint 26&quot;</span><br><span class="s">3258  HAG19AA  = &quot;Swelling in left hand, joint 27&quot;</span><br><span class="s">3259  HAG19BB  = &quot;Swelling in left hand, joint 28&quot;</span><br><span class="s">3260  HAG19CC  = &quot;Swelling in left hand, joint 29&quot;</span><br><span class="s">3261  HAG19DD  = &quot;Swelling in left hand, joint 30&quot;</span><br><span class="s">3262  HAG19EE  = &quot;Swelling in left hand, joint 31&quot;</span><br><span class="s">3263  HAG20    = &quot;Stiff hands in morn most days for 6+ wks&quot;</span><br><span class="s">3264  HAG21    = &quot;How long does morning stiffness last&quot;</span><br><span class="s">3265  HAG22    = &quot;Ever have knee pain most days for 6+ wks&quot;</span><br><span class="s">3266  HAG23    = &quot;Have pain in right, left, or both knees&quot;</span><br><span class="s">3267  HAG24    = &quot;Does knee hurt at rest as well as moving&quot;</span><br><span class="s">3268  HAG25    = &quot;Swelling in knees...most days for 6+ wks&quot;</span><br><span class="s">3269  HAG26    = &quot;Swelling in right, left, or both knees&quot;</span><br><span class="s">3270  HAG27    = &quot;Stiff knees in morn most days for 6+ wks&quot;</span><br><span class="s">3271  HAG28    = &quot;Stiffness in right, left, or both knees&quot;</span><br><span class="s">3272  HAG29    = &quot;How long morning knee stiffness last&quot;</span><br><span class="s">3273  HAG30    = &quot;Ever had hip pain most days for 6+ weeks&quot;</span><br><span class="s">3274  HAG31    = &quot;Have pain in right, left, or both hips&quot;</span><br><span class="s">3275  HAG32    = &quot;Doctor ever told you had hip dysplasia&quot;</span><br><span class="s">3276  HAG33    = &quot;Doctor ever told you had scoliosis&quot;</span><br><span class="s">3277  HAG34    = &quot;Do you have chronic limp (lasted &gt;3 mo)&quot;</span><br><span class="s">3278  HAH1     = &quot;Difficulty walking a quarter of a mile&quot;</span><br><span class="s">3279  HAH2     = &quot;Difficulty walking 10 steps without rest&quot;</span><br><span class="s">3280  HAH3     = &quot;Difficulty stooping, crouching, kneeling&quot;</span><br><span class="s">3281  HAH4     = &quot;Difficulty lifting or carrying 10 pounds&quot;</span><br><span class="s">3282  HAH5     = &quot;Difficulty doing chores around the house&quot;</span><br><span class="s">3283  HAH6     = &quot;Difficulty preparing own meals&quot;</span><br><span class="s">3284  HAH7     = &quot;Difficulty managing your money&quot;</span><br><span class="s">3285  HAH8     = &quot;Difficulty walking room to room, 1 level&quot;</span><br><span class="s">3286  HAH9     = &quot;Difficulty standing from armless chair&quot;</span><br><span class="s">3287  HAH10    = &quot;Difficulty getting in or out of bed&quot;</span><br><span class="s">3288  HAH11    = &quot;Difficulty eating&quot;</span><br><span class="s">3289  HAH12    = &quot;Difficulty dressing yourself&quot;</span><br><span class="s">3290  HAH13    = &quot;Need help with personal care needs&quot;</span><br><span class="s">3291  HAH14    = &quot;Need help in handling routine needs&quot;</span><br><span class="s">3292  HAH15    = &quot;Use device to help get around: cane, etc&quot;</span><br><span class="s">3293  HAH16    = &quot;Do you use any special eating utensils&quot;</span><br><span class="s">3294  HAH17    = &quot;Use aids or devices to help you dress&quot;</span><br><span class="s">3295  HAJ0     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3296  HAJ1     = &quot;Pain in area in diagram in past 12 mo&quot;</span><br><span class="s">3297  HAJ2A    = &quot;Most uncomfortable pain located - area 1&quot;</span><br><span class="s">3298  HAJ2B    = &quot;Most uncomfortable pain located - area 2&quot;</span><br><span class="s">3299  HAJ2C    = &quot;Most uncomfortable pain located - area 3&quot;</span><br><span class="s">3300  HAJ3S    = &quot;Past 12 mo, longest episode of pain -min&quot;</span><br><span class="s">3301  HAJ4     = &quot;How many days had pain in past 12 months&quot;</span><br><span class="s">3302  HAJ5     = &quot;Was pain continuous or did come and go&quot;</span><br><span class="s">3303  HAJ6     = &quot;If moved around,hurt more/less/no differ&quot;</span><br><span class="s">3304  HAJ7     = &quot;Ever seen doctor about this pain&quot;</span><br><span class="s">3305  HAJ8     = &quot;What did the doctor say caused the pain&quot;</span><br><span class="s">3306  HAJ9     = &quot;Doctor ever told you had gallstones&quot;</span><br><span class="s">3307  HAJ10    = &quot;Reason visit doctor when told gallstones&quot;</span><br><span class="s">3308  HAJ11    = &quot;Gallstone medical treatment, not surgery&quot;</span><br><span class="s">3309  HAJ12    = &quot;Have you ever had gallbladder surgery&quot;</span><br><span class="s">3310  HAJ13    = &quot;Age when you had gallbladder surgery&quot;</span><br><span class="s">3311  HAJ14    = &quot;Check item. Refer to J8, J10, and J12&quot;</span><br><span class="s">3312  HAJ15    = &quot;Pain continue after gallbladder surgery&quot;</span><br><span class="s">3313  HAJ16    = &quot;Doctor ever told you had gallstones&quot;</span><br><span class="s">3314  HAJ17    = &quot;Have you ever had gallbladder surgery&quot;</span><br><span class="s">3315  HAJ18R   = &quot;Age when had gallbladder surgery -- yrs&quot;</span><br><span class="s">3316  HAK1     = &quot;Have you ever had kidney stones&quot;</span><br><span class="s">3317  HAK2     = &quot;How many times you passed a kidney stone&quot;</span><br><span class="s">3318  HAK3A    = &quot;Ever had medication for kidney stones&quot;</span><br><span class="s">3319  HAK3A1   = &quot;Age had first kidney stone medication&quot;</span><br><span class="s">3320  HAK3B    = &quot;Ever had lithotripsy for kidney stones&quot;</span><br><span class="s">3321  HAK3B1R  = &quot;Age you had first lithotripsy-recode&quot;</span><br><span class="s">3322  HAK3C    = &quot;Ever had surgery to remove kidney stones&quot;</span><br><span class="s">3323  HAK3C1R  = &quot;Age 1st surgery for kidney stones-recode&quot;</span><br><span class="s">3324  HAK4     = &quot;# times had bladder infection&quot;</span><br><span class="s">3325  HAK5     = &quot;# of bladder infections in past 12 mos&quot;</span><br><span class="s">3326  HAK6     = &quot;Symptoms of bladder infection for &gt;3 mo&quot;</span><br><span class="s">3327  HAK7     = &quot;Interstitial cystitis or painful bladder&quot;</span><br><span class="s">3328  HAK8     = &quot;Age 1st had inter.cystitis/painful blad.&quot;</span><br><span class="s">3329  HAK9     = &quot;# times per night you get up to urinate&quot;</span><br><span class="s">3330  HAK10    = &quot;When urinate,feel like bladder not empty&quot;</span><br><span class="s">3331  HAK11    = &quot;Usually have trouble starting to urinate&quot;</span><br><span class="s">3332  HAK12    = &quot;Check item. Refer to sex and age of SP&quot;</span><br><span class="s">3333  HAK13    = &quot;Has urinary stream decreased over years&quot;</span><br><span class="s">3334  HAK14    = &quot;Ever had non-cancer prostate surgery&quot;</span><br><span class="s">3335  HAL1     = &quot;Cough most days, 3+ consecutive mo in yr&quot;</span><br><span class="s">3336  HAL2     = &quot;How many years have you had this cough&quot;</span><br><span class="s">3337  HAL3     = &quot;Bring up phlegm, 3+ consecutive mo in yr&quot;</span><br><span class="s">3338  HAL4     = &quot;How many years had trouble with phlegm&quot;</span><br><span class="s">3339  HAL5     = &quot;Shortness of breath, hurry/walk up hill&quot;</span><br><span class="s">3340  HAL6     = &quot;Had wheezing,whistle in chest past 12 mo&quot;</span><br><span class="s">3341  HAL7     = &quot;# episodes,wheezing/whistling past 12 mo&quot;</span><br><span class="s">3342  HAL8     = &quot;# times in hospital, wheezing, past 12mo&quot;</span><br><span class="s">3343  HAL9     = &quot;# times to doctor/ER, wheezing,past 12mo&quot;</span><br><span class="s">3344  HAL10    = &quot;No cold but chest sounds wheezy/whistles&quot;</span><br><span class="s">3345  HAL11A   = &quot;Stuffy, itchy, or runny nose, past 12 mo&quot;</span><br><span class="s">3346  HAL11B   = &quot;Watery, itchy eyes in past 12 months&quot;</span><br><span class="s">3347  HAL12    = &quot;# episodes itchy...nose/eyes, past 12 mo&quot;</span><br><span class="s">3348  HAL13    = &quot;Check item. Refer to L6 - L11&quot;</span><br><span class="s">3349  HAL14A   = &quot;Symptoms brought on by:exercise/cold air&quot;</span><br><span class="s">3350  HAL14B   = &quot;Symptoms brought on by: animals&quot;</span><br><span class="s">3351  HAL14C   = &quot;Symptoms brought on by: house dust&quot;</span><br><span class="s">3352  HAL14D   = &quot;Symptoms brought on by: work environment&quot;</span><br><span class="s">3353  HAL14E   = &quot;Symptoms brought on by: pollen&quot;</span><br><span class="s">3354  HAL15A   = &quot;Month pollen symptoms worse: all months&quot;</span><br><span class="s">3355  HAL15B   = &quot;Month pollen symptoms worse: January&quot;</span><br><span class="s">3356  HAL15C   = &quot;Month pollen symptoms worse: February&quot;</span><br><span class="s">3357  HAL15D   = &quot;Month pollen symptoms worse: March&quot;</span><br><span class="s">3358  HAL15E   = &quot;Month pollen symptoms worse: April&quot;</span><br><span class="s">3359  HAL15F   = &quot;Month pollen symptoms worse: May&quot;</span><br><span class="s">3360  HAL15G   = &quot;Month pollen symptoms worse: June&quot;</span><br><span class="s">3361  HAL15H   = &quot;Month pollen symptoms worse: July&quot;</span><br><span class="s">3362  HAL15I   = &quot;Month pollen symptoms worse: August&quot;</span><br><span class="s">3363  HAL15J   = &quot;Month pollen symptoms worse: September&quot;</span><br><span class="s">3364  HAL15K   = &quot;Month pollen symptoms worse: October&quot;</span><br><span class="s">3365  HAL15L   = &quot;Month pollen symptoms worse: November&quot;</span><br><span class="s">3366  HAL15M   = &quot;Month pollen symptoms worse: December&quot;</span><br><span class="s">3367  HAL16A   = &quot;Severe reaction from insect sting&quot;</span><br><span class="s">3368  HAL16B   = &quot;Severe reaction &lt; one hour after eating&quot;</span><br><span class="s">3369  HAL17    = &quot;Severe reaction after allergy shot/test&quot;</span><br><span class="s">3370  HAL18    = &quot;Ever give up/avoid pet due to allergies&quot;</span><br><span class="s">3371  HAL19A   = &quot;In past 12 months had: cold or flu&quot;</span><br><span class="s">3372  HAL19B   = &quot;In past 12 mo had: sinusitis/sinus prob&quot;</span><br><span class="s">3373  HAL19C   = &quot;In past 12 months had: pneumonia&quot;</span><br><span class="s">3374  HAL20A   = &quot;# episodes in past 12 month: cold or flu&quot;</span><br><span class="s">3375  HAL20B   = &quot;# episodes in past 12 months: sinusitis&quot;</span><br><span class="s">3376  HAL20C   = &quot;# episodes in past 12 months: pneumonia&quot;</span><br><span class="s">3377  HAM1     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3378  HAM2     = &quot;Receive meals from senior program&quot;</span><br><span class="s">3379  HAM3     = &quot;Are senior meals delivered to your home&quot;</span><br><span class="s">3380  HAM4     = &quot;How often do you eat breakfast&quot;</span><br><span class="s">3381  HAM5S    = &quot;How tall are you without shoes - inches&quot;</span><br><span class="s">3382  HAM6S    = &quot;How much do you weigh w/out clothes -lbs&quot;</span><br><span class="s">3383  HAM7     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3384  HAM8S    = &quot;How much did you weigh 10 years ago -lbs&quot;</span><br><span class="s">3385  HAM9S    = &quot;How much did you weigh at age 25 - lbs&quot;</span><br><span class="s">3386  HAM10S   = &quot;Up to present time,most ever weighed-lbs&quot;</span><br><span class="s">3387  HAM11    = &quot;Consider self over/under/right weight&quot;</span><br><span class="s">3388  HAM12    = &quot;Would you like to weigh more,less,same&quot;</span><br><span class="s">3389  HAM13    = &quot;Tried to lose weight in past 12 months&quot;</span><br><span class="s">3390  HAM14    = &quot;Past 12 mo, changed what eat, med reason&quot;</span><br><span class="s">3391  HAM15A   = &quot;Medical reason to change eating: obesity&quot;</span><br><span class="s">3392  HAM15B   = &quot;Medical reason to change eating: high BP&quot;</span><br><span class="s">3393  HAM15C   = &quot;Med reason to change eating: cholesterol&quot;</span><br><span class="s">3394  HAM15D   = &quot;Medical reason to change eating:diabetes&quot;</span><br><span class="s">3395  HAM15E   = &quot;Med reason change eating: heart disease&quot;</span><br><span class="s">3396  HAM15F   = &quot;Medical reason to change eating: allergy&quot;</span><br><span class="s">3397  HAM15G   = &quot;Medical reason to change eating: ulcer&quot;</span><br><span class="s">3398  HAM15H   = &quot;Med reason to change eating:other reason&quot;</span><br><span class="s">3399  HAM15K   = &quot;Med reason to change eating: pregnancy&quot;</span><br><span class="s">3400  HAM15L   = &quot;Med reason to change eating: arthritis&quot;</span><br><span class="s">3401  HAM15M   = &quot;Med reason to change eating: back pain&quot;</span><br><span class="s">3402  HAM15N   = &quot;Med reason change eating:stomach/gastric&quot;</span><br><span class="s">3403  HAM15O   = &quot;Med reason change eating: cancer/tumors&quot;</span><br><span class="s">3404  HAM15P   = &quot;Med reason change eat: dental/oral probs&quot;</span><br><span class="s">3405  HAM15Q   = &quot;Med reason to change eating:constipation&quot;</span><br><span class="s">3406  HAM15R   = &quot;Med reason change eat: gallstone/bladder&quot;</span><br><span class="s">3407  HAM15S   = &quot;Med reason change eat: intestinal probs&quot;</span><br><span class="s">3408  HAM15T   = &quot;Medical reason to change eating: hernia&quot;</span><br><span class="s">3409  HAM15U   = &quot;Medical reason to change eating: anemia&quot;</span><br><span class="s">3410  HAM15V   = &quot;Medical reason to change eating: stroke&quot;</span><br><span class="s">3411  HAM15W   = &quot;Med reason change eating: psychological&quot;</span><br><span class="s">3412  HAM15X   = &quot;Med to change eating:infections/viruses&quot;</span><br><span class="s">3413  HAM15Y   = &quot;Medical reason to change eating: dietary&quot;</span><br><span class="s">3414  HAM15Z   = &quot;Med reason to change eat: general health&quot;</span><br><span class="s">3415  HAN1AS   = &quot;Chocolate milk and hot cocoa - times/mo&quot;</span><br><span class="s">3416  HAN1BS   = &quot;Milk to drink or on cereal - times/month&quot;</span><br><span class="s">3417  HAN1C    = &quot;Question 1a check item, used in skip&quot;</span><br><span class="s">3418  HAN1D    = &quot;What type of milk - whole, 2%, 1%, skim&quot;</span><br><span class="s">3419  HAN1ES   = &quot;Yogurt and frozen yogurt - times/month&quot;</span><br><span class="s">3420  HAN1FS   = &quot;Ice cream,ice milk,milkshakes - times/mo&quot;</span><br><span class="s">3421  HAN1GS   = &quot;Cheese, all types - times/month&quot;</span><br><span class="s">3422  HAN1HS   = &quot;Pizza, calzone, lasagna - times/month&quot;</span><br><span class="s">3423  HAN1IS   = &quot;Cheese dishes - times/month&quot;</span><br><span class="s">3424  HAN2AS   = &quot;Stew or soup with vegetables - times/mo&quot;</span><br><span class="s">3425  HAN2BS   = &quot;Spaghetti/pasta w/ tomato sauce-times/mo&quot;</span><br><span class="s">3426  HAN2CS   = &quot;Bacon/sausage/processed meats - times/mo&quot;</span><br><span class="s">3427  HAN2DS   = &quot;Liver and other organ meats - times/mo&quot;</span><br><span class="s">3428  HAN2ES   = &quot;Beef - times/month&quot;</span><br><span class="s">3429  HAN2FS   = &quot;Pork and ham - times/month&quot;</span><br><span class="s">3430  HAN2GS   = &quot;Shrimp, clams, etc - times/mo&quot;</span><br><span class="s">3431  HAN2HS   = &quot;Fish - times/month&quot;</span><br><span class="s">3432  HAN2IS   = &quot;Chicken and turkey - times/month&quot;</span><br><span class="s">3433  HAN2JS   = &quot;Eggs - times/month&quot;</span><br><span class="s">3434  HAN3AS   = &quot;Orange juice, etc - times/month&quot;</span><br><span class="s">3435  HAN3BS   = &quot;Other fruit juices - times/month&quot;</span><br><span class="s">3436  HAN3CS   = &quot;Citrus fruits - times/month&quot;</span><br><span class="s">3437  HAN3DS   = &quot;Melons - times/month&quot;</span><br><span class="s">3438  HAN3ES   = &quot;Peaches, nectarines, etc - times/month&quot;</span><br><span class="s">3439  HAN3FS   = &quot;Any other fruits - times/month&quot;</span><br><span class="s">3440  HAN4AS   = &quot;Carrots - times/month&quot;</span><br><span class="s">3441  HAN4BS   = &quot;Broccoli - times/month&quot;</span><br><span class="s">3442  HAN4CS   = &quot;Brussel sprouts/cauliflower - times/mo&quot;</span><br><span class="s">3443  HAN4DS   = &quot;White potatoes - times/month&quot;</span><br><span class="s">3444  HAN4ES   = &quot;Sweet potatoes, yams, etc - times/month&quot;</span><br><span class="s">3445  HAN4FS   = &quot;Tomatoes - times/month&quot;</span><br><span class="s">3446  HAN4GS   = &quot;Spinach, greens, etc - times/month&quot;</span><br><span class="s">3447  HAN4HS   = &quot;Tossed salad - times/month&quot;</span><br><span class="s">3448  HAN4IS   = &quot;Cabbage, cole slaw, sauerkraut-times/mo&quot;</span><br><span class="s">3449  HAN4JS   = &quot;Hot red chili peppers - times/month&quot;</span><br><span class="s">3450  HAN4KS   = &quot;Other peppers - times/month&quot;</span><br><span class="s">3451  HAN4LS   = &quot;Any other vegetables - times/month&quot;</span><br><span class="s">3452  HAN5AS   = &quot;Beans, lentils, chickpeas - times/month&quot;</span><br><span class="s">3453  HAN5BS   = &quot;Peanuts, peanut butter, etc - times/mo&quot;</span><br><span class="s">3454  HAN5CS   = &quot;Cereals: All-Bran, etc - times/month&quot;</span><br><span class="s">3455  HAN5DS   = &quot;Cereals: Total, etc - times/month&quot;</span><br><span class="s">3456  HAN5ES   = &quot;All other cold cereals - times/month&quot;</span><br><span class="s">3457  HAN5FS   = &quot;Cooked, hot cereals - times/month&quot;</span><br><span class="s">3458  HAN5GS   = &quot;White bread, rolls, etc - times/month&quot;</span><br><span class="s">3459  HAN5HS   = &quot;Dark breads and rolls - times/month&quot;</span><br><span class="s">3460  HAN5IS   = &quot;Corn bread, muffins, tortillas-times/mo&quot;</span><br><span class="s">3461  HAN5JS   = &quot;Flour tortillas - times/month&quot;</span><br><span class="s">3462  HAN5KS   = &quot;Rice - times/month&quot;</span><br><span class="s">3463  HAN5LS   = &quot;Salted snacks - times/month&quot;</span><br><span class="s">3464  HAN6AS   = &quot;Cakes, cookies, brownies, etc - times/mo&quot;</span><br><span class="s">3465  HAN6BS   = &quot;Chocolate candy and fudge - times/month&quot;</span><br><span class="s">3466  HAN6CS   = &quot;Hi-C, Tang, Koolaid, etc - times/month&quot;</span><br><span class="s">3467  HAN6DS   = &quot;Diet colas, diet sodas, etc - times/mo&quot;</span><br><span class="s">3468  HAN6ES   = &quot;Regular colas and sodas - times/month&quot;</span><br><span class="s">3469  HAN6FS   = &quot;Regular coffee - times/month&quot;</span><br><span class="s">3470  HAN6GS   = &quot;Regular tea - times/month&quot;</span><br><span class="s">3471  HAN6HS   = &quot;Beer and lite beer - times/month&quot;</span><br><span class="s">3472  HAN6IS   = &quot;Wine, etc - times/month&quot;</span><br><span class="s">3473  HAN6JS   = &quot;Hard liquor - times/month&quot;</span><br><span class="s">3474  HAN7AS   = &quot;Margarine - times/month&quot;</span><br><span class="s">3475  HAN7BS   = &quot;Butter - times/month&quot;</span><br><span class="s">3476  HAN7CS   = &quot;Oil/vinegar, mayonnaise, etc - times/mo&quot;</span><br><span class="s">3477  HAN8     = &quot;Have I missed any foods/bev?&quot;</span><br><span class="s">3478  HAN8ACD  = &quot;1st other food or beverage - specified&quot;</span><br><span class="s">3479  HAN8AS   = &quot;1st other food or beverage - times/month&quot;</span><br><span class="s">3480  HAN8BCD  = &quot;2nd other food or beverage - specified&quot;</span><br><span class="s">3481  HAN8BS   = &quot;2nd other food or beverage - times/month&quot;</span><br><span class="s">3482  HAN8CCD  = &quot;3rd other food or beverage - specified&quot;</span><br><span class="s">3483  HAN8CS   = &quot;3rd other food or beverage - times/month&quot;</span><br><span class="s">3484  HAN8DCD  = &quot;4th other food or beverage - specified&quot;</span><br><span class="s">3485  HAN8DS   = &quot;4th other food or beverage - times/month&quot;</span><br><span class="s">3486  HAN8ECD  = &quot;5th other food or beverage - specified&quot;</span><br><span class="s">3487  HAN8ES   = &quot;5th other food or beverage - times/month&quot;</span><br><span class="s">3488  HAN8FCD  = &quot;6th other food or beverage - specified&quot;</span><br><span class="s">3489  HAN8FS   = &quot;6th other food or beverage - times/month&quot;</span><br><span class="s">3490  HAN9     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3491  HAN10A   = &quot;How often drink milk when child (5-12)&quot;</span><br><span class="s">3492  HAN10B   = &quot;How often drnk milk when teenager(13-17)&quot;</span><br><span class="s">3493  HAN10C   = &quot;How often drink milk, young adult(18-35)&quot;</span><br><span class="s">3494  HAN10D   = &quot;How often drnk milk,mid-age adult(36-65)&quot;</span><br><span class="s">3495  HAN10E   = &quot;How often drink milk,older adult(over65)&quot;</span><br><span class="s">3496  HAP1     = &quot;Have total blindness in one or both eyes&quot;</span><br><span class="s">3497  HAP1A    = &quot;Total blindness in 1 eye or in both eyes&quot;</span><br><span class="s">3498  HAP2     = &quot;Do you use glasses, contacts, or both&quot;</span><br><span class="s">3499  HAP3     = &quot;Trouble seeing w/one/both eyes w/glasses&quot;</span><br><span class="s">3500  HAP4     = &quot;W/glasses recognize friend across street&quot;</span><br><span class="s">3501  HAP5     = &quot;W/ glasses recognize friend across room&quot;</span><br><span class="s">3502  HAP6     = &quot;W/ glasses recognize friend arms length&quot;</span><br><span class="s">3503  HAP7     = &quot;W/glasses recognize friend face,close up&quot;</span><br><span class="s">3504  HAP8     = &quot;W/ glasses see enough to read news print&quot;</span><br><span class="s">3505  HAP9     = &quot;W/ glasses see enough to read headlines&quot;</span><br><span class="s">3506  HAP10    = &quot;Have total deafness in one or both ears&quot;</span><br><span class="s">3507  HAP10A   = &quot;Total deafness in 1 ear or in both ears&quot;</span><br><span class="s">3508  HAP11    = &quot;Do you use a hearing aid&quot;</span><br><span class="s">3509  HAP12    = &quot;Have trouble hearing even w/hearing aid&quot;</span><br><span class="s">3510  HAP13    = &quot;W/ aid can hear most things people say&quot;</span><br><span class="s">3511  HAP14    = &quot;W/aid can hear only few words/loud noise&quot;</span><br><span class="s">3512  HAP15    = &quot;Difficulty using phone, hearing problems&quot;</span><br><span class="s">3513  HAP16    = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3514  HAP17A1  = &quot;Repeat item: &#39;apple&#39; (first trial)&quot;</span><br><span class="s">3515  HAP17A2  = &quot;Repeat item: &#39;table&#39; (first trial)&quot;</span><br><span class="s">3516  HAP17A3  = &quot;Repeat item: &#39;penny&#39; (first trial)&quot;</span><br><span class="s">3517  HAP17B   = &quot;Number of trials until objects learned&quot;</span><br><span class="s">3518  HAP18A   = &quot;Dollars left: have $20 and take away $3&quot;</span><br><span class="s">3519  HAP18B   = &quot;Dollars left: subtract $3 from $17&quot;</span><br><span class="s">3520  HAP18C   = &quot;Dollars left: subtract $3 from $14&quot;</span><br><span class="s">3521  HAP18D   = &quot;Dollars left: subtract $3 from $11&quot;</span><br><span class="s">3522  HAP18E   = &quot;Dollars left: subtract $3 from $8&quot;</span><br><span class="s">3523  HAP19A   = &quot;Repeat item: &#39;apple&#39; (second trial)&quot;</span><br><span class="s">3524  HAP19B   = &quot;Repeat item: &#39;table&#39; (second trial)&quot;</span><br><span class="s">3525  HAP19C   = &quot;Repeat item: &#39;penny&#39; (second trial)&quot;</span><br><span class="s">3526  HAQ1     = &quot;Describe natural teeth: excellent...poor&quot;</span><br><span class="s">3527  HAQ2A    = &quot;Dental care needed:teeth filled/replaced&quot;</span><br><span class="s">3528  HAQ2B    = &quot;Dental care needed: teeth pulled&quot;</span><br><span class="s">3529  HAQ2C    = &quot;Dental care needed: gum treatment&quot;</span><br><span class="s">3530  HAQ2D    = &quot;Dental care needed: denture work&quot;</span><br><span class="s">3531  HAQ2E    = &quot;Dental care needed: relief of pain&quot;</span><br><span class="s">3532  HAQ2F    = &quot;Dental care needed:to improve appearance&quot;</span><br><span class="s">3533  HAQ2G    = &quot;Dental care needed: other&quot;</span><br><span class="s">3534  HAQ2I    = &quot;Dental care needed: nothing&quot;</span><br><span class="s">3535  HAQ2K    = &quot;Dental care needed: cleaning&quot;</span><br><span class="s">3536  HAQ2L    = &quot;Dental care needed: checkup&quot;</span><br><span class="s">3537  HAQ3S    = &quot;# days ago last visit dentist/hygienist&quot;</span><br><span class="s">3538  HAQ4     = &quot;How often do you go to dentist/hygienist&quot;</span><br><span class="s">3539  HAQ5     = &quot;Past 12 mo,had cold sores/fever blisters&quot;</span><br><span class="s">3540  HAQ6     = &quot;Past 12 months, had canker/mouth sores&quot;</span><br><span class="s">3541  HAQ7     = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3542  HAQ8     = &quot;Ever received orthodontic treatment&quot;</span><br><span class="s">3543  HAQ9     = &quot;Age started recent orthodontic treatment&quot;</span><br><span class="s">3544  HAR1     = &quot;Have you smoked 100+ cigarettes in life&quot;</span><br><span class="s">3545  HAR2     = &quot;Age when you started smoking regularly&quot;</span><br><span class="s">3546  HAR3     = &quot;Do you smoke cigarettes now&quot;</span><br><span class="s">3547  HAR4S    = &quot;# cigarettes smoked per day&quot;</span><br><span class="s">3548  HAR5     = &quot;How many yrs have you smoked this amount&quot;</span><br><span class="s">3549  HAR6     = &quot;Ever period of 1+ years when smoked more&quot;</span><br><span class="s">3550  HAR7S    = &quot;# cigarettes per day when smoking most&quot;</span><br><span class="s">3551  HAR8     = &quot;How many years did you smoke that amount&quot;</span><br><span class="s">3552  HAR9     = &quot;Ever quit smoking for one year or longer&quot;</span><br><span class="s">3553  HAR10    = &quot;How many years not smoked since started&quot;</span><br><span class="s">3554  HAR11R   = &quot;Age last smoke cigarettes reg -- yrs&quot;</span><br><span class="s">3555  HAR12S   = &quot;# cigarettes smoked per day at that time&quot;</span><br><span class="s">3556  HAR13    = &quot;Quit smoking,health problem from smoking&quot;</span><br><span class="s">3557  HAR14    = &quot;Ever used chewing tabacco or snuff&quot;</span><br><span class="s">3558  HAR15    = &quot;Age 1st use chew tobacco/snuff regularly&quot;</span><br><span class="s">3559  HAR16    = &quot;Do you use chewing tobacco or snuff now&quot;</span><br><span class="s">3560  HAR17    = &quot;Which - chewing tobacco or snuff&quot;</span><br><span class="s">3561  HAR18AS  = &quot;# containers of snuff used per week&quot;</span><br><span class="s">3562  HAR18BS  = &quot;# containers of chewing tobacco per week&quot;</span><br><span class="s">3563  HAR19A   = &quot;Place in right, left, or front of mouth&quot;</span><br><span class="s">3564  HAR19B   = &quot;Place in top or bottom of mouth&quot;</span><br><span class="s">3565  HAR20R   = &quot;Age last use chew tob/snuf reg -- yrs&quot;</span><br><span class="s">3566  HAR21    = &quot;Which used, chewing tobacco or snuff&quot;</span><br><span class="s">3567  HAR22    = &quot;Quit chew/snuff, related health problem&quot;</span><br><span class="s">3568  HAR23    = &quot;Ever smoke at least 20 cigars in life&quot;</span><br><span class="s">3569  HAR24    = &quot;Do you now smoke cigars&quot;</span><br><span class="s">3570  HAR25    = &quot;How many cigars do you smoke per day&quot;</span><br><span class="s">3571  HAR26    = &quot;Ever smoke 20 pipes of tobacco in life&quot;</span><br><span class="s">3572  HAR27    = &quot;Do you now smoke a pipe&quot;</span><br><span class="s">3573  HAR28    = &quot;How many pipefuls tobacco smoke per day&quot;</span><br><span class="s">3574  HAS1     = &quot;Past 2 wks, did you work at job/business&quot;</span><br><span class="s">3575  HAS2     = &quot;Past 2 weeks, did you have job/business&quot;</span><br><span class="s">3576  HAS3     = &quot;Looking for work or on layoff from job&quot;</span><br><span class="s">3577  HAS4     = &quot;Which, looking for work or on layoff&quot;</span><br><span class="s">3578  HAS5     = &quot;Check item.  Refer to S2&quot;</span><br><span class="s">3579  HAS8R    = &quot;What kind of business or industry -- rcd&quot;</span><br><span class="s">3580  HAS9R    = &quot;What kind of work were you doing -- rcd&quot;</span><br><span class="s">3581  HAS11    = &quot;Class of worker&quot;</span><br><span class="s">3582  HAS12S   = &quot;How long in months worked at that job&quot;</span><br><span class="s">3583  HAS13    = &quot;Check item. Refer to S1 and S2&quot;</span><br><span class="s">3584  HAS14    = &quot;At work, hours per day can smell smoking&quot;</span><br><span class="s">3585  HAS15    = &quot;In job, ever wear protective equipment&quot;</span><br><span class="s">3586  HAS16A   = &quot;Ever wear eye protection&quot;</span><br><span class="s">3587  HAS16B   = &quot;Ever wear protective gloves&quot;</span><br><span class="s">3588  HAS16C   = &quot;Ever wear dust mask&quot;</span><br><span class="s">3589  HAS16D   = &quot;Ever wear respirator&quot;</span><br><span class="s">3590  HAS17    = &quot;What kind of work were you doing longest&quot;</span><br><span class="s">3591  HAS17R   = &quot;What kind of work doing longest  -- rcd&quot;</span><br><span class="s">3592  HAS18    = &quot;How long this kind of work-all employers&quot;</span><br><span class="s">3593  HAS19    = &quot;What business/industry worked in longest&quot;</span><br><span class="s">3594  HAS19R   = &quot;Business/industry worked in longest--rcd&quot;</span><br><span class="s">3595  HAS21    = &quot;Check item. Refer to S1 and S12&quot;</span><br><span class="s">3596  HAS22    = &quot;What were you doing most of past 12 mo&quot;</span><br><span class="s">3597  HAS23    = &quot;Limited in work by health problem&quot;</span><br><span class="s">3598  HAS24    = &quot;Limited in housework by health problem&quot;</span><br><span class="s">3599  HAS25    = &quot;Limited in activities by health problem&quot;</span><br><span class="s">3600  HAS26    = &quot;Ever change work/housework, health prob&quot;</span><br><span class="s">3601  HAS27A   = &quot;Did you change permanently to easier job&quot;</span><br><span class="s">3602  HAS27B   = &quot;Did you change temporarily to easier job&quot;</span><br><span class="s">3603  HAS27C   = &quot;Did you cut down to part-time work only&quot;</span><br><span class="s">3604  HAS27D   = &quot;Did you have to stop work for few months&quot;</span><br><span class="s">3605  HAS27E   = &quot;Did you retire because of a disability&quot;</span><br><span class="s">3606  HAS27F   = &quot;Did you have to cut down on housework&quot;</span><br><span class="s">3607  HAS27G   = &quot;Did you stop doing all housework&quot;</span><br><span class="s">3608  HAS27H   = &quot;Did you make some other change&quot;</span><br><span class="s">3609  HAS27HCD = &quot;Other specify - coded&quot;</span><br><span class="s">3610  HAS28    = &quot;Language you mainly speak at home&quot;</span><br><span class="s">3611  HAS29    = &quot;Language you mainly speak at work/school&quot;</span><br><span class="s">3612  HAT1S    = &quot;Past mo,how often walk mile without stop&quot;</span><br><span class="s">3613  HAT1MET  = &quot;Walking activity - intensity rating&quot;</span><br><span class="s">3614  HAT2     = &quot;In the past month, did you jog or run&quot;</span><br><span class="s">3615  HAT2MET  = &quot;Jog or run activity - intensity rating&quot;</span><br><span class="s">3616  HAT3S    = &quot;Past month, how often did you jog or run&quot;</span><br><span class="s">3617  HAT4     = &quot;Past mo, ride bicycle/exercise bicycle&quot;</span><br><span class="s">3618  HAT4MET  = &quot;Bicycle activity - intensity rating&quot;</span><br><span class="s">3619  HAT5S    = &quot;Past mo, how often ride bike/exer bike&quot;</span><br><span class="s">3620  HAT6     = &quot;In the past month did you swim&quot;</span><br><span class="s">3621  HAT6MET  = &quot;Swim activity - intensity rating&quot;</span><br><span class="s">3622  HAT7S    = &quot;Past month, how often did you swim&quot;</span><br><span class="s">3623  HAT8     = &quot;Past mo, do aerobics or aerobic dancing&quot;</span><br><span class="s">3624  HAT8MET  = &quot;Aerobics activity - intensity rating&quot;</span><br><span class="s">3625  HAT9S    = &quot;Past mo, how often did aerobics/dancing&quot;</span><br><span class="s">3626  HAT10    = &quot;Past month, did you do other dancing&quot;</span><br><span class="s">3627  HAT10MET = &quot;Other dancing activity -intensity rating&quot;</span><br><span class="s">3628  HAT11S   = &quot;Past month, how often did other dancing&quot;</span><br><span class="s">3629  HAT12    = &quot;Past month, do calisthenics or exercises&quot;</span><br><span class="s">3630  HAT12MET = &quot;Calisthenics activity - intensity rating&quot;</span><br><span class="s">3631  HAT13S   = &quot;Past mo, how often did calisthenics/exer&quot;</span><br><span class="s">3632  HAT14    = &quot;Past month, did you do garden/yard work&quot;</span><br><span class="s">3633  HAT14MET = &quot;Garden/yard activity - intensity rating&quot;</span><br><span class="s">3634  HAT15S   = &quot;Past mo, how often did garden/yard work&quot;</span><br><span class="s">3635  HAT16    = &quot;In the past month, did you lift weights&quot;</span><br><span class="s">3636  HAT16MET = &quot;Lift weights activity - intensity rating&quot;</span><br><span class="s">3637  HAT17S   = &quot;Past mo, how often did you lift weights&quot;</span><br><span class="s">3638  HAT18    = &quot;Past mo, any other exercises, sports ...&quot;</span><br><span class="s">3639  HAT19CD  = &quot;PROBE: What - coded&quot;</span><br><span class="s">3640  HAT19MET = &quot;Other activity - intensity rating&quot;</span><br><span class="s">3641  HAT20S   = &quot;Past mo, how often did other activity&quot;</span><br><span class="s">3642  HAT21CD  = &quot;PROBE: Any others - coded (activity 2)&quot;</span><br><span class="s">3643  HAT21MET = &quot;Other activity 2 - intensity rating&quot;</span><br><span class="s">3644  HAT22S   = &quot;Past mo, how often did other activity 2&quot;</span><br><span class="s">3645  HAT23CD  = &quot;PROBE: Any others - coded (activity 3)&quot;</span><br><span class="s">3646  HAT23MET = &quot;Other activity 3 - intensity rating&quot;</span><br><span class="s">3647  HAT24S   = &quot;Past mo, how often did other activity 3&quot;</span><br><span class="s">3648  HAT25CD  = &quot;PROBE: Any others - Coded (activity 4)&quot;</span><br><span class="s">3649  HAT25MET = &quot;Other activity 4 - intensity rating&quot;</span><br><span class="s">3650  HAT26S   = &quot;Past mo, how often did other activity 4&quot;</span><br><span class="s">3651  HAT27    = &quot;Compare activity for past mo to past yr&quot;</span><br><span class="s">3652  HAT28    = &quot;Active compared with men/women your age&quot;</span><br><span class="s">3653  HAT29    = &quot;Check item. Refer to age of SP&quot;</span><br><span class="s">3654  HAT30    = &quot;Active now compared with self 10 yrs ago&quot;</span><br><span class="s">3655  HAV1S    = &quot;# times/week on phone w/ family, friends&quot;</span><br><span class="s">3656  HAV2S    = &quot;How often per yr together w/friends/rels&quot;</span><br><span class="s">3657  HAV3S    = &quot;How often per year you visit w/neighbors&quot;</span><br><span class="s">3658  HAV4S    = &quot;How often per yr attend church/services&quot;</span><br><span class="s">3659  HAV5     = &quot;Do you belong to any clubs or groups&quot;</span><br><span class="s">3660  HAV6S    = &quot;How often per year attend club meetings&quot;</span><br><span class="s">3661  HAV7R    = &quot;Weeks lived at this address -- recode&quot;</span><br><span class="s">3662  HAV8     = &quot;How long lived in this city/town/area&quot;</span><br><span class="s">3663  HAV9     = &quot;Have you lived anywhere longer than here&quot;</span><br><span class="s">3664  HAV10R   = &quot;Where did you live longest -- recode&quot;</span><br><span class="s">3665  HAV11    = &quot;How long did you live in longest place&quot;</span><br><span class="s">3666  HAV12R   = &quot;Where were you born -- recode&quot;</span><br><span class="s">3667  HAV13R   = &quot;If not born US, how long lived US -- yrs&quot;</span><br><span class="s">3668  HAX1A    = &quot;Taken vitamins/minerals in past month&quot;</span><br><span class="s">3669  HAX1B    = &quot;Taken prescriptn medicines in past month&quot;</span><br><span class="s">3670  HAX1C    = &quot;Taken antacids in past month&quot;</span><br><span class="s">3671  HAX2A    = &quot;How many vitamins/minerals taken&quot;</span><br><span class="s">3672  HAX2B    = &quot;How many prescription medicines taken&quot;</span><br><span class="s">3673  HAX2C    = &quot;How many antacids taken&quot;</span><br><span class="s">3674  HAX3CG   = &quot;Certainty index code-1st&quot;</span><br><span class="s">3675  HAX3DG   = &quot;Product class-1st&quot;</span><br><span class="s">3676  HAX6SG   = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">3677  HAX8SG   = &quot;How long been taking (month)-1st&quot;</span><br><span class="s">3678  HAX3CH   = &quot;Certainty index code-2nd&quot;</span><br><span class="s">3679  HAX3DH   = &quot;Product class-2nd&quot;</span><br><span class="s">3680  HAX6SH   = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">3681  HAX8SH   = &quot;How long been taking (month)-2nd&quot;</span><br><span class="s">3682  HAX3CI   = &quot;Certainty index code-3rd&quot;</span><br><span class="s">3683  HAX3DI   = &quot;Product class-3rd&quot;</span><br><span class="s">3684  HAX6SI   = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">3685  HAX8SI   = &quot;How long been taking (month)-3rd&quot;</span><br><span class="s">3686  HAX3CJ   = &quot;Certainty index code-4th&quot;</span><br><span class="s">3687  HAX3DJ   = &quot;Product class-4th&quot;</span><br><span class="s">3688  HAX6SJ   = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">3689  HAX8SJ   = &quot;How long been taking (month)-4th&quot;</span><br><span class="s">3690  HAX3CK   = &quot;Certainty index code-5th&quot;</span><br><span class="s">3691  HAX3DK   = &quot;Product class-5th&quot;</span><br><span class="s">3692  HAX6SK   = &quot;How often did you take in past month-5th&quot;</span><br><span class="s">3693  HAX8SK   = &quot;How long been taking (month)-5th&quot;</span><br><span class="s">3694  HAX3CL   = &quot;Certainty index code-6th&quot;</span><br><span class="s">3695  HAX3DL   = &quot;Product class-6th&quot;</span><br><span class="s">3696  HAX6SL   = &quot;How often did you take in past month-6th&quot;</span><br><span class="s">3697  HAX8SL   = &quot;How long been taking (month)-6th&quot;</span><br><span class="s">3698  HAX3CM   = &quot;Certainty index code-7th&quot;</span><br><span class="s">3699  HAX3DM   = &quot;Product class-7th&quot;</span><br><span class="s">3700  HAX6SM   = &quot;How often did you take in past month-7th&quot;</span><br><span class="s">3701  HAX8SM   = &quot;How long been taking (month)-7th&quot;</span><br><span class="s">3702  HAX3CN   = &quot;Certainty index code-8th&quot;</span><br><span class="s">3703  HAX3DN   = &quot;Product class-8th&quot;</span><br><span class="s">3704  HAX6SN   = &quot;How often did you take in past month-8th&quot;</span><br><span class="s">3705  HAX8SN   = &quot;How long been taking (month)-8th&quot;</span><br><span class="s">3706  HAX3CO   = &quot;Certainty index code-9th&quot;</span><br><span class="s">3707  HAX3DO   = &quot;Product class-9th&quot;</span><br><span class="s">3708  HAX6SO   = &quot;How often did you take in past month-9th&quot;</span><br><span class="s">3709  HAX8SO   = &quot;How long been taking (month)-9th&quot;</span><br><span class="s">3710  HAX3CP   = &quot;Certainty index code-10th&quot;</span><br><span class="s">3711  HAX3DP   = &quot;Product class-10th&quot;</span><br><span class="s">3712  HAX6SP   = &quot;How often did you take in past mnth-10th&quot;</span><br><span class="s">3713  HAX8SP   = &quot;How long been taking (month)-10th&quot;</span><br><span class="s">3714  HAX3CQ   = &quot;Certainty index code-11th&quot;</span><br><span class="s">3715  HAX3DQ   = &quot;Product class-11th&quot;</span><br><span class="s">3716  HAX6SQ   = &quot;How often did you take in past mnth-11th&quot;</span><br><span class="s">3717  HAX8SQ   = &quot;How long been taking (month)-11th&quot;</span><br><span class="s">3718  HAX3CR   = &quot;Certainty index code-12th&quot;</span><br><span class="s">3719  HAX3DR   = &quot;Product class-12th&quot;</span><br><span class="s">3720  HAX6SR   = &quot;How often did you take in past mnth-12th&quot;</span><br><span class="s">3721  HAX8SR   = &quot;How long been taking (month)-12th&quot;</span><br><span class="s">3722  HAX3CS   = &quot;Certainty index code-13th&quot;</span><br><span class="s">3723  HAX3DS   = &quot;Product class-13th&quot;</span><br><span class="s">3724  HAX6SS   = &quot;How often did you take in past mnth-13th&quot;</span><br><span class="s">3725  HAX8SS   = &quot;How long been taking (month)-13th&quot;</span><br><span class="s">3726  HAX3CT   = &quot;Certainty index code-14th&quot;</span><br><span class="s">3727  HAX3DT   = &quot;Product class-14th&quot;</span><br><span class="s">3728  HAX6ST   = &quot;How often did you take in past mnth-14th&quot;</span><br><span class="s">3729  HAX8ST   = &quot;How long been taking (month)-14th&quot;</span><br><span class="s">3730  HAX3CU   = &quot;Certainty index code-15th&quot;</span><br><span class="s">3731  HAX3DU   = &quot;Product class-15th&quot;</span><br><span class="s">3732  HAX6SU   = &quot;How often did you take in past mnth-15th&quot;</span><br><span class="s">3733  HAX8SU   = &quot;How long been taking (month)-15th&quot;</span><br><span class="s">3734  HAX3CV   = &quot;Certainty index code-16th&quot;</span><br><span class="s">3735  HAX3DV   = &quot;Product class-16th&quot;</span><br><span class="s">3736  HAX6SV   = &quot;How often did you take in past mnth-16th&quot;</span><br><span class="s">3737  HAX8SV   = &quot;How long been taking (month)-16th&quot;</span><br><span class="s">3738  HAX3CW   = &quot;Certainty index code-17th&quot;</span><br><span class="s">3739  HAX3DW   = &quot;Product class-17th&quot;</span><br><span class="s">3740  HAX6SW   = &quot;How often did you take in past mnth-17th&quot;</span><br><span class="s">3741  HAX8SW   = &quot;How long been taking (month)-17th&quot;</span><br><span class="s">3742  HAX9DG   = &quot;Primary drug class code-1st&quot;</span><br><span class="s">3743  HAX9EG   = &quot;Secondary drug class code-1st&quot;</span><br><span class="s">3744  HAX9FG   = &quot;Tertiary drug class code-1st&quot;</span><br><span class="s">3745  HAX11AG  = &quot;ICD-9-CM code-1st&quot;</span><br><span class="s">3746  HAX12SG  = &quot;For how long been taking (days)-1st&quot;</span><br><span class="s">3747  HAX9DH   = &quot;Primary drug class code-2nd&quot;</span><br><span class="s">3748  HAX9EH   = &quot;Secondary drug class code-2nd&quot;</span><br><span class="s">3749  HAX9FH   = &quot;Tertiary drug class code-2nd&quot;</span><br><span class="s">3750  HAX11AH  = &quot;ICD-9-CM code-2nd&quot;</span><br><span class="s">3751  HAX12SH  = &quot;For how long been taking (days)-2nd&quot;</span><br><span class="s">3752  HAX9DI   = &quot;Primary drug class code-3rd&quot;</span><br><span class="s">3753  HAX9EI   = &quot;Secondary drug class code-3rd&quot;</span><br><span class="s">3754  HAX9FI   = &quot;Tertiary drug class code-3rd&quot;</span><br><span class="s">3755  HAX11AI  = &quot;ICD-9-CM code-3rd&quot;</span><br><span class="s">3756  HAX12SI  = &quot;For how long been taking (days)-3rd&quot;</span><br><span class="s">3757  HAX9DJ   = &quot;Primary drug class code-4th&quot;</span><br><span class="s">3758  HAX9EJ   = &quot;Secondary drug class code-4th&quot;</span><br><span class="s">3759  HAX9FJ   = &quot;Tertiary drug class code-4th&quot;</span><br><span class="s">3760  HAX11AJ  = &quot;ICD-9-CM code-4th&quot;</span><br><span class="s">3761  HAX12SJ  = &quot;For how long been taking (days)-4th&quot;</span><br><span class="s">3762  HAX9DK   = &quot;Primary drug class code-5th&quot;</span><br><span class="s">3763  HAX9EK   = &quot;Secondary drug class code-5th&quot;</span><br><span class="s">3764  HAX9FK   = &quot;Tertiary drug class code-5th&quot;</span><br><span class="s">3765  HAX11AK  = &quot;ICD-9-CM code-5th&quot;</span><br><span class="s">3766  HAX12SK  = &quot;For how long been taking (days)-5th&quot;</span><br><span class="s">3767  HAX9DL   = &quot;Primary drug class code-6th&quot;</span><br><span class="s">3768  HAX9EL   = &quot;Secondary drug class code-6th&quot;</span><br><span class="s">3769  HAX9FL   = &quot;Tertiary drug class code-6th&quot;</span><br><span class="s">3770  HAX11AL  = &quot;ICD-9-CM code-6th&quot;</span><br><span class="s">3771  HAX12SL  = &quot;For how long been taking (days)-6th&quot;</span><br><span class="s">3772  HAX9DM   = &quot;Primary drug class code-7th&quot;</span><br><span class="s">3773  HAX9EM   = &quot;Secondary drug class code-7th&quot;</span><br><span class="s">3774  HAX9FM   = &quot;Tertiary drug class code-7th&quot;</span><br><span class="s">3775  HAX11AM  = &quot;ICD-9-CM code-7th&quot;</span><br><span class="s">3776  HAX12SM  = &quot;For how long been taking (days)-7th&quot;</span><br><span class="s">3777  HAX9DN   = &quot;Primary drug class code-8th&quot;</span><br><span class="s">3778  HAX9EN   = &quot;Secondary drug class code-8th&quot;</span><br><span class="s">3779  HAX9FN   = &quot;Tertiary drug class code-8th&quot;</span><br><span class="s">3780  HAX11AN  = &quot;ICD-9-CM code-8th&quot;</span><br><span class="s">3781  HAX12SN  = &quot;For how long been taking (days)-8th&quot;</span><br><span class="s">3782  HAX9DO   = &quot;Primary drug class code-9th&quot;</span><br><span class="s">3783  HAX9EO   = &quot;Secondary drug class code-9th&quot;</span><br><span class="s">3784  HAX9FO   = &quot;Tertiary drug class code-9th&quot;</span><br><span class="s">3785  HAX11AO  = &quot;ICD-9-CM code-9th&quot;</span><br><span class="s">3786  HAX12SO  = &quot;For how long been taking (days)-9th&quot;</span><br><span class="s">3787  HAX9DP   = &quot;Primary drug class code-10th&quot;</span><br><span class="s">3788  HAX9EP   = &quot;Secondary drug class code-10th&quot;</span><br><span class="s">3789  HAX9FP   = &quot;Tertiary drug class code-10th&quot;</span><br><span class="s">3790  HAX11AP  = &quot;ICD-9-CM code-10th&quot;</span><br><span class="s">3791  HAX12SP  = &quot;For how long been taking (days)-10th&quot;</span><br><span class="s">3792  HAX9DQ   = &quot;Primary drug class code-11th&quot;</span><br><span class="s">3793  HAX9EQ   = &quot;Secondary drug class code-11th&quot;</span><br><span class="s">3794  HAX9FQ   = &quot;Tertiary drug class code-11th&quot;</span><br><span class="s">3795  HAX11AQ  = &quot;ICD-9-CM code-11th&quot;</span><br><span class="s">3796  HAX12SQ  = &quot;For how long been taking (days)-11th&quot;</span><br><span class="s">3797  HAX9DR   = &quot;Primary drug class code-12th&quot;</span><br><span class="s">3798  HAX9ER   = &quot;Secondary drug class code-12th&quot;</span><br><span class="s">3799  HAX9FR   = &quot;Tertiary drug class code-12th&quot;</span><br><span class="s">3800  HAX11AR  = &quot;ICD-9-CM code-12th&quot;</span><br><span class="s">3801  HAX12SR  = &quot;For how long been taking (days)-12th&quot;</span><br><span class="s">3802  HAX9DS   = &quot;Primary drug class code-13th&quot;</span><br><span class="s">3803  HAX9ES   = &quot;Secondary drug class code-13th&quot;</span><br><span class="s">3804  HAX9FS   = &quot;Tertiary drug class code-13th&quot;</span><br><span class="s">3805  HAX11AS  = &quot;ICD-9-CM code-13th&quot;</span><br><span class="s">3806  HAX12SS  = &quot;For how long been taking (days)-13th&quot;</span><br><span class="s">3807  HAX9DT   = &quot;Primary drug class code-14th&quot;</span><br><span class="s">3808  HAX9ET   = &quot;Secondary drug class code-14th&quot;</span><br><span class="s">3809  HAX9FT   = &quot;Tertiary drug class code-14th&quot;</span><br><span class="s">3810  HAX11AT  = &quot;ICD-9-CM code-14th&quot;</span><br><span class="s">3811  HAX12ST  = &quot;For how long been taking (days)-14th&quot;</span><br><span class="s">3812  HAX9DU   = &quot;Primary drug class code-15th&quot;</span><br><span class="s">3813  HAX9EU   = &quot;Secondary drug class code-15th&quot;</span><br><span class="s">3814  HAX9FU   = &quot;Tertiary drug class code-15th&quot;</span><br><span class="s">3815  HAX11AU  = &quot;ICD-9-CM code-15th&quot;</span><br><span class="s">3816  HAX12SU  = &quot;For how long been taking (days)-15th&quot;</span><br><span class="s">3817  HAX9DV   = &quot;Primary drug class code-16th&quot;</span><br><span class="s">3818  HAX9EV   = &quot;Secondary drug class code-16th&quot;</span><br><span class="s">3819  HAX9FV   = &quot;Tertiary drug class code-16th&quot;</span><br><span class="s">3820  HAX11AV  = &quot;ICD-9-CM code-16th&quot;</span><br><span class="s">3821  HAX12SV  = &quot;For how long been taking (days)-16th&quot;</span><br><span class="s">3822  HAX13AG  = &quot;Antacid identification code-1st&quot;</span><br><span class="s">3823  HAX15SG  = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">3824  HAX16AG  = &quot;How much did you take ea time (quan)-1st&quot;</span><br><span class="s">3825  HAX16A1G = &quot;How much did you take ea time (unit)-1st&quot;</span><br><span class="s">3826  HAX17SG  = &quot;How long been taking (months)-1st&quot;</span><br><span class="s">3827  HAX13AH  = &quot;Antacid identification code-2nd&quot;</span><br><span class="s">3828  HAX15SH  = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">3829  HAX16AH  = &quot;How much did you take ea time (quan)-2nd&quot;</span><br><span class="s">3830  HAX16A1H = &quot;How much did you take ea time (unit)-2nd&quot;</span><br><span class="s">3831  HAX17SH  = &quot;How long been taking (months)-2nd&quot;</span><br><span class="s">3832  HAX13AI  = &quot;Antacid identification code-3rd&quot;</span><br><span class="s">3833  HAX15SI  = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">3834  HAX16AI  = &quot;How much did you take ea time (quan)-3rd&quot;</span><br><span class="s">3835  HAX16A1I = &quot;How much did you take ea time (unit)-3rd&quot;</span><br><span class="s">3836  HAX17SI  = &quot;How long been taking (months)-3rd&quot;</span><br><span class="s">3837  HAX13AJ  = &quot;Antacid identification code-4th&quot;</span><br><span class="s">3838  HAX15SJ  = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">3839  HAX16AJ  = &quot;How much did you take ea time (quan)-4th&quot;</span><br><span class="s">3840  HAX16A1J = &quot;How much did you take ea time (unit)-4th&quot;</span><br><span class="s">3841  HAX17SJ  = &quot;How long been taking (months)-4th&quot;</span><br><span class="s">3842  HAX18A   = &quot;Taken aspirin, etc. in past month&quot;</span><br><span class="s">3843  HAX19AS  = &quot;How often did you take in past month&quot;</span><br><span class="s">3844  HAX18B   = &quot;Taken acetaminophen, etc. in past month&quot;</span><br><span class="s">3845  HAX19BS  = &quot;How often did you take in past month&quot;</span><br><span class="s">3846  HAX18C   = &quot;Taken ibuprofen, etc. in past month&quot;</span><br><span class="s">3847  HAX19CS  = &quot;How often did you take in past month&quot;</span><br><span class="s">3848  HAX18D   = &quot;Taken other pain rel. in past month-1st&quot;</span><br><span class="s">3849  HAX18DB  = &quot;Other pain rel. product type-1st&quot;</span><br><span class="s">3850  HAX19DS  = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">3851  HAX18E   = &quot;Taken other pain rel. in past month-2nd&quot;</span><br><span class="s">3852  HAX18EB  = &quot;Other pain rel. product type-2nd&quot;</span><br><span class="s">3853  HAX19ES  = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">3854  HAX18F   = &quot;Taken other pain rel. in past month-3rd&quot;</span><br><span class="s">3855  HAX18FB  = &quot;Other pain rel. product type-3rd&quot;</span><br><span class="s">3856  HAX19FS  = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">3857  HAX18G   = &quot;Taken other pain rel. in past month-4th&quot;</span><br><span class="s">3858  HAX18GB  = &quot;Other pain rel. product type-4th&quot;</span><br><span class="s">3859  HAX19GS  = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">3860  HAY6     = &quot;Main respondent for household adult quex&quot;</span><br><span class="s">3861  HAY7     = &quot;Reason for accepting proxy respondent&quot;</span><br><span class="s">3862  HAY8     = &quot;Was SP present during any of interview&quot;</span><br><span class="s">3863  HAY9     = &quot;Anyone else present during interview&quot;</span><br><span class="s">3864  HAY10    = &quot;Quality of interview&quot;</span><br><span class="s">3865  HAY11A   = &quot;Observed SP: in bed&quot;</span><br><span class="s">3866  HAY11B   = &quot;Observed SP: in wheelchair&quot;</span><br><span class="s">3867  HAY11C   = &quot;Observed SP:uses cane,crutches,or walker&quot;</span><br><span class="s">3868  HAY11D   = &quot;Observed SP: walks slowly or shuffles&quot;</span><br><span class="s">3869  HAY11E   = &quot;Observed SP: paralysis in hands or legs&quot;</span><br><span class="s">3870  HAY11F   = &quot;Observed SP: hearing impairment&quot;</span><br><span class="s">3871  HAY11G   = &quot;Observe SP:speech problems(not language)&quot;</span><br><span class="s">3872  HAY11H   = &quot;Observed SP: coughs continuously&quot;</span><br><span class="s">3873  HAY11I   = &quot;Observed SP: dressed in street clothes&quot;</span><br><span class="s">3874  HAY11J   = &quot;Observed SP:overweight, average, or thin&quot;</span><br><span class="s">3875  HAZA1    = &quot;Any medical reason procedure not be done&quot;</span><br><span class="s">3876  HAZA1A   = &quot;Med reason BP not taken(survey years4-6)&quot;</span><br><span class="s">3877  HAZA1CC  = &quot;Med reason BP not taken - other(yrs 5-6)&quot;</span><br><span class="s">3878  HAZA2    = &quot;Have you consumed food, etc last 30 min&quot;</span><br><span class="s">3879  HAZA2A1  = &quot;Have you consumed food in last 30 min&quot;</span><br><span class="s">3880  HAZA2A2  = &quot;Have you consumed alcohol in last 30 min&quot;</span><br><span class="s">3881  HAZA2A3  = &quot;Have you consumed coffee in last 30 min&quot;</span><br><span class="s">3882  HAZA2A4  = &quot;Have you smoked cigarettes last 30 min&quot;</span><br><span class="s">3883  HAZA3    = &quot;Cuff size used&quot;</span><br><span class="s">3884  HAZA4    = &quot;Arm selected&quot;</span><br><span class="s">3885  HAZA4A   = &quot;Reason left arm selected(survey yrs 4-6)&quot;</span><br><span class="s">3886  HAZA5    = &quot;Radial pulse (30 seconds)&quot;</span><br><span class="s">3887  HAZA5R   = &quot;Radial pulse rate (beats/min)&quot;</span><br><span class="s">3888  HAZA6    = &quot;Radial pulse regular/rhythmic&quot;</span><br><span class="s">3889  HAZA7A   = &quot;First maximum inflation rate (MIL, mmHg)&quot;</span><br><span class="s">3890  HAZA7AA  = &quot;Reason first MIL not taken (years 4-6)&quot;</span><br><span class="s">3891  HAZA7B   = &quot;Second MIL (mm Hg) (survey years 4-6)&quot;</span><br><span class="s">3892  HAZA7BA  = &quot;Reason second MIL not taken (years 4-6)&quot;</span><br><span class="s">3893  HAZA8AK1 = &quot;K1 for first BP measure (systolic, mmHg)&quot;</span><br><span class="s">3894  HAZA8AK5 = &quot;K5 for first BP measure (diastolic,mmHg)&quot;</span><br><span class="s">3895  HAZA8A3  = &quot;Reason first BP measurement not done&quot;</span><br><span class="s">3896  HAZA8A4  = &quot;Reason first BP measurement refused&quot;</span><br><span class="s">3897  HAZA8BK1 = &quot;K1 for second BP measure (systolic,mmHg)&quot;</span><br><span class="s">3898  HAZA8BK5 = &quot;K5 for second BP measure(diastolic,mmHg)&quot;</span><br><span class="s">3899  HAZA8B3  = &quot;Reason second BP measurement not done&quot;</span><br><span class="s">3900  HAZA8B4  = &quot;Reason second BP measurement refused&quot;</span><br><span class="s">3901  HAZA8CK1 = &quot;K1 for third BP measure (systolic, mmHg)&quot;</span><br><span class="s">3902  HAZA8CK5 = &quot;K5 for third BP measure (diastolic,mmHg)&quot;</span><br><span class="s">3903  HAZA8C3  = &quot;Reason third BP measurement not done&quot;</span><br><span class="s">3904  HAZA8C4  = &quot;Reason third BP measurement refused&quot;</span><br><span class="s">3905  HAZA8DK1 = &quot;K1 for fourth BP (systolic,mmHg,yrs 4-6)&quot;</span><br><span class="s">3906  HAZA8DK5 = &quot;K5 for fourth BP(diastolic,mmHg,yrs 4-6)&quot;</span><br><span class="s">3907  HAZA8D3  = &quot;Reason fourth BP not done (years 4-6)&quot;</span><br><span class="s">3908  HAZA8D4  = &quot;Reason fourth BP refused (years 4-6)&quot;</span><br><span class="s">3909  HAZA9    = &quot;Reason for not taking BP (years 5-6)&quot;</span><br><span class="s">3910  HAZA10   = &quot;Code determining BP averaging (yrs 5-6)&quot;</span><br><span class="s">3911  HAZA11A  = &quot;Average K1 BP (survey years 5 and 6)&quot;</span><br><span class="s">3912  HAZA11AR = &quot;Average K1 BP after data edits&quot;</span><br><span class="s">3913  HAZA11B  = &quot;Average K5 BP (survey years 5-6)&quot;</span><br><span class="s">3914  HAZA11BR = &quot;Average K5 BP after data edits&quot;</span><br><span class="s">3915  HAZA12   = &quot;BP statement read to SP (years 5 and 6)&quot;</span><br><span class="s">3916  HAZMNK1R = &quot;Average K1 BP from household and MEC&quot;</span><br><span class="s">3917  HAZNOK1R = &quot;Number of BP&#39;s used for average K1&quot;</span><br><span class="s">3918  HAZMNK5R = &quot;Average K5 BP from household and MEC&quot;</span><br><span class="s">3919  HAZNOK5R = &quot;Number of BP&#39;s used for average K5&quot;;</span><br><span class="s">3920  </span><br><span class="s">3921  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">3922  </span><br></pre></div>
</body>
</html>





```sas
FILENAME ADULTX "adultx.dat" LRECL=684;
*** LRECL includes 2 positions for CRLF, assuming use of PC SAS;
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

<div class="highlight"><pre><span></span><span class="s">3924  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">3924! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">3925  </span><br><span class="s">3926  FILENAME ADULTX &quot;adultx.dat&quot; LRECL=684;</span><br><span class="s">3927  *** LRECL includes 2 positions for CRLF, assuming use of PC SAS;</span><br><span class="s">3928  </span><br><span class="s">3929  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">3930  </span><br></pre></div>
</body>
</html>





```sas
DATA ADULTX;
INFILE ADULTX MISSOVER;
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

<div class="highlight"><pre><span></span><span class="s">3932  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">3932! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">3933  </span><br><span class="cm">NOTE: The infile ADULT is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/adult.dat,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=26Mar2018:18:37:39,</span><br><span class="cm">      File Size (bytes)=67107314</span><br><br><span class="cm">NOTE: 20050 records were read from the infile ADULT.</span><br><span class="cm">      The minimum record length was 3345.</span><br><span class="cm">      The maximum record length was 3346.</span><br><span class="cm">NOTE: The data set WORK.ADULT has 20050 observations and 1238 variables.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           4.45 seconds</span><br><span class="cm">      cpu time            3.48 seconds</span><br><span class="cm">      </span><br><span class="s">3934  DATA ADULTX;</span><br><span class="s">3935  INFILE ADULTX MISSOVER;</span><br><span class="s">3936  </span><br><span class="s">3937  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">3938  </span><br></pre></div>
</body>
</html>





```sas
LENGTH
SEQN      7
HAX1A     3
HAX1B     3
HAX1C     3
HAX2A     3
HAX2B     3
HAX2C     3
HAX3CG    3
HAX3DG    3
HAX6SG    4
HAX8SG    4
HAX3CH    3
HAX3DH    3
HAX6SH    4
HAX8SH    4
HAX3CI    3
HAX3DI    3
HAX6SI    4
HAX8SI    4
HAX3CJ    3
HAX3DJ    3
HAX6SJ    4
HAX8SJ    4
HAX3CK    3
HAX3DK    3
HAX6SK    4
HAX8SK    4
HAX3CL    3
HAX3DL    3
HAX6SL    4
HAX8SL    4
HAX3CM    3
HAX3DM    3
HAX6SM    4
HAX8SM    4
HAX3CN    3
HAX3DN    3
HAX6SN    4
HAX8SN    4
HAX3CO    3
HAX3DO    3
HAX6SO    4
HAX8SO    4
HAX3CP    3
HAX3DP    3
HAX6SP    4
HAX8SP    4
HAX3CQ    3
HAX3DQ    3
HAX6SQ    4
HAX8SQ    4
HAX3CR    3
HAX3DR    3
HAX6SR    4
HAX8SR    4
HAX3CS    3
HAX3DS    3
HAX6SS    4
HAX8SS    4
HAX3CT    3
HAX3DT    3
HAX6ST    4
HAX8ST    4
HAX3CU    3
HAX3DU    3
HAX6SU    4
HAX8SU    4
HAX3CV    3
HAX3DV    3
HAX6SV    4
HAX8SV    4
HAX3CW    3
HAX3DW    3
HAX6SW    4
HAX8SW    4
HAX9DG    4
HAX9EG    4
HAX9FG    4
HAX11AG  $6
HAX12SG   4
HAX9DH    4
HAX9EH    4
HAX9FH    4
HAX11AH  $6
HAX12SH   4
HAX9DI    4
HAX9EI    4
HAX9FI    4
HAX11AI  $6
HAX12SI   4
HAX9DJ    4
HAX9EJ    4
HAX9FJ    4
HAX11AJ  $6
HAX12SJ   4
HAX9DK    4
HAX9EK    4
HAX9FK    4
HAX11AK  $6
HAX12SK   4
HAX9DL    4
HAX9EL    4
HAX9FL    4
HAX11AL  $6
HAX12SL   4
HAX9DM    4
HAX9EM    4
HAX9FM    4
HAX11AM  $6
HAX12SM   4
HAX9DN    4
HAX9EN    4
HAX9FN    4
HAX11AN  $6
HAX12SN   4
HAX9DO    4
HAX9EO    4
HAX9FO    4
HAX11AO  $6
HAX12SO   4
HAX9DP    4
HAX9EP    4
HAX9FP    4
HAX11AP  $6
HAX12SP   4
HAX9DQ    4
HAX9EQ    4
HAX9FQ    4
HAX11AQ  $6
HAX12SQ   4
HAX9DR    4
HAX9ER    4
HAX9FR    4
HAX11AR  $6
HAX12SR   4
HAX9DS    4
HAX9ES    4
HAX9FS    4
HAX11AS  $6
HAX12SS   4
HAX9DT    4
HAX9ET    4
HAX9FT    4
HAX11AT  $6
HAX12ST   4
HAX9DU    4
HAX9EU    4
HAX9FU    4
HAX11AU  $6
HAX12SU   4
HAX9DV    4
HAX9EV    4
HAX9FV    4
HAX11AV  $6
HAX12SV   4
HAX13AG   3
HAX15SG   4
HAX16AG   3
HAX16A1G  3
HAX17SG   4
HAX13AH   3
HAX15SH   4
HAX16AH   3
HAX16A1H  3
HAX17SH   4
HAX13AI   3
HAX15SI   4
HAX16AI   3
HAX16A1I  3
HAX17SI   4
HAX13AJ   3
HAX15SJ   4
HAX16AJ   3
HAX16A1J  3
HAX17SJ   4
HAX18A    3
HAX19AS   3
HAX18B    3
HAX19BS   3
HAX18C    3
HAX19CS   3
HAX18D    3
HAX18DB   3
HAX19DS   3
HAX18E    3
HAX18EB   3
HAX19ES   3
HAX18F    3
HAX18FB   3
HAX19FS   3
HAX18G    3
HAX18GB   3
HAX19GS   3
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

<div class="highlight"><pre><span></span><span class="s">3940  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">3940! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">3941  </span><br><span class="s">3942  LENGTH</span><br><span class="s">3943  SEQN      7</span><br><span class="s">3944  HAX1A     3</span><br><span class="s">3945  HAX1B     3</span><br><span class="s">3946  HAX1C     3</span><br><span class="s">3947  HAX2A     3</span><br><span class="s">3948  HAX2B     3</span><br><span class="s">3949  HAX2C     3</span><br><span class="s">3950  HAX3CG    3</span><br><span class="s">3951  HAX3DG    3</span><br><span class="s">3952  HAX6SG    4</span><br><span class="s">3953  HAX8SG    4</span><br><span class="s">3954  HAX3CH    3</span><br><span class="s">3955  HAX3DH    3</span><br><span class="s">3956  HAX6SH    4</span><br><span class="s">3957  HAX8SH    4</span><br><span class="s">3958  HAX3CI    3</span><br><span class="s">3959  HAX3DI    3</span><br><span class="s">3960  HAX6SI    4</span><br><span class="s">3961  HAX8SI    4</span><br><span class="s">3962  HAX3CJ    3</span><br><span class="s">3963  HAX3DJ    3</span><br><span class="s">3964  HAX6SJ    4</span><br><span class="s">3965  HAX8SJ    4</span><br><span class="s">3966  HAX3CK    3</span><br><span class="s">3967  HAX3DK    3</span><br><span class="s">3968  HAX6SK    4</span><br><span class="s">3969  HAX8SK    4</span><br><span class="s">3970  HAX3CL    3</span><br><span class="s">3971  HAX3DL    3</span><br><span class="s">3972  HAX6SL    4</span><br><span class="s">3973  HAX8SL    4</span><br><span class="s">3974  HAX3CM    3</span><br><span class="s">3975  HAX3DM    3</span><br><span class="s">3976  HAX6SM    4</span><br><span class="s">3977  HAX8SM    4</span><br><span class="s">3978  HAX3CN    3</span><br><span class="s">3979  HAX3DN    3</span><br><span class="s">3980  HAX6SN    4</span><br><span class="s">3981  HAX8SN    4</span><br><span class="s">3982  HAX3CO    3</span><br><span class="s">3983  HAX3DO    3</span><br><span class="s">3984  HAX6SO    4</span><br><span class="s">3985  HAX8SO    4</span><br><span class="s">3986  HAX3CP    3</span><br><span class="s">3987  HAX3DP    3</span><br><span class="s">3988  HAX6SP    4</span><br><span class="s">3989  HAX8SP    4</span><br><span class="s">3990  HAX3CQ    3</span><br><span class="s">3991  HAX3DQ    3</span><br><span class="s">3992  HAX6SQ    4</span><br><span class="s">3993  HAX8SQ    4</span><br><span class="s">3994  HAX3CR    3</span><br><span class="s">3995  HAX3DR    3</span><br><span class="s">3996  HAX6SR    4</span><br><span class="s">3997  HAX8SR    4</span><br><span class="s">3998  HAX3CS    3</span><br><span class="s">3999  HAX3DS    3</span><br><span class="s">4000  HAX6SS    4</span><br><span class="s">4001  HAX8SS    4</span><br><span class="s">4002  HAX3CT    3</span><br><span class="s">4003  HAX3DT    3</span><br><span class="s">4004  HAX6ST    4</span><br><span class="s">4005  HAX8ST    4</span><br><span class="s">4006  HAX3CU    3</span><br><span class="s">4007  HAX3DU    3</span><br><span class="s">4008  HAX6SU    4</span><br><span class="s">4009  HAX8SU    4</span><br><span class="s">4010  HAX3CV    3</span><br><span class="s">4011  HAX3DV    3</span><br><span class="s">4012  HAX6SV    4</span><br><span class="s">4013  HAX8SV    4</span><br><span class="s">4014  HAX3CW    3</span><br><span class="s">4015  HAX3DW    3</span><br><span class="s">4016  HAX6SW    4</span><br><span class="s">4017  HAX8SW    4</span><br><span class="s">4018  HAX9DG    4</span><br><span class="s">4019  HAX9EG    4</span><br><span class="s">4020  HAX9FG    4</span><br><span class="s">4021  HAX11AG  $6</span><br><span class="s">4022  HAX12SG   4</span><br><span class="s">4023  HAX9DH    4</span><br><span class="s">4024  HAX9EH    4</span><br><span class="s">4025  HAX9FH    4</span><br><span class="s">4026  HAX11AH  $6</span><br><span class="s">4027  HAX12SH   4</span><br><span class="s">4028  HAX9DI    4</span><br><span class="s">4029  HAX9EI    4</span><br><span class="s">4030  HAX9FI    4</span><br><span class="s">4031  HAX11AI  $6</span><br><span class="s">4032  HAX12SI   4</span><br><span class="s">4033  HAX9DJ    4</span><br><span class="s">4034  HAX9EJ    4</span><br><span class="s">4035  HAX9FJ    4</span><br><span class="s">4036  HAX11AJ  $6</span><br><span class="s">4037  HAX12SJ   4</span><br><span class="s">4038  HAX9DK    4</span><br><span class="s">4039  HAX9EK    4</span><br><span class="s">4040  HAX9FK    4</span><br><span class="s">4041  HAX11AK  $6</span><br><span class="s">4042  HAX12SK   4</span><br><span class="s">4043  HAX9DL    4</span><br><span class="s">4044  HAX9EL    4</span><br><span class="s">4045  HAX9FL    4</span><br><span class="s">4046  HAX11AL  $6</span><br><span class="s">4047  HAX12SL   4</span><br><span class="s">4048  HAX9DM    4</span><br><span class="s">4049  HAX9EM    4</span><br><span class="s">4050  HAX9FM    4</span><br><span class="s">4051  HAX11AM  $6</span><br><span class="s">4052  HAX12SM   4</span><br><span class="s">4053  HAX9DN    4</span><br><span class="s">4054  HAX9EN    4</span><br><span class="s">4055  HAX9FN    4</span><br><span class="s">4056  HAX11AN  $6</span><br><span class="s">4057  HAX12SN   4</span><br><span class="s">4058  HAX9DO    4</span><br><span class="s">4059  HAX9EO    4</span><br><span class="s">4060  HAX9FO    4</span><br><span class="s">4061  HAX11AO  $6</span><br><span class="s">4062  HAX12SO   4</span><br><span class="s">4063  HAX9DP    4</span><br><span class="s">4064  HAX9EP    4</span><br><span class="s">4065  HAX9FP    4</span><br><span class="s">4066  HAX11AP  $6</span><br><span class="s">4067  HAX12SP   4</span><br><span class="s">4068  HAX9DQ    4</span><br><span class="s">4069  HAX9EQ    4</span><br><span class="s">4070  HAX9FQ    4</span><br><span class="s">4071  HAX11AQ  $6</span><br><span class="s">4072  HAX12SQ   4</span><br><span class="s">4073  HAX9DR    4</span><br><span class="s">4074  HAX9ER    4</span><br><span class="s">4075  HAX9FR    4</span><br><span class="s">4076  HAX11AR  $6</span><br><span class="s">4077  HAX12SR   4</span><br><span class="s">4078  HAX9DS    4</span><br><span class="s">4079  HAX9ES    4</span><br><span class="s">4080  HAX9FS    4</span><br><span class="s">4081  HAX11AS  $6</span><br><span class="s">4082  HAX12SS   4</span><br><span class="s">4083  HAX9DT    4</span><br><span class="s">4084  HAX9ET    4</span><br><span class="s">4085  HAX9FT    4</span><br><span class="s">4086  HAX11AT  $6</span><br><span class="s">4087  HAX12ST   4</span><br><span class="s">4088  HAX9DU    4</span><br><span class="s">4089  HAX9EU    4</span><br><span class="s">4090  HAX9FU    4</span><br><span class="s">4091  HAX11AU  $6</span><br><span class="s">4092  HAX12SU   4</span><br><span class="s">4093  HAX9DV    4</span><br><span class="s">4094  HAX9EV    4</span><br><span class="s">4095  HAX9FV    4</span><br><span class="s">4096  HAX11AV  $6</span><br><span class="s">4097  HAX12SV   4</span><br><span class="s">4098  HAX13AG   3</span><br><span class="s">4099  HAX15SG   4</span><br><span class="s">4100  HAX16AG   3</span><br><span class="s">4101  HAX16A1G  3</span><br><span class="s">4102  HAX17SG   4</span><br><span class="s">4103  HAX13AH   3</span><br><span class="s">4104  HAX15SH   4</span><br><span class="s">4105  HAX16AH   3</span><br><span class="s">4106  HAX16A1H  3</span><br><span class="s">4107  HAX17SH   4</span><br><span class="s">4108  HAX13AI   3</span><br><span class="s">4109  HAX15SI   4</span><br><span class="s">4110  HAX16AI   3</span><br><span class="s">4111  HAX16A1I  3</span><br><span class="s">4112  HAX17SI   4</span><br><span class="s">4113  HAX13AJ   3</span><br><span class="s">4114  HAX15SJ   4</span><br><span class="s">4115  HAX16AJ   3</span><br><span class="s">4116  HAX16A1J  3</span><br><span class="s">4117  HAX17SJ   4</span><br><span class="s">4118  HAX18A    3</span><br><span class="s">4119  HAX19AS   3</span><br><span class="s">4120  HAX18B    3</span><br><span class="s">4121  HAX19BS   3</span><br><span class="s">4122  HAX18C    3</span><br><span class="s">4123  HAX19CS   3</span><br><span class="s">4124  HAX18D    3</span><br><span class="s">4125  HAX18DB   3</span><br><span class="s">4126  HAX19DS   3</span><br><span class="s">4127  HAX18E    3</span><br><span class="s">4128  HAX18EB   3</span><br><span class="s">4129  HAX19ES   3</span><br><span class="s">4130  HAX18F    3</span><br><span class="s">4131  HAX18FB   3</span><br><span class="s">4132  HAX19FS   3</span><br><span class="s">4133  HAX18G    3</span><br><span class="s">4134  HAX18GB   3</span><br><span class="s">4135  HAX19GS   3</span><br><span class="s">4136  ;</span><br><span class="s">4137  </span><br><span class="s">4138  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">4139  </span><br></pre></div>
</body>
</html>





```sas
FORMAT
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

<div class="highlight"><pre><span></span><span class="s">4141  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">4141! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">4142  </span><br><span class="s">4143  FORMAT</span><br><span class="s">4144  ;</span><br><span class="s">4145  </span><br><span class="s">4146  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">4147  </span><br></pre></div>
</body>
</html>





```sas
INPUT
SEQN     1-5
HAX1A    6
HAX1B    7
HAX1C    8
HAX2A    9-10
HAX2B    11-12
HAX2C    13-14
HAX3CG   15-16
HAX3DG   17-18
HAX6SG   19-22
HAX8SG   23-26
HAX3CH   27-28
HAX3DH   29-30
HAX6SH   31-34
HAX8SH   35-38
HAX3CI   39-40
HAX3DI   41-42
HAX6SI   43-46
HAX8SI   47-50
HAX3CJ   51-52
HAX3DJ   53-54
HAX6SJ   55-58
HAX8SJ   59-62
HAX3CK   63-64
HAX3DK   65-66
HAX6SK   67-70
HAX8SK   71-74
HAX3CL   75-76
HAX3DL   77-78
HAX6SL   79-82
HAX8SL   83-86
HAX3CM   87-88
HAX3DM   89-90
HAX6SM   91-94
HAX8SM   95-98
HAX3CN   99-100
HAX3DN   101-102
HAX6SN   103-106
HAX8SN   107-110
HAX3CO   111-112
HAX3DO   113-114
HAX6SO   115-118
HAX8SO   119-122
HAX3CP   123-124
HAX3DP   125-126
HAX6SP   127-130
HAX8SP   131-134
HAX3CQ   135-136
HAX3DQ   137-138
HAX6SQ   139-142
HAX8SQ   143-146
HAX3CR   147-148
HAX3DR   149-150
HAX6SR   151-154
HAX8SR   155-158
HAX3CS   159-160
HAX3DS   161-162
HAX6SS   163-166
HAX8SS   167-170
HAX3CT   171-172
HAX3DT   173-174
HAX6ST   175-178
HAX8ST   179-182
HAX3CU   183-184
HAX3DU   185-186
HAX6SU   187-190
HAX8SU   191-194
HAX3CV   195-196
HAX3DV   197-198
HAX6SV   199-202
HAX8SV   203-206
HAX3CW   207-208
HAX3DW   209-210
HAX6SW   211-214
HAX8SW   215-218
HAX9DG   219-222
HAX9EG   223-226
HAX9FG   227-230
HAX11AG  231-236
HAX12SG  237-241
HAX9DH   242-245
HAX9EH   246-249
HAX9FH   250-253
HAX11AH  254-259
HAX12SH  260-264
HAX9DI   265-268
HAX9EI   269-272
HAX9FI   273-276
HAX11AI  277-282
HAX12SI  283-287
HAX9DJ   288-291
HAX9EJ   292-295
HAX9FJ   296-299
HAX11AJ  300-305
HAX12SJ  306-310
HAX9DK   311-314
HAX9EK   315-318
HAX9FK   319-322
HAX11AK  323-328
HAX12SK  329-333
HAX9DL   334-337
HAX9EL   338-341
HAX9FL   342-345
HAX11AL  346-351
HAX12SL  352-356
HAX9DM   357-360
HAX9EM   361-364
HAX9FM   365-368
HAX11AM  369-374
HAX12SM  375-379
HAX9DN   380-383
HAX9EN   384-387
HAX9FN   388-391
HAX11AN  392-397
HAX12SN  398-402
HAX9DO   403-406
HAX9EO   407-410
HAX9FO   411-414
HAX11AO  415-420
HAX12SO  421-425
HAX9DP   426-429
HAX9EP   430-433
HAX9FP   434-437
HAX11AP  438-443
HAX12SP  444-448
HAX9DQ   449-452
HAX9EQ   453-456
HAX9FQ   457-460
HAX11AQ  461-466
HAX12SQ  467-471
HAX9DR   472-475
HAX9ER   476-479
HAX9FR   480-483
HAX11AR  484-489
HAX12SR  490-494
HAX9DS   495-498
HAX9ES   499-502
HAX9FS   503-506
HAX11AS  507-512
HAX12SS  513-517
HAX9DT   518-521
HAX9ET   522-525
HAX9FT   526-529
HAX11AT  530-535
HAX12ST  536-540
HAX9DU   541-544
HAX9EU   545-548
HAX9FU   549-552
HAX11AU  553-558
HAX12SU  559-563
HAX9DV   564-567
HAX9EV   568-571
HAX9FV   572-575
HAX11AV  576-581
HAX12SV  582-586
HAX13AG  587-589
HAX15SG  590-593
HAX16AG  594-595
HAX16A1G 596-597
HAX17SG  598-601
HAX13AH  602-604
HAX15SH  605-608
HAX16AH  609-610
HAX16A1H 611-612
HAX17SH  613-616
HAX13AI  617-619
HAX15SI  620-623
HAX16AI  624-625
HAX16A1I 626-627
HAX17SI  628-631
HAX13AJ  632-634
HAX15SJ  635-638
HAX16AJ  639-640
HAX16A1J 641-642
HAX17SJ  643-646
HAX18A   647
HAX19AS  648-650
HAX18B   651
HAX19BS  652-654
HAX18C   655
HAX19CS  656-658
HAX18D   659
HAX18DB  660-661
HAX19DS  662-664
HAX18E   665
HAX18EB  666-667
HAX19ES  668-670
HAX18F   671
HAX18FB  672-673
HAX19FS  674-676
HAX18G   677
HAX18GB  678-679
HAX19GS  680-682
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

<div class="highlight"><pre><span></span><span class="s">4149  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">4149! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">4150  </span><br><span class="s">4151  INPUT</span><br><span class="s">4152  SEQN     1-5</span><br><span class="s">4153  HAX1A    6</span><br><span class="s">4154  HAX1B    7</span><br><span class="s">4155  HAX1C    8</span><br><span class="s">4156  HAX2A    9-10</span><br><span class="s">4157  HAX2B    11-12</span><br><span class="s">4158  HAX2C    13-14</span><br><span class="s">4159  HAX3CG   15-16</span><br><span class="s">4160  HAX3DG   17-18</span><br><span class="s">4161  HAX6SG   19-22</span><br><span class="s">4162  HAX8SG   23-26</span><br><span class="s">4163  HAX3CH   27-28</span><br><span class="s">4164  HAX3DH   29-30</span><br><span class="s">4165  HAX6SH   31-34</span><br><span class="s">4166  HAX8SH   35-38</span><br><span class="s">4167  HAX3CI   39-40</span><br><span class="s">4168  HAX3DI   41-42</span><br><span class="s">4169  HAX6SI   43-46</span><br><span class="s">4170  HAX8SI   47-50</span><br><span class="s">4171  HAX3CJ   51-52</span><br><span class="s">4172  HAX3DJ   53-54</span><br><span class="s">4173  HAX6SJ   55-58</span><br><span class="s">4174  HAX8SJ   59-62</span><br><span class="s">4175  HAX3CK   63-64</span><br><span class="s">4176  HAX3DK   65-66</span><br><span class="s">4177  HAX6SK   67-70</span><br><span class="s">4178  HAX8SK   71-74</span><br><span class="s">4179  HAX3CL   75-76</span><br><span class="s">4180  HAX3DL   77-78</span><br><span class="s">4181  HAX6SL   79-82</span><br><span class="s">4182  HAX8SL   83-86</span><br><span class="s">4183  HAX3CM   87-88</span><br><span class="s">4184  HAX3DM   89-90</span><br><span class="s">4185  HAX6SM   91-94</span><br><span class="s">4186  HAX8SM   95-98</span><br><span class="s">4187  HAX3CN   99-100</span><br><span class="s">4188  HAX3DN   101-102</span><br><span class="s">4189  HAX6SN   103-106</span><br><span class="s">4190  HAX8SN   107-110</span><br><span class="s">4191  HAX3CO   111-112</span><br><span class="s">4192  HAX3DO   113-114</span><br><span class="s">4193  HAX6SO   115-118</span><br><span class="s">4194  HAX8SO   119-122</span><br><span class="s">4195  HAX3CP   123-124</span><br><span class="s">4196  HAX3DP   125-126</span><br><span class="s">4197  HAX6SP   127-130</span><br><span class="s">4198  HAX8SP   131-134</span><br><span class="s">4199  HAX3CQ   135-136</span><br><span class="s">4200  HAX3DQ   137-138</span><br><span class="s">4201  HAX6SQ   139-142</span><br><span class="s">4202  HAX8SQ   143-146</span><br><span class="s">4203  HAX3CR   147-148</span><br><span class="s">4204  HAX3DR   149-150</span><br><span class="s">4205  HAX6SR   151-154</span><br><span class="s">4206  HAX8SR   155-158</span><br><span class="s">4207  HAX3CS   159-160</span><br><span class="s">4208  HAX3DS   161-162</span><br><span class="s">4209  HAX6SS   163-166</span><br><span class="s">4210  HAX8SS   167-170</span><br><span class="s">4211  HAX3CT   171-172</span><br><span class="s">4212  HAX3DT   173-174</span><br><span class="s">4213  HAX6ST   175-178</span><br><span class="s">4214  HAX8ST   179-182</span><br><span class="s">4215  HAX3CU   183-184</span><br><span class="s">4216  HAX3DU   185-186</span><br><span class="s">4217  HAX6SU   187-190</span><br><span class="s">4218  HAX8SU   191-194</span><br><span class="s">4219  HAX3CV   195-196</span><br><span class="s">4220  HAX3DV   197-198</span><br><span class="s">4221  HAX6SV   199-202</span><br><span class="s">4222  HAX8SV   203-206</span><br><span class="s">4223  HAX3CW   207-208</span><br><span class="s">4224  HAX3DW   209-210</span><br><span class="s">4225  HAX6SW   211-214</span><br><span class="s">4226  HAX8SW   215-218</span><br><span class="s">4227  HAX9DG   219-222</span><br><span class="s">4228  HAX9EG   223-226</span><br><span class="s">4229  HAX9FG   227-230</span><br><span class="s">4230  HAX11AG  231-236</span><br><span class="s">4231  HAX12SG  237-241</span><br><span class="s">4232  HAX9DH   242-245</span><br><span class="s">4233  HAX9EH   246-249</span><br><span class="s">4234  HAX9FH   250-253</span><br><span class="s">4235  HAX11AH  254-259</span><br><span class="s">4236  HAX12SH  260-264</span><br><span class="s">4237  HAX9DI   265-268</span><br><span class="s">4238  HAX9EI   269-272</span><br><span class="s">4239  HAX9FI   273-276</span><br><span class="s">4240  HAX11AI  277-282</span><br><span class="s">4241  HAX12SI  283-287</span><br><span class="s">4242  HAX9DJ   288-291</span><br><span class="s">4243  HAX9EJ   292-295</span><br><span class="s">4244  HAX9FJ   296-299</span><br><span class="s">4245  HAX11AJ  300-305</span><br><span class="s">4246  HAX12SJ  306-310</span><br><span class="s">4247  HAX9DK   311-314</span><br><span class="s">4248  HAX9EK   315-318</span><br><span class="s">4249  HAX9FK   319-322</span><br><span class="s">4250  HAX11AK  323-328</span><br><span class="s">4251  HAX12SK  329-333</span><br><span class="s">4252  HAX9DL   334-337</span><br><span class="s">4253  HAX9EL   338-341</span><br><span class="s">4254  HAX9FL   342-345</span><br><span class="s">4255  HAX11AL  346-351</span><br><span class="s">4256  HAX12SL  352-356</span><br><span class="s">4257  HAX9DM   357-360</span><br><span class="s">4258  HAX9EM   361-364</span><br><span class="s">4259  HAX9FM   365-368</span><br><span class="s">4260  HAX11AM  369-374</span><br><span class="s">4261  HAX12SM  375-379</span><br><span class="s">4262  HAX9DN   380-383</span><br><span class="s">4263  HAX9EN   384-387</span><br><span class="s">4264  HAX9FN   388-391</span><br><span class="s">4265  HAX11AN  392-397</span><br><span class="s">4266  HAX12SN  398-402</span><br><span class="s">4267  HAX9DO   403-406</span><br><span class="s">4268  HAX9EO   407-410</span><br><span class="s">4269  HAX9FO   411-414</span><br><span class="s">4270  HAX11AO  415-420</span><br><span class="s">4271  HAX12SO  421-425</span><br><span class="s">4272  HAX9DP   426-429</span><br><span class="s">4273  HAX9EP   430-433</span><br><span class="s">4274  HAX9FP   434-437</span><br><span class="s">4275  HAX11AP  438-443</span><br><span class="s">4276  HAX12SP  444-448</span><br><span class="s">4277  HAX9DQ   449-452</span><br><span class="s">4278  HAX9EQ   453-456</span><br><span class="s">4279  HAX9FQ   457-460</span><br><span class="s">4280  HAX11AQ  461-466</span><br><span class="s">4281  HAX12SQ  467-471</span><br><span class="s">4282  HAX9DR   472-475</span><br><span class="s">4283  HAX9ER   476-479</span><br><span class="s">4284  HAX9FR   480-483</span><br><span class="s">4285  HAX11AR  484-489</span><br><span class="s">4286  HAX12SR  490-494</span><br><span class="s">4287  HAX9DS   495-498</span><br><span class="s">4288  HAX9ES   499-502</span><br><span class="s">4289  HAX9FS   503-506</span><br><span class="s">4290  HAX11AS  507-512</span><br><span class="s">4291  HAX12SS  513-517</span><br><span class="s">4292  HAX9DT   518-521</span><br><span class="s">4293  HAX9ET   522-525</span><br><span class="s">4294  HAX9FT   526-529</span><br><span class="s">4295  HAX11AT  530-535</span><br><span class="s">4296  HAX12ST  536-540</span><br><span class="s">4297  HAX9DU   541-544</span><br><span class="s">4298  HAX9EU   545-548</span><br><span class="s">4299  HAX9FU   549-552</span><br><span class="s">4300  HAX11AU  553-558</span><br><span class="s">4301  HAX12SU  559-563</span><br><span class="s">4302  HAX9DV   564-567</span><br><span class="s">4303  HAX9EV   568-571</span><br><span class="s">4304  HAX9FV   572-575</span><br><span class="s">4305  HAX11AV  576-581</span><br><span class="s">4306  HAX12SV  582-586</span><br><span class="s">4307  HAX13AG  587-589</span><br><span class="s">4308  HAX15SG  590-593</span><br><span class="s">4309  HAX16AG  594-595</span><br><span class="s">4310  HAX16A1G 596-597</span><br><span class="s">4311  HAX17SG  598-601</span><br><span class="s">4312  HAX13AH  602-604</span><br><span class="s">4313  HAX15SH  605-608</span><br><span class="s">4314  HAX16AH  609-610</span><br><span class="s">4315  HAX16A1H 611-612</span><br><span class="s">4316  HAX17SH  613-616</span><br><span class="s">4317  HAX13AI  617-619</span><br><span class="s">4318  HAX15SI  620-623</span><br><span class="s">4319  HAX16AI  624-625</span><br><span class="s">4320  HAX16A1I 626-627</span><br><span class="s">4321  HAX17SI  628-631</span><br><span class="s">4322  HAX13AJ  632-634</span><br><span class="s">4323  HAX15SJ  635-638</span><br><span class="s">4324  HAX16AJ  639-640</span><br><span class="s">4325  HAX16A1J 641-642</span><br><span class="s">4326  HAX17SJ  643-646</span><br><span class="s">4327  HAX18A   647</span><br><span class="s">4328  HAX19AS  648-650</span><br><span class="s">4329  HAX18B   651</span><br><span class="s">4330  HAX19BS  652-654</span><br><span class="s">4331  HAX18C   655</span><br><span class="s">4332  HAX19CS  656-658</span><br><span class="s">4333  HAX18D   659</span><br><span class="s">4334  HAX18DB  660-661</span><br><span class="s">4335  HAX19DS  662-664</span><br><span class="s">4336  HAX18E   665</span><br><span class="s">4337  HAX18EB  666-667</span><br><span class="s">4338  HAX19ES  668-670</span><br><span class="s">4339  HAX18F   671</span><br><span class="s">4340  HAX18FB  672-673</span><br><span class="s">4341  HAX19FS  674-676</span><br><span class="s">4342  HAX18G   677</span><br><span class="s">4343  HAX18GB  678-679</span><br><span class="s">4344  HAX19GS  680-682</span><br><span class="s">4345  ;</span><br><span class="s">4346  </span><br><span class="s">4347  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">4348  </span><br></pre></div>
</body>
</html>





```sas
LABEL
SEQN     = "Respondent identification number"
HAX1A    = "Taken vitamins/minerals in past month"
HAX1B    = "Taken prescriptn medicines in past month"
HAX1C    = "Taken antacids in past month"
HAX2A    = "How many vitamins/minerals taken"
HAX2B    = "How many prescription medicines taken"
HAX2C    = "How many antacids taken"
HAX3CG   = "Certainty index code-1st"
HAX3DG   = "Product class-1st"
HAX6SG   = "How often did you take in past month-1st"
HAX8SG   = "How long been taking (month)-1st"
HAX3CH   = "Certainty index code-2nd"
HAX3DH   = "Product class-2nd"
HAX6SH   = "How often did you take in past month-2nd"
HAX8SH   = "How long been taking (month)-2nd"
HAX3CI   = "Certainty index code-3rd"
HAX3DI   = "Product class-3rd"
HAX6SI   = "How often did you take in past month-3rd"
HAX8SI   = "How long been taking (month)-3rd"
HAX3CJ   = "Certainty index code-4th"
HAX3DJ   = "Product class-4th"
HAX6SJ   = "How often did you take in past month-4th"
HAX8SJ   = "How long been taking (month)-4th"
HAX3CK   = "Certainty index code-5th"
HAX3DK   = "Product class-5th"
HAX6SK   = "How often did you take in past month-5th"
HAX8SK   = "How long been taking (month)-5th"
HAX3CL   = "Certainty index code-6th"
HAX3DL   = "Product class-6th"
HAX6SL   = "How often did you take in past month-6th"
HAX8SL   = "How long been taking (month)-6th"
HAX3CM   = "Certainty index code-7th"
HAX3DM   = "Product class-7th"
HAX6SM   = "How often did you take in past month-7th"
HAX8SM   = "How long been taking (month)-7th"
HAX3CN   = "Certainty index code-8th"
HAX3DN   = "Product class-8th"
HAX6SN   = "How often did you take in past month-8th"
HAX8SN   = "How long been taking (month)-8th"
HAX3CO   = "Certainty index code-9th"
HAX3DO   = "Product class-9th"
HAX6SO   = "How often did you take in past month-9th"
HAX8SO   = "How long been taking (month)-9th"
HAX3CP   = "Certainty index code-10th"
HAX3DP   = "Product class-10th"
HAX6SP   = "How often did you take in past mnth-10th"
HAX8SP   = "How long been taking (month)-10th"
HAX3CQ   = "Certainty index code-11th"
HAX3DQ   = "Product class-11th"
HAX6SQ   = "How often did you take in past mnth-11th"
HAX8SQ   = "How long been taking (month)-11th"
HAX3CR   = "Certainty index code-12th"
HAX3DR   = "Product class-12th"
HAX6SR   = "How often did you take in past mnth-12th"
HAX8SR   = "How long been taking (month)-12th"
HAX3CS   = "Certainty index code-13th"
HAX3DS   = "Product class-13th"
HAX6SS   = "How often did you take in past mnth-13th"
HAX8SS   = "How long been taking (month)-13th"
HAX3CT   = "Certainty index code-14th"
HAX3DT   = "Product class-14th"
HAX6ST   = "How often did you take in past mnth-14th"
HAX8ST   = "How long been taking (month)-14th"
HAX3CU   = "Certainty index code-15th"
HAX3DU   = "Product class-15th"
HAX6SU   = "How often did you take in past mnth-15th"
HAX8SU   = "How long been taking (month)-15th"
HAX3CV   = "Certainty index code-16th"
HAX3DV   = "Product class-16th"
HAX6SV   = "How often did you take in past mnth-16th"
HAX8SV   = "How long been taking (month)-16th"
HAX3CW   = "Certainty index code-17th"
HAX3DW   = "Product class-17th"
HAX6SW   = "How often did you take in past mnth-17th"
HAX8SW   = "How long been taking (month)-17th"
HAX9DG   = "Primary drug class code-1st"
HAX9EG   = "Secondary drug class code-1st"
HAX9FG   = "Tertiary drug class code-1st"
HAX11AG  = "ICD-9-CM code-1st"
HAX12SG  = "For how long been taking (days)-1st"
HAX9DH   = "Primary drug class code-2nd"
HAX9EH   = "Secondary drug class code-2nd"
HAX9FH   = "Tertiary drug class code-2nd"
HAX11AH  = "ICD-9-CM code-2nd"
HAX12SH  = "For how long been taking (days)-2nd"
HAX9DI   = "Primary drug class code-3rd"
HAX9EI   = "Secondary drug class code-3rd"
HAX9FI   = "Tertiary drug class code-3rd"
HAX11AI  = "ICD-9-CM code-3rd"
HAX12SI  = "For how long been taking (days)-3rd"
HAX9DJ   = "Primary drug class code-4th"
HAX9EJ   = "Secondary drug class code-4th"
HAX9FJ   = "Tertiary drug class code-4th"
HAX11AJ  = "ICD-9-CM code-4th"
HAX12SJ  = "For how long been taking (days)-4th"
HAX9DK   = "Primary drug class code-5th"
HAX9EK   = "Secondary drug class code-5th"
HAX9FK   = "Tertiary drug class code-5th"
HAX11AK  = "ICD-9-CM code-5th"
HAX12SK  = "For how long been taking (days)-5th"
HAX9DL   = "Primary drug class code-6th"
HAX9EL   = "Secondary drug class code-6th"
HAX9FL   = "Tertiary drug class code-6th"
HAX11AL  = "ICD-9-CM code-6th"
HAX12SL  = "For how long been taking (days)-6th"
HAX9DM   = "Primary drug class code-7th"
HAX9EM   = "Secondary drug class code-7th"
HAX9FM   = "Tertiary drug class code-7th"
HAX11AM  = "ICD-9-CM code-7th"
HAX12SM  = "For how long been taking (days)-7th"
HAX9DN   = "Primary drug class code-8th"
HAX9EN   = "Secondary drug class code-8th"
HAX9FN   = "Tertiary drug class code-8th"
HAX11AN  = "ICD-9-CM code-8th"
HAX12SN  = "For how long been taking (days)-8th"
HAX9DO   = "Primary drug class code-9th"
HAX9EO   = "Secondary drug class code-9th"
HAX9FO   = "Tertiary drug class code-9th"
HAX11AO  = "ICD-9-CM code-9th"
HAX12SO  = "For how long been taking (days)-9th"
HAX9DP   = "Primary drug class code-10th"
HAX9EP   = "Secondary drug class code-10th"
HAX9FP   = "Tertiary drug class code-10th"
HAX11AP  = "ICD-9-CM code-10th"
HAX12SP  = "For how long been taking (days)-10th"
HAX9DQ   = "Primary drug class code-11th"
HAX9EQ   = "Secondary drug class code-11th"
HAX9FQ   = "Tertiary drug class code-11th"
HAX11AQ  = "ICD-9-CM code-11th"
HAX12SQ  = "For how long been taking (days)-11th"
HAX9DR   = "Primary drug class code-12th"
HAX9ER   = "Secondary drug class code-12th"
HAX9FR   = "Tertiary drug class code-12th"
HAX11AR  = "ICD-9-CM code-12th"
HAX12SR  = "For how long been taking (days)-12th"
HAX9DS   = "Primary drug class code-13th"
HAX9ES   = "Secondary drug class code-13th"
HAX9FS   = "Tertiary drug class code-13th"
HAX11AS  = "ICD-9-CM code-13th"
HAX12SS  = "For how long been taking (days)-13th"
HAX9DT   = "Primary drug class code-14th"
HAX9ET   = "Secondary drug class code-14th"
HAX9FT   = "Tertiary drug class code-14th"
HAX11AT  = "ICD-9-CM code-14th"
HAX12ST  = "For how long been taking (days)-14th"
HAX9DU   = "Primary drug class code-15th"
HAX9EU   = "Secondary drug class code-15th"
HAX9FU   = "Tertiary drug class code-15th"
HAX11AU  = "ICD-9-CM code-15th"
HAX12SU  = "For how long been taking (days)-15th"
HAX9DV   = "Primary drug class code-16th"
HAX9EV   = "Secondary drug class code-16th"
HAX9FV   = "Tertiary drug class code-16th"
HAX11AV  = "ICD-9-CM code-16th"
HAX12SV  = "For how long been taking (days)-16th"
HAX13AG  = "Antacid identification code-1st"
HAX15SG  = "How often did you take in past month-1st"
HAX16AG  = "How much did you take ea time (quan)-1st"
HAX16A1G  = "How much did you take ea time (unit)-1st"
HAX17SG  = "How long been taking (months)-1st"
HAX13AH  = "Antacid identification code-2nd"
HAX15SH  = "How often did you take in past month-2nd"
HAX16AH  = "How much did you take ea time (quan)-2nd"
HAX16A1H  = "How much did you take ea time (unit)-2nd"
HAX17SH  = "How long been taking (months)-2nd"
HAX13AI  = "Antacid identification code-3rd"
HAX15SI  = "How often did you take in past month-3rd"
HAX16AI  = "How much did you take ea time (quan)-3rd"
HAX16A1I  = "How much did you take ea time (unit)-3rd"
HAX17SI  = "How long been taking (months)-3rd"
HAX13AJ  = "Antacid identification code-4th"
HAX15SJ  = "How often did you take in past month-4th"
HAX16AJ  = "How much did you take ea time (quan)-4th"
HAX16A1J  = "How much did you take ea time (unit)-4th"
HAX17SJ  = "How long been taking (months)-4th"
HAX18A   = "Taken aspirin, etc. in past month"
HAX19AS  = "How often did you take in past month"
HAX18B   = "Taken acetaminophen, etc. in past month"
HAX19BS  = "How often did you take in past month"
HAX18C   = "Taken ibuprofen, etc. in past month"
HAX19CS  = "How often did you take in past month"
HAX18D   = "Taken other pain rel. in past month-1st"
HAX18DB  = "Other pain rel. product type-1st"
HAX19DS  = "How often did you take in past month-1st"
HAX18E   = "Taken other pain rel. in past month-2nd"
HAX18EB  = "Other pain rel. product type-2nd"
HAX19ES  = "How often did you take in past month-2nd"
HAX18F   = "Taken other pain rel. in past month-3rd"
HAX18FB  = "Other pain rel. product type-3rd"
HAX19FS  = "How often did you take in past month-3rd"
HAX18G   = "Taken other pain rel. in past month-4th"
HAX18GB  = "Other pain rel. product type-4th"
HAX19GS  = "How often did you take in past month-4th"
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

<div class="highlight"><pre><span></span><span class="s">4350  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">4350! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">4351  </span><br><span class="s">4352  LABEL</span><br><span class="s">4353  SEQN     = &quot;Respondent identification number&quot;</span><br><span class="s">4354  HAX1A    = &quot;Taken vitamins/minerals in past month&quot;</span><br><span class="s">4355  HAX1B    = &quot;Taken prescriptn medicines in past month&quot;</span><br><span class="s">4356  HAX1C    = &quot;Taken antacids in past month&quot;</span><br><span class="s">4357  HAX2A    = &quot;How many vitamins/minerals taken&quot;</span><br><span class="s">4358  HAX2B    = &quot;How many prescription medicines taken&quot;</span><br><span class="s">4359  HAX2C    = &quot;How many antacids taken&quot;</span><br><span class="s">4360  HAX3CG   = &quot;Certainty index code-1st&quot;</span><br><span class="s">4361  HAX3DG   = &quot;Product class-1st&quot;</span><br><span class="s">4362  HAX6SG   = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">4363  HAX8SG   = &quot;How long been taking (month)-1st&quot;</span><br><span class="s">4364  HAX3CH   = &quot;Certainty index code-2nd&quot;</span><br><span class="s">4365  HAX3DH   = &quot;Product class-2nd&quot;</span><br><span class="s">4366  HAX6SH   = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">4367  HAX8SH   = &quot;How long been taking (month)-2nd&quot;</span><br><span class="s">4368  HAX3CI   = &quot;Certainty index code-3rd&quot;</span><br><span class="s">4369  HAX3DI   = &quot;Product class-3rd&quot;</span><br><span class="s">4370  HAX6SI   = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">4371  HAX8SI   = &quot;How long been taking (month)-3rd&quot;</span><br><span class="s">4372  HAX3CJ   = &quot;Certainty index code-4th&quot;</span><br><span class="s">4373  HAX3DJ   = &quot;Product class-4th&quot;</span><br><span class="s">4374  HAX6SJ   = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">4375  HAX8SJ   = &quot;How long been taking (month)-4th&quot;</span><br><span class="s">4376  HAX3CK   = &quot;Certainty index code-5th&quot;</span><br><span class="s">4377  HAX3DK   = &quot;Product class-5th&quot;</span><br><span class="s">4378  HAX6SK   = &quot;How often did you take in past month-5th&quot;</span><br><span class="s">4379  HAX8SK   = &quot;How long been taking (month)-5th&quot;</span><br><span class="s">4380  HAX3CL   = &quot;Certainty index code-6th&quot;</span><br><span class="s">4381  HAX3DL   = &quot;Product class-6th&quot;</span><br><span class="s">4382  HAX6SL   = &quot;How often did you take in past month-6th&quot;</span><br><span class="s">4383  HAX8SL   = &quot;How long been taking (month)-6th&quot;</span><br><span class="s">4384  HAX3CM   = &quot;Certainty index code-7th&quot;</span><br><span class="s">4385  HAX3DM   = &quot;Product class-7th&quot;</span><br><span class="s">4386  HAX6SM   = &quot;How often did you take in past month-7th&quot;</span><br><span class="s">4387  HAX8SM   = &quot;How long been taking (month)-7th&quot;</span><br><span class="s">4388  HAX3CN   = &quot;Certainty index code-8th&quot;</span><br><span class="s">4389  HAX3DN   = &quot;Product class-8th&quot;</span><br><span class="s">4390  HAX6SN   = &quot;How often did you take in past month-8th&quot;</span><br><span class="s">4391  HAX8SN   = &quot;How long been taking (month)-8th&quot;</span><br><span class="s">4392  HAX3CO   = &quot;Certainty index code-9th&quot;</span><br><span class="s">4393  HAX3DO   = &quot;Product class-9th&quot;</span><br><span class="s">4394  HAX6SO   = &quot;How often did you take in past month-9th&quot;</span><br><span class="s">4395  HAX8SO   = &quot;How long been taking (month)-9th&quot;</span><br><span class="s">4396  HAX3CP   = &quot;Certainty index code-10th&quot;</span><br><span class="s">4397  HAX3DP   = &quot;Product class-10th&quot;</span><br><span class="s">4398  HAX6SP   = &quot;How often did you take in past mnth-10th&quot;</span><br><span class="s">4399  HAX8SP   = &quot;How long been taking (month)-10th&quot;</span><br><span class="s">4400  HAX3CQ   = &quot;Certainty index code-11th&quot;</span><br><span class="s">4401  HAX3DQ   = &quot;Product class-11th&quot;</span><br><span class="s">4402  HAX6SQ   = &quot;How often did you take in past mnth-11th&quot;</span><br><span class="s">4403  HAX8SQ   = &quot;How long been taking (month)-11th&quot;</span><br><span class="s">4404  HAX3CR   = &quot;Certainty index code-12th&quot;</span><br><span class="s">4405  HAX3DR   = &quot;Product class-12th&quot;</span><br><span class="s">4406  HAX6SR   = &quot;How often did you take in past mnth-12th&quot;</span><br><span class="s">4407  HAX8SR   = &quot;How long been taking (month)-12th&quot;</span><br><span class="s">4408  HAX3CS   = &quot;Certainty index code-13th&quot;</span><br><span class="s">4409  HAX3DS   = &quot;Product class-13th&quot;</span><br><span class="s">4410  HAX6SS   = &quot;How often did you take in past mnth-13th&quot;</span><br><span class="s">4411  HAX8SS   = &quot;How long been taking (month)-13th&quot;</span><br><span class="s">4412  HAX3CT   = &quot;Certainty index code-14th&quot;</span><br><span class="s">4413  HAX3DT   = &quot;Product class-14th&quot;</span><br><span class="s">4414  HAX6ST   = &quot;How often did you take in past mnth-14th&quot;</span><br><span class="s">4415  HAX8ST   = &quot;How long been taking (month)-14th&quot;</span><br><span class="s">4416  HAX3CU   = &quot;Certainty index code-15th&quot;</span><br><span class="s">4417  HAX3DU   = &quot;Product class-15th&quot;</span><br><span class="s">4418  HAX6SU   = &quot;How often did you take in past mnth-15th&quot;</span><br><span class="s">4419  HAX8SU   = &quot;How long been taking (month)-15th&quot;</span><br><span class="s">4420  HAX3CV   = &quot;Certainty index code-16th&quot;</span><br><span class="s">4421  HAX3DV   = &quot;Product class-16th&quot;</span><br><span class="s">4422  HAX6SV   = &quot;How often did you take in past mnth-16th&quot;</span><br><span class="s">4423  HAX8SV   = &quot;How long been taking (month)-16th&quot;</span><br><span class="s">4424  HAX3CW   = &quot;Certainty index code-17th&quot;</span><br><span class="s">4425  HAX3DW   = &quot;Product class-17th&quot;</span><br><span class="s">4426  HAX6SW   = &quot;How often did you take in past mnth-17th&quot;</span><br><span class="s">4427  HAX8SW   = &quot;How long been taking (month)-17th&quot;</span><br><span class="s">4428  HAX9DG   = &quot;Primary drug class code-1st&quot;</span><br><span class="s">4429  HAX9EG   = &quot;Secondary drug class code-1st&quot;</span><br><span class="s">4430  HAX9FG   = &quot;Tertiary drug class code-1st&quot;</span><br><span class="s">4431  HAX11AG  = &quot;ICD-9-CM code-1st&quot;</span><br><span class="s">4432  HAX12SG  = &quot;For how long been taking (days)-1st&quot;</span><br><span class="s">4433  HAX9DH   = &quot;Primary drug class code-2nd&quot;</span><br><span class="s">4434  HAX9EH   = &quot;Secondary drug class code-2nd&quot;</span><br><span class="s">4435  HAX9FH   = &quot;Tertiary drug class code-2nd&quot;</span><br><span class="s">4436  HAX11AH  = &quot;ICD-9-CM code-2nd&quot;</span><br><span class="s">4437  HAX12SH  = &quot;For how long been taking (days)-2nd&quot;</span><br><span class="s">4438  HAX9DI   = &quot;Primary drug class code-3rd&quot;</span><br><span class="s">4439  HAX9EI   = &quot;Secondary drug class code-3rd&quot;</span><br><span class="s">4440  HAX9FI   = &quot;Tertiary drug class code-3rd&quot;</span><br><span class="s">4441  HAX11AI  = &quot;ICD-9-CM code-3rd&quot;</span><br><span class="s">4442  HAX12SI  = &quot;For how long been taking (days)-3rd&quot;</span><br><span class="s">4443  HAX9DJ   = &quot;Primary drug class code-4th&quot;</span><br><span class="s">4444  HAX9EJ   = &quot;Secondary drug class code-4th&quot;</span><br><span class="s">4445  HAX9FJ   = &quot;Tertiary drug class code-4th&quot;</span><br><span class="s">4446  HAX11AJ  = &quot;ICD-9-CM code-4th&quot;</span><br><span class="s">4447  HAX12SJ  = &quot;For how long been taking (days)-4th&quot;</span><br><span class="s">4448  HAX9DK   = &quot;Primary drug class code-5th&quot;</span><br><span class="s">4449  HAX9EK   = &quot;Secondary drug class code-5th&quot;</span><br><span class="s">4450  HAX9FK   = &quot;Tertiary drug class code-5th&quot;</span><br><span class="s">4451  HAX11AK  = &quot;ICD-9-CM code-5th&quot;</span><br><span class="s">4452  HAX12SK  = &quot;For how long been taking (days)-5th&quot;</span><br><span class="s">4453  HAX9DL   = &quot;Primary drug class code-6th&quot;</span><br><span class="s">4454  HAX9EL   = &quot;Secondary drug class code-6th&quot;</span><br><span class="s">4455  HAX9FL   = &quot;Tertiary drug class code-6th&quot;</span><br><span class="s">4456  HAX11AL  = &quot;ICD-9-CM code-6th&quot;</span><br><span class="s">4457  HAX12SL  = &quot;For how long been taking (days)-6th&quot;</span><br><span class="s">4458  HAX9DM   = &quot;Primary drug class code-7th&quot;</span><br><span class="s">4459  HAX9EM   = &quot;Secondary drug class code-7th&quot;</span><br><span class="s">4460  HAX9FM   = &quot;Tertiary drug class code-7th&quot;</span><br><span class="s">4461  HAX11AM  = &quot;ICD-9-CM code-7th&quot;</span><br><span class="s">4462  HAX12SM  = &quot;For how long been taking (days)-7th&quot;</span><br><span class="s">4463  HAX9DN   = &quot;Primary drug class code-8th&quot;</span><br><span class="s">4464  HAX9EN   = &quot;Secondary drug class code-8th&quot;</span><br><span class="s">4465  HAX9FN   = &quot;Tertiary drug class code-8th&quot;</span><br><span class="s">4466  HAX11AN  = &quot;ICD-9-CM code-8th&quot;</span><br><span class="s">4467  HAX12SN  = &quot;For how long been taking (days)-8th&quot;</span><br><span class="s">4468  HAX9DO   = &quot;Primary drug class code-9th&quot;</span><br><span class="s">4469  HAX9EO   = &quot;Secondary drug class code-9th&quot;</span><br><span class="s">4470  HAX9FO   = &quot;Tertiary drug class code-9th&quot;</span><br><span class="s">4471  HAX11AO  = &quot;ICD-9-CM code-9th&quot;</span><br><span class="s">4472  HAX12SO  = &quot;For how long been taking (days)-9th&quot;</span><br><span class="s">4473  HAX9DP   = &quot;Primary drug class code-10th&quot;</span><br><span class="s">4474  HAX9EP   = &quot;Secondary drug class code-10th&quot;</span><br><span class="s">4475  HAX9FP   = &quot;Tertiary drug class code-10th&quot;</span><br><span class="s">4476  HAX11AP  = &quot;ICD-9-CM code-10th&quot;</span><br><span class="s">4477  HAX12SP  = &quot;For how long been taking (days)-10th&quot;</span><br><span class="s">4478  HAX9DQ   = &quot;Primary drug class code-11th&quot;</span><br><span class="s">4479  HAX9EQ   = &quot;Secondary drug class code-11th&quot;</span><br><span class="s">4480  HAX9FQ   = &quot;Tertiary drug class code-11th&quot;</span><br><span class="s">4481  HAX11AQ  = &quot;ICD-9-CM code-11th&quot;</span><br><span class="s">4482  HAX12SQ  = &quot;For how long been taking (days)-11th&quot;</span><br><span class="s">4483  HAX9DR   = &quot;Primary drug class code-12th&quot;</span><br><span class="s">4484  HAX9ER   = &quot;Secondary drug class code-12th&quot;</span><br><span class="s">4485  HAX9FR   = &quot;Tertiary drug class code-12th&quot;</span><br><span class="s">4486  HAX11AR  = &quot;ICD-9-CM code-12th&quot;</span><br><span class="s">4487  HAX12SR  = &quot;For how long been taking (days)-12th&quot;</span><br><span class="s">4488  HAX9DS   = &quot;Primary drug class code-13th&quot;</span><br><span class="s">4489  HAX9ES   = &quot;Secondary drug class code-13th&quot;</span><br><span class="s">4490  HAX9FS   = &quot;Tertiary drug class code-13th&quot;</span><br><span class="s">4491  HAX11AS  = &quot;ICD-9-CM code-13th&quot;</span><br><span class="s">4492  HAX12SS  = &quot;For how long been taking (days)-13th&quot;</span><br><span class="s">4493  HAX9DT   = &quot;Primary drug class code-14th&quot;</span><br><span class="s">4494  HAX9ET   = &quot;Secondary drug class code-14th&quot;</span><br><span class="s">4495  HAX9FT   = &quot;Tertiary drug class code-14th&quot;</span><br><span class="s">4496  HAX11AT  = &quot;ICD-9-CM code-14th&quot;</span><br><span class="s">4497  HAX12ST  = &quot;For how long been taking (days)-14th&quot;</span><br><span class="s">4498  HAX9DU   = &quot;Primary drug class code-15th&quot;</span><br><span class="s">4499  HAX9EU   = &quot;Secondary drug class code-15th&quot;</span><br><span class="s">4500  HAX9FU   = &quot;Tertiary drug class code-15th&quot;</span><br><span class="s">4501  HAX11AU  = &quot;ICD-9-CM code-15th&quot;</span><br><span class="s">4502  HAX12SU  = &quot;For how long been taking (days)-15th&quot;</span><br><span class="s">4503  HAX9DV   = &quot;Primary drug class code-16th&quot;</span><br><span class="s">4504  HAX9EV   = &quot;Secondary drug class code-16th&quot;</span><br><span class="s">4505  HAX9FV   = &quot;Tertiary drug class code-16th&quot;</span><br><span class="s">4506  HAX11AV  = &quot;ICD-9-CM code-16th&quot;</span><br><span class="s">4507  HAX12SV  = &quot;For how long been taking (days)-16th&quot;</span><br><span class="s">4508  HAX13AG  = &quot;Antacid identification code-1st&quot;</span><br><span class="s">4509  HAX15SG  = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">4510  HAX16AG  = &quot;How much did you take ea time (quan)-1st&quot;</span><br><span class="s">4511  HAX16A1G  = &quot;How much did you take ea time (unit)-1st&quot;</span><br><span class="s">4512  HAX17SG  = &quot;How long been taking (months)-1st&quot;</span><br><span class="s">4513  HAX13AH  = &quot;Antacid identification code-2nd&quot;</span><br><span class="s">4514  HAX15SH  = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">4515  HAX16AH  = &quot;How much did you take ea time (quan)-2nd&quot;</span><br><span class="s">4516  HAX16A1H  = &quot;How much did you take ea time (unit)-2nd&quot;</span><br><span class="s">4517  HAX17SH  = &quot;How long been taking (months)-2nd&quot;</span><br><span class="s">4518  HAX13AI  = &quot;Antacid identification code-3rd&quot;</span><br><span class="s">4519  HAX15SI  = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">4520  HAX16AI  = &quot;How much did you take ea time (quan)-3rd&quot;</span><br><span class="s">4521  HAX16A1I  = &quot;How much did you take ea time (unit)-3rd&quot;</span><br><span class="s">4522  HAX17SI  = &quot;How long been taking (months)-3rd&quot;</span><br><span class="s">4523  HAX13AJ  = &quot;Antacid identification code-4th&quot;</span><br><span class="s">4524  HAX15SJ  = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">4525  HAX16AJ  = &quot;How much did you take ea time (quan)-4th&quot;</span><br><span class="s">4526  HAX16A1J  = &quot;How much did you take ea time (unit)-4th&quot;</span><br><span class="s">4527  HAX17SJ  = &quot;How long been taking (months)-4th&quot;</span><br><span class="s">4528  HAX18A   = &quot;Taken aspirin, etc. in past month&quot;</span><br><span class="s">4529  HAX19AS  = &quot;How often did you take in past month&quot;</span><br><span class="s">4530  HAX18B   = &quot;Taken acetaminophen, etc. in past month&quot;</span><br><span class="s">4531  HAX19BS  = &quot;How often did you take in past month&quot;</span><br><span class="s">4532  HAX18C   = &quot;Taken ibuprofen, etc. in past month&quot;</span><br><span class="s">4533  HAX19CS  = &quot;How often did you take in past month&quot;</span><br><span class="s">4534  HAX18D   = &quot;Taken other pain rel. in past month-1st&quot;</span><br><span class="s">4535  HAX18DB  = &quot;Other pain rel. product type-1st&quot;</span><br><span class="s">4536  HAX19DS  = &quot;How often did you take in past month-1st&quot;</span><br><span class="s">4537  HAX18E   = &quot;Taken other pain rel. in past month-2nd&quot;</span><br><span class="s">4538  HAX18EB  = &quot;Other pain rel. product type-2nd&quot;</span><br><span class="s">4539  HAX19ES  = &quot;How often did you take in past month-2nd&quot;</span><br><span class="s">4540  HAX18F   = &quot;Taken other pain rel. in past month-3rd&quot;</span><br><span class="s">4541  HAX18FB  = &quot;Other pain rel. product type-3rd&quot;</span><br><span class="s">4542  HAX19FS  = &quot;How often did you take in past month-3rd&quot;</span><br><span class="s">4543  HAX18G   = &quot;Taken other pain rel. in past month-4th&quot;</span><br><span class="s">4544  HAX18GB  = &quot;Other pain rel. product type-4th&quot;</span><br><span class="s">4545  HAX19GS  = &quot;How often did you take in past month-4th&quot;</span><br><span class="s">4546  ;</span><br><span class="s">4547  </span><br><span class="s">4548  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">4549  </span><br></pre></div>
</body>
</html>





```sas
PROC SORT DATA=ADULT;
     BY SEQN;
RUN;

PROC SORT DATA=ADULTX;
     BY SEQN;
RUN;

DATA ADULT2;
     MERGE  ADULT(DROP=HAX:)
            ADULTX;
     BY SEQN;
RUN;

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

<div class="highlight"><pre><span></span><span class="s">4551  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">4551! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">4552  </span><br><span class="cm">NOTE: The infile ADULTX is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/adultx.dat,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=27Mar2018:02:22:23,</span><br><span class="cm">      File Size (bytes)=13654062</span><br><br><span class="cm">NOTE: 20050 records were read from the infile ADULTX.</span><br><span class="cm">      The minimum record length was 680.</span><br><span class="cm">      The maximum record length was 682.</span><br><span class="cm">NOTE: The data set WORK.ADULTX has 20050 observations and 193 variables.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           2.43 seconds</span><br><span class="cm">      cpu time            1.58 seconds</span><br><span class="cm">      </span><br><span class="s">4553  PROC SORT DATA=ADULT;</span><br><span class="s">4554       BY SEQN;</span><br><span class="s">4555  RUN;</span><br><span class="cm">NOTE: There were 20050 observations read from the data set WORK.ADULT.</span><br><span class="cm">NOTE: The data set WORK.ADULT has 20050 observations and 1238 variables.</span><br><span class="cm">NOTE: PROCEDURE SORT used (Total process time):</span><br><span class="cm">      real time           1.68 seconds</span><br><span class="cm">      cpu time            0.93 seconds</span><br><span class="cm">      </span><br><span class="s">4556  </span><br><span class="s">4557  PROC SORT DATA=ADULTX;</span><br><span class="s">4558       BY SEQN;</span><br><span class="s">4559  RUN;</span><br><span class="cm">NOTE: There were 20050 observations read from the data set WORK.ADULTX.</span><br><span class="cm">NOTE: The data set WORK.ADULTX has 20050 observations and 193 variables.</span><br><span class="cm">NOTE: PROCEDURE SORT used (Total process time):</span><br><span class="cm">      real time           0.15 seconds</span><br><span class="cm">      cpu time            0.16 seconds</span><br><span class="cm">      </span><br><span class="s">4560  </span><br><span class="s">4561  DATA ADULT2;</span><br><span class="s">4562       MERGE  ADULT(DROP=HAX:)</span><br><span class="s">4563              ADULTX;</span><br><span class="s">4564       BY SEQN;</span><br><span class="s">4565  RUN;</span><br><span class="cm">NOTE: There were 20050 observations read from the data set WORK.ADULT.</span><br><span class="cm">NOTE: There were 20050 observations read from the data set WORK.ADULTX.</span><br><span class="cm">NOTE: The data set WORK.ADULT2 has 20050 observations and 1238 variables.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           0.50 seconds</span><br><span class="cm">      cpu time            0.48 seconds</span><br><span class="cm">      </span><br><span class="s">4566  </span><br><span class="s">4567  </span><br><span class="s">4568  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">4569  </span><br></pre></div>
</body>
</html>





```sas
proc export data=ADULT2
   outfile='adult-merge.csv'
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

<div class="highlight"><pre><span></span><span class="s">4571  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">4571! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">4572  </span><br><span class="s">4573  proc export data=ADULT2</span><br><span class="s">4574     outfile=&#39;adult-merge.csv&#39;</span><br><span class="s">4575     dbms=csv</span><br><span class="s">4576     replace;</span><br><span class="s">4577  run;</span><br><span class="s">4578   /**********************************************************************</span><br><span class="s">4579   *   PRODUCT:   SAS</span><br><span class="s">4580   *   VERSION:   9.4</span><br><span class="s">4581   *   CREATOR:   External File Interface</span><br><span class="s">4582   *   DATE:      27MAR18</span><br><span class="s">4583   *   DESC:      Generated SAS Datastep Code</span><br><span class="s">4584   *   TEMPLATE SOURCE:  (None Specified.)</span><br><span class="s">4585   ***********************************************************************/</span><br><span class="s">4586      data _null_;</span><br><span class="s">4587      %let _EFIERR_ = 0; /* set the ERROR detection macro variable */</span><br><span class="s">4588      %let _EFIREC_ = 0;     /* clear export record count macro variable */</span><br><span class="s">4589      file &#39;adult-merge.csv&#39; delimiter=&#39;,&#39; DSD DROPOVER lrecl=32767;</span><br><span class="s">4590      if _n_ = 1 then        /* write column names or labels */</span><br><span class="s">4591       do;</span><br><span class="s">4592         put</span><br><span class="s">4593            &quot;SEQN&quot;</span><br><span class="s">4594         &#39;,&#39;</span><br><span class="s">4595            &quot;DMPFSEQ&quot;</span><br><span class="s">4596         &#39;,&#39;</span><br><span class="s">4597            &quot;DMPSTAT&quot;</span><br><span class="s">4598         &#39;,&#39;</span><br><span class="s">4599            &quot;DMARETHN&quot;</span><br><span class="s">4600         &#39;,&#39;</span><br><span class="s">4601            &quot;DMARACER&quot;</span><br><span class="s">4602         &#39;,&#39;</span><br><span class="s">4603            &quot;DMAETHNR&quot;</span><br><span class="s">4604         &#39;,&#39;</span><br><span class="s">4605            &quot;HSSEX&quot;</span><br><span class="s">4606         &#39;,&#39;</span><br><span class="s">4607            &quot;HSDOIMO&quot;</span><br><span class="s">4608         &#39;,&#39;</span><br><span class="s">4609            &quot;HSAGEIR&quot;</span><br><span class="s">4610         &#39;,&#39;</span><br><span class="s">4611            &quot;HSAGEU&quot;</span><br><span class="s">4612         &#39;,&#39;</span><br><span class="s">4613            &quot;HSAITMOR&quot;</span><br><span class="s">4614         &#39;,&#39;</span><br><span class="s">4615            &quot;HSFSIZER&quot;</span><br><span class="s">4616         &#39;,&#39;</span><br><span class="s">4617            &quot;HSHSIZER&quot;</span><br><span class="s">4618         &#39;,&#39;</span><br><span class="s">4619            &quot;DMPCNTYR&quot;</span><br><span class="s">4620         &#39;,&#39;</span><br><span class="s">4621            &quot;DMPFIPSR&quot;</span><br><span class="s">4622         &#39;,&#39;</span><br><span class="s">4623            &quot;DMPMETRO&quot;</span><br><span class="s">4624         &#39;,&#39;</span><br><span class="s">4625            &quot;DMPCREGN&quot;</span><br><span class="s">4626         &#39;,&#39;</span><br><span class="s">4627            &quot;DMPPIR&quot;</span><br><span class="s">4628         &#39;,&#39;</span><br><span class="s">4629            &quot;SDPPHASE&quot;</span><br><span class="s">4630         &#39;,&#39;</span><br><span class="s">4631            &quot;SDPPSU6&quot;</span><br><span class="s">4632         &#39;,&#39;</span><br><span class="s">4633            &quot;SDPSTRA6&quot;</span><br><span class="s">4634         &#39;,&#39;</span><br><span class="s">4635            &quot;SDPPSU1&quot;</span><br><span class="s">4636         &#39;,&#39;</span><br><span class="s">4637            &quot;SDPSTRA1&quot;</span><br><span class="s">4638         &#39;,&#39;</span><br><span class="s">4639            &quot;SDPPSU2&quot;</span><br><span class="s">4640         &#39;,&#39;</span><br><span class="s">4641            &quot;SDPSTRA2&quot;</span><br><span class="s">4642         &#39;,&#39;</span><br><span class="s">4643            &quot;WTPFQX6&quot;</span><br><span class="s">4644         &#39;,&#39;</span><br><span class="s">4645            &quot;WTPFEX6&quot;</span><br><span class="s">4646         &#39;,&#39;</span><br><span class="s">4647            &quot;WTPFHX6&quot;</span><br><span class="s">4648         &#39;,&#39;</span><br><span class="s">4649            &quot;WTPFALG6&quot;</span><br><span class="s">4650         &#39;,&#39;</span><br><span class="s">4651            &quot;WTPFCNS6&quot;</span><br><span class="s">4652         &#39;,&#39;</span><br><span class="s">4653            &quot;WTPFSD6&quot;</span><br><span class="s">4654         &#39;,&#39;</span><br><span class="s">4655            &quot;WTPFMD6&quot;</span><br><span class="s">4656         &#39;,&#39;</span><br><span class="s">4657            &quot;WTPFHSD6&quot;</span><br><span class="s">4658         &#39;,&#39;</span><br><span class="s">4659            &quot;WTPFHMD6&quot;</span><br><span class="s">4660         &#39;,&#39;</span><br><span class="s">4661            &quot;WTPFQX1&quot;</span><br><span class="s">4662         &#39;,&#39;</span><br><span class="s">4663            &quot;WTPFEX1&quot;</span><br><span class="s">4664         &#39;,&#39;</span><br><span class="s">4665            &quot;WTPFHX1&quot;</span><br><span class="s">4666         &#39;,&#39;</span><br><span class="s">4667            &quot;WTPFALG1&quot;</span><br><span class="s">4668         &#39;,&#39;</span><br><span class="s">4669            &quot;WTPFCNS1&quot;</span><br><span class="s">4670         &#39;,&#39;</span><br><span class="s">4671            &quot;WTPFSD1&quot;</span><br><span class="s">4672         &#39;,&#39;</span><br><span class="s">4673            &quot;WTPFMD1&quot;</span><br><span class="s">4674         &#39;,&#39;</span><br><span class="s">4675            &quot;WTPFHSD1&quot;</span><br><span class="s">4676         &#39;,&#39;</span><br><span class="s">4677            &quot;WTPFHMD1&quot;</span><br><span class="s">4678         &#39;,&#39;</span><br><span class="s">4679            &quot;WTPFQX2&quot;</span><br><span class="s">4680         &#39;,&#39;</span><br><span class="s">4681            &quot;WTPFEX2&quot;</span><br><span class="s">4682         &#39;,&#39;</span><br><span class="s">4683            &quot;WTPFHX2&quot;</span><br><span class="s">4684         &#39;,&#39;</span><br><span class="s">4685            &quot;WTPFALG2&quot;</span><br><span class="s">4686         &#39;,&#39;</span><br><span class="s">4687            &quot;WTPFCNS2&quot;</span><br><span class="s">4688         &#39;,&#39;</span><br><span class="s">4689            &quot;WTPFSD2&quot;</span><br><span class="s">4690         &#39;,&#39;</span><br><span class="s">4691            &quot;WTPFMD2&quot;</span><br><span class="s">4692         &#39;,&#39;</span><br><span class="s">4693            &quot;WTPFHSD2&quot;</span><br><span class="s">4694         &#39;,&#39;</span><br><span class="s">4695            &quot;WTPFHMD2&quot;</span><br><span class="s">4696         &#39;,&#39;</span><br><span class="s">4697            &quot;WTPQRP1&quot;</span><br><span class="s">4698         &#39;,&#39;</span><br><span class="s">4699            &quot;WTPQRP2&quot;</span><br><span class="s">4700         &#39;,&#39;</span><br><span class="s">4701            &quot;WTPQRP3&quot;</span><br><span class="s">4702         &#39;,&#39;</span><br><span class="s">4703            &quot;WTPQRP4&quot;</span><br><span class="s">4704         &#39;,&#39;</span><br><span class="s">4705            &quot;WTPQRP5&quot;</span><br><span class="s">4706         &#39;,&#39;</span><br><span class="s">4707            &quot;WTPQRP6&quot;</span><br><span class="s">4708         &#39;,&#39;</span><br><span class="s">4709            &quot;WTPQRP7&quot;</span><br><span class="s">4710         &#39;,&#39;</span><br><span class="s">4711            &quot;WTPQRP8&quot;</span><br><span class="s">4712         &#39;,&#39;</span><br><span class="s">4713            &quot;WTPQRP9&quot;</span><br><span class="s">4714         &#39;,&#39;</span><br><span class="s">4715            &quot;WTPQRP10&quot;</span><br><span class="s">4716         &#39;,&#39;</span><br><span class="s">4717            &quot;WTPQRP11&quot;</span><br><span class="s">4718         &#39;,&#39;</span><br><span class="s">4719            &quot;WTPQRP12&quot;</span><br><span class="s">4720         &#39;,&#39;</span><br><span class="s">4721            &quot;WTPQRP13&quot;</span><br><span class="s">4722         &#39;,&#39;</span><br><span class="s">4723            &quot;WTPQRP14&quot;</span><br><span class="s">4724         &#39;,&#39;</span><br><span class="s">4725            &quot;WTPQRP15&quot;</span><br><span class="s">4726         &#39;,&#39;</span><br><span class="s">4727            &quot;WTPQRP16&quot;</span><br><span class="s">4728         &#39;,&#39;</span><br><span class="s">4729            &quot;WTPQRP17&quot;</span><br><span class="s">4730         &#39;,&#39;</span><br><span class="s">4731            &quot;WTPQRP18&quot;</span><br><span class="s">4732         &#39;,&#39;</span><br><span class="s">4733            &quot;WTPQRP19&quot;</span><br><span class="s">4734         &#39;,&#39;</span><br><span class="s">4735            &quot;WTPQRP20&quot;</span><br><span class="s">4736         &#39;,&#39;</span><br><span class="s">4737            &quot;WTPQRP21&quot;</span><br><span class="s">4738         &#39;,&#39;</span><br><span class="s">4739            &quot;WTPQRP22&quot;</span><br><span class="s">4740         &#39;,&#39;</span><br><span class="s">4741            &quot;WTPQRP23&quot;</span><br><span class="s">4742         &#39;,&#39;</span><br><span class="s">4743            &quot;WTPQRP24&quot;</span><br><span class="s">4744         &#39;,&#39;</span><br><span class="s">4745            &quot;WTPQRP25&quot;</span><br><span class="s">4746         &#39;,&#39;</span><br><span class="s">4747            &quot;WTPQRP26&quot;</span><br><span class="s">4748         &#39;,&#39;</span><br><span class="s">4749            &quot;WTPQRP27&quot;</span><br><span class="s">4750         &#39;,&#39;</span><br><span class="s">4751            &quot;WTPQRP28&quot;</span><br><span class="s">4752         &#39;,&#39;</span><br><span class="s">4753            &quot;WTPQRP29&quot;</span><br><span class="s">4754         &#39;,&#39;</span><br><span class="s">4755            &quot;WTPQRP30&quot;</span><br><span class="s">4756         &#39;,&#39;</span><br><span class="s">4757            &quot;WTPQRP31&quot;</span><br><span class="s">4758         &#39;,&#39;</span><br><span class="s">4759            &quot;WTPQRP32&quot;</span><br><span class="s">4760         &#39;,&#39;</span><br><span class="s">4761            &quot;WTPQRP33&quot;</span><br><span class="s">4762         &#39;,&#39;</span><br><span class="s">4763            &quot;WTPQRP34&quot;</span><br><span class="s">4764         &#39;,&#39;</span><br><span class="s">4765            &quot;WTPQRP35&quot;</span><br><span class="s">4766         &#39;,&#39;</span><br><span class="s">4767            &quot;WTPQRP36&quot;</span><br><span class="s">4768         &#39;,&#39;</span><br><span class="s">4769            &quot;WTPQRP37&quot;</span><br><span class="s">4770         &#39;,&#39;</span><br><span class="s">4771            &quot;WTPQRP38&quot;</span><br><span class="s">4772         &#39;,&#39;</span><br><span class="s">4773            &quot;WTPQRP39&quot;</span><br><span class="s">4774         &#39;,&#39;</span><br><span class="s">4775            &quot;WTPQRP40&quot;</span><br><span class="s">4776         &#39;,&#39;</span><br><span class="s">4777            &quot;WTPQRP41&quot;</span><br><span class="s">4778         &#39;,&#39;</span><br><span class="s">4779            &quot;WTPQRP42&quot;</span><br><span class="s">4780         &#39;,&#39;</span><br><span class="s">4781            &quot;WTPQRP43&quot;</span><br><span class="s">4782         &#39;,&#39;</span><br><span class="s">4783            &quot;WTPQRP44&quot;</span><br><span class="s">4784         &#39;,&#39;</span><br><span class="s">4785            &quot;WTPQRP45&quot;</span><br><span class="s">4786         &#39;,&#39;</span><br><span class="s">4787            &quot;WTPQRP46&quot;</span><br><span class="s">4788         &#39;,&#39;</span><br><span class="s">4789            &quot;WTPQRP47&quot;</span><br><span class="s">4790         &#39;,&#39;</span><br><span class="s">4791            &quot;WTPQRP48&quot;</span><br><span class="s">4792         &#39;,&#39;</span><br><span class="s">4793            &quot;WTPQRP49&quot;</span><br><span class="s">4794         &#39;,&#39;</span><br><span class="s">4795            &quot;WTPQRP50&quot;</span><br><span class="s">4796         &#39;,&#39;</span><br><span class="s">4797            &quot;WTPQRP51&quot;</span><br><span class="s">4798         &#39;,&#39;</span><br><span class="s">4799            &quot;WTPQRP52&quot;</span><br><span class="s">4800         &#39;,&#39;</span><br><span class="s">4801            &quot;WTPXRP1&quot;</span><br><span class="s">4802         &#39;,&#39;</span><br><span class="s">4803            &quot;WTPXRP2&quot;</span><br><span class="s">4804         &#39;,&#39;</span><br><span class="s">4805            &quot;WTPXRP3&quot;</span><br><span class="s">4806         &#39;,&#39;</span><br><span class="s">4807            &quot;WTPXRP4&quot;</span><br><span class="s">4808         &#39;,&#39;</span><br><span class="s">4809            &quot;WTPXRP5&quot;</span><br><span class="s">4810         &#39;,&#39;</span><br><span class="s">4811            &quot;WTPXRP6&quot;</span><br><span class="s">4812         &#39;,&#39;</span><br><span class="s">4813            &quot;WTPXRP7&quot;</span><br><span class="s">4814         &#39;,&#39;</span><br><span class="s">4815            &quot;WTPXRP8&quot;</span><br><span class="s">4816         &#39;,&#39;</span><br><span class="s">4817            &quot;WTPXRP9&quot;</span><br><span class="s">4818         &#39;,&#39;</span><br><span class="s">4819            &quot;WTPXRP10&quot;</span><br><span class="s">4820         &#39;,&#39;</span><br><span class="s">4821            &quot;WTPXRP11&quot;</span><br><span class="s">4822         &#39;,&#39;</span><br><span class="s">4823            &quot;WTPXRP12&quot;</span><br><span class="s">4824         &#39;,&#39;</span><br><span class="s">4825            &quot;WTPXRP13&quot;</span><br><span class="s">4826         &#39;,&#39;</span><br><span class="s">4827            &quot;WTPXRP14&quot;</span><br><span class="s">4828         &#39;,&#39;</span><br><span class="s">4829            &quot;WTPXRP15&quot;</span><br><span class="s">4830         &#39;,&#39;</span><br><span class="s">4831            &quot;WTPXRP16&quot;</span><br><span class="s">4832         &#39;,&#39;</span><br><span class="s">4833            &quot;WTPXRP17&quot;</span><br><span class="s">4834         &#39;,&#39;</span><br><span class="s">4835            &quot;WTPXRP18&quot;</span><br><span class="s">4836         &#39;,&#39;</span><br><span class="s">4837            &quot;WTPXRP19&quot;</span><br><span class="s">4838         &#39;,&#39;</span><br><span class="s">4839            &quot;WTPXRP20&quot;</span><br><span class="s">4840         &#39;,&#39;</span><br><span class="s">4841            &quot;WTPXRP21&quot;</span><br><span class="s">4842         &#39;,&#39;</span><br><span class="s">4843            &quot;WTPXRP22&quot;</span><br><span class="s">4844         &#39;,&#39;</span><br><span class="s">4845            &quot;WTPXRP23&quot;</span><br><span class="s">4846         &#39;,&#39;</span><br><span class="s">4847            &quot;WTPXRP24&quot;</span><br><span class="s">4848         &#39;,&#39;</span><br><span class="s">4849            &quot;WTPXRP25&quot;</span><br><span class="s">4850         &#39;,&#39;</span><br><span class="s">4851            &quot;WTPXRP26&quot;</span><br><span class="s">4852         &#39;,&#39;</span><br><span class="s">4853            &quot;WTPXRP27&quot;</span><br><span class="s">4854         &#39;,&#39;</span><br><span class="s">4855            &quot;WTPXRP28&quot;</span><br><span class="s">4856         &#39;,&#39;</span><br><span class="s">4857            &quot;WTPXRP29&quot;</span><br><span class="s">4858         &#39;,&#39;</span><br><span class="s">4859            &quot;WTPXRP30&quot;</span><br><span class="s">4860         &#39;,&#39;</span><br><span class="s">4861            &quot;WTPXRP31&quot;</span><br><span class="s">4862         &#39;,&#39;</span><br><span class="s">4863            &quot;WTPXRP32&quot;</span><br><span class="s">4864         &#39;,&#39;</span><br><span class="s">4865            &quot;WTPXRP33&quot;</span><br><span class="s">4866         &#39;,&#39;</span><br><span class="s">4867            &quot;WTPXRP34&quot;</span><br><span class="s">4868         &#39;,&#39;</span><br><span class="s">4869            &quot;WTPXRP35&quot;</span><br><span class="s">4870         &#39;,&#39;</span><br><span class="s">4871            &quot;WTPXRP36&quot;</span><br><span class="s">4872         &#39;,&#39;</span><br><span class="s">4873            &quot;WTPXRP37&quot;</span><br><span class="s">4874         &#39;,&#39;</span><br><span class="s">4875            &quot;WTPXRP38&quot;</span><br><span class="s">4876         &#39;,&#39;</span><br><span class="s">4877            &quot;WTPXRP39&quot;</span><br><span class="s">4878         &#39;,&#39;</span><br><span class="s">4879            &quot;WTPXRP40&quot;</span><br><span class="s">4880         &#39;,&#39;</span><br><span class="s">4881            &quot;WTPXRP41&quot;</span><br><span class="s">4882         &#39;,&#39;</span><br><span class="s">4883            &quot;WTPXRP42&quot;</span><br><span class="s">4884         &#39;,&#39;</span><br><span class="s">4885            &quot;WTPXRP43&quot;</span><br><span class="s">4886         &#39;,&#39;</span><br><span class="s">4887            &quot;WTPXRP44&quot;</span><br><span class="s">4888         &#39;,&#39;</span><br><span class="s">4889            &quot;WTPXRP45&quot;</span><br><span class="s">4890         &#39;,&#39;</span><br><span class="s">4891            &quot;WTPXRP46&quot;</span><br><span class="s">4892         &#39;,&#39;</span><br><span class="s">4893            &quot;WTPXRP47&quot;</span><br><span class="s">4894         &#39;,&#39;</span><br><span class="s">4895            &quot;WTPXRP48&quot;</span><br><span class="s">4896         &#39;,&#39;</span><br><span class="s">4897            &quot;WTPXRP49&quot;</span><br><span class="s">4898         &#39;,&#39;</span><br><span class="s">4899            &quot;WTPXRP50&quot;</span><br><span class="s">4900         &#39;,&#39;</span><br><span class="s">4901            &quot;WTPXRP51&quot;</span><br><span class="s">4902         &#39;,&#39;</span><br><span class="s">4903            &quot;WTPXRP52&quot;</span><br><span class="s">4904         &#39;,&#39;</span><br><span class="s">4905            &quot;HYAITMO&quot;</span><br><span class="s">4906         &#39;,&#39;</span><br><span class="s">4907            &quot;MXPLANG&quot;</span><br><span class="s">4908         &#39;,&#39;</span><br><span class="s">4909            &quot;MXPSESSR&quot;</span><br><span class="s">4910         &#39;,&#39;</span><br><span class="s">4911            &quot;MXPTIMO&quot;</span><br><span class="s">4912         &#39;,&#39;</span><br><span class="s">4913            &quot;MXPTIDW&quot;</span><br><span class="s">4914         &#39;,&#39;</span><br><span class="s">4915            &quot;MXPAXTMR&quot;</span><br><span class="s">4916         &#39;,&#39;</span><br><span class="s">4917            &quot;HXPSESSR&quot;</span><br><span class="s">4918         &#39;,&#39;</span><br><span class="s">4919            &quot;HXPTIMO&quot;</span><br><span class="s">4920         &#39;,&#39;</span><br><span class="s">4921            &quot;HXPTIDW&quot;</span><br><span class="s">4922         &#39;,&#39;</span><br><span class="s">4923            &quot;HXPAXTMR&quot;</span><br><span class="s">4924         &#39;,&#39;</span><br><span class="s">4925            &quot;HFVERS&quot;</span><br><span class="s">4926         &#39;,&#39;</span><br><span class="s">4927            &quot;HFINTVR&quot;</span><br><span class="s">4928         &#39;,&#39;</span><br><span class="s">4929            &quot;HFLANG&quot;</span><br><span class="s">4930         &#39;,&#39;</span><br><span class="s">4931            &quot;HFA6XCR&quot;</span><br><span class="s">4932         &#39;,&#39;</span><br><span class="s">4933            &quot;HFA8R&quot;</span><br><span class="s">4934         &#39;,&#39;</span><br><span class="s">4935            &quot;HFA12&quot;</span><br><span class="s">4936         &#39;,&#39;</span><br><span class="s">4937            &quot;HFA13&quot;</span><br><span class="s">4938         &#39;,&#39;</span><br><span class="s">4939            &quot;HFB1&quot;</span><br><span class="s">4940         &#39;,&#39;</span><br><span class="s">4941            &quot;HFB2&quot;</span><br><span class="s">4942         &#39;,&#39;</span><br><span class="s">4943            &quot;HFB3&quot;</span><br><span class="s">4944         &#39;,&#39;</span><br><span class="s">4945            &quot;HFB4&quot;</span><br><span class="s">4946         &#39;,&#39;</span><br><span class="s">4947            &quot;HFB5&quot;</span><br><span class="s">4948         &#39;,&#39;</span><br><span class="s">4949            &quot;HFB6&quot;</span><br><span class="s">4950         &#39;,&#39;</span><br><span class="s">4951            &quot;HFB7&quot;</span><br><span class="s">4952         &#39;,&#39;</span><br><span class="s">4953            &quot;HFB8&quot;</span><br><span class="s">4954         &#39;,&#39;</span><br><span class="s">4955            &quot;HFB9&quot;</span><br><span class="s">4956         &#39;,&#39;</span><br><span class="s">4957            &quot;HFB10&quot;</span><br><span class="s">4958         &#39;,&#39;</span><br><span class="s">4959            &quot;HFB11&quot;</span><br><span class="s">4960         &#39;,&#39;</span><br><span class="s">4961            &quot;HFB11A&quot;</span><br><span class="s">4962         &#39;,&#39;</span><br><span class="s">4963            &quot;HFB11B&quot;</span><br><span class="s">4964         &#39;,&#39;</span><br><span class="s">4965            &quot;HFB11C&quot;</span><br><span class="s">4966         &#39;,&#39;</span><br><span class="s">4967            &quot;HFB11D&quot;</span><br><span class="s">4968         &#39;,&#39;</span><br><span class="s">4969            &quot;HFB11E&quot;</span><br><span class="s">4970         &#39;,&#39;</span><br><span class="s">4971            &quot;HFB12&quot;</span><br><span class="s">4972         &#39;,&#39;</span><br><span class="s">4973            &quot;HFB13&quot;</span><br><span class="s">4974         &#39;,&#39;</span><br><span class="s">4975            &quot;HFB14AB&quot;</span><br><span class="s">4976         &#39;,&#39;</span><br><span class="s">4977            &quot;HFB14AC&quot;</span><br><span class="s">4978         &#39;,&#39;</span><br><span class="s">4979            &quot;HFB14AD&quot;</span><br><span class="s">4980         &#39;,&#39;</span><br><span class="s">4981            &quot;HFB14AE&quot;</span><br><span class="s">4982         &#39;,&#39;</span><br><span class="s">4983            &quot;HFB14AF&quot;</span><br><span class="s">4984         &#39;,&#39;</span><br><span class="s">4985            &quot;HFB14AG&quot;</span><br><span class="s">4986         &#39;,&#39;</span><br><span class="s">4987            &quot;HFB14AI&quot;</span><br><span class="s">4988         &#39;,&#39;</span><br><span class="s">4989            &quot;HFB14BA&quot;</span><br><span class="s">4990         &#39;,&#39;</span><br><span class="s">4991            &quot;HFB14BB&quot;</span><br><span class="s">4992         &#39;,&#39;</span><br><span class="s">4993            &quot;HFB14BC&quot;</span><br><span class="s">4994         &#39;,&#39;</span><br><span class="s">4995            &quot;HFB14BD&quot;</span><br><span class="s">4996         &#39;,&#39;</span><br><span class="s">4997            &quot;HFB14BE&quot;</span><br><span class="s">4998         &#39;,&#39;</span><br><span class="s">4999            &quot;HFB14BF&quot;</span><br><span class="s">5000         &#39;,&#39;</span><br><span class="s">5001            &quot;HFB14BG&quot;</span><br><span class="s">5002         &#39;,&#39;</span><br><span class="s">5003            &quot;HFB14BH&quot;</span><br><span class="s">5004         &#39;,&#39;</span><br><span class="s">5005            &quot;HFB16A&quot;</span><br><span class="s">5006         &#39;,&#39;</span><br><span class="s">5007            &quot;HFB16B&quot;</span><br><span class="s">5008         &#39;,&#39;</span><br><span class="s">5009            &quot;HFB17&quot;</span><br><span class="s">5010         &#39;,&#39;</span><br><span class="s">5011            &quot;HFC1&quot;</span><br><span class="s">5012         &#39;,&#39;</span><br><span class="s">5013            &quot;HFC2S&quot;</span><br><span class="s">5014         &#39;,&#39;</span><br><span class="s">5015            &quot;HFC3S&quot;</span><br><span class="s">5016         &#39;,&#39;</span><br><span class="s">5017            &quot;HFC4S&quot;</span><br><span class="s">5018         &#39;,&#39;</span><br><span class="s">5019            &quot;HFC5S&quot;</span><br><span class="s">5020         &#39;,&#39;</span><br><span class="s">5021            &quot;HFC6A&quot;</span><br><span class="s">5022         &#39;,&#39;</span><br><span class="s">5023            &quot;HFC6A1&quot;</span><br><span class="s">5024         &#39;,&#39;</span><br><span class="s">5025            &quot;HFC6B&quot;</span><br><span class="s">5026         &#39;,&#39;</span><br><span class="s">5027            &quot;HFC6B1&quot;</span><br><span class="s">5028         &#39;,&#39;</span><br><span class="s">5029            &quot;HFC6C&quot;</span><br><span class="s">5030         &#39;,&#39;</span><br><span class="s">5031            &quot;HFC6C1&quot;</span><br><span class="s">5032         &#39;,&#39;</span><br><span class="s">5033            &quot;HFC6D&quot;</span><br><span class="s">5034         &#39;,&#39;</span><br><span class="s">5035            &quot;HFC6D1&quot;</span><br><span class="s">5036         &#39;,&#39;</span><br><span class="s">5037            &quot;HFC6E&quot;</span><br><span class="s">5038         &#39;,&#39;</span><br><span class="s">5039            &quot;HFC6E1&quot;</span><br><span class="s">5040         &#39;,&#39;</span><br><span class="s">5041            &quot;HFC7S&quot;</span><br><span class="s">5042         &#39;,&#39;</span><br><span class="s">5043            &quot;HFC8S&quot;</span><br><span class="s">5044         &#39;,&#39;</span><br><span class="s">5045            &quot;HFC9&quot;</span><br><span class="s">5046         &#39;,&#39;</span><br><span class="s">5047            &quot;HFC10&quot;</span><br><span class="s">5048         &#39;,&#39;</span><br><span class="s">5049            &quot;HFC11&quot;</span><br><span class="s">5050         &#39;,&#39;</span><br><span class="s">5051            &quot;HFD1&quot;</span><br><span class="s">5052         &#39;,&#39;</span><br><span class="s">5053            &quot;HFD2&quot;</span><br><span class="s">5054         &#39;,&#39;</span><br><span class="s">5055            &quot;HFD3&quot;</span><br><span class="s">5056         &#39;,&#39;</span><br><span class="s">5057            &quot;HFD4&quot;</span><br><span class="s">5058         &#39;,&#39;</span><br><span class="s">5059            &quot;HFD5&quot;</span><br><span class="s">5060         &#39;,&#39;</span><br><span class="s">5061            &quot;HFD9R&quot;</span><br><span class="s">5062         &#39;,&#39;</span><br><span class="s">5063            &quot;HFD10R&quot;</span><br><span class="s">5064         &#39;,&#39;</span><br><span class="s">5065            &quot;HFD12&quot;</span><br><span class="s">5066         &#39;,&#39;</span><br><span class="s">5067            &quot;HFE1&quot;</span><br><span class="s">5068         &#39;,&#39;</span><br><span class="s">5069            &quot;HFE2&quot;</span><br><span class="s">5070         &#39;,&#39;</span><br><span class="s">5071            &quot;HFE3&quot;</span><br><span class="s">5072         &#39;,&#39;</span><br><span class="s">5073            &quot;HFE4&quot;</span><br><span class="s">5074         &#39;,&#39;</span><br><span class="s">5075            &quot;HFE5&quot;</span><br><span class="s">5076         &#39;,&#39;</span><br><span class="s">5077            &quot;HFE6&quot;</span><br><span class="s">5078         &#39;,&#39;</span><br><span class="s">5079            &quot;HFE7&quot;</span><br><span class="s">5080         &#39;,&#39;</span><br><span class="s">5081            &quot;HFE8A&quot;</span><br><span class="s">5082         &#39;,&#39;</span><br><span class="s">5083            &quot;HFE8B&quot;</span><br><span class="s">5084         &#39;,&#39;</span><br><span class="s">5085            &quot;HFE8C&quot;</span><br><span class="s">5086         &#39;,&#39;</span><br><span class="s">5087            &quot;HFE8D&quot;</span><br><span class="s">5088         &#39;,&#39;</span><br><span class="s">5089            &quot;HFE8E&quot;</span><br><span class="s">5090         &#39;,&#39;</span><br><span class="s">5091            &quot;HFE9&quot;</span><br><span class="s">5092         &#39;,&#39;</span><br><span class="s">5093            &quot;HFE10&quot;</span><br><span class="s">5094         &#39;,&#39;</span><br><span class="s">5095            &quot;HFE11&quot;</span><br><span class="s">5096         &#39;,&#39;</span><br><span class="s">5097            &quot;HFE12&quot;</span><br><span class="s">5098         &#39;,&#39;</span><br><span class="s">5099            &quot;HFE13&quot;</span><br><span class="s">5100         &#39;,&#39;</span><br><span class="s">5101            &quot;HFE14&quot;</span><br><span class="s">5102         &#39;,&#39;</span><br><span class="s">5103            &quot;HFE15&quot;</span><br><span class="s">5104         &#39;,&#39;</span><br><span class="s">5105            &quot;HFE16&quot;</span><br><span class="s">5106         &#39;,&#39;</span><br><span class="s">5107            &quot;HFE17&quot;</span><br><span class="s">5108         &#39;,&#39;</span><br><span class="s">5109            &quot;HFE18&quot;</span><br><span class="s">5110         &#39;,&#39;</span><br><span class="s">5111            &quot;HFF1&quot;</span><br><span class="s">5112         &#39;,&#39;</span><br><span class="s">5113            &quot;HFF2R&quot;</span><br><span class="s">5114         &#39;,&#39;</span><br><span class="s">5115            &quot;HFF3A&quot;</span><br><span class="s">5116         &#39;,&#39;</span><br><span class="s">5117            &quot;HFF3B&quot;</span><br><span class="s">5118         &#39;,&#39;</span><br><span class="s">5119            &quot;HFF3C&quot;</span><br><span class="s">5120         &#39;,&#39;</span><br><span class="s">5121            &quot;HFF3D&quot;</span><br><span class="s">5122         &#39;,&#39;</span><br><span class="s">5123            &quot;HFF3E&quot;</span><br><span class="s">5124         &#39;,&#39;</span><br><span class="s">5125            &quot;HFF3F&quot;</span><br><span class="s">5126         &#39;,&#39;</span><br><span class="s">5127            &quot;HFF4&quot;</span><br><span class="s">5128         &#39;,&#39;</span><br><span class="s">5129            &quot;HFF5&quot;</span><br><span class="s">5130         &#39;,&#39;</span><br><span class="s">5131            &quot;HFF6A&quot;</span><br><span class="s">5132         &#39;,&#39;</span><br><span class="s">5133            &quot;HFF6B&quot;</span><br><span class="s">5134         &#39;,&#39;</span><br><span class="s">5135            &quot;HFF6C&quot;</span><br><span class="s">5136         &#39;,&#39;</span><br><span class="s">5137            &quot;HFF6D&quot;</span><br><span class="s">5138         &#39;,&#39;</span><br><span class="s">5139            &quot;HFF7&quot;</span><br><span class="s">5140         &#39;,&#39;</span><br><span class="s">5141            &quot;HFF8&quot;</span><br><span class="s">5142         &#39;,&#39;</span><br><span class="s">5143            &quot;HFF9&quot;</span><br><span class="s">5144         &#39;,&#39;</span><br><span class="s">5145            &quot;HFF10&quot;</span><br><span class="s">5146         &#39;,&#39;</span><br><span class="s">5147            &quot;HFF11&quot;</span><br><span class="s">5148         &#39;,&#39;</span><br><span class="s">5149            &quot;HFF12A&quot;</span><br><span class="s">5150         &#39;,&#39;</span><br><span class="s">5151            &quot;HFF12B&quot;</span><br><span class="s">5152         &#39;,&#39;</span><br><span class="s">5153            &quot;HFF13A&quot;</span><br><span class="s">5154         &#39;,&#39;</span><br><span class="s">5155            &quot;HFF13B&quot;</span><br><span class="s">5156         &#39;,&#39;</span><br><span class="s">5157            &quot;HFF13DA&quot;</span><br><span class="s">5158         &#39;,&#39;</span><br><span class="s">5159            &quot;HFF13DB&quot;</span><br><span class="s">5160         &#39;,&#39;</span><br><span class="s">5161            &quot;HFF13E&quot;</span><br><span class="s">5162         &#39;,&#39;</span><br><span class="s">5163            &quot;HFF14A&quot;</span><br><span class="s">5164         &#39;,&#39;</span><br><span class="s">5165            &quot;HFF14B&quot;</span><br><span class="s">5166         &#39;,&#39;</span><br><span class="s">5167            &quot;HFF14D&quot;</span><br><span class="s">5168         &#39;,&#39;</span><br><span class="s">5169            &quot;HFF15A&quot;</span><br><span class="s">5170         &#39;,&#39;</span><br><span class="s">5171            &quot;HFF15B&quot;</span><br><span class="s">5172         &#39;,&#39;</span><br><span class="s">5173            &quot;HFF16A&quot;</span><br><span class="s">5174         &#39;,&#39;</span><br><span class="s">5175            &quot;HFF16B&quot;</span><br><span class="s">5176         &#39;,&#39;</span><br><span class="s">5177            &quot;HFF16D&quot;</span><br><span class="s">5178         &#39;,&#39;</span><br><span class="s">5179            &quot;HFF16E&quot;</span><br><span class="s">5180         &#39;,&#39;</span><br><span class="s">5181            &quot;HFF17A&quot;</span><br><span class="s">5182         &#39;,&#39;</span><br><span class="s">5183            &quot;HFF17B&quot;</span><br><span class="s">5184         &#39;,&#39;</span><br><span class="s">5185            &quot;HFF18&quot;</span><br><span class="s">5186         &#39;,&#39;</span><br><span class="s">5187            &quot;HFF19R&quot;</span><br><span class="s">5188         &#39;,&#39;</span><br><span class="s">5189            &quot;HFF20R&quot;</span><br><span class="s">5190         &#39;,&#39;</span><br><span class="s">5191            &quot;HFHSEQN&quot;</span><br><span class="s">5192         &#39;,&#39;</span><br><span class="s">5193            &quot;HFHAGER&quot;</span><br><span class="s">5194         &#39;,&#39;</span><br><span class="s">5195            &quot;HFHSEX&quot;</span><br><span class="s">5196         &#39;,&#39;</span><br><span class="s">5197            &quot;HFHFIPCR&quot;</span><br><span class="s">5198         &#39;,&#39;</span><br><span class="s">5199            &quot;HFHEDUCR&quot;</span><br><span class="s">5200         &#39;,&#39;</span><br><span class="s">5201            &quot;HFHEMPL&quot;</span><br><span class="s">5202         &#39;,&#39;</span><br><span class="s">5203            &quot;HFHMRST&quot;</span><br><span class="s">5204         &#39;,&#39;</span><br><span class="s">5205            &quot;HFHMLSV&quot;</span><br><span class="s">5206         &#39;,&#39;</span><br><span class="s">5207            &quot;HFRELR&quot;</span><br><span class="s">5208         &#39;,&#39;</span><br><span class="s">5209            &quot;HFAGERR&quot;</span><br><span class="s">5210         &#39;,&#39;</span><br><span class="s">5211            &quot;HAVERS&quot;</span><br><span class="s">5212         &#39;,&#39;</span><br><span class="s">5213            &quot;HAINTVR&quot;</span><br><span class="s">5214         &#39;,&#39;</span><br><span class="s">5215            &quot;HALANG&quot;</span><br><span class="s">5216         &#39;,&#39;</span><br><span class="s">5217            &quot;HAA1&quot;</span><br><span class="s">5218         &#39;,&#39;</span><br><span class="s">5219            &quot;HAA2&quot;</span><br><span class="s">5220         &#39;,&#39;</span><br><span class="s">5221            &quot;HAA2A&quot;</span><br><span class="s">5222         &#39;,&#39;</span><br><span class="s">5223            &quot;HAA3&quot;</span><br><span class="s">5224         &#39;,&#39;</span><br><span class="s">5225            &quot;HAA4&quot;</span><br><span class="s">5226         &#39;,&#39;</span><br><span class="s">5227            &quot;HAA5&quot;</span><br><span class="s">5228         &#39;,&#39;</span><br><span class="s">5229            &quot;HAA6A&quot;</span><br><span class="s">5230         &#39;,&#39;</span><br><span class="s">5231            &quot;HAA6B&quot;</span><br><span class="s">5232         &#39;,&#39;</span><br><span class="s">5233            &quot;HAA6C&quot;</span><br><span class="s">5234         &#39;,&#39;</span><br><span class="s">5235            &quot;HAA6D&quot;</span><br><span class="s">5236         &#39;,&#39;</span><br><span class="s">5237            &quot;HAB1&quot;</span><br><span class="s">5238         &#39;,&#39;</span><br><span class="s">5239            &quot;HAB2&quot;</span><br><span class="s">5240         &#39;,&#39;</span><br><span class="s">5241            &quot;HAB3&quot;</span><br><span class="s">5242         &#39;,&#39;</span><br><span class="s">5243            &quot;HAB4&quot;</span><br><span class="s">5244         &#39;,&#39;</span><br><span class="s">5245            &quot;HAB5&quot;</span><br><span class="s">5246         &#39;,&#39;</span><br><span class="s">5247            &quot;HAB6S&quot;</span><br><span class="s">5248         &#39;,&#39;</span><br><span class="s">5249            &quot;HAB7&quot;</span><br><span class="s">5250         &#39;,&#39;</span><br><span class="s">5251            &quot;HAC1A&quot;</span><br><span class="s">5252         &#39;,&#39;</span><br><span class="s">5253            &quot;HAC1B&quot;</span><br><span class="s">5254         &#39;,&#39;</span><br><span class="s">5255            &quot;HAC1C&quot;</span><br><span class="s">5256         &#39;,&#39;</span><br><span class="s">5257            &quot;HAC1D&quot;</span><br><span class="s">5258         &#39;,&#39;</span><br><span class="s">5259            &quot;HAC1E&quot;</span><br><span class="s">5260         &#39;,&#39;</span><br><span class="s">5261            &quot;HAC1F&quot;</span><br><span class="s">5262         &#39;,&#39;</span><br><span class="s">5263            &quot;HAC1G&quot;</span><br><span class="s">5264         &#39;,&#39;</span><br><span class="s">5265            &quot;HAC1H&quot;</span><br><span class="s">5266         &#39;,&#39;</span><br><span class="s">5267            &quot;HAC1I&quot;</span><br><span class="s">5268         &#39;,&#39;</span><br><span class="s">5269            &quot;HAC1J&quot;</span><br><span class="s">5270         &#39;,&#39;</span><br><span class="s">5271            &quot;HAC1K&quot;</span><br><span class="s">5272         &#39;,&#39;</span><br><span class="s">5273            &quot;HAC1L&quot;</span><br><span class="s">5274         &#39;,&#39;</span><br><span class="s">5275            &quot;HAC1M&quot;</span><br><span class="s">5276         &#39;,&#39;</span><br><span class="s">5277            &quot;HAC1N&quot;</span><br><span class="s">5278         &#39;,&#39;</span><br><span class="s">5279            &quot;HAC1O&quot;</span><br><span class="s">5280         &#39;,&#39;</span><br><span class="s">5281            &quot;HAC2E&quot;</span><br><span class="s">5282         &#39;,&#39;</span><br><span class="s">5283            &quot;HAC2F&quot;</span><br><span class="s">5284         &#39;,&#39;</span><br><span class="s">5285            &quot;HAC2H&quot;</span><br><span class="s">5286         &#39;,&#39;</span><br><span class="s">5287            &quot;HAC2J&quot;</span><br><span class="s">5288         &#39;,&#39;</span><br><span class="s">5289            &quot;HAC2K&quot;</span><br><span class="s">5290         &#39;,&#39;</span><br><span class="s">5291            &quot;HAC3AR&quot;</span><br><span class="s">5292         &#39;,&#39;</span><br><span class="s">5293            &quot;HAC3CR&quot;</span><br><span class="s">5294         &#39;,&#39;</span><br><span class="s">5295            &quot;HAC3DR&quot;</span><br><span class="s">5296         &#39;,&#39;</span><br><span class="s">5297            &quot;HAC3ER&quot;</span><br><span class="s">5298         &#39;,&#39;</span><br><span class="s">5299            &quot;HAC3FR&quot;</span><br><span class="s">5300         &#39;,&#39;</span><br><span class="s">5301            &quot;HAC3GR&quot;</span><br><span class="s">5302         &#39;,&#39;</span><br><span class="s">5303            &quot;HAC3HR&quot;</span><br><span class="s">5304         &#39;,&#39;</span><br><span class="s">5305            &quot;HAC3IR&quot;</span><br><span class="s">5306         &#39;,&#39;</span><br><span class="s">5307            &quot;HAC3JR&quot;</span><br><span class="s">5308         &#39;,&#39;</span><br><span class="s">5309            &quot;HAC3KR&quot;</span><br><span class="s">5310         &#39;,&#39;</span><br><span class="s">5311            &quot;HAC3LR&quot;</span><br><span class="s">5312         &#39;,&#39;</span><br><span class="s">5313            &quot;HAC3MR&quot;</span><br><span class="s">5314         &#39;,&#39;</span><br><span class="s">5315            &quot;HAC3NR&quot;</span><br><span class="s">5316         &#39;,&#39;</span><br><span class="s">5317            &quot;HAC3OR&quot;</span><br><span class="s">5318         &#39;,&#39;</span><br><span class="s">5319            &quot;HAC3OS&quot;</span><br><span class="s">5320         &#39;,&#39;</span><br><span class="s">5321            &quot;HAC4A&quot;</span><br><span class="s">5322         &#39;,&#39;</span><br><span class="s">5323            &quot;HAC4B&quot;</span><br><span class="s">5324         &#39;,&#39;</span><br><span class="s">5325            &quot;HAC5A1&quot;</span><br><span class="s">5326         &#39;,&#39;</span><br><span class="s">5327            &quot;HAC5A2&quot;</span><br><span class="s">5328         &#39;,&#39;</span><br><span class="s">5329            &quot;HAC5A3&quot;</span><br><span class="s">5330         &#39;,&#39;</span><br><span class="s">5331            &quot;HAC5A4&quot;</span><br><span class="s">5332         &#39;,&#39;</span><br><span class="s">5333            &quot;HAC5A5&quot;</span><br><span class="s">5334         &#39;,&#39;</span><br><span class="s">5335            &quot;HAC5A6&quot;</span><br><span class="s">5336         &#39;,&#39;</span><br><span class="s">5337            &quot;HAC5A7&quot;</span><br><span class="s">5338         &#39;,&#39;</span><br><span class="s">5339            &quot;HAC5A8&quot;</span><br><span class="s">5340         &#39;,&#39;</span><br><span class="s">5341            &quot;HAC5A9&quot;</span><br><span class="s">5342         &#39;,&#39;</span><br><span class="s">5343            &quot;HAC5A10&quot;</span><br><span class="s">5344         &#39;,&#39;</span><br><span class="s">5345            &quot;HAC5A11&quot;</span><br><span class="s">5346         &#39;,&#39;</span><br><span class="s">5347            &quot;HAC5A12&quot;</span><br><span class="s">5348         &#39;,&#39;</span><br><span class="s">5349            &quot;HAC5B1&quot;</span><br><span class="s">5350         &#39;,&#39;</span><br><span class="s">5351            &quot;HAC5B2&quot;</span><br><span class="s">5352         &#39;,&#39;</span><br><span class="s">5353            &quot;HAC5B3&quot;</span><br><span class="s">5354         &#39;,&#39;</span><br><span class="s">5355            &quot;HAC5B4&quot;</span><br><span class="s">5356         &#39;,&#39;</span><br><span class="s">5357            &quot;HAC5B5&quot;</span><br><span class="s">5358         &#39;,&#39;</span><br><span class="s">5359            &quot;HAC5B6&quot;</span><br><span class="s">5360         &#39;,&#39;</span><br><span class="s">5361            &quot;HAC5B7&quot;</span><br><span class="s">5362         &#39;,&#39;</span><br><span class="s">5363            &quot;HAC5B8&quot;</span><br><span class="s">5364         &#39;,&#39;</span><br><span class="s">5365            &quot;HAC5B9&quot;</span><br><span class="s">5366         &#39;,&#39;</span><br><span class="s">5367            &quot;HAC5B10&quot;</span><br><span class="s">5368         &#39;,&#39;</span><br><span class="s">5369            &quot;HAC5B11&quot;</span><br><span class="s">5370         &#39;,&#39;</span><br><span class="s">5371            &quot;HAC5B12&quot;</span><br><span class="s">5372         &#39;,&#39;</span><br><span class="s">5373            &quot;HAC6&quot;</span><br><span class="s">5374         &#39;,&#39;</span><br><span class="s">5375            &quot;HAC7&quot;</span><br><span class="s">5376         &#39;,&#39;</span><br><span class="s">5377            &quot;HAC7A&quot;</span><br><span class="s">5378         &#39;,&#39;</span><br><span class="s">5379            &quot;HAC8&quot;</span><br><span class="s">5380         &#39;,&#39;</span><br><span class="s">5381            &quot;HAD1&quot;</span><br><span class="s">5382         &#39;,&#39;</span><br><span class="s">5383            &quot;HAD2&quot;</span><br><span class="s">5384         &#39;,&#39;</span><br><span class="s">5385            &quot;HAD3&quot;</span><br><span class="s">5386         &#39;,&#39;</span><br><span class="s">5387            &quot;HAD4&quot;</span><br><span class="s">5388         &#39;,&#39;</span><br><span class="s">5389            &quot;HAD5R&quot;</span><br><span class="s">5390         &#39;,&#39;</span><br><span class="s">5391            &quot;HAD6&quot;</span><br><span class="s">5392         &#39;,&#39;</span><br><span class="s">5393            &quot;HAD7S&quot;</span><br><span class="s">5394         &#39;,&#39;</span><br><span class="s">5395            &quot;HAD8&quot;</span><br><span class="s">5396         &#39;,&#39;</span><br><span class="s">5397            &quot;HAD9S&quot;</span><br><span class="s">5398         &#39;,&#39;</span><br><span class="s">5399            &quot;HAD10&quot;</span><br><span class="s">5400         &#39;,&#39;</span><br><span class="s">5401            &quot;HAD11AS&quot;</span><br><span class="s">5402         &#39;,&#39;</span><br><span class="s">5403            &quot;HAD11BS&quot;</span><br><span class="s">5404         &#39;,&#39;</span><br><span class="s">5405            &quot;HAD12S&quot;</span><br><span class="s">5406         &#39;,&#39;</span><br><span class="s">5407            &quot;HAD13S&quot;</span><br><span class="s">5408         &#39;,&#39;</span><br><span class="s">5409            &quot;HAD14&quot;</span><br><span class="s">5410         &#39;,&#39;</span><br><span class="s">5411            &quot;HAD15&quot;</span><br><span class="s">5412         &#39;,&#39;</span><br><span class="s">5413            &quot;HAE1&quot;</span><br><span class="s">5414         &#39;,&#39;</span><br><span class="s">5415            &quot;HAE2&quot;</span><br><span class="s">5416         &#39;,&#39;</span><br><span class="s">5417            &quot;HAE3&quot;</span><br><span class="s">5418         &#39;,&#39;</span><br><span class="s">5419            &quot;HAE4A&quot;</span><br><span class="s">5420         &#39;,&#39;</span><br><span class="s">5421            &quot;HAE4B&quot;</span><br><span class="s">5422         &#39;,&#39;</span><br><span class="s">5423            &quot;HAE4C&quot;</span><br><span class="s">5424         &#39;,&#39;</span><br><span class="s">5425            &quot;HAE4D&quot;</span><br><span class="s">5426         &#39;,&#39;</span><br><span class="s">5427            &quot;HAE4D1&quot;</span><br><span class="s">5428         &#39;,&#39;</span><br><span class="s">5429            &quot;HAE4D2&quot;</span><br><span class="s">5430         &#39;,&#39;</span><br><span class="s">5431            &quot;HAE4D3&quot;</span><br><span class="s">5432         &#39;,&#39;</span><br><span class="s">5433            &quot;HAE4D4&quot;</span><br><span class="s">5434         &#39;,&#39;</span><br><span class="s">5435            &quot;HAE4D5&quot;</span><br><span class="s">5436         &#39;,&#39;</span><br><span class="s">5437            &quot;HAE4D6&quot;</span><br><span class="s">5438         &#39;,&#39;</span><br><span class="s">5439            &quot;HAE5A&quot;</span><br><span class="s">5440         &#39;,&#39;</span><br><span class="s">5441            &quot;HAE5B&quot;</span><br><span class="s">5442         &#39;,&#39;</span><br><span class="s">5443            &quot;HAE5C&quot;</span><br><span class="s">5444         &#39;,&#39;</span><br><span class="s">5445            &quot;HAE5D1&quot;</span><br><span class="s">5446         &#39;,&#39;</span><br><span class="s">5447            &quot;HAE5D2&quot;</span><br><span class="s">5448         &#39;,&#39;</span><br><span class="s">5449            &quot;HAE5D3&quot;</span><br><span class="s">5450         &#39;,&#39;</span><br><span class="s">5451            &quot;HAE5D4&quot;</span><br><span class="s">5452         &#39;,&#39;</span><br><span class="s">5453            &quot;HAE5D5&quot;</span><br><span class="s">5454         &#39;,&#39;</span><br><span class="s">5455            &quot;HAE5D6&quot;</span><br><span class="s">5456         &#39;,&#39;</span><br><span class="s">5457            &quot;HAE6&quot;</span><br><span class="s">5458         &#39;,&#39;</span><br><span class="s">5459            &quot;HAE7&quot;</span><br><span class="s">5460         &#39;,&#39;</span><br><span class="s">5461            &quot;HAE8A&quot;</span><br><span class="s">5462         &#39;,&#39;</span><br><span class="s">5463            &quot;HAE8B&quot;</span><br><span class="s">5464         &#39;,&#39;</span><br><span class="s">5465            &quot;HAE8C&quot;</span><br><span class="s">5466         &#39;,&#39;</span><br><span class="s">5467            &quot;HAE8D&quot;</span><br><span class="s">5468         &#39;,&#39;</span><br><span class="s">5469            &quot;HAE9A&quot;</span><br><span class="s">5470         &#39;,&#39;</span><br><span class="s">5471            &quot;HAE9B&quot;</span><br><span class="s">5472         &#39;,&#39;</span><br><span class="s">5473            &quot;HAE9C&quot;</span><br><span class="s">5474         &#39;,&#39;</span><br><span class="s">5475            &quot;HAE9D&quot;</span><br><span class="s">5476         &#39;,&#39;</span><br><span class="s">5477            &quot;HAE10&quot;</span><br><span class="s">5478         &#39;,&#39;</span><br><span class="s">5479            &quot;HAE11A&quot;</span><br><span class="s">5480         &#39;,&#39;</span><br><span class="s">5481            &quot;HAE11B&quot;</span><br><span class="s">5482         &#39;,&#39;</span><br><span class="s">5483            &quot;HAE11C&quot;</span><br><span class="s">5484         &#39;,&#39;</span><br><span class="s">5485            &quot;HAF1&quot;</span><br><span class="s">5486         &#39;,&#39;</span><br><span class="s">5487            &quot;HAF2&quot;</span><br><span class="s">5488         &#39;,&#39;</span><br><span class="s">5489            &quot;HAF3&quot;</span><br><span class="s">5490         &#39;,&#39;</span><br><span class="s">5491            &quot;HAF4&quot;</span><br><span class="s">5492         &#39;,&#39;</span><br><span class="s">5493            &quot;HAF5&quot;</span><br><span class="s">5494         &#39;,&#39;</span><br><span class="s">5495            &quot;HAF6&quot;</span><br><span class="s">5496         &#39;,&#39;</span><br><span class="s">5497            &quot;HAF7A&quot;</span><br><span class="s">5498         &#39;,&#39;</span><br><span class="s">5499            &quot;HAF7B&quot;</span><br><span class="s">5500         &#39;,&#39;</span><br><span class="s">5501            &quot;HAF7C&quot;</span><br><span class="s">5502         &#39;,&#39;</span><br><span class="s">5503            &quot;HAF7D&quot;</span><br><span class="s">5504         &#39;,&#39;</span><br><span class="s">5505            &quot;HAF7E&quot;</span><br><span class="s">5506         &#39;,&#39;</span><br><span class="s">5507            &quot;HAF7F&quot;</span><br><span class="s">5508         &#39;,&#39;</span><br><span class="s">5509            &quot;HAF7G&quot;</span><br><span class="s">5510         &#39;,&#39;</span><br><span class="s">5511            &quot;HAF7H&quot;</span><br><span class="s">5512         &#39;,&#39;</span><br><span class="s">5513            &quot;HAF9&quot;</span><br><span class="s">5514         &#39;,&#39;</span><br><span class="s">5515            &quot;HAF10&quot;</span><br><span class="s">5516         &#39;,&#39;</span><br><span class="s">5517            &quot;HAF11&quot;</span><br><span class="s">5518         &#39;,&#39;</span><br><span class="s">5519            &quot;HAF12R&quot;</span><br><span class="s">5520         &#39;,&#39;</span><br><span class="s">5521            &quot;HAF13R&quot;</span><br><span class="s">5522         &#39;,&#39;</span><br><span class="s">5523            &quot;HAF14&quot;</span><br><span class="s">5524         &#39;,&#39;</span><br><span class="s">5525            &quot;HAF15&quot;</span><br><span class="s">5526         &#39;,&#39;</span><br><span class="s">5527            &quot;HAF16&quot;</span><br><span class="s">5528         &#39;,&#39;</span><br><span class="s">5529            &quot;HAF17&quot;</span><br><span class="s">5530         &#39;,&#39;</span><br><span class="s">5531            &quot;HAF18&quot;</span><br><span class="s">5532         &#39;,&#39;</span><br><span class="s">5533            &quot;HAF19&quot;</span><br><span class="s">5534         &#39;,&#39;</span><br><span class="s">5535            &quot;HAF20&quot;</span><br><span class="s">5536         &#39;,&#39;</span><br><span class="s">5537            &quot;HAF21&quot;</span><br><span class="s">5538         &#39;,&#39;</span><br><span class="s">5539            &quot;HAF22&quot;</span><br><span class="s">5540         &#39;,&#39;</span><br><span class="s">5541            &quot;HAF23&quot;</span><br><span class="s">5542         &#39;,&#39;</span><br><span class="s">5543            &quot;HAF24&quot;</span><br><span class="s">5544         &#39;,&#39;</span><br><span class="s">5545            &quot;HAF25&quot;</span><br><span class="s">5546         &#39;,&#39;</span><br><span class="s">5547            &quot;HAF26&quot;</span><br><span class="s">5548         &#39;,&#39;</span><br><span class="s">5549            &quot;HAF27&quot;</span><br><span class="s">5550         &#39;,&#39;</span><br><span class="s">5551            &quot;HAG1&quot;</span><br><span class="s">5552         &#39;,&#39;</span><br><span class="s">5553            &quot;HAG2&quot;</span><br><span class="s">5554         &#39;,&#39;</span><br><span class="s">5555            &quot;HAG3&quot;</span><br><span class="s">5556         &#39;,&#39;</span><br><span class="s">5557            &quot;HAG4A&quot;</span><br><span class="s">5558         &#39;,&#39;</span><br><span class="s">5559            &quot;HAG4B&quot;</span><br><span class="s">5560         &#39;,&#39;</span><br><span class="s">5561            &quot;HAG4C&quot;</span><br><span class="s">5562         &#39;,&#39;</span><br><span class="s">5563            &quot;HAG5A&quot;</span><br><span class="s">5564         &#39;,&#39;</span><br><span class="s">5565            &quot;HAG5B&quot;</span><br><span class="s">5566         &#39;,&#39;</span><br><span class="s">5567            &quot;HAG5C&quot;</span><br><span class="s">5568         &#39;,&#39;</span><br><span class="s">5569            &quot;HAG6A&quot;</span><br><span class="s">5570         &#39;,&#39;</span><br><span class="s">5571            &quot;HAG6B&quot;</span><br><span class="s">5572         &#39;,&#39;</span><br><span class="s">5573            &quot;HAG6C&quot;</span><br><span class="s">5574         &#39;,&#39;</span><br><span class="s">5575            &quot;HAG7&quot;</span><br><span class="s">5576         &#39;,&#39;</span><br><span class="s">5577            &quot;HAG8A&quot;</span><br><span class="s">5578         &#39;,&#39;</span><br><span class="s">5579            &quot;HAG8B&quot;</span><br><span class="s">5580         &#39;,&#39;</span><br><span class="s">5581            &quot;HAG8C&quot;</span><br><span class="s">5582         &#39;,&#39;</span><br><span class="s">5583            &quot;HAG8D&quot;</span><br><span class="s">5584         &#39;,&#39;</span><br><span class="s">5585            &quot;HAG8E&quot;</span><br><span class="s">5586         &#39;,&#39;</span><br><span class="s">5587            &quot;HAG8F&quot;</span><br><span class="s">5588         &#39;,&#39;</span><br><span class="s">5589            &quot;HAG9AR&quot;</span><br><span class="s">5590         &#39;,&#39;</span><br><span class="s">5591            &quot;HAG9BR&quot;</span><br><span class="s">5592         &#39;,&#39;</span><br><span class="s">5593            &quot;HAG9CR&quot;</span><br><span class="s">5594         &#39;,&#39;</span><br><span class="s">5595            &quot;HAG9DR&quot;</span><br><span class="s">5596         &#39;,&#39;</span><br><span class="s">5597            &quot;HAG9ER&quot;</span><br><span class="s">5598         &#39;,&#39;</span><br><span class="s">5599            &quot;HAG9FR&quot;</span><br><span class="s">5600         &#39;,&#39;</span><br><span class="s">5601            &quot;HAG10A&quot;</span><br><span class="s">5602         &#39;,&#39;</span><br><span class="s">5603            &quot;HAG10B&quot;</span><br><span class="s">5604         &#39;,&#39;</span><br><span class="s">5605            &quot;HAG10C&quot;</span><br><span class="s">5606         &#39;,&#39;</span><br><span class="s">5607            &quot;HAG10D&quot;</span><br><span class="s">5608         &#39;,&#39;</span><br><span class="s">5609            &quot;HAG10E&quot;</span><br><span class="s">5610         &#39;,&#39;</span><br><span class="s">5611            &quot;HAG10F&quot;</span><br><span class="s">5612         &#39;,&#39;</span><br><span class="s">5613            &quot;HAG11&quot;</span><br><span class="s">5614         &#39;,&#39;</span><br><span class="s">5615            &quot;HAG12&quot;</span><br><span class="s">5616         &#39;,&#39;</span><br><span class="s">5617            &quot;HAG13&quot;</span><br><span class="s">5618         &#39;,&#39;</span><br><span class="s">5619            &quot;HAG14&quot;</span><br><span class="s">5620         &#39;,&#39;</span><br><span class="s">5621            &quot;HAG15&quot;</span><br><span class="s">5622         &#39;,&#39;</span><br><span class="s">5623            &quot;HAG16&quot;</span><br><span class="s">5624         &#39;,&#39;</span><br><span class="s">5625            &quot;HAG17A&quot;</span><br><span class="s">5626         &#39;,&#39;</span><br><span class="s">5627            &quot;HAG17B&quot;</span><br><span class="s">5628         &#39;,&#39;</span><br><span class="s">5629            &quot;HAG17C&quot;</span><br><span class="s">5630         &#39;,&#39;</span><br><span class="s">5631            &quot;HAG17D&quot;</span><br><span class="s">5632         &#39;,&#39;</span><br><span class="s">5633            &quot;HAG17E&quot;</span><br><span class="s">5634         &#39;,&#39;</span><br><span class="s">5635            &quot;HAG17F&quot;</span><br><span class="s">5636         &#39;,&#39;</span><br><span class="s">5637            &quot;HAG17G&quot;</span><br><span class="s">5638         &#39;,&#39;</span><br><span class="s">5639            &quot;HAG17H&quot;</span><br><span class="s">5640         &#39;,&#39;</span><br><span class="s">5641            &quot;HAG17I&quot;</span><br><span class="s">5642         &#39;,&#39;</span><br><span class="s">5643            &quot;HAG17J&quot;</span><br><span class="s">5644         &#39;,&#39;</span><br><span class="s">5645            &quot;HAG17K&quot;</span><br><span class="s">5646         &#39;,&#39;</span><br><span class="s">5647            &quot;HAG17L&quot;</span><br><span class="s">5648         &#39;,&#39;</span><br><span class="s">5649            &quot;HAG17M&quot;</span><br><span class="s">5650         &#39;,&#39;</span><br><span class="s">5651            &quot;HAG17N&quot;</span><br><span class="s">5652         &#39;,&#39;</span><br><span class="s">5653            &quot;HAG17O&quot;</span><br><span class="s">5654         &#39;,&#39;</span><br><span class="s">5655            &quot;HAG17FF&quot;</span><br><span class="s">5656         &#39;,&#39;</span><br><span class="s">5657            &quot;HAG17P&quot;</span><br><span class="s">5658         &#39;,&#39;</span><br><span class="s">5659            &quot;HAG17Q&quot;</span><br><span class="s">5660         &#39;,&#39;</span><br><span class="s">5661            &quot;HAG17R&quot;</span><br><span class="s">5662         &#39;,&#39;</span><br><span class="s">5663            &quot;HAG17S&quot;</span><br><span class="s">5664         &#39;,&#39;</span><br><span class="s">5665            &quot;HAG17T&quot;</span><br><span class="s">5666         &#39;,&#39;</span><br><span class="s">5667            &quot;HAG17U&quot;</span><br><span class="s">5668         &#39;,&#39;</span><br><span class="s">5669            &quot;HAG17V&quot;</span><br><span class="s">5670         &#39;,&#39;</span><br><span class="s">5671            &quot;HAG17W&quot;</span><br><span class="s">5672         &#39;,&#39;</span><br><span class="s">5673            &quot;HAG17X&quot;</span><br><span class="s">5674         &#39;,&#39;</span><br><span class="s">5675            &quot;HAG17Y&quot;</span><br><span class="s">5676         &#39;,&#39;</span><br><span class="s">5677            &quot;HAG17Z&quot;</span><br><span class="s">5678         &#39;,&#39;</span><br><span class="s">5679            &quot;HAG17AA&quot;</span><br><span class="s">5680         &#39;,&#39;</span><br><span class="s">5681            &quot;HAG17BB&quot;</span><br><span class="s">5682         &#39;,&#39;</span><br><span class="s">5683            &quot;HAG17CC&quot;</span><br><span class="s">5684         &#39;,&#39;</span><br><span class="s">5685            &quot;HAG17DD&quot;</span><br><span class="s">5686         &#39;,&#39;</span><br><span class="s">5687            &quot;HAG17EE&quot;</span><br><span class="s">5688         &#39;,&#39;</span><br><span class="s">5689            &quot;HAG18&quot;</span><br><span class="s">5690         &#39;,&#39;</span><br><span class="s">5691            &quot;HAG19A&quot;</span><br><span class="s">5692         &#39;,&#39;</span><br><span class="s">5693            &quot;HAG19B&quot;</span><br><span class="s">5694         &#39;,&#39;</span><br><span class="s">5695            &quot;HAG19C&quot;</span><br><span class="s">5696         &#39;,&#39;</span><br><span class="s">5697            &quot;HAG19D&quot;</span><br><span class="s">5698         &#39;,&#39;</span><br><span class="s">5699            &quot;HAG19E&quot;</span><br><span class="s">5700         &#39;,&#39;</span><br><span class="s">5701            &quot;HAG19F&quot;</span><br><span class="s">5702         &#39;,&#39;</span><br><span class="s">5703            &quot;HAG19G&quot;</span><br><span class="s">5704         &#39;,&#39;</span><br><span class="s">5705            &quot;HAG19H&quot;</span><br><span class="s">5706         &#39;,&#39;</span><br><span class="s">5707            &quot;HAG19I&quot;</span><br><span class="s">5708         &#39;,&#39;</span><br><span class="s">5709            &quot;HAG19J&quot;</span><br><span class="s">5710         &#39;,&#39;</span><br><span class="s">5711            &quot;HAG19K&quot;</span><br><span class="s">5712         &#39;,&#39;</span><br><span class="s">5713            &quot;HAG19L&quot;</span><br><span class="s">5714         &#39;,&#39;</span><br><span class="s">5715            &quot;HAG19M&quot;</span><br><span class="s">5716         &#39;,&#39;</span><br><span class="s">5717            &quot;HAG19N&quot;</span><br><span class="s">5718         &#39;,&#39;</span><br><span class="s">5719            &quot;HAG19O&quot;</span><br><span class="s">5720         &#39;,&#39;</span><br><span class="s">5721            &quot;HAG19FF&quot;</span><br><span class="s">5722         &#39;,&#39;</span><br><span class="s">5723            &quot;HAG19P&quot;</span><br><span class="s">5724         &#39;,&#39;</span><br><span class="s">5725            &quot;HAG19Q&quot;</span><br><span class="s">5726         &#39;,&#39;</span><br><span class="s">5727            &quot;HAG19R&quot;</span><br><span class="s">5728         &#39;,&#39;</span><br><span class="s">5729            &quot;HAG19S&quot;</span><br><span class="s">5730         &#39;,&#39;</span><br><span class="s">5731            &quot;HAG19T&quot;</span><br><span class="s">5732         &#39;,&#39;</span><br><span class="s">5733            &quot;HAG19U&quot;</span><br><span class="s">5734         &#39;,&#39;</span><br><span class="s">5735            &quot;HAG19V&quot;</span><br><span class="s">5736         &#39;,&#39;</span><br><span class="s">5737            &quot;HAG19W&quot;</span><br><span class="s">5738         &#39;,&#39;</span><br><span class="s">5739            &quot;HAG19X&quot;</span><br><span class="s">5740         &#39;,&#39;</span><br><span class="s">5741            &quot;HAG19Y&quot;</span><br><span class="s">5742         &#39;,&#39;</span><br><span class="s">5743            &quot;HAG19Z&quot;</span><br><span class="s">5744         &#39;,&#39;</span><br><span class="s">5745            &quot;HAG19AA&quot;</span><br><span class="s">5746         &#39;,&#39;</span><br><span class="s">5747            &quot;HAG19BB&quot;</span><br><span class="s">5748         &#39;,&#39;</span><br><span class="s">5749            &quot;HAG19CC&quot;</span><br><span class="s">5750         &#39;,&#39;</span><br><span class="s">5751            &quot;HAG19DD&quot;</span><br><span class="s">5752         &#39;,&#39;</span><br><span class="s">5753            &quot;HAG19EE&quot;</span><br><span class="s">5754         &#39;,&#39;</span><br><span class="s">5755            &quot;HAG20&quot;</span><br><span class="s">5756         &#39;,&#39;</span><br><span class="s">5757            &quot;HAG21&quot;</span><br><span class="s">5758         &#39;,&#39;</span><br><span class="s">5759            &quot;HAG22&quot;</span><br><span class="s">5760         &#39;,&#39;</span><br><span class="s">5761            &quot;HAG23&quot;</span><br><span class="s">5762         &#39;,&#39;</span><br><span class="s">5763            &quot;HAG24&quot;</span><br><span class="s">5764         &#39;,&#39;</span><br><span class="s">5765            &quot;HAG25&quot;</span><br><span class="s">5766         &#39;,&#39;</span><br><span class="s">5767            &quot;HAG26&quot;</span><br><span class="s">5768         &#39;,&#39;</span><br><span class="s">5769            &quot;HAG27&quot;</span><br><span class="s">5770         &#39;,&#39;</span><br><span class="s">5771            &quot;HAG28&quot;</span><br><span class="s">5772         &#39;,&#39;</span><br><span class="s">5773            &quot;HAG29&quot;</span><br><span class="s">5774         &#39;,&#39;</span><br><span class="s">5775            &quot;HAG30&quot;</span><br><span class="s">5776         &#39;,&#39;</span><br><span class="s">5777            &quot;HAG31&quot;</span><br><span class="s">5778         &#39;,&#39;</span><br><span class="s">5779            &quot;HAG32&quot;</span><br><span class="s">5780         &#39;,&#39;</span><br><span class="s">5781            &quot;HAG33&quot;</span><br><span class="s">5782         &#39;,&#39;</span><br><span class="s">5783            &quot;HAG34&quot;</span><br><span class="s">5784         &#39;,&#39;</span><br><span class="s">5785            &quot;HAH1&quot;</span><br><span class="s">5786         &#39;,&#39;</span><br><span class="s">5787            &quot;HAH2&quot;</span><br><span class="s">5788         &#39;,&#39;</span><br><span class="s">5789            &quot;HAH3&quot;</span><br><span class="s">5790         &#39;,&#39;</span><br><span class="s">5791            &quot;HAH4&quot;</span><br><span class="s">5792         &#39;,&#39;</span><br><span class="s">5793            &quot;HAH5&quot;</span><br><span class="s">5794         &#39;,&#39;</span><br><span class="s">5795            &quot;HAH6&quot;</span><br><span class="s">5796         &#39;,&#39;</span><br><span class="s">5797            &quot;HAH7&quot;</span><br><span class="s">5798         &#39;,&#39;</span><br><span class="s">5799            &quot;HAH8&quot;</span><br><span class="s">5800         &#39;,&#39;</span><br><span class="s">5801            &quot;HAH9&quot;</span><br><span class="s">5802         &#39;,&#39;</span><br><span class="s">5803            &quot;HAH10&quot;</span><br><span class="s">5804         &#39;,&#39;</span><br><span class="s">5805            &quot;HAH11&quot;</span><br><span class="s">5806         &#39;,&#39;</span><br><span class="s">5807            &quot;HAH12&quot;</span><br><span class="s">5808         &#39;,&#39;</span><br><span class="s">5809            &quot;HAH13&quot;</span><br><span class="s">5810         &#39;,&#39;</span><br><span class="s">5811            &quot;HAH14&quot;</span><br><span class="s">5812         &#39;,&#39;</span><br><span class="s">5813            &quot;HAH15&quot;</span><br><span class="s">5814         &#39;,&#39;</span><br><span class="s">5815            &quot;HAH16&quot;</span><br><span class="s">5816         &#39;,&#39;</span><br><span class="s">5817            &quot;HAH17&quot;</span><br><span class="s">5818         &#39;,&#39;</span><br><span class="s">5819            &quot;HAJ0&quot;</span><br><span class="s">5820         &#39;,&#39;</span><br><span class="s">5821            &quot;HAJ1&quot;</span><br><span class="s">5822         &#39;,&#39;</span><br><span class="s">5823            &quot;HAJ2A&quot;</span><br><span class="s">5824         &#39;,&#39;</span><br><span class="s">5825            &quot;HAJ2B&quot;</span><br><span class="s">5826         &#39;,&#39;</span><br><span class="s">5827            &quot;HAJ2C&quot;</span><br><span class="s">5828         &#39;,&#39;</span><br><span class="s">5829            &quot;HAJ3S&quot;</span><br><span class="s">5830         &#39;,&#39;</span><br><span class="s">5831            &quot;HAJ4&quot;</span><br><span class="s">5832         &#39;,&#39;</span><br><span class="s">5833            &quot;HAJ5&quot;</span><br><span class="s">5834         &#39;,&#39;</span><br><span class="s">5835            &quot;HAJ6&quot;</span><br><span class="s">5836         &#39;,&#39;</span><br><span class="s">5837            &quot;HAJ7&quot;</span><br><span class="s">5838         &#39;,&#39;</span><br><span class="s">5839            &quot;HAJ8&quot;</span><br><span class="s">5840         &#39;,&#39;</span><br><span class="s">5841            &quot;HAJ9&quot;</span><br><span class="s">5842         &#39;,&#39;</span><br><span class="s">5843            &quot;HAJ10&quot;</span><br><span class="s">5844         &#39;,&#39;</span><br><span class="s">5845            &quot;HAJ11&quot;</span><br><span class="s">5846         &#39;,&#39;</span><br><span class="s">5847            &quot;HAJ12&quot;</span><br><span class="s">5848         &#39;,&#39;</span><br><span class="s">5849            &quot;HAJ13&quot;</span><br><span class="s">5850         &#39;,&#39;</span><br><span class="s">5851            &quot;HAJ14&quot;</span><br><span class="s">5852         &#39;,&#39;</span><br><span class="s">5853            &quot;HAJ15&quot;</span><br><span class="s">5854         &#39;,&#39;</span><br><span class="s">5855            &quot;HAJ16&quot;</span><br><span class="s">5856         &#39;,&#39;</span><br><span class="s">5857            &quot;HAJ17&quot;</span><br><span class="s">5858         &#39;,&#39;</span><br><span class="s">5859            &quot;HAJ18R&quot;</span><br><span class="s">5860         &#39;,&#39;</span><br><span class="s">5861            &quot;HAK1&quot;</span><br><span class="s">5862         &#39;,&#39;</span><br><span class="s">5863            &quot;HAK2&quot;</span><br><span class="s">5864         &#39;,&#39;</span><br><span class="s">5865            &quot;HAK3A&quot;</span><br><span class="s">5866         &#39;,&#39;</span><br><span class="s">5867            &quot;HAK3A1&quot;</span><br><span class="s">5868         &#39;,&#39;</span><br><span class="s">5869            &quot;HAK3B&quot;</span><br><span class="s">5870         &#39;,&#39;</span><br><span class="s">5871            &quot;HAK3B1R&quot;</span><br><span class="s">5872         &#39;,&#39;</span><br><span class="s">5873            &quot;HAK3C&quot;</span><br><span class="s">5874         &#39;,&#39;</span><br><span class="s">5875            &quot;HAK3C1R&quot;</span><br><span class="s">5876         &#39;,&#39;</span><br><span class="s">5877            &quot;HAK4&quot;</span><br><span class="s">5878         &#39;,&#39;</span><br><span class="s">5879            &quot;HAK5&quot;</span><br><span class="s">5880         &#39;,&#39;</span><br><span class="s">5881            &quot;HAK6&quot;</span><br><span class="s">5882         &#39;,&#39;</span><br><span class="s">5883            &quot;HAK7&quot;</span><br><span class="s">5884         &#39;,&#39;</span><br><span class="s">5885            &quot;HAK8&quot;</span><br><span class="s">5886         &#39;,&#39;</span><br><span class="s">5887            &quot;HAK9&quot;</span><br><span class="s">5888         &#39;,&#39;</span><br><span class="s">5889            &quot;HAK10&quot;</span><br><span class="s">5890         &#39;,&#39;</span><br><span class="s">5891            &quot;HAK11&quot;</span><br><span class="s">5892         &#39;,&#39;</span><br><span class="s">5893            &quot;HAK12&quot;</span><br><span class="s">5894         &#39;,&#39;</span><br><span class="s">5895            &quot;HAK13&quot;</span><br><span class="s">5896         &#39;,&#39;</span><br><span class="s">5897            &quot;HAK14&quot;</span><br><span class="s">5898         &#39;,&#39;</span><br><span class="s">5899            &quot;HAL1&quot;</span><br><span class="s">5900         &#39;,&#39;</span><br><span class="s">5901            &quot;HAL2&quot;</span><br><span class="s">5902         &#39;,&#39;</span><br><span class="s">5903            &quot;HAL3&quot;</span><br><span class="s">5904         &#39;,&#39;</span><br><span class="s">5905            &quot;HAL4&quot;</span><br><span class="s">5906         &#39;,&#39;</span><br><span class="s">5907            &quot;HAL5&quot;</span><br><span class="s">5908         &#39;,&#39;</span><br><span class="s">5909            &quot;HAL6&quot;</span><br><span class="s">5910         &#39;,&#39;</span><br><span class="s">5911            &quot;HAL7&quot;</span><br><span class="s">5912         &#39;,&#39;</span><br><span class="s">5913            &quot;HAL8&quot;</span><br><span class="s">5914         &#39;,&#39;</span><br><span class="s">5915            &quot;HAL9&quot;</span><br><span class="s">5916         &#39;,&#39;</span><br><span class="s">5917            &quot;HAL10&quot;</span><br><span class="s">5918         &#39;,&#39;</span><br><span class="s">5919            &quot;HAL11A&quot;</span><br><span class="s">5920         &#39;,&#39;</span><br><span class="s">5921            &quot;HAL11B&quot;</span><br><span class="s">5922         &#39;,&#39;</span><br><span class="s">5923            &quot;HAL12&quot;</span><br><span class="s">5924         &#39;,&#39;</span><br><span class="s">5925            &quot;HAL13&quot;</span><br><span class="s">5926         &#39;,&#39;</span><br><span class="s">5927            &quot;HAL14A&quot;</span><br><span class="s">5928         &#39;,&#39;</span><br><span class="s">5929            &quot;HAL14B&quot;</span><br><span class="s">5930         &#39;,&#39;</span><br><span class="s">5931            &quot;HAL14C&quot;</span><br><span class="s">5932         &#39;,&#39;</span><br><span class="s">5933            &quot;HAL14D&quot;</span><br><span class="s">5934         &#39;,&#39;</span><br><span class="s">5935            &quot;HAL14E&quot;</span><br><span class="s">5936         &#39;,&#39;</span><br><span class="s">5937            &quot;HAL15A&quot;</span><br><span class="s">5938         &#39;,&#39;</span><br><span class="s">5939            &quot;HAL15B&quot;</span><br><span class="s">5940         &#39;,&#39;</span><br><span class="s">5941            &quot;HAL15C&quot;</span><br><span class="s">5942         &#39;,&#39;</span><br><span class="s">5943            &quot;HAL15D&quot;</span><br><span class="s">5944         &#39;,&#39;</span><br><span class="s">5945            &quot;HAL15E&quot;</span><br><span class="s">5946         &#39;,&#39;</span><br><span class="s">5947            &quot;HAL15F&quot;</span><br><span class="s">5948         &#39;,&#39;</span><br><span class="s">5949            &quot;HAL15G&quot;</span><br><span class="s">5950         &#39;,&#39;</span><br><span class="s">5951            &quot;HAL15H&quot;</span><br><span class="s">5952         &#39;,&#39;</span><br><span class="s">5953            &quot;HAL15I&quot;</span><br><span class="s">5954         &#39;,&#39;</span><br><span class="s">5955            &quot;HAL15J&quot;</span><br><span class="s">5956         &#39;,&#39;</span><br><span class="s">5957            &quot;HAL15K&quot;</span><br><span class="s">5958         &#39;,&#39;</span><br><span class="s">5959            &quot;HAL15L&quot;</span><br><span class="s">5960         &#39;,&#39;</span><br><span class="s">5961            &quot;HAL15M&quot;</span><br><span class="s">5962         &#39;,&#39;</span><br><span class="s">5963            &quot;HAL16A&quot;</span><br><span class="s">5964         &#39;,&#39;</span><br><span class="s">5965            &quot;HAL16B&quot;</span><br><span class="s">5966         &#39;,&#39;</span><br><span class="s">5967            &quot;HAL17&quot;</span><br><span class="s">5968         &#39;,&#39;</span><br><span class="s">5969            &quot;HAL18&quot;</span><br><span class="s">5970         &#39;,&#39;</span><br><span class="s">5971            &quot;HAL19A&quot;</span><br><span class="s">5972         &#39;,&#39;</span><br><span class="s">5973            &quot;HAL19B&quot;</span><br><span class="s">5974         &#39;,&#39;</span><br><span class="s">5975            &quot;HAL19C&quot;</span><br><span class="s">5976         &#39;,&#39;</span><br><span class="s">5977            &quot;HAL20A&quot;</span><br><span class="s">5978         &#39;,&#39;</span><br><span class="s">5979            &quot;HAL20B&quot;</span><br><span class="s">5980         &#39;,&#39;</span><br><span class="s">5981            &quot;HAL20C&quot;</span><br><span class="s">5982         &#39;,&#39;</span><br><span class="s">5983            &quot;HAM1&quot;</span><br><span class="s">5984         &#39;,&#39;</span><br><span class="s">5985            &quot;HAM2&quot;</span><br><span class="s">5986         &#39;,&#39;</span><br><span class="s">5987            &quot;HAM3&quot;</span><br><span class="s">5988         &#39;,&#39;</span><br><span class="s">5989            &quot;HAM4&quot;</span><br><span class="s">5990         &#39;,&#39;</span><br><span class="s">5991            &quot;HAM5S&quot;</span><br><span class="s">5992         &#39;,&#39;</span><br><span class="s">5993            &quot;HAM6S&quot;</span><br><span class="s">5994         &#39;,&#39;</span><br><span class="s">5995            &quot;HAM7&quot;</span><br><span class="s">5996         &#39;,&#39;</span><br><span class="s">5997            &quot;HAM8S&quot;</span><br><span class="s">5998         &#39;,&#39;</span><br><span class="s">5999            &quot;HAM9S&quot;</span><br><span class="s">6000         &#39;,&#39;</span><br><span class="s">6001            &quot;HAM10S&quot;</span><br><span class="s">6002         &#39;,&#39;</span><br><span class="s">6003            &quot;HAM11&quot;</span><br><span class="s">6004         &#39;,&#39;</span><br><span class="s">6005            &quot;HAM12&quot;</span><br><span class="s">6006         &#39;,&#39;</span><br><span class="s">6007            &quot;HAM13&quot;</span><br><span class="s">6008         &#39;,&#39;</span><br><span class="s">6009            &quot;HAM14&quot;</span><br><span class="s">6010         &#39;,&#39;</span><br><span class="s">6011            &quot;HAM15A&quot;</span><br><span class="s">6012         &#39;,&#39;</span><br><span class="s">6013            &quot;HAM15B&quot;</span><br><span class="s">6014         &#39;,&#39;</span><br><span class="s">6015            &quot;HAM15C&quot;</span><br><span class="s">6016         &#39;,&#39;</span><br><span class="s">6017            &quot;HAM15D&quot;</span><br><span class="s">6018         &#39;,&#39;</span><br><span class="s">6019            &quot;HAM15E&quot;</span><br><span class="s">6020         &#39;,&#39;</span><br><span class="s">6021            &quot;HAM15F&quot;</span><br><span class="s">6022         &#39;,&#39;</span><br><span class="s">6023            &quot;HAM15G&quot;</span><br><span class="s">6024         &#39;,&#39;</span><br><span class="s">6025            &quot;HAM15H&quot;</span><br><span class="s">6026         &#39;,&#39;</span><br><span class="s">6027            &quot;HAM15K&quot;</span><br><span class="s">6028         &#39;,&#39;</span><br><span class="s">6029            &quot;HAM15L&quot;</span><br><span class="s">6030         &#39;,&#39;</span><br><span class="s">6031            &quot;HAM15M&quot;</span><br><span class="s">6032         &#39;,&#39;</span><br><span class="s">6033            &quot;HAM15N&quot;</span><br><span class="s">6034         &#39;,&#39;</span><br><span class="s">6035            &quot;HAM15O&quot;</span><br><span class="s">6036         &#39;,&#39;</span><br><span class="s">6037            &quot;HAM15P&quot;</span><br><span class="s">6038         &#39;,&#39;</span><br><span class="s">6039            &quot;HAM15Q&quot;</span><br><span class="s">6040         &#39;,&#39;</span><br><span class="s">6041            &quot;HAM15R&quot;</span><br><span class="s">6042         &#39;,&#39;</span><br><span class="s">6043            &quot;HAM15S&quot;</span><br><span class="s">6044         &#39;,&#39;</span><br><span class="s">6045            &quot;HAM15T&quot;</span><br><span class="s">6046         &#39;,&#39;</span><br><span class="s">6047            &quot;HAM15U&quot;</span><br><span class="s">6048         &#39;,&#39;</span><br><span class="s">6049            &quot;HAM15V&quot;</span><br><span class="s">6050         &#39;,&#39;</span><br><span class="s">6051            &quot;HAM15W&quot;</span><br><span class="s">6052         &#39;,&#39;</span><br><span class="s">6053            &quot;HAM15X&quot;</span><br><span class="s">6054         &#39;,&#39;</span><br><span class="s">6055            &quot;HAM15Y&quot;</span><br><span class="s">6056         &#39;,&#39;</span><br><span class="s">6057            &quot;HAM15Z&quot;</span><br><span class="s">6058         &#39;,&#39;</span><br><span class="s">6059            &quot;HAN1AS&quot;</span><br><span class="s">6060         &#39;,&#39;</span><br><span class="s">6061            &quot;HAN1BS&quot;</span><br><span class="s">6062         &#39;,&#39;</span><br><span class="s">6063            &quot;HAN1C&quot;</span><br><span class="s">6064         &#39;,&#39;</span><br><span class="s">6065            &quot;HAN1D&quot;</span><br><span class="s">6066         &#39;,&#39;</span><br><span class="s">6067            &quot;HAN1ES&quot;</span><br><span class="s">6068         &#39;,&#39;</span><br><span class="s">6069            &quot;HAN1FS&quot;</span><br><span class="s">6070         &#39;,&#39;</span><br><span class="s">6071            &quot;HAN1GS&quot;</span><br><span class="s">6072         &#39;,&#39;</span><br><span class="s">6073            &quot;HAN1HS&quot;</span><br><span class="s">6074         &#39;,&#39;</span><br><span class="s">6075            &quot;HAN1IS&quot;</span><br><span class="s">6076         &#39;,&#39;</span><br><span class="s">6077            &quot;HAN2AS&quot;</span><br><span class="s">6078         &#39;,&#39;</span><br><span class="s">6079            &quot;HAN2BS&quot;</span><br><span class="s">6080         &#39;,&#39;</span><br><span class="s">6081            &quot;HAN2CS&quot;</span><br><span class="s">6082         &#39;,&#39;</span><br><span class="s">6083            &quot;HAN2DS&quot;</span><br><span class="s">6084         &#39;,&#39;</span><br><span class="s">6085            &quot;HAN2ES&quot;</span><br><span class="s">6086         &#39;,&#39;</span><br><span class="s">6087            &quot;HAN2FS&quot;</span><br><span class="s">6088         &#39;,&#39;</span><br><span class="s">6089            &quot;HAN2GS&quot;</span><br><span class="s">6090         &#39;,&#39;</span><br><span class="s">6091            &quot;HAN2HS&quot;</span><br><span class="s">6092         &#39;,&#39;</span><br><span class="s">6093            &quot;HAN2IS&quot;</span><br><span class="s">6094         &#39;,&#39;</span><br><span class="s">6095            &quot;HAN2JS&quot;</span><br><span class="s">6096         &#39;,&#39;</span><br><span class="s">6097            &quot;HAN3AS&quot;</span><br><span class="s">6098         &#39;,&#39;</span><br><span class="s">6099            &quot;HAN3BS&quot;</span><br><span class="s">6100         &#39;,&#39;</span><br><span class="s">6101            &quot;HAN3CS&quot;</span><br><span class="s">6102         &#39;,&#39;</span><br><span class="s">6103            &quot;HAN3DS&quot;</span><br><span class="s">6104         &#39;,&#39;</span><br><span class="s">6105            &quot;HAN3ES&quot;</span><br><span class="s">6106         &#39;,&#39;</span><br><span class="s">6107            &quot;HAN3FS&quot;</span><br><span class="s">6108         &#39;,&#39;</span><br><span class="s">6109            &quot;HAN4AS&quot;</span><br><span class="s">6110         &#39;,&#39;</span><br><span class="s">6111            &quot;HAN4BS&quot;</span><br><span class="s">6112         &#39;,&#39;</span><br><span class="s">6113            &quot;HAN4CS&quot;</span><br><span class="s">6114         &#39;,&#39;</span><br><span class="s">6115            &quot;HAN4DS&quot;</span><br><span class="s">6116         &#39;,&#39;</span><br><span class="s">6117            &quot;HAN4ES&quot;</span><br><span class="s">6118         &#39;,&#39;</span><br><span class="s">6119            &quot;HAN4FS&quot;</span><br><span class="s">6120         &#39;,&#39;</span><br><span class="s">6121            &quot;HAN4GS&quot;</span><br><span class="s">6122         &#39;,&#39;</span><br><span class="s">6123            &quot;HAN4HS&quot;</span><br><span class="s">6124         &#39;,&#39;</span><br><span class="s">6125            &quot;HAN4IS&quot;</span><br><span class="s">6126         &#39;,&#39;</span><br><span class="s">6127            &quot;HAN4JS&quot;</span><br><span class="s">6128         &#39;,&#39;</span><br><span class="s">6129            &quot;HAN4KS&quot;</span><br><span class="s">6130         &#39;,&#39;</span><br><span class="s">6131            &quot;HAN4LS&quot;</span><br><span class="s">6132         &#39;,&#39;</span><br><span class="s">6133            &quot;HAN5AS&quot;</span><br><span class="s">6134         &#39;,&#39;</span><br><span class="s">6135            &quot;HAN5BS&quot;</span><br><span class="s">6136         &#39;,&#39;</span><br><span class="s">6137            &quot;HAN5CS&quot;</span><br><span class="s">6138         &#39;,&#39;</span><br><span class="s">6139            &quot;HAN5DS&quot;</span><br><span class="s">6140         &#39;,&#39;</span><br><span class="s">6141            &quot;HAN5ES&quot;</span><br><span class="s">6142         &#39;,&#39;</span><br><span class="s">6143            &quot;HAN5FS&quot;</span><br><span class="s">6144         &#39;,&#39;</span><br><span class="s">6145            &quot;HAN5GS&quot;</span><br><span class="s">6146         &#39;,&#39;</span><br><span class="s">6147            &quot;HAN5HS&quot;</span><br><span class="s">6148         &#39;,&#39;</span><br><span class="s">6149            &quot;HAN5IS&quot;</span><br><span class="s">6150         &#39;,&#39;</span><br><span class="s">6151            &quot;HAN5JS&quot;</span><br><span class="s">6152         &#39;,&#39;</span><br><span class="s">6153            &quot;HAN5KS&quot;</span><br><span class="s">6154         &#39;,&#39;</span><br><span class="s">6155            &quot;HAN5LS&quot;</span><br><span class="s">6156         &#39;,&#39;</span><br><span class="s">6157            &quot;HAN6AS&quot;</span><br><span class="s">6158         &#39;,&#39;</span><br><span class="s">6159            &quot;HAN6BS&quot;</span><br><span class="s">6160         &#39;,&#39;</span><br><span class="s">6161            &quot;HAN6CS&quot;</span><br><span class="s">6162         &#39;,&#39;</span><br><span class="s">6163            &quot;HAN6DS&quot;</span><br><span class="s">6164         &#39;,&#39;</span><br><span class="s">6165            &quot;HAN6ES&quot;</span><br><span class="s">6166         &#39;,&#39;</span><br><span class="s">6167            &quot;HAN6FS&quot;</span><br><span class="s">6168         &#39;,&#39;</span><br><span class="s">6169            &quot;HAN6GS&quot;</span><br><span class="s">6170         &#39;,&#39;</span><br><span class="s">6171            &quot;HAN6HS&quot;</span><br><span class="s">6172         &#39;,&#39;</span><br><span class="s">6173            &quot;HAN6IS&quot;</span><br><span class="s">6174         &#39;,&#39;</span><br><span class="s">6175            &quot;HAN6JS&quot;</span><br><span class="s">6176         &#39;,&#39;</span><br><span class="s">6177            &quot;HAN7AS&quot;</span><br><span class="s">6178         &#39;,&#39;</span><br><span class="s">6179            &quot;HAN7BS&quot;</span><br><span class="s">6180         &#39;,&#39;</span><br><span class="s">6181            &quot;HAN7CS&quot;</span><br><span class="s">6182         &#39;,&#39;</span><br><span class="s">6183            &quot;HAN8&quot;</span><br><span class="s">6184         &#39;,&#39;</span><br><span class="s">6185            &quot;HAN8ACD&quot;</span><br><span class="s">6186         &#39;,&#39;</span><br><span class="s">6187            &quot;HAN8AS&quot;</span><br><span class="s">6188         &#39;,&#39;</span><br><span class="s">6189            &quot;HAN8BCD&quot;</span><br><span class="s">6190         &#39;,&#39;</span><br><span class="s">6191            &quot;HAN8BS&quot;</span><br><span class="s">6192         &#39;,&#39;</span><br><span class="s">6193            &quot;HAN8CCD&quot;</span><br><span class="s">6194         &#39;,&#39;</span><br><span class="s">6195            &quot;HAN8CS&quot;</span><br><span class="s">6196         &#39;,&#39;</span><br><span class="s">6197            &quot;HAN8DCD&quot;</span><br><span class="s">6198         &#39;,&#39;</span><br><span class="s">6199            &quot;HAN8DS&quot;</span><br><span class="s">6200         &#39;,&#39;</span><br><span class="s">6201            &quot;HAN8ECD&quot;</span><br><span class="s">6202         &#39;,&#39;</span><br><span class="s">6203            &quot;HAN8ES&quot;</span><br><span class="s">6204         &#39;,&#39;</span><br><span class="s">6205            &quot;HAN8FCD&quot;</span><br><span class="s">6206         &#39;,&#39;</span><br><span class="s">6207            &quot;HAN8FS&quot;</span><br><span class="s">6208         &#39;,&#39;</span><br><span class="s">6209            &quot;HAN9&quot;</span><br><span class="s">6210         &#39;,&#39;</span><br><span class="s">6211            &quot;HAN10A&quot;</span><br><span class="s">6212         &#39;,&#39;</span><br><span class="s">6213            &quot;HAN10B&quot;</span><br><span class="s">6214         &#39;,&#39;</span><br><span class="s">6215            &quot;HAN10C&quot;</span><br><span class="s">6216         &#39;,&#39;</span><br><span class="s">6217            &quot;HAN10D&quot;</span><br><span class="s">6218         &#39;,&#39;</span><br><span class="s">6219            &quot;HAN10E&quot;</span><br><span class="s">6220         &#39;,&#39;</span><br><span class="s">6221            &quot;HAP1&quot;</span><br><span class="s">6222         &#39;,&#39;</span><br><span class="s">6223            &quot;HAP1A&quot;</span><br><span class="s">6224         &#39;,&#39;</span><br><span class="s">6225            &quot;HAP2&quot;</span><br><span class="s">6226         &#39;,&#39;</span><br><span class="s">6227            &quot;HAP3&quot;</span><br><span class="s">6228         &#39;,&#39;</span><br><span class="s">6229            &quot;HAP4&quot;</span><br><span class="s">6230         &#39;,&#39;</span><br><span class="s">6231            &quot;HAP5&quot;</span><br><span class="s">6232         &#39;,&#39;</span><br><span class="s">6233            &quot;HAP6&quot;</span><br><span class="s">6234         &#39;,&#39;</span><br><span class="s">6235            &quot;HAP7&quot;</span><br><span class="s">6236         &#39;,&#39;</span><br><span class="s">6237            &quot;HAP8&quot;</span><br><span class="s">6238         &#39;,&#39;</span><br><span class="s">6239            &quot;HAP9&quot;</span><br><span class="s">6240         &#39;,&#39;</span><br><span class="s">6241            &quot;HAP10&quot;</span><br><span class="s">6242         &#39;,&#39;</span><br><span class="s">6243            &quot;HAP10A&quot;</span><br><span class="s">6244         &#39;,&#39;</span><br><span class="s">6245            &quot;HAP11&quot;</span><br><span class="s">6246         &#39;,&#39;</span><br><span class="s">6247            &quot;HAP12&quot;</span><br><span class="s">6248         &#39;,&#39;</span><br><span class="s">6249            &quot;HAP13&quot;</span><br><span class="s">6250         &#39;,&#39;</span><br><span class="s">6251            &quot;HAP14&quot;</span><br><span class="s">6252         &#39;,&#39;</span><br><span class="s">6253            &quot;HAP15&quot;</span><br><span class="s">6254         &#39;,&#39;</span><br><span class="s">6255            &quot;HAP16&quot;</span><br><span class="s">6256         &#39;,&#39;</span><br><span class="s">6257            &quot;HAP17A1&quot;</span><br><span class="s">6258         &#39;,&#39;</span><br><span class="s">6259            &quot;HAP17A2&quot;</span><br><span class="s">6260         &#39;,&#39;</span><br><span class="s">6261            &quot;HAP17A3&quot;</span><br><span class="s">6262         &#39;,&#39;</span><br><span class="s">6263            &quot;HAP17B&quot;</span><br><span class="s">6264         &#39;,&#39;</span><br><span class="s">6265            &quot;HAP18A&quot;</span><br><span class="s">6266         &#39;,&#39;</span><br><span class="s">6267            &quot;HAP18B&quot;</span><br><span class="s">6268         &#39;,&#39;</span><br><span class="s">6269            &quot;HAP18C&quot;</span><br><span class="s">6270         &#39;,&#39;</span><br><span class="s">6271            &quot;HAP18D&quot;</span><br><span class="s">6272         &#39;,&#39;</span><br><span class="s">6273            &quot;HAP18E&quot;</span><br><span class="s">6274         &#39;,&#39;</span><br><span class="s">6275            &quot;HAP19A&quot;</span><br><span class="s">6276         &#39;,&#39;</span><br><span class="s">6277            &quot;HAP19B&quot;</span><br><span class="s">6278         &#39;,&#39;</span><br><span class="s">6279            &quot;HAP19C&quot;</span><br><span class="s">6280         &#39;,&#39;</span><br><span class="s">6281            &quot;HAQ1&quot;</span><br><span class="s">6282         &#39;,&#39;</span><br><span class="s">6283            &quot;HAQ2A&quot;</span><br><span class="s">6284         &#39;,&#39;</span><br><span class="s">6285            &quot;HAQ2B&quot;</span><br><span class="s">6286         &#39;,&#39;</span><br><span class="s">6287            &quot;HAQ2C&quot;</span><br><span class="s">6288         &#39;,&#39;</span><br><span class="s">6289            &quot;HAQ2D&quot;</span><br><span class="s">6290         &#39;,&#39;</span><br><span class="s">6291            &quot;HAQ2E&quot;</span><br><span class="s">6292         &#39;,&#39;</span><br><span class="s">6293            &quot;HAQ2F&quot;</span><br><span class="s">6294         &#39;,&#39;</span><br><span class="s">6295            &quot;HAQ2G&quot;</span><br><span class="s">6296         &#39;,&#39;</span><br><span class="s">6297            &quot;HAQ2I&quot;</span><br><span class="s">6298         &#39;,&#39;</span><br><span class="s">6299            &quot;HAQ2K&quot;</span><br><span class="s">6300         &#39;,&#39;</span><br><span class="s">6301            &quot;HAQ2L&quot;</span><br><span class="s">6302         &#39;,&#39;</span><br><span class="s">6303            &quot;HAQ3S&quot;</span><br><span class="s">6304         &#39;,&#39;</span><br><span class="s">6305            &quot;HAQ4&quot;</span><br><span class="s">6306         &#39;,&#39;</span><br><span class="s">6307            &quot;HAQ5&quot;</span><br><span class="s">6308         &#39;,&#39;</span><br><span class="s">6309            &quot;HAQ6&quot;</span><br><span class="s">6310         &#39;,&#39;</span><br><span class="s">6311            &quot;HAQ7&quot;</span><br><span class="s">6312         &#39;,&#39;</span><br><span class="s">6313            &quot;HAQ8&quot;</span><br><span class="s">6314         &#39;,&#39;</span><br><span class="s">6315            &quot;HAQ9&quot;</span><br><span class="s">6316         &#39;,&#39;</span><br><span class="s">6317            &quot;HAR1&quot;</span><br><span class="s">6318         &#39;,&#39;</span><br><span class="s">6319            &quot;HAR2&quot;</span><br><span class="s">6320         &#39;,&#39;</span><br><span class="s">6321            &quot;HAR3&quot;</span><br><span class="s">6322         &#39;,&#39;</span><br><span class="s">6323            &quot;HAR4S&quot;</span><br><span class="s">6324         &#39;,&#39;</span><br><span class="s">6325            &quot;HAR5&quot;</span><br><span class="s">6326         &#39;,&#39;</span><br><span class="s">6327            &quot;HAR6&quot;</span><br><span class="s">6328         &#39;,&#39;</span><br><span class="s">6329            &quot;HAR7S&quot;</span><br><span class="s">6330         &#39;,&#39;</span><br><span class="s">6331            &quot;HAR8&quot;</span><br><span class="s">6332         &#39;,&#39;</span><br><span class="s">6333            &quot;HAR9&quot;</span><br><span class="s">6334         &#39;,&#39;</span><br><span class="s">6335            &quot;HAR10&quot;</span><br><span class="s">6336         &#39;,&#39;</span><br><span class="s">6337            &quot;HAR11R&quot;</span><br><span class="s">6338         &#39;,&#39;</span><br><span class="s">6339            &quot;HAR12S&quot;</span><br><span class="s">6340         &#39;,&#39;</span><br><span class="s">6341            &quot;HAR13&quot;</span><br><span class="s">6342         &#39;,&#39;</span><br><span class="s">6343            &quot;HAR14&quot;</span><br><span class="s">6344         &#39;,&#39;</span><br><span class="s">6345            &quot;HAR15&quot;</span><br><span class="s">6346         &#39;,&#39;</span><br><span class="s">6347            &quot;HAR16&quot;</span><br><span class="s">6348         &#39;,&#39;</span><br><span class="s">6349            &quot;HAR17&quot;</span><br><span class="s">6350         &#39;,&#39;</span><br><span class="s">6351            &quot;HAR18AS&quot;</span><br><span class="s">6352         &#39;,&#39;</span><br><span class="s">6353            &quot;HAR18BS&quot;</span><br><span class="s">6354         &#39;,&#39;</span><br><span class="s">6355            &quot;HAR19A&quot;</span><br><span class="s">6356         &#39;,&#39;</span><br><span class="s">6357            &quot;HAR19B&quot;</span><br><span class="s">6358         &#39;,&#39;</span><br><span class="s">6359            &quot;HAR20R&quot;</span><br><span class="s">6360         &#39;,&#39;</span><br><span class="s">6361            &quot;HAR21&quot;</span><br><span class="s">6362         &#39;,&#39;</span><br><span class="s">6363            &quot;HAR22&quot;</span><br><span class="s">6364         &#39;,&#39;</span><br><span class="s">6365            &quot;HAR23&quot;</span><br><span class="s">6366         &#39;,&#39;</span><br><span class="s">6367            &quot;HAR24&quot;</span><br><span class="s">6368         &#39;,&#39;</span><br><span class="s">6369            &quot;HAR25&quot;</span><br><span class="s">6370         &#39;,&#39;</span><br><span class="s">6371            &quot;HAR26&quot;</span><br><span class="s">6372         &#39;,&#39;</span><br><span class="s">6373            &quot;HAR27&quot;</span><br><span class="s">6374         &#39;,&#39;</span><br><span class="s">6375            &quot;HAR28&quot;</span><br><span class="s">6376         &#39;,&#39;</span><br><span class="s">6377            &quot;HAS1&quot;</span><br><span class="s">6378         &#39;,&#39;</span><br><span class="s">6379            &quot;HAS2&quot;</span><br><span class="s">6380         &#39;,&#39;</span><br><span class="s">6381            &quot;HAS3&quot;</span><br><span class="s">6382         &#39;,&#39;</span><br><span class="s">6383            &quot;HAS4&quot;</span><br><span class="s">6384         &#39;,&#39;</span><br><span class="s">6385            &quot;HAS5&quot;</span><br><span class="s">6386         &#39;,&#39;</span><br><span class="s">6387            &quot;HAS8R&quot;</span><br><span class="s">6388         &#39;,&#39;</span><br><span class="s">6389            &quot;HAS9R&quot;</span><br><span class="s">6390         &#39;,&#39;</span><br><span class="s">6391            &quot;HAS11&quot;</span><br><span class="s">6392         &#39;,&#39;</span><br><span class="s">6393            &quot;HAS12S&quot;</span><br><span class="s">6394         &#39;,&#39;</span><br><span class="s">6395            &quot;HAS13&quot;</span><br><span class="s">6396         &#39;,&#39;</span><br><span class="s">6397            &quot;HAS14&quot;</span><br><span class="s">6398         &#39;,&#39;</span><br><span class="s">6399            &quot;HAS15&quot;</span><br><span class="s">6400         &#39;,&#39;</span><br><span class="s">6401            &quot;HAS16A&quot;</span><br><span class="s">6402         &#39;,&#39;</span><br><span class="s">6403            &quot;HAS16B&quot;</span><br><span class="s">6404         &#39;,&#39;</span><br><span class="s">6405            &quot;HAS16C&quot;</span><br><span class="s">6406         &#39;,&#39;</span><br><span class="s">6407            &quot;HAS16D&quot;</span><br><span class="s">6408         &#39;,&#39;</span><br><span class="s">6409            &quot;HAS17&quot;</span><br><span class="s">6410         &#39;,&#39;</span><br><span class="s">6411            &quot;HAS17R&quot;</span><br><span class="s">6412         &#39;,&#39;</span><br><span class="s">6413            &quot;HAS18&quot;</span><br><span class="s">6414         &#39;,&#39;</span><br><span class="s">6415            &quot;HAS19&quot;</span><br><span class="s">6416         &#39;,&#39;</span><br><span class="s">6417            &quot;HAS19R&quot;</span><br><span class="s">6418         &#39;,&#39;</span><br><span class="s">6419            &quot;HAS21&quot;</span><br><span class="s">6420         &#39;,&#39;</span><br><span class="s">6421            &quot;HAS22&quot;</span><br><span class="s">6422         &#39;,&#39;</span><br><span class="s">6423            &quot;HAS23&quot;</span><br><span class="s">6424         &#39;,&#39;</span><br><span class="s">6425            &quot;HAS24&quot;</span><br><span class="s">6426         &#39;,&#39;</span><br><span class="s">6427            &quot;HAS25&quot;</span><br><span class="s">6428         &#39;,&#39;</span><br><span class="s">6429            &quot;HAS26&quot;</span><br><span class="s">6430         &#39;,&#39;</span><br><span class="s">6431            &quot;HAS27A&quot;</span><br><span class="s">6432         &#39;,&#39;</span><br><span class="s">6433            &quot;HAS27B&quot;</span><br><span class="s">6434         &#39;,&#39;</span><br><span class="s">6435            &quot;HAS27C&quot;</span><br><span class="s">6436         &#39;,&#39;</span><br><span class="s">6437            &quot;HAS27D&quot;</span><br><span class="s">6438         &#39;,&#39;</span><br><span class="s">6439            &quot;HAS27E&quot;</span><br><span class="s">6440         &#39;,&#39;</span><br><span class="s">6441            &quot;HAS27F&quot;</span><br><span class="s">6442         &#39;,&#39;</span><br><span class="s">6443            &quot;HAS27G&quot;</span><br><span class="s">6444         &#39;,&#39;</span><br><span class="s">6445            &quot;HAS27H&quot;</span><br><span class="s">6446         &#39;,&#39;</span><br><span class="s">6447            &quot;HAS27HCD&quot;</span><br><span class="s">6448         &#39;,&#39;</span><br><span class="s">6449            &quot;HAS28&quot;</span><br><span class="s">6450         &#39;,&#39;</span><br><span class="s">6451            &quot;HAS29&quot;</span><br><span class="s">6452         &#39;,&#39;</span><br><span class="s">6453            &quot;HAT1S&quot;</span><br><span class="s">6454         &#39;,&#39;</span><br><span class="s">6455            &quot;HAT1MET&quot;</span><br><span class="s">6456         &#39;,&#39;</span><br><span class="s">6457            &quot;HAT2&quot;</span><br><span class="s">6458         &#39;,&#39;</span><br><span class="s">6459            &quot;HAT2MET&quot;</span><br><span class="s">6460         &#39;,&#39;</span><br><span class="s">6461            &quot;HAT3S&quot;</span><br><span class="s">6462         &#39;,&#39;</span><br><span class="s">6463            &quot;HAT4&quot;</span><br><span class="s">6464         &#39;,&#39;</span><br><span class="s">6465            &quot;HAT4MET&quot;</span><br><span class="s">6466         &#39;,&#39;</span><br><span class="s">6467            &quot;HAT5S&quot;</span><br><span class="s">6468         &#39;,&#39;</span><br><span class="s">6469            &quot;HAT6&quot;</span><br><span class="s">6470         &#39;,&#39;</span><br><span class="s">6471            &quot;HAT6MET&quot;</span><br><span class="s">6472         &#39;,&#39;</span><br><span class="s">6473            &quot;HAT7S&quot;</span><br><span class="s">6474         &#39;,&#39;</span><br><span class="s">6475            &quot;HAT8&quot;</span><br><span class="s">6476         &#39;,&#39;</span><br><span class="s">6477            &quot;HAT8MET&quot;</span><br><span class="s">6478         &#39;,&#39;</span><br><span class="s">6479            &quot;HAT9S&quot;</span><br><span class="s">6480         &#39;,&#39;</span><br><span class="s">6481            &quot;HAT10&quot;</span><br><span class="s">6482         &#39;,&#39;</span><br><span class="s">6483            &quot;HAT10MET&quot;</span><br><span class="s">6484         &#39;,&#39;</span><br><span class="s">6485            &quot;HAT11S&quot;</span><br><span class="s">6486         &#39;,&#39;</span><br><span class="s">6487            &quot;HAT12&quot;</span><br><span class="s">6488         &#39;,&#39;</span><br><span class="s">6489            &quot;HAT12MET&quot;</span><br><span class="s">6490         &#39;,&#39;</span><br><span class="s">6491            &quot;HAT13S&quot;</span><br><span class="s">6492         &#39;,&#39;</span><br><span class="s">6493            &quot;HAT14&quot;</span><br><span class="s">6494         &#39;,&#39;</span><br><span class="s">6495            &quot;HAT14MET&quot;</span><br><span class="s">6496         &#39;,&#39;</span><br><span class="s">6497            &quot;HAT15S&quot;</span><br><span class="s">6498         &#39;,&#39;</span><br><span class="s">6499            &quot;HAT16&quot;</span><br><span class="s">6500         &#39;,&#39;</span><br><span class="s">6501            &quot;HAT16MET&quot;</span><br><span class="s">6502         &#39;,&#39;</span><br><span class="s">6503            &quot;HAT17S&quot;</span><br><span class="s">6504         &#39;,&#39;</span><br><span class="s">6505            &quot;HAT18&quot;</span><br><span class="s">6506         &#39;,&#39;</span><br><span class="s">6507            &quot;HAT19CD&quot;</span><br><span class="s">6508         &#39;,&#39;</span><br><span class="s">6509            &quot;HAT19MET&quot;</span><br><span class="s">6510         &#39;,&#39;</span><br><span class="s">6511            &quot;HAT20S&quot;</span><br><span class="s">6512         &#39;,&#39;</span><br><span class="s">6513            &quot;HAT21CD&quot;</span><br><span class="s">6514         &#39;,&#39;</span><br><span class="s">6515            &quot;HAT21MET&quot;</span><br><span class="s">6516         &#39;,&#39;</span><br><span class="s">6517            &quot;HAT22S&quot;</span><br><span class="s">6518         &#39;,&#39;</span><br><span class="s">6519            &quot;HAT23CD&quot;</span><br><span class="s">6520         &#39;,&#39;</span><br><span class="s">6521            &quot;HAT23MET&quot;</span><br><span class="s">6522         &#39;,&#39;</span><br><span class="s">6523            &quot;HAT24S&quot;</span><br><span class="s">6524         &#39;,&#39;</span><br><span class="s">6525            &quot;HAT25CD&quot;</span><br><span class="s">6526         &#39;,&#39;</span><br><span class="s">6527            &quot;HAT25MET&quot;</span><br><span class="s">6528         &#39;,&#39;</span><br><span class="s">6529            &quot;HAT26S&quot;</span><br><span class="s">6530         &#39;,&#39;</span><br><span class="s">6531            &quot;HAT27&quot;</span><br><span class="s">6532         &#39;,&#39;</span><br><span class="s">6533            &quot;HAT28&quot;</span><br><span class="s">6534         &#39;,&#39;</span><br><span class="s">6535            &quot;HAT29&quot;</span><br><span class="s">6536         &#39;,&#39;</span><br><span class="s">6537            &quot;HAT30&quot;</span><br><span class="s">6538         &#39;,&#39;</span><br><span class="s">6539            &quot;HAV1S&quot;</span><br><span class="s">6540         &#39;,&#39;</span><br><span class="s">6541            &quot;HAV2S&quot;</span><br><span class="s">6542         &#39;,&#39;</span><br><span class="s">6543            &quot;HAV3S&quot;</span><br><span class="s">6544         &#39;,&#39;</span><br><span class="s">6545            &quot;HAV4S&quot;</span><br><span class="s">6546         &#39;,&#39;</span><br><span class="s">6547            &quot;HAV5&quot;</span><br><span class="s">6548         &#39;,&#39;</span><br><span class="s">6549            &quot;HAV6S&quot;</span><br><span class="s">6550         &#39;,&#39;</span><br><span class="s">6551            &quot;HAV7R&quot;</span><br><span class="s">6552         &#39;,&#39;</span><br><span class="s">6553            &quot;HAV8&quot;</span><br><span class="s">6554         &#39;,&#39;</span><br><span class="s">6555            &quot;HAV9&quot;</span><br><span class="s">6556         &#39;,&#39;</span><br><span class="s">6557            &quot;HAV10R&quot;</span><br><span class="s">6558         &#39;,&#39;</span><br><span class="s">6559            &quot;HAV11&quot;</span><br><span class="s">6560         &#39;,&#39;</span><br><span class="s">6561            &quot;HAV12R&quot;</span><br><span class="s">6562         &#39;,&#39;</span><br><span class="s">6563            &quot;HAV13R&quot;</span><br><span class="s">6564         &#39;,&#39;</span><br><span class="s">6565            &quot;HAY6&quot;</span><br><span class="s">6566         &#39;,&#39;</span><br><span class="s">6567            &quot;HAY7&quot;</span><br><span class="s">6568         &#39;,&#39;</span><br><span class="s">6569            &quot;HAY8&quot;</span><br><span class="s">6570         &#39;,&#39;</span><br><span class="s">6571            &quot;HAY9&quot;</span><br><span class="s">6572         &#39;,&#39;</span><br><span class="s">6573            &quot;HAY10&quot;</span><br><span class="s">6574         &#39;,&#39;</span><br><span class="s">6575            &quot;HAY11A&quot;</span><br><span class="s">6576         &#39;,&#39;</span><br><span class="s">6577            &quot;HAY11B&quot;</span><br><span class="s">6578         &#39;,&#39;</span><br><span class="s">6579            &quot;HAY11C&quot;</span><br><span class="s">6580         &#39;,&#39;</span><br><span class="s">6581            &quot;HAY11D&quot;</span><br><span class="s">6582         &#39;,&#39;</span><br><span class="s">6583            &quot;HAY11E&quot;</span><br><span class="s">6584         &#39;,&#39;</span><br><span class="s">6585            &quot;HAY11F&quot;</span><br><span class="s">6586         &#39;,&#39;</span><br><span class="s">6587            &quot;HAY11G&quot;</span><br><span class="s">6588         &#39;,&#39;</span><br><span class="s">6589            &quot;HAY11H&quot;</span><br><span class="s">6590         &#39;,&#39;</span><br><span class="s">6591            &quot;HAY11I&quot;</span><br><span class="s">6592         &#39;,&#39;</span><br><span class="s">6593            &quot;HAY11J&quot;</span><br><span class="s">6594         &#39;,&#39;</span><br><span class="s">6595            &quot;HAZA1&quot;</span><br><span class="s">6596         &#39;,&#39;</span><br><span class="s">6597            &quot;HAZA1A&quot;</span><br><span class="s">6598         &#39;,&#39;</span><br><span class="s">6599            &quot;HAZA1CC&quot;</span><br><span class="s">6600         &#39;,&#39;</span><br><span class="s">6601            &quot;HAZA2&quot;</span><br><span class="s">6602         &#39;,&#39;</span><br><span class="s">6603            &quot;HAZA2A1&quot;</span><br><span class="s">6604         &#39;,&#39;</span><br><span class="s">6605            &quot;HAZA2A2&quot;</span><br><span class="s">6606         &#39;,&#39;</span><br><span class="s">6607            &quot;HAZA2A3&quot;</span><br><span class="s">6608         &#39;,&#39;</span><br><span class="s">6609            &quot;HAZA2A4&quot;</span><br><span class="s">6610         &#39;,&#39;</span><br><span class="s">6611            &quot;HAZA3&quot;</span><br><span class="s">6612         &#39;,&#39;</span><br><span class="s">6613            &quot;HAZA4&quot;</span><br><span class="s">6614         &#39;,&#39;</span><br><span class="s">6615            &quot;HAZA4A&quot;</span><br><span class="s">6616         &#39;,&#39;</span><br><span class="s">6617            &quot;HAZA5&quot;</span><br><span class="s">6618         &#39;,&#39;</span><br><span class="s">6619            &quot;HAZA5R&quot;</span><br><span class="s">6620         &#39;,&#39;</span><br><span class="s">6621            &quot;HAZA6&quot;</span><br><span class="s">6622         &#39;,&#39;</span><br><span class="s">6623            &quot;HAZA7A&quot;</span><br><span class="s">6624         &#39;,&#39;</span><br><span class="s">6625            &quot;HAZA7AA&quot;</span><br><span class="s">6626         &#39;,&#39;</span><br><span class="s">6627            &quot;HAZA7B&quot;</span><br><span class="s">6628         &#39;,&#39;</span><br><span class="s">6629            &quot;HAZA7BA&quot;</span><br><span class="s">6630         &#39;,&#39;</span><br><span class="s">6631            &quot;HAZA8AK1&quot;</span><br><span class="s">6632         &#39;,&#39;</span><br><span class="s">6633            &quot;HAZA8AK5&quot;</span><br><span class="s">6634         &#39;,&#39;</span><br><span class="s">6635            &quot;HAZA8A3&quot;</span><br><span class="s">6636         &#39;,&#39;</span><br><span class="s">6637            &quot;HAZA8A4&quot;</span><br><span class="s">6638         &#39;,&#39;</span><br><span class="s">6639            &quot;HAZA8BK1&quot;</span><br><span class="s">6640         &#39;,&#39;</span><br><span class="s">6641            &quot;HAZA8BK5&quot;</span><br><span class="s">6642         &#39;,&#39;</span><br><span class="s">6643            &quot;HAZA8B3&quot;</span><br><span class="s">6644         &#39;,&#39;</span><br><span class="s">6645            &quot;HAZA8B4&quot;</span><br><span class="s">6646         &#39;,&#39;</span><br><span class="s">6647            &quot;HAZA8CK1&quot;</span><br><span class="s">6648         &#39;,&#39;</span><br><span class="s">6649            &quot;HAZA8CK5&quot;</span><br><span class="s">6650         &#39;,&#39;</span><br><span class="s">6651            &quot;HAZA8C3&quot;</span><br><span class="s">6652         &#39;,&#39;</span><br><span class="s">6653            &quot;HAZA8C4&quot;</span><br><span class="s">6654         &#39;,&#39;</span><br><span class="s">6655            &quot;HAZA8DK1&quot;</span><br><span class="s">6656         &#39;,&#39;</span><br><span class="s">6657            &quot;HAZA8DK5&quot;</span><br><span class="s">6658         &#39;,&#39;</span><br><span class="s">6659            &quot;HAZA8D3&quot;</span><br><span class="s">6660         &#39;,&#39;</span><br><span class="s">6661            &quot;HAZA8D4&quot;</span><br><span class="s">6662         &#39;,&#39;</span><br><span class="s">6663            &quot;HAZA9&quot;</span><br><span class="s">6664         &#39;,&#39;</span><br><span class="s">6665            &quot;HAZA10&quot;</span><br><span class="s">6666         &#39;,&#39;</span><br><span class="s">6667            &quot;HAZA11A&quot;</span><br><span class="s">6668         &#39;,&#39;</span><br><span class="s">6669            &quot;HAZA11AR&quot;</span><br><span class="s">6670         &#39;,&#39;</span><br><span class="s">6671            &quot;HAZA11B&quot;</span><br><span class="s">6672         &#39;,&#39;</span><br><span class="s">6673            &quot;HAZA11BR&quot;</span><br><span class="s">6674         &#39;,&#39;</span><br><span class="s">6675            &quot;HAZA12&quot;</span><br><span class="s">6676         &#39;,&#39;</span><br><span class="s">6677            &quot;HAZMNK1R&quot;</span><br><span class="s">6678         &#39;,&#39;</span><br><span class="s">6679            &quot;HAZNOK1R&quot;</span><br><span class="s">6680         &#39;,&#39;</span><br><span class="s">6681            &quot;HAZMNK5R&quot;</span><br><span class="s">6682         &#39;,&#39;</span><br><span class="s">6683            &quot;HAZNOK5R&quot;</span><br><span class="s">6684         &#39;,&#39;</span><br><span class="s">6685            &quot;HAX1A&quot;</span><br><span class="s">6686         &#39;,&#39;</span><br><span class="s">6687            &quot;HAX1B&quot;</span><br><span class="s">6688         &#39;,&#39;</span><br><span class="s">6689            &quot;HAX1C&quot;</span><br><span class="s">6690         &#39;,&#39;</span><br><span class="s">6691            &quot;HAX2A&quot;</span><br><span class="s">6692         &#39;,&#39;</span><br><span class="s">6693            &quot;HAX2B&quot;</span><br><span class="s">6694         &#39;,&#39;</span><br><span class="s">6695            &quot;HAX2C&quot;</span><br><span class="s">6696         &#39;,&#39;</span><br><span class="s">6697            &quot;HAX3CG&quot;</span><br><span class="s">6698         &#39;,&#39;</span><br><span class="s">6699            &quot;HAX3DG&quot;</span><br><span class="s">6700         &#39;,&#39;</span><br><span class="s">6701            &quot;HAX6SG&quot;</span><br><span class="s">6702         &#39;,&#39;</span><br><span class="s">6703            &quot;HAX8SG&quot;</span><br><span class="s">6704         &#39;,&#39;</span><br><span class="s">6705            &quot;HAX3CH&quot;</span><br><span class="s">6706         &#39;,&#39;</span><br><span class="s">6707            &quot;HAX3DH&quot;</span><br><span class="s">6708         &#39;,&#39;</span><br><span class="s">6709            &quot;HAX6SH&quot;</span><br><span class="s">6710         &#39;,&#39;</span><br><span class="s">6711            &quot;HAX8SH&quot;</span><br><span class="s">6712         &#39;,&#39;</span><br><span class="s">6713            &quot;HAX3CI&quot;</span><br><span class="s">6714         &#39;,&#39;</span><br><span class="s">6715            &quot;HAX3DI&quot;</span><br><span class="s">6716         &#39;,&#39;</span><br><span class="s">6717            &quot;HAX6SI&quot;</span><br><span class="s">6718         &#39;,&#39;</span><br><span class="s">6719            &quot;HAX8SI&quot;</span><br><span class="s">6720         &#39;,&#39;</span><br><span class="s">6721            &quot;HAX3CJ&quot;</span><br><span class="s">6722         &#39;,&#39;</span><br><span class="s">6723            &quot;HAX3DJ&quot;</span><br><span class="s">6724         &#39;,&#39;</span><br><span class="s">6725            &quot;HAX6SJ&quot;</span><br><span class="s">6726         &#39;,&#39;</span><br><span class="s">6727            &quot;HAX8SJ&quot;</span><br><span class="s">6728         &#39;,&#39;</span><br><span class="s">6729            &quot;HAX3CK&quot;</span><br><span class="s">6730         &#39;,&#39;</span><br><span class="s">6731            &quot;HAX3DK&quot;</span><br><span class="s">6732         &#39;,&#39;</span><br><span class="s">6733            &quot;HAX6SK&quot;</span><br><span class="s">6734         &#39;,&#39;</span><br><span class="s">6735            &quot;HAX8SK&quot;</span><br><span class="s">6736         &#39;,&#39;</span><br><span class="s">6737            &quot;HAX3CL&quot;</span><br><span class="s">6738         &#39;,&#39;</span><br><span class="s">6739            &quot;HAX3DL&quot;</span><br><span class="s">6740         &#39;,&#39;</span><br><span class="s">6741            &quot;HAX6SL&quot;</span><br><span class="s">6742         &#39;,&#39;</span><br><span class="s">6743            &quot;HAX8SL&quot;</span><br><span class="s">6744         &#39;,&#39;</span><br><span class="s">6745            &quot;HAX3CM&quot;</span><br><span class="s">6746         &#39;,&#39;</span><br><span class="s">6747            &quot;HAX3DM&quot;</span><br><span class="s">6748         &#39;,&#39;</span><br><span class="s">6749            &quot;HAX6SM&quot;</span><br><span class="s">6750         &#39;,&#39;</span><br><span class="s">6751            &quot;HAX8SM&quot;</span><br><span class="s">6752         &#39;,&#39;</span><br><span class="s">6753            &quot;HAX3CN&quot;</span><br><span class="s">6754         &#39;,&#39;</span><br><span class="s">6755            &quot;HAX3DN&quot;</span><br><span class="s">6756         &#39;,&#39;</span><br><span class="s">6757            &quot;HAX6SN&quot;</span><br><span class="s">6758         &#39;,&#39;</span><br><span class="s">6759            &quot;HAX8SN&quot;</span><br><span class="s">6760         &#39;,&#39;</span><br><span class="s">6761            &quot;HAX3CO&quot;</span><br><span class="s">6762         &#39;,&#39;</span><br><span class="s">6763            &quot;HAX3DO&quot;</span><br><span class="s">6764         &#39;,&#39;</span><br><span class="s">6765            &quot;HAX6SO&quot;</span><br><span class="s">6766         &#39;,&#39;</span><br><span class="s">6767            &quot;HAX8SO&quot;</span><br><span class="s">6768         &#39;,&#39;</span><br><span class="s">6769            &quot;HAX3CP&quot;</span><br><span class="s">6770         &#39;,&#39;</span><br><span class="s">6771            &quot;HAX3DP&quot;</span><br><span class="s">6772         &#39;,&#39;</span><br><span class="s">6773            &quot;HAX6SP&quot;</span><br><span class="s">6774         &#39;,&#39;</span><br><span class="s">6775            &quot;HAX8SP&quot;</span><br><span class="s">6776         &#39;,&#39;</span><br><span class="s">6777            &quot;HAX3CQ&quot;</span><br><span class="s">6778         &#39;,&#39;</span><br><span class="s">6779            &quot;HAX3DQ&quot;</span><br><span class="s">6780         &#39;,&#39;</span><br><span class="s">6781            &quot;HAX6SQ&quot;</span><br><span class="s">6782         &#39;,&#39;</span><br><span class="s">6783            &quot;HAX8SQ&quot;</span><br><span class="s">6784         &#39;,&#39;</span><br><span class="s">6785            &quot;HAX3CR&quot;</span><br><span class="s">6786         &#39;,&#39;</span><br><span class="s">6787            &quot;HAX3DR&quot;</span><br><span class="s">6788         &#39;,&#39;</span><br><span class="s">6789            &quot;HAX6SR&quot;</span><br><span class="s">6790         &#39;,&#39;</span><br><span class="s">6791            &quot;HAX8SR&quot;</span><br><span class="s">6792         &#39;,&#39;</span><br><span class="s">6793            &quot;HAX3CS&quot;</span><br><span class="s">6794         &#39;,&#39;</span><br><span class="s">6795            &quot;HAX3DS&quot;</span><br><span class="s">6796         &#39;,&#39;</span><br><span class="s">6797            &quot;HAX6SS&quot;</span><br><span class="s">6798         &#39;,&#39;</span><br><span class="s">6799            &quot;HAX8SS&quot;</span><br><span class="s">6800         &#39;,&#39;</span><br><span class="s">6801            &quot;HAX3CT&quot;</span><br><span class="s">6802         &#39;,&#39;</span><br><span class="s">6803            &quot;HAX3DT&quot;</span><br><span class="s">6804         &#39;,&#39;</span><br><span class="s">6805            &quot;HAX6ST&quot;</span><br><span class="s">6806         &#39;,&#39;</span><br><span class="s">6807            &quot;HAX8ST&quot;</span><br><span class="s">6808         &#39;,&#39;</span><br><span class="s">6809            &quot;HAX3CU&quot;</span><br><span class="s">6810         &#39;,&#39;</span><br><span class="s">6811            &quot;HAX3DU&quot;</span><br><span class="s">6812         &#39;,&#39;</span><br><span class="s">6813            &quot;HAX6SU&quot;</span><br><span class="s">6814         &#39;,&#39;</span><br><span class="s">6815            &quot;HAX8SU&quot;</span><br><span class="s">6816         &#39;,&#39;</span><br><span class="s">6817            &quot;HAX3CV&quot;</span><br><span class="s">6818         &#39;,&#39;</span><br><span class="s">6819            &quot;HAX3DV&quot;</span><br><span class="s">6820         &#39;,&#39;</span><br><span class="s">6821            &quot;HAX6SV&quot;</span><br><span class="s">6822         &#39;,&#39;</span><br><span class="s">6823            &quot;HAX8SV&quot;</span><br><span class="s">6824         &#39;,&#39;</span><br><span class="s">6825            &quot;HAX3CW&quot;</span><br><span class="s">6826         &#39;,&#39;</span><br><span class="s">6827            &quot;HAX3DW&quot;</span><br><span class="s">6828         &#39;,&#39;</span><br><span class="s">6829            &quot;HAX6SW&quot;</span><br><span class="s">6830         &#39;,&#39;</span><br><span class="s">6831            &quot;HAX8SW&quot;</span><br><span class="s">6832         &#39;,&#39;</span><br><span class="s">6833            &quot;HAX9DG&quot;</span><br><span class="s">6834         &#39;,&#39;</span><br><span class="s">6835            &quot;HAX9EG&quot;</span><br><span class="s">6836         &#39;,&#39;</span><br><span class="s">6837            &quot;HAX9FG&quot;</span><br><span class="s">6838         &#39;,&#39;</span><br><span class="s">6839            &quot;HAX11AG&quot;</span><br><span class="s">6840         &#39;,&#39;</span><br><span class="s">6841            &quot;HAX12SG&quot;</span><br><span class="s">6842         &#39;,&#39;</span><br><span class="s">6843            &quot;HAX9DH&quot;</span><br><span class="s">6844         &#39;,&#39;</span><br><span class="s">6845            &quot;HAX9EH&quot;</span><br><span class="s">6846         &#39;,&#39;</span><br><span class="s">6847            &quot;HAX9FH&quot;</span><br><span class="s">6848         &#39;,&#39;</span><br><span class="s">6849            &quot;HAX11AH&quot;</span><br><span class="s">6850         &#39;,&#39;</span><br><span class="s">6851            &quot;HAX12SH&quot;</span><br><span class="s">6852         &#39;,&#39;</span><br><span class="s">6853            &quot;HAX9DI&quot;</span><br><span class="s">6854         &#39;,&#39;</span><br><span class="s">6855            &quot;HAX9EI&quot;</span><br><span class="s">6856         &#39;,&#39;</span><br><span class="s">6857            &quot;HAX9FI&quot;</span><br><span class="s">6858         &#39;,&#39;</span><br><span class="s">6859            &quot;HAX11AI&quot;</span><br><span class="s">6860         &#39;,&#39;</span><br><span class="s">6861            &quot;HAX12SI&quot;</span><br><span class="s">6862         &#39;,&#39;</span><br><span class="s">6863            &quot;HAX9DJ&quot;</span><br><span class="s">6864         &#39;,&#39;</span><br><span class="s">6865            &quot;HAX9EJ&quot;</span><br><span class="s">6866         &#39;,&#39;</span><br><span class="s">6867            &quot;HAX9FJ&quot;</span><br><span class="s">6868         &#39;,&#39;</span><br><span class="s">6869            &quot;HAX11AJ&quot;</span><br><span class="s">6870         &#39;,&#39;</span><br><span class="s">6871            &quot;HAX12SJ&quot;</span><br><span class="s">6872         &#39;,&#39;</span><br><span class="s">6873            &quot;HAX9DK&quot;</span><br><span class="s">6874         &#39;,&#39;</span><br><span class="s">6875            &quot;HAX9EK&quot;</span><br><span class="s">6876         &#39;,&#39;</span><br><span class="s">6877            &quot;HAX9FK&quot;</span><br><span class="s">6878         &#39;,&#39;</span><br><span class="s">6879            &quot;HAX11AK&quot;</span><br><span class="s">6880         &#39;,&#39;</span><br><span class="s">6881            &quot;HAX12SK&quot;</span><br><span class="s">6882         &#39;,&#39;</span><br><span class="s">6883            &quot;HAX9DL&quot;</span><br><span class="s">6884         &#39;,&#39;</span><br><span class="s">6885            &quot;HAX9EL&quot;</span><br><span class="s">6886         &#39;,&#39;</span><br><span class="s">6887            &quot;HAX9FL&quot;</span><br><span class="s">6888         &#39;,&#39;</span><br><span class="s">6889            &quot;HAX11AL&quot;</span><br><span class="s">6890         &#39;,&#39;</span><br><span class="s">6891            &quot;HAX12SL&quot;</span><br><span class="s">6892         &#39;,&#39;</span><br><span class="s">6893            &quot;HAX9DM&quot;</span><br><span class="s">6894         &#39;,&#39;</span><br><span class="s">6895            &quot;HAX9EM&quot;</span><br><span class="s">6896         &#39;,&#39;</span><br><span class="s">6897            &quot;HAX9FM&quot;</span><br><span class="s">6898         &#39;,&#39;</span><br><span class="s">6899            &quot;HAX11AM&quot;</span><br><span class="s">6900         &#39;,&#39;</span><br><span class="s">6901            &quot;HAX12SM&quot;</span><br><span class="s">6902         &#39;,&#39;</span><br><span class="s">6903            &quot;HAX9DN&quot;</span><br><span class="s">6904         &#39;,&#39;</span><br><span class="s">6905            &quot;HAX9EN&quot;</span><br><span class="s">6906         &#39;,&#39;</span><br><span class="s">6907            &quot;HAX9FN&quot;</span><br><span class="s">6908         &#39;,&#39;</span><br><span class="s">6909            &quot;HAX11AN&quot;</span><br><span class="s">6910         &#39;,&#39;</span><br><span class="s">6911            &quot;HAX12SN&quot;</span><br><span class="s">6912         &#39;,&#39;</span><br><span class="s">6913            &quot;HAX9DO&quot;</span><br><span class="s">6914         &#39;,&#39;</span><br><span class="s">6915            &quot;HAX9EO&quot;</span><br><span class="s">6916         &#39;,&#39;</span><br><span class="s">6917            &quot;HAX9FO&quot;</span><br><span class="s">6918         &#39;,&#39;</span><br><span class="s">6919            &quot;HAX11AO&quot;</span><br><span class="s">6920         &#39;,&#39;</span><br><span class="s">6921            &quot;HAX12SO&quot;</span><br><span class="s">6922         &#39;,&#39;</span><br><span class="s">6923            &quot;HAX9DP&quot;</span><br><span class="s">6924         &#39;,&#39;</span><br><span class="s">6925            &quot;HAX9EP&quot;</span><br><span class="s">6926         &#39;,&#39;</span><br><span class="s">6927            &quot;HAX9FP&quot;</span><br><span class="s">6928         &#39;,&#39;</span><br><span class="s">6929            &quot;HAX11AP&quot;</span><br><span class="s">6930         &#39;,&#39;</span><br><span class="s">6931            &quot;HAX12SP&quot;</span><br><span class="s">6932         &#39;,&#39;</span><br><span class="s">6933            &quot;HAX9DQ&quot;</span><br><span class="s">6934         &#39;,&#39;</span><br><span class="s">6935            &quot;HAX9EQ&quot;</span><br><span class="s">6936         &#39;,&#39;</span><br><span class="s">6937            &quot;HAX9FQ&quot;</span><br><span class="s">6938         &#39;,&#39;</span><br><span class="s">6939            &quot;HAX11AQ&quot;</span><br><span class="s">6940         &#39;,&#39;</span><br><span class="s">6941            &quot;HAX12SQ&quot;</span><br><span class="s">6942         &#39;,&#39;</span><br><span class="s">6943            &quot;HAX9DR&quot;</span><br><span class="s">6944         &#39;,&#39;</span><br><span class="s">6945            &quot;HAX9ER&quot;</span><br><span class="s">6946         &#39;,&#39;</span><br><span class="s">6947            &quot;HAX9FR&quot;</span><br><span class="s">6948         &#39;,&#39;</span><br><span class="s">6949            &quot;HAX11AR&quot;</span><br><span class="s">6950         &#39;,&#39;</span><br><span class="s">6951            &quot;HAX12SR&quot;</span><br><span class="s">6952         &#39;,&#39;</span><br><span class="s">6953            &quot;HAX9DS&quot;</span><br><span class="s">6954         &#39;,&#39;</span><br><span class="s">6955            &quot;HAX9ES&quot;</span><br><span class="s">6956         &#39;,&#39;</span><br><span class="s">6957            &quot;HAX9FS&quot;</span><br><span class="s">6958         &#39;,&#39;</span><br><span class="s">6959            &quot;HAX11AS&quot;</span><br><span class="s">6960         &#39;,&#39;</span><br><span class="s">6961            &quot;HAX12SS&quot;</span><br><span class="s">6962         &#39;,&#39;</span><br><span class="s">6963            &quot;HAX9DT&quot;</span><br><span class="s">6964         &#39;,&#39;</span><br><span class="s">6965            &quot;HAX9ET&quot;</span><br><span class="s">6966         &#39;,&#39;</span><br><span class="s">6967            &quot;HAX9FT&quot;</span><br><span class="s">6968         &#39;,&#39;</span><br><span class="s">6969            &quot;HAX11AT&quot;</span><br><span class="s">6970         &#39;,&#39;</span><br><span class="s">6971            &quot;HAX12ST&quot;</span><br><span class="s">6972         &#39;,&#39;</span><br><span class="s">6973            &quot;HAX9DU&quot;</span><br><span class="s">6974         &#39;,&#39;</span><br><span class="s">6975            &quot;HAX9EU&quot;</span><br><span class="s">6976         &#39;,&#39;</span><br><span class="s">6977            &quot;HAX9FU&quot;</span><br><span class="s">6978         &#39;,&#39;</span><br><span class="s">6979            &quot;HAX11AU&quot;</span><br><span class="s">6980         &#39;,&#39;</span><br><span class="s">6981            &quot;HAX12SU&quot;</span><br><span class="s">6982         &#39;,&#39;</span><br><span class="s">6983            &quot;HAX9DV&quot;</span><br><span class="s">6984         &#39;,&#39;</span><br><span class="s">6985            &quot;HAX9EV&quot;</span><br><span class="s">6986         &#39;,&#39;</span><br><span class="s">6987            &quot;HAX9FV&quot;</span><br><span class="s">6988         &#39;,&#39;</span><br><span class="s">6989            &quot;HAX11AV&quot;</span><br><span class="s">6990         &#39;,&#39;</span><br><span class="s">6991            &quot;HAX12SV&quot;</span><br><span class="s">6992         &#39;,&#39;</span><br><span class="s">6993            &quot;HAX13AG&quot;</span><br><span class="s">6994         &#39;,&#39;</span><br><span class="s">6995            &quot;HAX15SG&quot;</span><br><span class="s">6996         &#39;,&#39;</span><br><span class="s">6997            &quot;HAX16AG&quot;</span><br><span class="s">6998         &#39;,&#39;</span><br><span class="s">6999            &quot;HAX16A1G&quot;</span><br><span class="s">7000         &#39;,&#39;</span><br><span class="s">7001            &quot;HAX17SG&quot;</span><br><span class="s">7002         &#39;,&#39;</span><br><span class="s">7003            &quot;HAX13AH&quot;</span><br><span class="s">7004         &#39;,&#39;</span><br><span class="s">7005            &quot;HAX15SH&quot;</span><br><span class="s">7006         &#39;,&#39;</span><br><span class="s">7007            &quot;HAX16AH&quot;</span><br><span class="s">7008         &#39;,&#39;</span><br><span class="s">7009            &quot;HAX16A1H&quot;</span><br><span class="s">7010         &#39;,&#39;</span><br><span class="s">7011            &quot;HAX17SH&quot;</span><br><span class="s">7012         &#39;,&#39;</span><br><span class="s">7013            &quot;HAX13AI&quot;</span><br><span class="s">7014         &#39;,&#39;</span><br><span class="s">7015            &quot;HAX15SI&quot;</span><br><span class="s">7016         &#39;,&#39;</span><br><span class="s">7017            &quot;HAX16AI&quot;</span><br><span class="s">7018         &#39;,&#39;</span><br><span class="s">7019            &quot;HAX16A1I&quot;</span><br><span class="s">7020         &#39;,&#39;</span><br><span class="s">7021            &quot;HAX17SI&quot;</span><br><span class="s">7022         &#39;,&#39;</span><br><span class="s">7023            &quot;HAX13AJ&quot;</span><br><span class="s">7024         &#39;,&#39;</span><br><span class="s">7025            &quot;HAX15SJ&quot;</span><br><span class="s">7026         &#39;,&#39;</span><br><span class="s">7027            &quot;HAX16AJ&quot;</span><br><span class="s">7028         &#39;,&#39;</span><br><span class="s">7029            &quot;HAX16A1J&quot;</span><br><span class="s">7030         &#39;,&#39;</span><br><span class="s">7031            &quot;HAX17SJ&quot;</span><br><span class="s">7032         &#39;,&#39;</span><br><span class="s">7033            &quot;HAX18A&quot;</span><br><span class="s">7034         &#39;,&#39;</span><br><span class="s">7035            &quot;HAX19AS&quot;</span><br><span class="s">7036         &#39;,&#39;</span><br><span class="s">7037            &quot;HAX18B&quot;</span><br><span class="s">7038         &#39;,&#39;</span><br><span class="s">7039            &quot;HAX19BS&quot;</span><br><span class="s">7040         &#39;,&#39;</span><br><span class="s">7041            &quot;HAX18C&quot;</span><br><span class="s">7042         &#39;,&#39;</span><br><span class="s">7043            &quot;HAX19CS&quot;</span><br><span class="s">7044         &#39;,&#39;</span><br><span class="s">7045            &quot;HAX18D&quot;</span><br><span class="s">7046         &#39;,&#39;</span><br><span class="s">7047            &quot;HAX18DB&quot;</span><br><span class="s">7048         &#39;,&#39;</span><br><span class="s">7049            &quot;HAX19DS&quot;</span><br><span class="s">7050         &#39;,&#39;</span><br><span class="s">7051            &quot;HAX18E&quot;</span><br><span class="s">7052         &#39;,&#39;</span><br><span class="s">7053            &quot;HAX18EB&quot;</span><br><span class="s">7054         &#39;,&#39;</span><br><span class="s">7055            &quot;HAX19ES&quot;</span><br><span class="s">7056         &#39;,&#39;</span><br><span class="s">7057            &quot;HAX18F&quot;</span><br><span class="s">7058         &#39;,&#39;</span><br><span class="s">7059            &quot;HAX18FB&quot;</span><br><span class="s">7060         &#39;,&#39;</span><br><span class="s">7061            &quot;HAX19FS&quot;</span><br><span class="s">7062         &#39;,&#39;</span><br><span class="s">7063            &quot;HAX18G&quot;</span><br><span class="s">7064         &#39;,&#39;</span><br><span class="s">7065            &quot;HAX18GB&quot;</span><br><span class="s">7066         &#39;,&#39;</span><br><span class="s">7067            &quot;HAX19GS&quot;</span><br><span class="s">7068         ;</span><br><span class="s">7069       end;</span><br><span class="s">7070     set  ADULT2   end=EFIEOD;</span><br><span class="s">7071         format SEQN best12. ;</span><br><span class="s">7072         format DMPFSEQ best12. ;</span><br><span class="s">7073         format DMPSTAT best12. ;</span><br><span class="s">7074         format DMARETHN best12. ;</span><br><span class="s">7075         format DMARACER best12. ;</span><br><span class="s">7076         format DMAETHNR best12. ;</span><br><span class="s">7077         format HSSEX best12. ;</span><br><span class="s">7078         format HSDOIMO best12. ;</span><br><span class="s">7079         format HSAGEIR best12. ;</span><br><span class="s">7080         format HSAGEU best12. ;</span><br><span class="s">7081         format HSAITMOR best12. ;</span><br><span class="s">7082         format HSFSIZER best12. ;</span><br><span class="s">7083         format HSHSIZER best12. ;</span><br><span class="s">7084         format DMPCNTYR best12. ;</span><br><span class="s">7085         format DMPFIPSR best12. ;</span><br><span class="s">7086         format DMPMETRO best12. ;</span><br><span class="s">7087         format DMPCREGN best12. ;</span><br><span class="s">7088         format DMPPIR z6.3 ;</span><br><span class="s">7089         format SDPPHASE best12. ;</span><br><span class="s">7090         format SDPPSU6 best12. ;</span><br><span class="s">7091         format SDPSTRA6 best12. ;</span><br><span class="s">7092         format SDPPSU1 best12. ;</span><br><span class="s">7093         format SDPSTRA1 best12. ;</span><br><span class="s">7094         format SDPPSU2 best12. ;</span><br><span class="s">7095         format SDPSTRA2 best12. ;</span><br><span class="s">7096         format WTPFQX6 z9.2 ;</span><br><span class="s">7097         format WTPFEX6 z9.2 ;</span><br><span class="s">7098         format WTPFHX6 z9.2 ;</span><br><span class="s">7099         format WTPFALG6 z9.2 ;</span><br><span class="s">7100         format WTPFCNS6 z9.2 ;</span><br><span class="s">7101         format WTPFSD6 z9.2 ;</span><br><span class="s">7102         format WTPFMD6 z9.2 ;</span><br><span class="s">7103         format WTPFHSD6 z9.2 ;</span><br><span class="s">7104         format WTPFHMD6 z9.2 ;</span><br><span class="s">7105         format WTPFQX1 z9.2 ;</span><br><span class="s">7106         format WTPFEX1 z9.2 ;</span><br><span class="s">7107         format WTPFHX1 z9.2 ;</span><br><span class="s">7108         format WTPFALG1 z9.2 ;</span><br><span class="s">7109         format WTPFCNS1 z9.2 ;</span><br><span class="s">7110         format WTPFSD1 z9.2 ;</span><br><span class="s">7111         format WTPFMD1 z9.2 ;</span><br><span class="s">7112         format WTPFHSD1 z9.2 ;</span><br><span class="s">7113         format WTPFHMD1 z9.2 ;</span><br><span class="s">7114         format WTPFQX2 z9.2 ;</span><br><span class="s">7115         format WTPFEX2 z9.2 ;</span><br><span class="s">7116         format WTPFHX2 z9.2 ;</span><br><span class="s">7117         format WTPFALG2 z9.2 ;</span><br><span class="s">7118         format WTPFCNS2 z9.2 ;</span><br><span class="s">7119         format WTPFSD2 z9.2 ;</span><br><span class="s">7120         format WTPFMD2 z9.2 ;</span><br><span class="s">7121         format WTPFHSD2 z9.2 ;</span><br><span class="s">7122         format WTPFHMD2 z9.2 ;</span><br><span class="s">7123         format WTPQRP1 z9.2 ;</span><br><span class="s">7124         format WTPQRP2 z9.2 ;</span><br><span class="s">7125         format WTPQRP3 z9.2 ;</span><br><span class="s">7126         format WTPQRP4 z9.2 ;</span><br><span class="s">7127         format WTPQRP5 z9.2 ;</span><br><span class="s">7128         format WTPQRP6 z9.2 ;</span><br><span class="s">7129         format WTPQRP7 z9.2 ;</span><br><span class="s">7130         format WTPQRP8 z9.2 ;</span><br><span class="s">7131         format WTPQRP9 z9.2 ;</span><br><span class="s">7132         format WTPQRP10 z9.2 ;</span><br><span class="s">7133         format WTPQRP11 z9.2 ;</span><br><span class="s">7134         format WTPQRP12 z9.2 ;</span><br><span class="s">7135         format WTPQRP13 z9.2 ;</span><br><span class="s">7136         format WTPQRP14 z9.2 ;</span><br><span class="s">7137         format WTPQRP15 z9.2 ;</span><br><span class="s">7138         format WTPQRP16 z9.2 ;</span><br><span class="s">7139         format WTPQRP17 z9.2 ;</span><br><span class="s">7140         format WTPQRP18 z9.2 ;</span><br><span class="s">7141         format WTPQRP19 z9.2 ;</span><br><span class="s">7142         format WTPQRP20 z9.2 ;</span><br><span class="s">7143         format WTPQRP21 z9.2 ;</span><br><span class="s">7144         format WTPQRP22 z9.2 ;</span><br><span class="s">7145         format WTPQRP23 z9.2 ;</span><br><span class="s">7146         format WTPQRP24 z9.2 ;</span><br><span class="s">7147         format WTPQRP25 z9.2 ;</span><br><span class="s">7148         format WTPQRP26 z9.2 ;</span><br><span class="s">7149         format WTPQRP27 z9.2 ;</span><br><span class="s">7150         format WTPQRP28 z9.2 ;</span><br><span class="s">7151         format WTPQRP29 z9.2 ;</span><br><span class="s">7152         format WTPQRP30 z9.2 ;</span><br><span class="s">7153         format WTPQRP31 z9.2 ;</span><br><span class="s">7154         format WTPQRP32 z9.2 ;</span><br><span class="s">7155         format WTPQRP33 z9.2 ;</span><br><span class="s">7156         format WTPQRP34 z9.2 ;</span><br><span class="s">7157         format WTPQRP35 z9.2 ;</span><br><span class="s">7158         format WTPQRP36 z9.2 ;</span><br><span class="s">7159         format WTPQRP37 z9.2 ;</span><br><span class="s">7160         format WTPQRP38 z9.2 ;</span><br><span class="s">7161         format WTPQRP39 z9.2 ;</span><br><span class="s">7162         format WTPQRP40 z9.2 ;</span><br><span class="s">7163         format WTPQRP41 z9.2 ;</span><br><span class="s">7164         format WTPQRP42 z9.2 ;</span><br><span class="s">7165         format WTPQRP43 z9.2 ;</span><br><span class="s">7166         format WTPQRP44 z9.2 ;</span><br><span class="s">7167         format WTPQRP45 z9.2 ;</span><br><span class="s">7168         format WTPQRP46 z9.2 ;</span><br><span class="s">7169         format WTPQRP47 z9.2 ;</span><br><span class="s">7170         format WTPQRP48 z9.2 ;</span><br><span class="s">7171         format WTPQRP49 z9.2 ;</span><br><span class="s">7172         format WTPQRP50 z9.2 ;</span><br><span class="s">7173         format WTPQRP51 z9.2 ;</span><br><span class="s">7174         format WTPQRP52 z9.2 ;</span><br><span class="s">7175         format WTPXRP1 z9.2 ;</span><br><span class="s">7176         format WTPXRP2 z9.2 ;</span><br><span class="s">7177         format WTPXRP3 z9.2 ;</span><br><span class="s">7178         format WTPXRP4 z9.2 ;</span><br><span class="s">7179         format WTPXRP5 z9.2 ;</span><br><span class="s">7180         format WTPXRP6 z9.2 ;</span><br><span class="s">7181         format WTPXRP7 z9.2 ;</span><br><span class="s">7182         format WTPXRP8 z9.2 ;</span><br><span class="s">7183         format WTPXRP9 z9.2 ;</span><br><span class="s">7184         format WTPXRP10 z9.2 ;</span><br><span class="s">7185         format WTPXRP11 z9.2 ;</span><br><span class="s">7186         format WTPXRP12 z9.2 ;</span><br><span class="s">7187         format WTPXRP13 z9.2 ;</span><br><span class="s">7188         format WTPXRP14 z9.2 ;</span><br><span class="s">7189         format WTPXRP15 z9.2 ;</span><br><span class="s">7190         format WTPXRP16 z9.2 ;</span><br><span class="s">7191         format WTPXRP17 z9.2 ;</span><br><span class="s">7192         format WTPXRP18 z9.2 ;</span><br><span class="s">7193         format WTPXRP19 z9.2 ;</span><br><span class="s">7194         format WTPXRP20 z9.2 ;</span><br><span class="s">7195         format WTPXRP21 z9.2 ;</span><br><span class="s">7196         format WTPXRP22 z9.2 ;</span><br><span class="s">7197         format WTPXRP23 z9.2 ;</span><br><span class="s">7198         format WTPXRP24 z9.2 ;</span><br><span class="s">7199         format WTPXRP25 z9.2 ;</span><br><span class="s">7200         format WTPXRP26 z9.2 ;</span><br><span class="s">7201         format WTPXRP27 z9.2 ;</span><br><span class="s">7202         format WTPXRP28 z9.2 ;</span><br><span class="s">7203         format WTPXRP29 z9.2 ;</span><br><span class="s">7204         format WTPXRP30 z9.2 ;</span><br><span class="s">7205         format WTPXRP31 z9.2 ;</span><br><span class="s">7206         format WTPXRP32 z9.2 ;</span><br><span class="s">7207         format WTPXRP33 z9.2 ;</span><br><span class="s">7208         format WTPXRP34 z9.2 ;</span><br><span class="s">7209         format WTPXRP35 z9.2 ;</span><br><span class="s">7210         format WTPXRP36 z9.2 ;</span><br><span class="s">7211         format WTPXRP37 z9.2 ;</span><br><span class="s">7212         format WTPXRP38 z9.2 ;</span><br><span class="s">7213         format WTPXRP39 z9.2 ;</span><br><span class="s">7214         format WTPXRP40 z9.2 ;</span><br><span class="s">7215         format WTPXRP41 z9.2 ;</span><br><span class="s">7216         format WTPXRP42 z9.2 ;</span><br><span class="s">7217         format WTPXRP43 z9.2 ;</span><br><span class="s">7218         format WTPXRP44 z9.2 ;</span><br><span class="s">7219         format WTPXRP45 z9.2 ;</span><br><span class="s">7220         format WTPXRP46 z9.2 ;</span><br><span class="s">7221         format WTPXRP47 z9.2 ;</span><br><span class="s">7222         format WTPXRP48 z9.2 ;</span><br><span class="s">7223         format WTPXRP49 z9.2 ;</span><br><span class="s">7224         format WTPXRP50 z9.2 ;</span><br><span class="s">7225         format WTPXRP51 z9.2 ;</span><br><span class="s">7226         format WTPXRP52 z9.2 ;</span><br><span class="s">7227         format HYAITMO best12. ;</span><br><span class="s">7228         format MXPLANG best12. ;</span><br><span class="s">7229         format MXPSESSR best12. ;</span><br><span class="s">7230         format MXPTIMO best12. ;</span><br><span class="s">7231         format MXPTIDW best12. ;</span><br><span class="s">7232         format MXPAXTMR best12. ;</span><br><span class="s">7233         format HXPSESSR best12. ;</span><br><span class="s">7234         format HXPTIMO best12. ;</span><br><span class="s">7235         format HXPTIDW best12. ;</span><br><span class="s">7236         format HXPAXTMR best12. ;</span><br><span class="s">7237         format HFVERS best12. ;</span><br><span class="s">7238         format HFINTVR best12. ;</span><br><span class="s">7239         format HFLANG best12. ;</span><br><span class="s">7240         format HFA6XCR best12. ;</span><br><span class="s">7241         format HFA8R best12. ;</span><br><span class="s">7242         format HFA12 best12. ;</span><br><span class="s">7243         format HFA13 best12. ;</span><br><span class="s">7244         format HFB1 best12. ;</span><br><span class="s">7245         format HFB2 best12. ;</span><br><span class="s">7246         format HFB3 best12. ;</span><br><span class="s">7247         format HFB4 best12. ;</span><br><span class="s">7248         format HFB5 best12. ;</span><br><span class="s">7249         format HFB6 best12. ;</span><br><span class="s">7250         format HFB7 best12. ;</span><br><span class="s">7251         format HFB8 best12. ;</span><br><span class="s">7252         format HFB9 best12. ;</span><br><span class="s">7253         format HFB10 best12. ;</span><br><span class="s">7254         format HFB11 best12. ;</span><br><span class="s">7255         format HFB11A best12. ;</span><br><span class="s">7256         format HFB11B best12. ;</span><br><span class="s">7257         format HFB11C best12. ;</span><br><span class="s">7258         format HFB11D best12. ;</span><br><span class="s">7259         format HFB11E best12. ;</span><br><span class="s">7260         format HFB12 best12. ;</span><br><span class="s">7261         format HFB13 best12. ;</span><br><span class="s">7262         format HFB14AB best12. ;</span><br><span class="s">7263         format HFB14AC best12. ;</span><br><span class="s">7264         format HFB14AD best12. ;</span><br><span class="s">7265         format HFB14AE best12. ;</span><br><span class="s">7266         format HFB14AF best12. ;</span><br><span class="s">7267         format HFB14AG best12. ;</span><br><span class="s">7268         format HFB14AI best12. ;</span><br><span class="s">7269         format HFB14BA best12. ;</span><br><span class="s">7270         format HFB14BB best12. ;</span><br><span class="s">7271         format HFB14BC best12. ;</span><br><span class="s">7272         format HFB14BD best12. ;</span><br><span class="s">7273         format HFB14BE best12. ;</span><br><span class="s">7274         format HFB14BF best12. ;</span><br><span class="s">7275         format HFB14BG best12. ;</span><br><span class="s">7276         format HFB14BH best12. ;</span><br><span class="s">7277         format HFB16A best12. ;</span><br><span class="s">7278         format HFB16B best12. ;</span><br><span class="s">7279         format HFB17 best12. ;</span><br><span class="s">7280         format HFC1 best12. ;</span><br><span class="s">7281         format HFC2S best12. ;</span><br><span class="s">7282         format HFC3S best12. ;</span><br><span class="s">7283         format HFC4S best12. ;</span><br><span class="s">7284         format HFC5S best12. ;</span><br><span class="s">7285         format HFC6A best12. ;</span><br><span class="s">7286         format HFC6A1 best12. ;</span><br><span class="s">7287         format HFC6B best12. ;</span><br><span class="s">7288         format HFC6B1 best12. ;</span><br><span class="s">7289         format HFC6C best12. ;</span><br><span class="s">7290         format HFC6C1 best12. ;</span><br><span class="s">7291         format HFC6D best12. ;</span><br><span class="s">7292         format HFC6D1 best12. ;</span><br><span class="s">7293         format HFC6E best12. ;</span><br><span class="s">7294         format HFC6E1 best12. ;</span><br><span class="s">7295         format HFC7S best12. ;</span><br><span class="s">7296         format HFC8S best12. ;</span><br><span class="s">7297         format HFC9 best12. ;</span><br><span class="s">7298         format HFC10 best12. ;</span><br><span class="s">7299         format HFC11 best12. ;</span><br><span class="s">7300         format HFD1 best12. ;</span><br><span class="s">7301         format HFD2 best12. ;</span><br><span class="s">7302         format HFD3 best12. ;</span><br><span class="s">7303         format HFD4 best12. ;</span><br><span class="s">7304         format HFD5 best12. ;</span><br><span class="s">7305         format HFD9R best12. ;</span><br><span class="s">7306         format HFD10R best12. ;</span><br><span class="s">7307         format HFD12 best12. ;</span><br><span class="s">7308         format HFE1 best12. ;</span><br><span class="s">7309         format HFE2 best12. ;</span><br><span class="s">7310         format HFE3 best12. ;</span><br><span class="s">7311         format HFE4 best12. ;</span><br><span class="s">7312         format HFE5 best12. ;</span><br><span class="s">7313         format HFE6 best12. ;</span><br><span class="s">7314         format HFE7 best12. ;</span><br><span class="s">7315         format HFE8A best12. ;</span><br><span class="s">7316         format HFE8B best12. ;</span><br><span class="s">7317         format HFE8C best12. ;</span><br><span class="s">7318         format HFE8D best12. ;</span><br><span class="s">7319         format HFE8E best12. ;</span><br><span class="s">7320         format HFE9 best12. ;</span><br><span class="s">7321         format HFE10 best12. ;</span><br><span class="s">7322         format HFE11 best12. ;</span><br><span class="s">7323         format HFE12 best12. ;</span><br><span class="s">7324         format HFE13 best12. ;</span><br><span class="s">7325         format HFE14 best12. ;</span><br><span class="s">7326         format HFE15 best12. ;</span><br><span class="s">7327         format HFE16 best12. ;</span><br><span class="s">7328         format HFE17 best12. ;</span><br><span class="s">7329         format HFE18 best12. ;</span><br><span class="s">7330         format HFF1 best12. ;</span><br><span class="s">7331         format HFF2R best12. ;</span><br><span class="s">7332         format HFF3A best12. ;</span><br><span class="s">7333         format HFF3B best12. ;</span><br><span class="s">7334         format HFF3C best12. ;</span><br><span class="s">7335         format HFF3D best12. ;</span><br><span class="s">7336         format HFF3E best12. ;</span><br><span class="s">7337         format HFF3F best12. ;</span><br><span class="s">7338         format HFF4 best12. ;</span><br><span class="s">7339         format HFF5 best12. ;</span><br><span class="s">7340         format HFF6A best12. ;</span><br><span class="s">7341         format HFF6B best12. ;</span><br><span class="s">7342         format HFF6C best12. ;</span><br><span class="s">7343         format HFF6D best12. ;</span><br><span class="s">7344         format HFF7 best12. ;</span><br><span class="s">7345         format HFF8 best12. ;</span><br><span class="s">7346         format HFF9 best12. ;</span><br><span class="s">7347         format HFF10 best12. ;</span><br><span class="s">7348         format HFF11 best12. ;</span><br><span class="s">7349         format HFF12A best12. ;</span><br><span class="s">7350         format HFF12B best12. ;</span><br><span class="s">7351         format HFF13A best12. ;</span><br><span class="s">7352         format HFF13B best12. ;</span><br><span class="s">7353         format HFF13DA best12. ;</span><br><span class="s">7354         format HFF13DB best12. ;</span><br><span class="s">7355         format HFF13E best12. ;</span><br><span class="s">7356         format HFF14A best12. ;</span><br><span class="s">7357         format HFF14B best12. ;</span><br><span class="s">7358         format HFF14D best12. ;</span><br><span class="s">7359         format HFF15A best12. ;</span><br><span class="s">7360         format HFF15B best12. ;</span><br><span class="s">7361         format HFF16A best12. ;</span><br><span class="s">7362         format HFF16B best12. ;</span><br><span class="s">7363         format HFF16D best12. ;</span><br><span class="s">7364         format HFF16E best12. ;</span><br><span class="s">7365         format HFF17A best12. ;</span><br><span class="s">7366         format HFF17B best12. ;</span><br><span class="s">7367         format HFF18 best12. ;</span><br><span class="s">7368         format HFF19R best12. ;</span><br><span class="s">7369         format HFF20R best12. ;</span><br><span class="s">7370         format HFHSEQN best12. ;</span><br><span class="s">7371         format HFHAGER best12. ;</span><br><span class="s">7372         format HFHSEX best12. ;</span><br><span class="s">7373         format HFHFIPCR best12. ;</span><br><span class="s">7374         format HFHEDUCR best12. ;</span><br><span class="s">7375         format HFHEMPL best12. ;</span><br><span class="s">7376         format HFHMRST best12. ;</span><br><span class="s">7377         format HFHMLSV best12. ;</span><br><span class="s">7378         format HFRELR best12. ;</span><br><span class="s">7379         format HFAGERR best12. ;</span><br><span class="s">7380         format HAVERS best12. ;</span><br><span class="s">7381         format HAINTVR best12. ;</span><br><span class="s">7382         format HALANG best12. ;</span><br><span class="s">7383         format HAA1 best12. ;</span><br><span class="s">7384         format HAA2 best12. ;</span><br><span class="s">7385         format HAA2A best12. ;</span><br><span class="s">7386         format HAA3 best12. ;</span><br><span class="s">7387         format HAA4 best12. ;</span><br><span class="s">7388         format HAA5 best12. ;</span><br><span class="s">7389         format HAA6A best12. ;</span><br><span class="s">7390         format HAA6B best12. ;</span><br><span class="s">7391         format HAA6C best12. ;</span><br><span class="s">7392         format HAA6D best12. ;</span><br><span class="s">7393         format HAB1 best12. ;</span><br><span class="s">7394         format HAB2 best12. ;</span><br><span class="s">7395         format HAB3 best12. ;</span><br><span class="s">7396         format HAB4 best12. ;</span><br><span class="s">7397         format HAB5 best12. ;</span><br><span class="s">7398         format HAB6S best12. ;</span><br><span class="s">7399         format HAB7 best12. ;</span><br><span class="s">7400         format HAC1A best12. ;</span><br><span class="s">7401         format HAC1B best12. ;</span><br><span class="s">7402         format HAC1C best12. ;</span><br><span class="s">7403         format HAC1D best12. ;</span><br><span class="s">7404         format HAC1E best12. ;</span><br><span class="s">7405         format HAC1F best12. ;</span><br><span class="s">7406         format HAC1G best12. ;</span><br><span class="s">7407         format HAC1H best12. ;</span><br><span class="s">7408         format HAC1I best12. ;</span><br><span class="s">7409         format HAC1J best12. ;</span><br><span class="s">7410         format HAC1K best12. ;</span><br><span class="s">7411         format HAC1L best12. ;</span><br><span class="s">7412         format HAC1M best12. ;</span><br><span class="s">7413         format HAC1N best12. ;</span><br><span class="s">7414         format HAC1O best12. ;</span><br><span class="s">7415         format HAC2E best12. ;</span><br><span class="s">7416         format HAC2F best12. ;</span><br><span class="s">7417         format HAC2H best12. ;</span><br><span class="s">7418         format HAC2J best12. ;</span><br><span class="s">7419         format HAC2K best12. ;</span><br><span class="s">7420         format HAC3AR best12. ;</span><br><span class="s">7421         format HAC3CR best12. ;</span><br><span class="s">7422         format HAC3DR best12. ;</span><br><span class="s">7423         format HAC3ER best12. ;</span><br><span class="s">7424         format HAC3FR best12. ;</span><br><span class="s">7425         format HAC3GR best12. ;</span><br><span class="s">7426         format HAC3HR best12. ;</span><br><span class="s">7427         format HAC3IR best12. ;</span><br><span class="s">7428         format HAC3JR best12. ;</span><br><span class="s">7429         format HAC3KR best12. ;</span><br><span class="s">7430         format HAC3LR best12. ;</span><br><span class="s">7431         format HAC3MR best12. ;</span><br><span class="s">7432         format HAC3NR best12. ;</span><br><span class="s">7433         format HAC3OR best12. ;</span><br><span class="s">7434         format HAC3OS best12. ;</span><br><span class="s">7435         format HAC4A best12. ;</span><br><span class="s">7436         format HAC4B best12. ;</span><br><span class="s">7437         format HAC5A1 best12. ;</span><br><span class="s">7438         format HAC5A2 best12. ;</span><br><span class="s">7439         format HAC5A3 best12. ;</span><br><span class="s">7440         format HAC5A4 best12. ;</span><br><span class="s">7441         format HAC5A5 best12. ;</span><br><span class="s">7442         format HAC5A6 best12. ;</span><br><span class="s">7443         format HAC5A7 best12. ;</span><br><span class="s">7444         format HAC5A8 best12. ;</span><br><span class="s">7445         format HAC5A9 best12. ;</span><br><span class="s">7446         format HAC5A10 best12. ;</span><br><span class="s">7447         format HAC5A11 best12. ;</span><br><span class="s">7448         format HAC5A12 best12. ;</span><br><span class="s">7449         format HAC5B1 best12. ;</span><br><span class="s">7450         format HAC5B2 best12. ;</span><br><span class="s">7451         format HAC5B3 best12. ;</span><br><span class="s">7452         format HAC5B4 best12. ;</span><br><span class="s">7453         format HAC5B5 best12. ;</span><br><span class="s">7454         format HAC5B6 best12. ;</span><br><span class="s">7455         format HAC5B7 best12. ;</span><br><span class="s">7456         format HAC5B8 best12. ;</span><br><span class="s">7457         format HAC5B9 best12. ;</span><br><span class="s">7458         format HAC5B10 best12. ;</span><br><span class="s">7459         format HAC5B11 best12. ;</span><br><span class="s">7460         format HAC5B12 best12. ;</span><br><span class="s">7461         format HAC6 best12. ;</span><br><span class="s">7462         format HAC7 best12. ;</span><br><span class="s">7463         format HAC7A best12. ;</span><br><span class="s">7464         format HAC8 best12. ;</span><br><span class="s">7465         format HAD1 best12. ;</span><br><span class="s">7466         format HAD2 best12. ;</span><br><span class="s">7467         format HAD3 best12. ;</span><br><span class="s">7468         format HAD4 best12. ;</span><br><span class="s">7469         format HAD5R best12. ;</span><br><span class="s">7470         format HAD6 best12. ;</span><br><span class="s">7471         format HAD7S best12. ;</span><br><span class="s">7472         format HAD8 best12. ;</span><br><span class="s">7473         format HAD9S best12. ;</span><br><span class="s">7474         format HAD10 best12. ;</span><br><span class="s">7475         format HAD11AS best12. ;</span><br><span class="s">7476         format HAD11BS best12. ;</span><br><span class="s">7477         format HAD12S best12. ;</span><br><span class="s">7478         format HAD13S best12. ;</span><br><span class="s">7479         format HAD14 best12. ;</span><br><span class="s">7480         format HAD15 best12. ;</span><br><span class="s">7481         format HAE1 best12. ;</span><br><span class="s">7482         format HAE2 best12. ;</span><br><span class="s">7483         format HAE3 best12. ;</span><br><span class="s">7484         format HAE4A best12. ;</span><br><span class="s">7485         format HAE4B best12. ;</span><br><span class="s">7486         format HAE4C best12. ;</span><br><span class="s">7487         format HAE4D best12. ;</span><br><span class="s">7488         format HAE4D1 best12. ;</span><br><span class="s">7489         format HAE4D2 best12. ;</span><br><span class="s">7490         format HAE4D3 best12. ;</span><br><span class="s">7491         format HAE4D4 best12. ;</span><br><span class="s">7492         format HAE4D5 best12. ;</span><br><span class="s">7493         format HAE4D6 best12. ;</span><br><span class="s">7494         format HAE5A best12. ;</span><br><span class="s">7495         format HAE5B best12. ;</span><br><span class="s">7496         format HAE5C best12. ;</span><br><span class="s">7497         format HAE5D1 best12. ;</span><br><span class="s">7498         format HAE5D2 best12. ;</span><br><span class="s">7499         format HAE5D3 best12. ;</span><br><span class="s">7500         format HAE5D4 best12. ;</span><br><span class="s">7501         format HAE5D5 best12. ;</span><br><span class="s">7502         format HAE5D6 best12. ;</span><br><span class="s">7503         format HAE6 best12. ;</span><br><span class="s">7504         format HAE7 best12. ;</span><br><span class="s">7505         format HAE8A best12. ;</span><br><span class="s">7506         format HAE8B best12. ;</span><br><span class="s">7507         format HAE8C best12. ;</span><br><span class="s">7508         format HAE8D best12. ;</span><br><span class="s">7509         format HAE9A best12. ;</span><br><span class="s">7510         format HAE9B best12. ;</span><br><span class="s">7511         format HAE9C best12. ;</span><br><span class="s">7512         format HAE9D best12. ;</span><br><span class="s">7513         format HAE10 best12. ;</span><br><span class="s">7514         format HAE11A best12. ;</span><br><span class="s">7515         format HAE11B best12. ;</span><br><span class="s">7516         format HAE11C best12. ;</span><br><span class="s">7517         format HAF1 best12. ;</span><br><span class="s">7518         format HAF2 best12. ;</span><br><span class="s">7519         format HAF3 best12. ;</span><br><span class="s">7520         format HAF4 best12. ;</span><br><span class="s">7521         format HAF5 best12. ;</span><br><span class="s">7522         format HAF6 best12. ;</span><br><span class="s">7523         format HAF7A best12. ;</span><br><span class="s">7524         format HAF7B best12. ;</span><br><span class="s">7525         format HAF7C best12. ;</span><br><span class="s">7526         format HAF7D best12. ;</span><br><span class="s">7527         format HAF7E best12. ;</span><br><span class="s">7528         format HAF7F best12. ;</span><br><span class="s">7529         format HAF7G best12. ;</span><br><span class="s">7530         format HAF7H best12. ;</span><br><span class="s">7531         format HAF9 best12. ;</span><br><span class="s">7532         format HAF10 best12. ;</span><br><span class="s">7533         format HAF11 best12. ;</span><br><span class="s">7534         format HAF12R best12. ;</span><br><span class="s">7535         format HAF13R best12. ;</span><br><span class="s">7536         format HAF14 best12. ;</span><br><span class="s">7537         format HAF15 best12. ;</span><br><span class="s">7538         format HAF16 best12. ;</span><br><span class="s">7539         format HAF17 best12. ;</span><br><span class="s">7540         format HAF18 best12. ;</span><br><span class="s">7541         format HAF19 best12. ;</span><br><span class="s">7542         format HAF20 best12. ;</span><br><span class="s">7543         format HAF21 best12. ;</span><br><span class="s">7544         format HAF22 best12. ;</span><br><span class="s">7545         format HAF23 best12. ;</span><br><span class="s">7546         format HAF24 best12. ;</span><br><span class="s">7547         format HAF25 best12. ;</span><br><span class="s">7548         format HAF26 best12. ;</span><br><span class="s">7549         format HAF27 best12. ;</span><br><span class="s">7550         format HAG1 best12. ;</span><br><span class="s">7551         format HAG2 best12. ;</span><br><span class="s">7552         format HAG3 best12. ;</span><br><span class="s">7553         format HAG4A best12. ;</span><br><span class="s">7554         format HAG4B best12. ;</span><br><span class="s">7555         format HAG4C best12. ;</span><br><span class="s">7556         format HAG5A best12. ;</span><br><span class="s">7557         format HAG5B best12. ;</span><br><span class="s">7558         format HAG5C best12. ;</span><br><span class="s">7559         format HAG6A best12. ;</span><br><span class="s">7560         format HAG6B best12. ;</span><br><span class="s">7561         format HAG6C best12. ;</span><br><span class="s">7562         format HAG7 best12. ;</span><br><span class="s">7563         format HAG8A best12. ;</span><br><span class="s">7564         format HAG8B best12. ;</span><br><span class="s">7565         format HAG8C best12. ;</span><br><span class="s">7566         format HAG8D best12. ;</span><br><span class="s">7567         format HAG8E best12. ;</span><br><span class="s">7568         format HAG8F best12. ;</span><br><span class="s">7569         format HAG9AR best12. ;</span><br><span class="s">7570         format HAG9BR best12. ;</span><br><span class="s">7571         format HAG9CR best12. ;</span><br><span class="s">7572         format HAG9DR best12. ;</span><br><span class="s">7573         format HAG9ER best12. ;</span><br><span class="s">7574         format HAG9FR best12. ;</span><br><span class="s">7575         format HAG10A best12. ;</span><br><span class="s">7576         format HAG10B best12. ;</span><br><span class="s">7577         format HAG10C best12. ;</span><br><span class="s">7578         format HAG10D best12. ;</span><br><span class="s">7579         format HAG10E best12. ;</span><br><span class="s">7580         format HAG10F best12. ;</span><br><span class="s">7581         format HAG11 best12. ;</span><br><span class="s">7582         format HAG12 best12. ;</span><br><span class="s">7583         format HAG13 best12. ;</span><br><span class="s">7584         format HAG14 best12. ;</span><br><span class="s">7585         format HAG15 best12. ;</span><br><span class="s">7586         format HAG16 best12. ;</span><br><span class="s">7587         format HAG17A best12. ;</span><br><span class="s">7588         format HAG17B best12. ;</span><br><span class="s">7589         format HAG17C best12. ;</span><br><span class="s">7590         format HAG17D best12. ;</span><br><span class="s">7591         format HAG17E best12. ;</span><br><span class="s">7592         format HAG17F best12. ;</span><br><span class="s">7593         format HAG17G best12. ;</span><br><span class="s">7594         format HAG17H best12. ;</span><br><span class="s">7595         format HAG17I best12. ;</span><br><span class="s">7596         format HAG17J best12. ;</span><br><span class="s">7597         format HAG17K best12. ;</span><br><span class="s">7598         format HAG17L best12. ;</span><br><span class="s">7599         format HAG17M best12. ;</span><br><span class="s">7600         format HAG17N best12. ;</span><br><span class="s">7601         format HAG17O best12. ;</span><br><span class="s">7602         format HAG17FF best12. ;</span><br><span class="s">7603         format HAG17P best12. ;</span><br><span class="s">7604         format HAG17Q best12. ;</span><br><span class="s">7605         format HAG17R best12. ;</span><br><span class="s">7606         format HAG17S best12. ;</span><br><span class="s">7607         format HAG17T best12. ;</span><br><span class="s">7608         format HAG17U best12. ;</span><br><span class="s">7609         format HAG17V best12. ;</span><br><span class="s">7610         format HAG17W best12. ;</span><br><span class="s">7611         format HAG17X best12. ;</span><br><span class="s">7612         format HAG17Y best12. ;</span><br><span class="s">7613         format HAG17Z best12. ;</span><br><span class="s">7614         format HAG17AA best12. ;</span><br><span class="s">7615         format HAG17BB best12. ;</span><br><span class="s">7616         format HAG17CC best12. ;</span><br><span class="s">7617         format HAG17DD best12. ;</span><br><span class="s">7618         format HAG17EE best12. ;</span><br><span class="s">7619         format HAG18 best12. ;</span><br><span class="s">7620         format HAG19A best12. ;</span><br><span class="s">7621         format HAG19B best12. ;</span><br><span class="s">7622         format HAG19C best12. ;</span><br><span class="s">7623         format HAG19D best12. ;</span><br><span class="s">7624         format HAG19E best12. ;</span><br><span class="s">7625         format HAG19F best12. ;</span><br><span class="s">7626         format HAG19G best12. ;</span><br><span class="s">7627         format HAG19H best12. ;</span><br><span class="s">7628         format HAG19I best12. ;</span><br><span class="s">7629         format HAG19J best12. ;</span><br><span class="s">7630         format HAG19K best12. ;</span><br><span class="s">7631         format HAG19L best12. ;</span><br><span class="s">7632         format HAG19M best12. ;</span><br><span class="s">7633         format HAG19N best12. ;</span><br><span class="s">7634         format HAG19O best12. ;</span><br><span class="s">7635         format HAG19FF best12. ;</span><br><span class="s">7636         format HAG19P best12. ;</span><br><span class="s">7637         format HAG19Q best12. ;</span><br><span class="s">7638         format HAG19R best12. ;</span><br><span class="s">7639         format HAG19S best12. ;</span><br><span class="s">7640         format HAG19T best12. ;</span><br><span class="s">7641         format HAG19U best12. ;</span><br><span class="s">7642         format HAG19V best12. ;</span><br><span class="s">7643         format HAG19W best12. ;</span><br><span class="s">7644         format HAG19X best12. ;</span><br><span class="s">7645         format HAG19Y best12. ;</span><br><span class="s">7646         format HAG19Z best12. ;</span><br><span class="s">7647         format HAG19AA best12. ;</span><br><span class="s">7648         format HAG19BB best12. ;</span><br><span class="s">7649         format HAG19CC best12. ;</span><br><span class="s">7650         format HAG19DD best12. ;</span><br><span class="s">7651         format HAG19EE best12. ;</span><br><span class="s">7652         format HAG20 best12. ;</span><br><span class="s">7653         format HAG21 best12. ;</span><br><span class="s">7654         format HAG22 best12. ;</span><br><span class="s">7655         format HAG23 best12. ;</span><br><span class="s">7656         format HAG24 best12. ;</span><br><span class="s">7657         format HAG25 best12. ;</span><br><span class="s">7658         format HAG26 best12. ;</span><br><span class="s">7659         format HAG27 best12. ;</span><br><span class="s">7660         format HAG28 best12. ;</span><br><span class="s">7661         format HAG29 best12. ;</span><br><span class="s">7662         format HAG30 best12. ;</span><br><span class="s">7663         format HAG31 best12. ;</span><br><span class="s">7664         format HAG32 best12. ;</span><br><span class="s">7665         format HAG33 best12. ;</span><br><span class="s">7666         format HAG34 best12. ;</span><br><span class="s">7667         format HAH1 best12. ;</span><br><span class="s">7668         format HAH2 best12. ;</span><br><span class="s">7669         format HAH3 best12. ;</span><br><span class="s">7670         format HAH4 best12. ;</span><br><span class="s">7671         format HAH5 best12. ;</span><br><span class="s">7672         format HAH6 best12. ;</span><br><span class="s">7673         format HAH7 best12. ;</span><br><span class="s">7674         format HAH8 best12. ;</span><br><span class="s">7675         format HAH9 best12. ;</span><br><span class="s">7676         format HAH10 best12. ;</span><br><span class="s">7677         format HAH11 best12. ;</span><br><span class="s">7678         format HAH12 best12. ;</span><br><span class="s">7679         format HAH13 best12. ;</span><br><span class="s">7680         format HAH14 best12. ;</span><br><span class="s">7681         format HAH15 best12. ;</span><br><span class="s">7682         format HAH16 best12. ;</span><br><span class="s">7683         format HAH17 best12. ;</span><br><span class="s">7684         format HAJ0 best12. ;</span><br><span class="s">7685         format HAJ1 best12. ;</span><br><span class="s">7686         format HAJ2A best12. ;</span><br><span class="s">7687         format HAJ2B best12. ;</span><br><span class="s">7688         format HAJ2C best12. ;</span><br><span class="s">7689         format HAJ3S best12. ;</span><br><span class="s">7690         format HAJ4 best12. ;</span><br><span class="s">7691         format HAJ5 best12. ;</span><br><span class="s">7692         format HAJ6 best12. ;</span><br><span class="s">7693         format HAJ7 best12. ;</span><br><span class="s">7694         format HAJ8 best12. ;</span><br><span class="s">7695         format HAJ9 best12. ;</span><br><span class="s">7696         format HAJ10 best12. ;</span><br><span class="s">7697         format HAJ11 best12. ;</span><br><span class="s">7698         format HAJ12 best12. ;</span><br><span class="s">7699         format HAJ13 best12. ;</span><br><span class="s">7700         format HAJ14 best12. ;</span><br><span class="s">7701         format HAJ15 best12. ;</span><br><span class="s">7702         format HAJ16 best12. ;</span><br><span class="s">7703         format HAJ17 best12. ;</span><br><span class="s">7704         format HAJ18R best12. ;</span><br><span class="s">7705         format HAK1 best12. ;</span><br><span class="s">7706         format HAK2 best12. ;</span><br><span class="s">7707         format HAK3A best12. ;</span><br><span class="s">7708         format HAK3A1 best12. ;</span><br><span class="s">7709         format HAK3B best12. ;</span><br><span class="s">7710         format HAK3B1R best12. ;</span><br><span class="s">7711         format HAK3C best12. ;</span><br><span class="s">7712         format HAK3C1R best12. ;</span><br><span class="s">7713         format HAK4 best12. ;</span><br><span class="s">7714         format HAK5 best12. ;</span><br><span class="s">7715         format HAK6 best12. ;</span><br><span class="s">7716         format HAK7 best12. ;</span><br><span class="s">7717         format HAK8 best12. ;</span><br><span class="s">7718         format HAK9 best12. ;</span><br><span class="s">7719         format HAK10 best12. ;</span><br><span class="s">7720         format HAK11 best12. ;</span><br><span class="s">7721         format HAK12 best12. ;</span><br><span class="s">7722         format HAK13 best12. ;</span><br><span class="s">7723         format HAK14 best12. ;</span><br><span class="s">7724         format HAL1 best12. ;</span><br><span class="s">7725         format HAL2 best12. ;</span><br><span class="s">7726         format HAL3 best12. ;</span><br><span class="s">7727         format HAL4 best12. ;</span><br><span class="s">7728         format HAL5 best12. ;</span><br><span class="s">7729         format HAL6 best12. ;</span><br><span class="s">7730         format HAL7 best12. ;</span><br><span class="s">7731         format HAL8 best12. ;</span><br><span class="s">7732         format HAL9 best12. ;</span><br><span class="s">7733         format HAL10 best12. ;</span><br><span class="s">7734         format HAL11A best12. ;</span><br><span class="s">7735         format HAL11B best12. ;</span><br><span class="s">7736         format HAL12 best12. ;</span><br><span class="s">7737         format HAL13 best12. ;</span><br><span class="s">7738         format HAL14A best12. ;</span><br><span class="s">7739         format HAL14B best12. ;</span><br><span class="s">7740         format HAL14C best12. ;</span><br><span class="s">7741         format HAL14D best12. ;</span><br><span class="s">7742         format HAL14E best12. ;</span><br><span class="s">7743         format HAL15A best12. ;</span><br><span class="s">7744         format HAL15B best12. ;</span><br><span class="s">7745         format HAL15C best12. ;</span><br><span class="s">7746         format HAL15D best12. ;</span><br><span class="s">7747         format HAL15E best12. ;</span><br><span class="s">7748         format HAL15F best12. ;</span><br><span class="s">7749         format HAL15G best12. ;</span><br><span class="s">7750         format HAL15H best12. ;</span><br><span class="s">7751         format HAL15I best12. ;</span><br><span class="s">7752         format HAL15J best12. ;</span><br><span class="s">7753         format HAL15K best12. ;</span><br><span class="s">7754         format HAL15L best12. ;</span><br><span class="s">7755         format HAL15M best12. ;</span><br><span class="s">7756         format HAL16A best12. ;</span><br><span class="s">7757         format HAL16B best12. ;</span><br><span class="s">7758         format HAL17 best12. ;</span><br><span class="s">7759         format HAL18 best12. ;</span><br><span class="s">7760         format HAL19A best12. ;</span><br><span class="s">7761         format HAL19B best12. ;</span><br><span class="s">7762         format HAL19C best12. ;</span><br><span class="s">7763         format HAL20A best12. ;</span><br><span class="s">7764         format HAL20B best12. ;</span><br><span class="s">7765         format HAL20C best12. ;</span><br><span class="s">7766         format HAM1 best12. ;</span><br><span class="s">7767         format HAM2 best12. ;</span><br><span class="s">7768         format HAM3 best12. ;</span><br><span class="s">7769         format HAM4 best12. ;</span><br><span class="s">7770         format HAM5S best12. ;</span><br><span class="s">7771         format HAM6S best12. ;</span><br><span class="s">7772         format HAM7 best12. ;</span><br><span class="s">7773         format HAM8S best12. ;</span><br><span class="s">7774         format HAM9S best12. ;</span><br><span class="s">7775         format HAM10S best12. ;</span><br><span class="s">7776         format HAM11 best12. ;</span><br><span class="s">7777         format HAM12 best12. ;</span><br><span class="s">7778         format HAM13 best12. ;</span><br><span class="s">7779         format HAM14 best12. ;</span><br><span class="s">7780         format HAM15A best12. ;</span><br><span class="s">7781         format HAM15B best12. ;</span><br><span class="s">7782         format HAM15C best12. ;</span><br><span class="s">7783         format HAM15D best12. ;</span><br><span class="s">7784         format HAM15E best12. ;</span><br><span class="s">7785         format HAM15F best12. ;</span><br><span class="s">7786         format HAM15G best12. ;</span><br><span class="s">7787         format HAM15H best12. ;</span><br><span class="s">7788         format HAM15K best12. ;</span><br><span class="s">7789         format HAM15L best12. ;</span><br><span class="s">7790         format HAM15M best12. ;</span><br><span class="s">7791         format HAM15N best12. ;</span><br><span class="s">7792         format HAM15O best12. ;</span><br><span class="s">7793         format HAM15P best12. ;</span><br><span class="s">7794         format HAM15Q best12. ;</span><br><span class="s">7795         format HAM15R best12. ;</span><br><span class="s">7796         format HAM15S best12. ;</span><br><span class="s">7797         format HAM15T best12. ;</span><br><span class="s">7798         format HAM15U best12. ;</span><br><span class="s">7799         format HAM15V best12. ;</span><br><span class="s">7800         format HAM15W best12. ;</span><br><span class="s">7801         format HAM15X best12. ;</span><br><span class="s">7802         format HAM15Y best12. ;</span><br><span class="s">7803         format HAM15Z best12. ;</span><br><span class="s">7804         format HAN1AS best12. ;</span><br><span class="s">7805         format HAN1BS best12. ;</span><br><span class="s">7806         format HAN1C best12. ;</span><br><span class="s">7807         format HAN1D best12. ;</span><br><span class="s">7808         format HAN1ES best12. ;</span><br><span class="s">7809         format HAN1FS best12. ;</span><br><span class="s">7810         format HAN1GS best12. ;</span><br><span class="s">7811         format HAN1HS best12. ;</span><br><span class="s">7812         format HAN1IS best12. ;</span><br><span class="s">7813         format HAN2AS best12. ;</span><br><span class="s">7814         format HAN2BS best12. ;</span><br><span class="s">7815         format HAN2CS best12. ;</span><br><span class="s">7816         format HAN2DS best12. ;</span><br><span class="s">7817         format HAN2ES best12. ;</span><br><span class="s">7818         format HAN2FS best12. ;</span><br><span class="s">7819         format HAN2GS best12. ;</span><br><span class="s">7820         format HAN2HS best12. ;</span><br><span class="s">7821         format HAN2IS best12. ;</span><br><span class="s">7822         format HAN2JS best12. ;</span><br><span class="s">7823         format HAN3AS best12. ;</span><br><span class="s">7824         format HAN3BS best12. ;</span><br><span class="s">7825         format HAN3CS best12. ;</span><br><span class="s">7826         format HAN3DS best12. ;</span><br><span class="s">7827         format HAN3ES best12. ;</span><br><span class="s">7828         format HAN3FS best12. ;</span><br><span class="s">7829         format HAN4AS best12. ;</span><br><span class="s">7830         format HAN4BS best12. ;</span><br><span class="s">7831         format HAN4CS best12. ;</span><br><span class="s">7832         format HAN4DS best12. ;</span><br><span class="s">7833         format HAN4ES best12. ;</span><br><span class="s">7834         format HAN4FS best12. ;</span><br><span class="s">7835         format HAN4GS best12. ;</span><br><span class="s">7836         format HAN4HS best12. ;</span><br><span class="s">7837         format HAN4IS best12. ;</span><br><span class="s">7838         format HAN4JS best12. ;</span><br><span class="s">7839         format HAN4KS best12. ;</span><br><span class="s">7840         format HAN4LS best12. ;</span><br><span class="s">7841         format HAN5AS best12. ;</span><br><span class="s">7842         format HAN5BS best12. ;</span><br><span class="s">7843         format HAN5CS best12. ;</span><br><span class="s">7844         format HAN5DS best12. ;</span><br><span class="s">7845         format HAN5ES best12. ;</span><br><span class="s">7846         format HAN5FS best12. ;</span><br><span class="s">7847         format HAN5GS best12. ;</span><br><span class="s">7848         format HAN5HS best12. ;</span><br><span class="s">7849         format HAN5IS best12. ;</span><br><span class="s">7850         format HAN5JS best12. ;</span><br><span class="s">7851         format HAN5KS best12. ;</span><br><span class="s">7852         format HAN5LS best12. ;</span><br><span class="s">7853         format HAN6AS best12. ;</span><br><span class="s">7854         format HAN6BS best12. ;</span><br><span class="s">7855         format HAN6CS best12. ;</span><br><span class="s">7856         format HAN6DS best12. ;</span><br><span class="s">7857         format HAN6ES best12. ;</span><br><span class="s">7858         format HAN6FS best12. ;</span><br><span class="s">7859         format HAN6GS best12. ;</span><br><span class="s">7860         format HAN6HS best12. ;</span><br><span class="s">7861         format HAN6IS best12. ;</span><br><span class="s">7862         format HAN6JS best12. ;</span><br><span class="s">7863         format HAN7AS best12. ;</span><br><span class="s">7864         format HAN7BS best12. ;</span><br><span class="s">7865         format HAN7CS best12. ;</span><br><span class="s">7866         format HAN8 best12. ;</span><br><span class="s">7867         format HAN8ACD best12. ;</span><br><span class="s">7868         format HAN8AS best12. ;</span><br><span class="s">7869         format HAN8BCD best12. ;</span><br><span class="s">7870         format HAN8BS best12. ;</span><br><span class="s">7871         format HAN8CCD best12. ;</span><br><span class="s">7872         format HAN8CS best12. ;</span><br><span class="s">7873         format HAN8DCD best12. ;</span><br><span class="s">7874         format HAN8DS best12. ;</span><br><span class="s">7875         format HAN8ECD best12. ;</span><br><span class="s">7876         format HAN8ES best12. ;</span><br><span class="s">7877         format HAN8FCD best12. ;</span><br><span class="s">7878         format HAN8FS best12. ;</span><br><span class="s">7879         format HAN9 best12. ;</span><br><span class="s">7880         format HAN10A best12. ;</span><br><span class="s">7881         format HAN10B best12. ;</span><br><span class="s">7882         format HAN10C best12. ;</span><br><span class="s">7883         format HAN10D best12. ;</span><br><span class="s">7884         format HAN10E best12. ;</span><br><span class="s">7885         format HAP1 best12. ;</span><br><span class="s">7886         format HAP1A best12. ;</span><br><span class="s">7887         format HAP2 best12. ;</span><br><span class="s">7888         format HAP3 best12. ;</span><br><span class="s">7889         format HAP4 best12. ;</span><br><span class="s">7890         format HAP5 best12. ;</span><br><span class="s">7891         format HAP6 best12. ;</span><br><span class="s">7892         format HAP7 best12. ;</span><br><span class="s">7893         format HAP8 best12. ;</span><br><span class="s">7894         format HAP9 best12. ;</span><br><span class="s">7895         format HAP10 best12. ;</span><br><span class="s">7896         format HAP10A best12. ;</span><br><span class="s">7897         format HAP11 best12. ;</span><br><span class="s">7898         format HAP12 best12. ;</span><br><span class="s">7899         format HAP13 best12. ;</span><br><span class="s">7900         format HAP14 best12. ;</span><br><span class="s">7901         format HAP15 best12. ;</span><br><span class="s">7902         format HAP16 best12. ;</span><br><span class="s">7903         format HAP17A1 best12. ;</span><br><span class="s">7904         format HAP17A2 best12. ;</span><br><span class="s">7905         format HAP17A3 best12. ;</span><br><span class="s">7906         format HAP17B best12. ;</span><br><span class="s">7907         format HAP18A best12. ;</span><br><span class="s">7908         format HAP18B best12. ;</span><br><span class="s">7909         format HAP18C best12. ;</span><br><span class="s">7910         format HAP18D best12. ;</span><br><span class="s">7911         format HAP18E best12. ;</span><br><span class="s">7912         format HAP19A best12. ;</span><br><span class="s">7913         format HAP19B best12. ;</span><br><span class="s">7914         format HAP19C best12. ;</span><br><span class="s">7915         format HAQ1 best12. ;</span><br><span class="s">7916         format HAQ2A best12. ;</span><br><span class="s">7917         format HAQ2B best12. ;</span><br><span class="s">7918         format HAQ2C best12. ;</span><br><span class="s">7919         format HAQ2D best12. ;</span><br><span class="s">7920         format HAQ2E best12. ;</span><br><span class="s">7921         format HAQ2F best12. ;</span><br><span class="s">7922         format HAQ2G best12. ;</span><br><span class="s">7923         format HAQ2I best12. ;</span><br><span class="s">7924         format HAQ2K best12. ;</span><br><span class="s">7925         format HAQ2L best12. ;</span><br><span class="s">7926         format HAQ3S best12. ;</span><br><span class="s">7927         format HAQ4 best12. ;</span><br><span class="s">7928         format HAQ5 best12. ;</span><br><span class="s">7929         format HAQ6 best12. ;</span><br><span class="s">7930         format HAQ7 best12. ;</span><br><span class="s">7931         format HAQ8 best12. ;</span><br><span class="s">7932         format HAQ9 best12. ;</span><br><span class="s">7933         format HAR1 best12. ;</span><br><span class="s">7934         format HAR2 best12. ;</span><br><span class="s">7935         format HAR3 best12. ;</span><br><span class="s">7936         format HAR4S best12. ;</span><br><span class="s">7937         format HAR5 best12. ;</span><br><span class="s">7938         format HAR6 best12. ;</span><br><span class="s">7939         format HAR7S best12. ;</span><br><span class="s">7940         format HAR8 best12. ;</span><br><span class="s">7941         format HAR9 best12. ;</span><br><span class="s">7942         format HAR10 best12. ;</span><br><span class="s">7943         format HAR11R best12. ;</span><br><span class="s">7944         format HAR12S best12. ;</span><br><span class="s">7945         format HAR13 best12. ;</span><br><span class="s">7946         format HAR14 best12. ;</span><br><span class="s">7947         format HAR15 best12. ;</span><br><span class="s">7948         format HAR16 best12. ;</span><br><span class="s">7949         format HAR17 best12. ;</span><br><span class="s">7950         format HAR18AS best12. ;</span><br><span class="s">7951         format HAR18BS best12. ;</span><br><span class="s">7952         format HAR19A best12. ;</span><br><span class="s">7953         format HAR19B best12. ;</span><br><span class="s">7954         format HAR20R best12. ;</span><br><span class="s">7955         format HAR21 best12. ;</span><br><span class="s">7956         format HAR22 best12. ;</span><br><span class="s">7957         format HAR23 best12. ;</span><br><span class="s">7958         format HAR24 best12. ;</span><br><span class="s">7959         format HAR25 best12. ;</span><br><span class="s">7960         format HAR26 best12. ;</span><br><span class="s">7961         format HAR27 best12. ;</span><br><span class="s">7962         format HAR28 best12. ;</span><br><span class="s">7963         format HAS1 best12. ;</span><br><span class="s">7964         format HAS2 best12. ;</span><br><span class="s">7965         format HAS3 best12. ;</span><br><span class="s">7966         format HAS4 best12. ;</span><br><span class="s">7967         format HAS5 best12. ;</span><br><span class="s">7968         format HAS8R best12. ;</span><br><span class="s">7969         format HAS9R best12. ;</span><br><span class="s">7970         format HAS11 best12. ;</span><br><span class="s">7971         format HAS12S best12. ;</span><br><span class="s">7972         format HAS13 best12. ;</span><br><span class="s">7973         format HAS14 best12. ;</span><br><span class="s">7974         format HAS15 best12. ;</span><br><span class="s">7975         format HAS16A best12. ;</span><br><span class="s">7976         format HAS16B best12. ;</span><br><span class="s">7977         format HAS16C best12. ;</span><br><span class="s">7978         format HAS16D best12. ;</span><br><span class="s">7979         format HAS17 best12. ;</span><br><span class="s">7980         format HAS17R best12. ;</span><br><span class="s">7981         format HAS18 best12. ;</span><br><span class="s">7982         format HAS19 best12. ;</span><br><span class="s">7983         format HAS19R best12. ;</span><br><span class="s">7984         format HAS21 best12. ;</span><br><span class="s">7985         format HAS22 best12. ;</span><br><span class="s">7986         format HAS23 best12. ;</span><br><span class="s">7987         format HAS24 best12. ;</span><br><span class="s">7988         format HAS25 best12. ;</span><br><span class="s">7989         format HAS26 best12. ;</span><br><span class="s">7990         format HAS27A best12. ;</span><br><span class="s">7991         format HAS27B best12. ;</span><br><span class="s">7992         format HAS27C best12. ;</span><br><span class="s">7993         format HAS27D best12. ;</span><br><span class="s">7994         format HAS27E best12. ;</span><br><span class="s">7995         format HAS27F best12. ;</span><br><span class="s">7996         format HAS27G best12. ;</span><br><span class="s">7997         format HAS27H best12. ;</span><br><span class="s">7998         format HAS27HCD best12. ;</span><br><span class="s">7999         format HAS28 best12. ;</span><br><span class="s">8000         format HAS29 best12. ;</span><br><span class="s">8001         format HAT1S best12. ;</span><br><span class="s">8002         format HAT1MET z3.2 ;</span><br><span class="s">8003         format HAT2 best12. ;</span><br><span class="s">8004         format HAT2MET best12. ;</span><br><span class="s">8005         format HAT3S best12. ;</span><br><span class="s">8006         format HAT4 best12. ;</span><br><span class="s">8007         format HAT4MET best12. ;</span><br><span class="s">8008         format HAT5S best12. ;</span><br><span class="s">8009         format HAT6 best12. ;</span><br><span class="s">8010         format HAT6MET best12. ;</span><br><span class="s">8011         format HAT7S best12. ;</span><br><span class="s">8012         format HAT8 best12. ;</span><br><span class="s">8013         format HAT8MET best12. ;</span><br><span class="s">8014         format HAT9S best12. ;</span><br><span class="s">8015         format HAT10 best12. ;</span><br><span class="s">8016         format HAT10MET z3.2 ;</span><br><span class="s">8017         format HAT11S best12. ;</span><br><span class="s">8018         format HAT12 best12. ;</span><br><span class="s">8019         format HAT12MET z3.2 ;</span><br><span class="s">8020         format HAT13S best12. ;</span><br><span class="s">8021         format HAT14 best12. ;</span><br><span class="s">8022         format HAT14MET best12. ;</span><br><span class="s">8023         format HAT15S best12. ;</span><br><span class="s">8024         format HAT16 best12. ;</span><br><span class="s">8025         format HAT16MET best12. ;</span><br><span class="s">8026         format HAT17S best12. ;</span><br><span class="s">8027         format HAT18 best12. ;</span><br><span class="s">8028         format HAT19CD best12. ;</span><br><span class="s">8029         format HAT19MET z4.2 ;</span><br><span class="s">8030         format HAT20S best12. ;</span><br><span class="s">8031         format HAT21CD best12. ;</span><br><span class="s">8032         format HAT21MET z4.2 ;</span><br><span class="s">8033         format HAT22S best12. ;</span><br><span class="s">8034         format HAT23CD best12. ;</span><br><span class="s">8035         format HAT23MET z4.2 ;</span><br><span class="s">8036         format HAT24S best12. ;</span><br><span class="s">8037         format HAT25CD best12. ;</span><br><span class="s">8038         format HAT25MET z3.2 ;</span><br><span class="s">8039         format HAT26S best12. ;</span><br><span class="s">8040         format HAT27 best12. ;</span><br><span class="s">8041         format HAT28 best12. ;</span><br><span class="s">8042         format HAT29 best12. ;</span><br><span class="s">8043         format HAT30 best12. ;</span><br><span class="s">8044         format HAV1S best12. ;</span><br><span class="s">8045         format HAV2S best12. ;</span><br><span class="s">8046         format HAV3S best12. ;</span><br><span class="s">8047         format HAV4S best12. ;</span><br><span class="s">8048         format HAV5 best12. ;</span><br><span class="s">8049         format HAV6S best12. ;</span><br><span class="s">8050         format HAV7R best12. ;</span><br><span class="s">8051         format HAV8 best12. ;</span><br><span class="s">8052         format HAV9 best12. ;</span><br><span class="s">8053         format HAV10R best12. ;</span><br><span class="s">8054         format HAV11 best12. ;</span><br><span class="s">8055         format HAV12R best12. ;</span><br><span class="s">8056         format HAV13R best12. ;</span><br><span class="s">8057         format HAY6 best12. ;</span><br><span class="s">8058         format HAY7 best12. ;</span><br><span class="s">8059         format HAY8 best12. ;</span><br><span class="s">8060         format HAY9 best12. ;</span><br><span class="s">8061         format HAY10 best12. ;</span><br><span class="s">8062         format HAY11A best12. ;</span><br><span class="s">8063         format HAY11B best12. ;</span><br><span class="s">8064         format HAY11C best12. ;</span><br><span class="s">8065         format HAY11D best12. ;</span><br><span class="s">8066         format HAY11E best12. ;</span><br><span class="s">8067         format HAY11F best12. ;</span><br><span class="s">8068         format HAY11G best12. ;</span><br><span class="s">8069         format HAY11H best12. ;</span><br><span class="s">8070         format HAY11I best12. ;</span><br><span class="s">8071         format HAY11J best12. ;</span><br><span class="s">8072         format HAZA1 best12. ;</span><br><span class="s">8073         format HAZA1A best12. ;</span><br><span class="s">8074         format HAZA1CC $30. ;</span><br><span class="s">8075         format HAZA2 best12. ;</span><br><span class="s">8076         format HAZA2A1 best12. ;</span><br><span class="s">8077         format HAZA2A2 best12. ;</span><br><span class="s">8078         format HAZA2A3 best12. ;</span><br><span class="s">8079         format HAZA2A4 best12. ;</span><br><span class="s">8080         format HAZA3 best12. ;</span><br><span class="s">8081         format HAZA4 best12. ;</span><br><span class="s">8082         format HAZA4A best12. ;</span><br><span class="s">8083         format HAZA5 best12. ;</span><br><span class="s">8084         format HAZA5R best12. ;</span><br><span class="s">8085         format HAZA6 best12. ;</span><br><span class="s">8086         format HAZA7A best12. ;</span><br><span class="s">8087         format HAZA7AA best12. ;</span><br><span class="s">8088         format HAZA7B best12. ;</span><br><span class="s">8089         format HAZA7BA best12. ;</span><br><span class="s">8090         format HAZA8AK1 best12. ;</span><br><span class="s">8091         format HAZA8AK5 best12. ;</span><br><span class="s">8092         format HAZA8A3 best12. ;</span><br><span class="s">8093         format HAZA8A4 best12. ;</span><br><span class="s">8094         format HAZA8BK1 best12. ;</span><br><span class="s">8095         format HAZA8BK5 best12. ;</span><br><span class="s">8096         format HAZA8B3 best12. ;</span><br><span class="s">8097         format HAZA8B4 best12. ;</span><br><span class="s">8098         format HAZA8CK1 best12. ;</span><br><span class="s">8099         format HAZA8CK5 best12. ;</span><br><span class="s">8100         format HAZA8C3 best12. ;</span><br><span class="s">8101         format HAZA8C4 best12. ;</span><br><span class="s">8102         format HAZA8DK1 best12. ;</span><br><span class="s">8103         format HAZA8DK5 best12. ;</span><br><span class="s">8104         format HAZA8D3 best12. ;</span><br><span class="s">8105         format HAZA8D4 best12. ;</span><br><span class="s">8106         format HAZA9 best12. ;</span><br><span class="s">8107         format HAZA10 best12. ;</span><br><span class="s">8108         format HAZA11A best12. ;</span><br><span class="s">8109         format HAZA11AR best12. ;</span><br><span class="s">8110         format HAZA11B best12. ;</span><br><span class="s">8111         format HAZA11BR best12. ;</span><br><span class="s">8112         format HAZA12 best12. ;</span><br><span class="s">8113         format HAZMNK1R best12. ;</span><br><span class="s">8114         format HAZNOK1R best12. ;</span><br><span class="s">8115         format HAZMNK5R best12. ;</span><br><span class="s">8116         format HAZNOK5R best12. ;</span><br><span class="s">8117         format HAX1A best12. ;</span><br><span class="s">8118         format HAX1B best12. ;</span><br><span class="s">8119         format HAX1C best12. ;</span><br><span class="s">8120         format HAX2A best12. ;</span><br><span class="s">8121         format HAX2B best12. ;</span><br><span class="s">8122         format HAX2C best12. ;</span><br><span class="s">8123         format HAX3CG best12. ;</span><br><span class="s">8124         format HAX3DG best12. ;</span><br><span class="s">8125         format HAX6SG best12. ;</span><br><span class="s">8126         format HAX8SG best12. ;</span><br><span class="s">8127         format HAX3CH best12. ;</span><br><span class="s">8128         format HAX3DH best12. ;</span><br><span class="s">8129         format HAX6SH best12. ;</span><br><span class="s">8130         format HAX8SH best12. ;</span><br><span class="s">8131         format HAX3CI best12. ;</span><br><span class="s">8132         format HAX3DI best12. ;</span><br><span class="s">8133         format HAX6SI best12. ;</span><br><span class="s">8134         format HAX8SI best12. ;</span><br><span class="s">8135         format HAX3CJ best12. ;</span><br><span class="s">8136         format HAX3DJ best12. ;</span><br><span class="s">8137         format HAX6SJ best12. ;</span><br><span class="s">8138         format HAX8SJ best12. ;</span><br><span class="s">8139         format HAX3CK best12. ;</span><br><span class="s">8140         format HAX3DK best12. ;</span><br><span class="s">8141         format HAX6SK best12. ;</span><br><span class="s">8142         format HAX8SK best12. ;</span><br><span class="s">8143         format HAX3CL best12. ;</span><br><span class="s">8144         format HAX3DL best12. ;</span><br><span class="s">8145         format HAX6SL best12. ;</span><br><span class="s">8146         format HAX8SL best12. ;</span><br><span class="s">8147         format HAX3CM best12. ;</span><br><span class="s">8148         format HAX3DM best12. ;</span><br><span class="s">8149         format HAX6SM best12. ;</span><br><span class="s">8150         format HAX8SM best12. ;</span><br><span class="s">8151         format HAX3CN best12. ;</span><br><span class="s">8152         format HAX3DN best12. ;</span><br><span class="s">8153         format HAX6SN best12. ;</span><br><span class="s">8154         format HAX8SN best12. ;</span><br><span class="s">8155         format HAX3CO best12. ;</span><br><span class="s">8156         format HAX3DO best12. ;</span><br><span class="s">8157         format HAX6SO best12. ;</span><br><span class="s">8158         format HAX8SO best12. ;</span><br><span class="s">8159         format HAX3CP best12. ;</span><br><span class="s">8160         format HAX3DP best12. ;</span><br><span class="s">8161         format HAX6SP best12. ;</span><br><span class="s">8162         format HAX8SP best12. ;</span><br><span class="s">8163         format HAX3CQ best12. ;</span><br><span class="s">8164         format HAX3DQ best12. ;</span><br><span class="s">8165         format HAX6SQ best12. ;</span><br><span class="s">8166         format HAX8SQ best12. ;</span><br><span class="s">8167         format HAX3CR best12. ;</span><br><span class="s">8168         format HAX3DR best12. ;</span><br><span class="s">8169         format HAX6SR best12. ;</span><br><span class="s">8170         format HAX8SR best12. ;</span><br><span class="s">8171         format HAX3CS best12. ;</span><br><span class="s">8172         format HAX3DS best12. ;</span><br><span class="s">8173         format HAX6SS best12. ;</span><br><span class="s">8174         format HAX8SS best12. ;</span><br><span class="s">8175         format HAX3CT best12. ;</span><br><span class="s">8176         format HAX3DT best12. ;</span><br><span class="s">8177         format HAX6ST best12. ;</span><br><span class="s">8178         format HAX8ST best12. ;</span><br><span class="s">8179         format HAX3CU best12. ;</span><br><span class="s">8180         format HAX3DU best12. ;</span><br><span class="s">8181         format HAX6SU best12. ;</span><br><span class="s">8182         format HAX8SU best12. ;</span><br><span class="s">8183         format HAX3CV best12. ;</span><br><span class="s">8184         format HAX3DV best12. ;</span><br><span class="s">8185         format HAX6SV best12. ;</span><br><span class="s">8186         format HAX8SV best12. ;</span><br><span class="s">8187         format HAX3CW best12. ;</span><br><span class="s">8188         format HAX3DW best12. ;</span><br><span class="s">8189         format HAX6SW best12. ;</span><br><span class="s">8190         format HAX8SW best12. ;</span><br><span class="s">8191         format HAX9DG best12. ;</span><br><span class="s">8192         format HAX9EG best12. ;</span><br><span class="s">8193         format HAX9FG best12. ;</span><br><span class="s">8194         format HAX11AG $6. ;</span><br><span class="s">8195         format HAX12SG best12. ;</span><br><span class="s">8196         format HAX9DH best12. ;</span><br><span class="s">8197         format HAX9EH best12. ;</span><br><span class="s">8198         format HAX9FH best12. ;</span><br><span class="s">8199         format HAX11AH $6. ;</span><br><span class="s">8200         format HAX12SH best12. ;</span><br><span class="s">8201         format HAX9DI best12. ;</span><br><span class="s">8202         format HAX9EI best12. ;</span><br><span class="s">8203         format HAX9FI best12. ;</span><br><span class="s">8204         format HAX11AI $6. ;</span><br><span class="s">8205         format HAX12SI best12. ;</span><br><span class="s">8206         format HAX9DJ best12. ;</span><br><span class="s">8207         format HAX9EJ best12. ;</span><br><span class="s">8208         format HAX9FJ best12. ;</span><br><span class="s">8209         format HAX11AJ $6. ;</span><br><span class="s">8210         format HAX12SJ best12. ;</span><br><span class="s">8211         format HAX9DK best12. ;</span><br><span class="s">8212         format HAX9EK best12. ;</span><br><span class="s">8213         format HAX9FK best12. ;</span><br><span class="s">8214         format HAX11AK $6. ;</span><br><span class="s">8215         format HAX12SK best12. ;</span><br><span class="s">8216         format HAX9DL best12. ;</span><br><span class="s">8217         format HAX9EL best12. ;</span><br><span class="s">8218         format HAX9FL best12. ;</span><br><span class="s">8219         format HAX11AL $6. ;</span><br><span class="s">8220         format HAX12SL best12. ;</span><br><span class="s">8221         format HAX9DM best12. ;</span><br><span class="s">8222         format HAX9EM best12. ;</span><br><span class="s">8223         format HAX9FM best12. ;</span><br><span class="s">8224         format HAX11AM $6. ;</span><br><span class="s">8225         format HAX12SM best12. ;</span><br><span class="s">8226         format HAX9DN best12. ;</span><br><span class="s">8227         format HAX9EN best12. ;</span><br><span class="s">8228         format HAX9FN best12. ;</span><br><span class="s">8229         format HAX11AN $6. ;</span><br><span class="s">8230         format HAX12SN best12. ;</span><br><span class="s">8231         format HAX9DO best12. ;</span><br><span class="s">8232         format HAX9EO best12. ;</span><br><span class="s">8233         format HAX9FO best12. ;</span><br><span class="s">8234         format HAX11AO $6. ;</span><br><span class="s">8235         format HAX12SO best12. ;</span><br><span class="s">8236         format HAX9DP best12. ;</span><br><span class="s">8237         format HAX9EP best12. ;</span><br><span class="s">8238         format HAX9FP best12. ;</span><br><span class="s">8239         format HAX11AP $6. ;</span><br><span class="s">8240         format HAX12SP best12. ;</span><br><span class="s">8241         format HAX9DQ best12. ;</span><br><span class="s">8242         format HAX9EQ best12. ;</span><br><span class="s">8243         format HAX9FQ best12. ;</span><br><span class="s">8244         format HAX11AQ $6. ;</span><br><span class="s">8245         format HAX12SQ best12. ;</span><br><span class="s">8246         format HAX9DR best12. ;</span><br><span class="s">8247         format HAX9ER best12. ;</span><br><span class="s">8248         format HAX9FR best12. ;</span><br><span class="s">8249         format HAX11AR $6. ;</span><br><span class="s">8250         format HAX12SR best12. ;</span><br><span class="s">8251         format HAX9DS best12. ;</span><br><span class="s">8252         format HAX9ES best12. ;</span><br><span class="s">8253         format HAX9FS best12. ;</span><br><span class="s">8254         format HAX11AS $6. ;</span><br><span class="s">8255         format HAX12SS best12. ;</span><br><span class="s">8256         format HAX9DT best12. ;</span><br><span class="s">8257         format HAX9ET best12. ;</span><br><span class="s">8258         format HAX9FT best12. ;</span><br><span class="s">8259         format HAX11AT $6. ;</span><br><span class="s">8260         format HAX12ST best12. ;</span><br><span class="s">8261         format HAX9DU best12. ;</span><br><span class="s">8262         format HAX9EU best12. ;</span><br><span class="s">8263         format HAX9FU best12. ;</span><br><span class="s">8264         format HAX11AU $6. ;</span><br><span class="s">8265         format HAX12SU best12. ;</span><br><span class="s">8266         format HAX9DV best12. ;</span><br><span class="s">8267         format HAX9EV best12. ;</span><br><span class="s">8268         format HAX9FV best12. ;</span><br><span class="s">8269         format HAX11AV $6. ;</span><br><span class="s">8270         format HAX12SV best12. ;</span><br><span class="s">8271         format HAX13AG best12. ;</span><br><span class="s">8272         format HAX15SG best12. ;</span><br><span class="s">8273         format HAX16AG best12. ;</span><br><span class="s">8274         format HAX16A1G best12. ;</span><br><span class="s">8275         format HAX17SG best12. ;</span><br><span class="s">8276         format HAX13AH best12. ;</span><br><span class="s">8277         format HAX15SH best12. ;</span><br><span class="s">8278         format HAX16AH best12. ;</span><br><span class="s">8279         format HAX16A1H best12. ;</span><br><span class="s">8280         format HAX17SH best12. ;</span><br><span class="s">8281         format HAX13AI best12. ;</span><br><span class="s">8282         format HAX15SI best12. ;</span><br><span class="s">8283         format HAX16AI best12. ;</span><br><span class="s">8284         format HAX16A1I best12. ;</span><br><span class="s">8285         format HAX17SI best12. ;</span><br><span class="s">8286         format HAX13AJ best12. ;</span><br><span class="s">8287         format HAX15SJ best12. ;</span><br><span class="s">8288         format HAX16AJ best12. ;</span><br><span class="s">8289         format HAX16A1J best12. ;</span><br><span class="s">8290         format HAX17SJ best12. ;</span><br><span class="s">8291         format HAX18A best12. ;</span><br><span class="s">8292         format HAX19AS best12. ;</span><br><span class="s">8293         format HAX18B best12. ;</span><br><span class="s">8294         format HAX19BS best12. ;</span><br><span class="s">8295         format HAX18C best12. ;</span><br><span class="s">8296         format HAX19CS best12. ;</span><br><span class="s">8297         format HAX18D best12. ;</span><br><span class="s">8298         format HAX18DB best12. ;</span><br><span class="s">8299         format HAX19DS best12. ;</span><br><span class="s">8300         format HAX18E best12. ;</span><br><span class="s">8301         format HAX18EB best12. ;</span><br><span class="s">8302         format HAX19ES best12. ;</span><br><span class="s">8303         format HAX18F best12. ;</span><br><span class="s">8304         format HAX18FB best12. ;</span><br><span class="s">8305         format HAX19FS best12. ;</span><br><span class="s">8306         format HAX18G best12. ;</span><br><span class="s">8307         format HAX18GB best12. ;</span><br><span class="s">8308         format HAX19GS best12. ;</span><br><span class="s">8309       do;</span><br><span class="s">8310         EFIOUT + 1;</span><br><span class="s">8311         put SEQN @;</span><br><span class="s">8312         put DMPFSEQ @;</span><br><span class="s">8313         put DMPSTAT @;</span><br><span class="s">8314         put DMARETHN @;</span><br><span class="s">8315         put DMARACER @;</span><br><span class="s">8316         put DMAETHNR @;</span><br><span class="s">8317         put HSSEX @;</span><br><span class="s">8318         put HSDOIMO @;</span><br><span class="s">8319         put HSAGEIR @;</span><br><span class="s">8320         put HSAGEU @;</span><br><span class="s">8321         put HSAITMOR @;</span><br><span class="s">8322         put HSFSIZER @;</span><br><span class="s">8323         put HSHSIZER @;</span><br><span class="s">8324         put DMPCNTYR @;</span><br><span class="s">8325         put DMPFIPSR @;</span><br><span class="s">8326         put DMPMETRO @;</span><br><span class="s">8327         put DMPCREGN @;</span><br><span class="s">8328         put DMPPIR @;</span><br><span class="s">8329         put SDPPHASE @;</span><br><span class="s">8330         put SDPPSU6 @;</span><br><span class="s">8331         put SDPSTRA6 @;</span><br><span class="s">8332         put SDPPSU1 @;</span><br><span class="s">8333         put SDPSTRA1 @;</span><br><span class="s">8334         put SDPPSU2 @;</span><br><span class="s">8335         put SDPSTRA2 @;</span><br><span class="s">8336         put WTPFQX6 @;</span><br><span class="s">8337         put WTPFEX6 @;</span><br><span class="s">8338         put WTPFHX6 @;</span><br><span class="s">8339         put WTPFALG6 @;</span><br><span class="s">8340         put WTPFCNS6 @;</span><br><span class="s">8341         put WTPFSD6 @;</span><br><span class="s">8342         put WTPFMD6 @;</span><br><span class="s">8343         put WTPFHSD6 @;</span><br><span class="s">8344         put WTPFHMD6 @;</span><br><span class="s">8345         put WTPFQX1 @;</span><br><span class="s">8346         put WTPFEX1 @;</span><br><span class="s">8347         put WTPFHX1 @;</span><br><span class="s">8348         put WTPFALG1 @;</span><br><span class="s">8349         put WTPFCNS1 @;</span><br><span class="s">8350         put WTPFSD1 @;</span><br><span class="s">8351         put WTPFMD1 @;</span><br><span class="s">8352         put WTPFHSD1 @;</span><br><span class="s">8353         put WTPFHMD1 @;</span><br><span class="s">8354         put WTPFQX2 @;</span><br><span class="s">8355         put WTPFEX2 @;</span><br><span class="s">8356         put WTPFHX2 @;</span><br><span class="s">8357         put WTPFALG2 @;</span><br><span class="s">8358         put WTPFCNS2 @;</span><br><span class="s">8359         put WTPFSD2 @;</span><br><span class="s">8360         put WTPFMD2 @;</span><br><span class="s">8361         put WTPFHSD2 @;</span><br><span class="s">8362         put WTPFHMD2 @;</span><br><span class="s">8363         put WTPQRP1 @;</span><br><span class="s">8364         put WTPQRP2 @;</span><br><span class="s">8365         put WTPQRP3 @;</span><br><span class="s">8366         put WTPQRP4 @;</span><br><span class="s">8367         put WTPQRP5 @;</span><br><span class="s">8368         put WTPQRP6 @;</span><br><span class="s">8369         put WTPQRP7 @;</span><br><span class="s">8370         put WTPQRP8 @;</span><br><span class="s">8371         put WTPQRP9 @;</span><br><span class="s">8372         put WTPQRP10 @;</span><br><span class="s">8373         put WTPQRP11 @;</span><br><span class="s">8374         put WTPQRP12 @;</span><br><span class="s">8375         put WTPQRP13 @;</span><br><span class="s">8376         put WTPQRP14 @;</span><br><span class="s">8377         put WTPQRP15 @;</span><br><span class="s">8378         put WTPQRP16 @;</span><br><span class="s">8379         put WTPQRP17 @;</span><br><span class="s">8380         put WTPQRP18 @;</span><br><span class="s">8381         put WTPQRP19 @;</span><br><span class="s">8382         put WTPQRP20 @;</span><br><span class="s">8383         put WTPQRP21 @;</span><br><span class="s">8384         put WTPQRP22 @;</span><br><span class="s">8385         put WTPQRP23 @;</span><br><span class="s">8386         put WTPQRP24 @;</span><br><span class="s">8387         put WTPQRP25 @;</span><br><span class="s">8388         put WTPQRP26 @;</span><br><span class="s">8389         put WTPQRP27 @;</span><br><span class="s">8390         put WTPQRP28 @;</span><br><span class="s">8391         put WTPQRP29 @;</span><br><span class="s">8392         put WTPQRP30 @;</span><br><span class="s">8393         put WTPQRP31 @;</span><br><span class="s">8394         put WTPQRP32 @;</span><br><span class="s">8395         put WTPQRP33 @;</span><br><span class="s">8396         put WTPQRP34 @;</span><br><span class="s">8397         put WTPQRP35 @;</span><br><span class="s">8398         put WTPQRP36 @;</span><br><span class="s">8399         put WTPQRP37 @;</span><br><span class="s">8400         put WTPQRP38 @;</span><br><span class="s">8401         put WTPQRP39 @;</span><br><span class="s">8402         put WTPQRP40 @;</span><br><span class="s">8403         put WTPQRP41 @;</span><br><span class="s">8404         put WTPQRP42 @;</span><br><span class="s">8405         put WTPQRP43 @;</span><br><span class="s">8406         put WTPQRP44 @;</span><br><span class="s">8407         put WTPQRP45 @;</span><br><span class="s">8408         put WTPQRP46 @;</span><br><span class="s">8409         put WTPQRP47 @;</span><br><span class="s">8410         put WTPQRP48 @;</span><br><span class="s">8411         put WTPQRP49 @;</span><br><span class="s">8412         put WTPQRP50 @;</span><br><span class="s">8413         put WTPQRP51 @;</span><br><span class="s">8414         put WTPQRP52 @;</span><br><span class="s">8415         put WTPXRP1 @;</span><br><span class="s">8416         put WTPXRP2 @;</span><br><span class="s">8417         put WTPXRP3 @;</span><br><span class="s">8418         put WTPXRP4 @;</span><br><span class="s">8419         put WTPXRP5 @;</span><br><span class="s">8420         put WTPXRP6 @;</span><br><span class="s">8421         put WTPXRP7 @;</span><br><span class="s">8422         put WTPXRP8 @;</span><br><span class="s">8423         put WTPXRP9 @;</span><br><span class="s">8424         put WTPXRP10 @;</span><br><span class="s">8425         put WTPXRP11 @;</span><br><span class="s">8426         put WTPXRP12 @;</span><br><span class="s">8427         put WTPXRP13 @;</span><br><span class="s">8428         put WTPXRP14 @;</span><br><span class="s">8429         put WTPXRP15 @;</span><br><span class="s">8430         put WTPXRP16 @;</span><br><span class="s">8431         put WTPXRP17 @;</span><br><span class="s">8432         put WTPXRP18 @;</span><br><span class="s">8433         put WTPXRP19 @;</span><br><span class="s">8434         put WTPXRP20 @;</span><br><span class="s">8435         put WTPXRP21 @;</span><br><span class="s">8436         put WTPXRP22 @;</span><br><span class="s">8437         put WTPXRP23 @;</span><br><span class="s">8438         put WTPXRP24 @;</span><br><span class="s">8439         put WTPXRP25 @;</span><br><span class="s">8440         put WTPXRP26 @;</span><br><span class="s">8441         put WTPXRP27 @;</span><br><span class="s">8442         put WTPXRP28 @;</span><br><span class="s">8443         put WTPXRP29 @;</span><br><span class="s">8444         put WTPXRP30 @;</span><br><span class="s">8445         put WTPXRP31 @;</span><br><span class="s">8446         put WTPXRP32 @;</span><br><span class="s">8447         put WTPXRP33 @;</span><br><span class="s">8448         put WTPXRP34 @;</span><br><span class="s">8449         put WTPXRP35 @;</span><br><span class="s">8450         put WTPXRP36 @;</span><br><span class="s">8451         put WTPXRP37 @;</span><br><span class="s">8452         put WTPXRP38 @;</span><br><span class="s">8453         put WTPXRP39 @;</span><br><span class="s">8454         put WTPXRP40 @;</span><br><span class="s">8455         put WTPXRP41 @;</span><br><span class="s">8456         put WTPXRP42 @;</span><br><span class="s">8457         put WTPXRP43 @;</span><br><span class="s">8458         put WTPXRP44 @;</span><br><span class="s">8459         put WTPXRP45 @;</span><br><span class="s">8460         put WTPXRP46 @;</span><br><span class="s">8461         put WTPXRP47 @;</span><br><span class="s">8462         put WTPXRP48 @;</span><br><span class="s">8463         put WTPXRP49 @;</span><br><span class="s">8464         put WTPXRP50 @;</span><br><span class="s">8465         put WTPXRP51 @;</span><br><span class="s">8466         put WTPXRP52 @;</span><br><span class="s">8467         put HYAITMO @;</span><br><span class="s">8468         put MXPLANG @;</span><br><span class="s">8469         put MXPSESSR @;</span><br><span class="s">8470         put MXPTIMO @;</span><br><span class="s">8471         put MXPTIDW @;</span><br><span class="s">8472         put MXPAXTMR @;</span><br><span class="s">8473         put HXPSESSR @;</span><br><span class="s">8474         put HXPTIMO @;</span><br><span class="s">8475         put HXPTIDW @;</span><br><span class="s">8476         put HXPAXTMR @;</span><br><span class="s">8477         put HFVERS @;</span><br><span class="s">8478         put HFINTVR @;</span><br><span class="s">8479         put HFLANG @;</span><br><span class="s">8480         put HFA6XCR @;</span><br><span class="s">8481         put HFA8R @;</span><br><span class="s">8482         put HFA12 @;</span><br><span class="s">8483         put HFA13 @;</span><br><span class="s">8484         put HFB1 @;</span><br><span class="s">8485         put HFB2 @;</span><br><span class="s">8486         put HFB3 @;</span><br><span class="s">8487         put HFB4 @;</span><br><span class="s">8488         put HFB5 @;</span><br><span class="s">8489         put HFB6 @;</span><br><span class="s">8490         put HFB7 @;</span><br><span class="s">8491         put HFB8 @;</span><br><span class="s">8492         put HFB9 @;</span><br><span class="s">8493         put HFB10 @;</span><br><span class="s">8494         put HFB11 @;</span><br><span class="s">8495         put HFB11A @;</span><br><span class="s">8496         put HFB11B @;</span><br><span class="s">8497         put HFB11C @;</span><br><span class="s">8498         put HFB11D @;</span><br><span class="s">8499         put HFB11E @;</span><br><span class="s">8500         put HFB12 @;</span><br><span class="s">8501         put HFB13 @;</span><br><span class="s">8502         put HFB14AB @;</span><br><span class="s">8503         put HFB14AC @;</span><br><span class="s">8504         put HFB14AD @;</span><br><span class="s">8505         put HFB14AE @;</span><br><span class="s">8506         put HFB14AF @;</span><br><span class="s">8507         put HFB14AG @;</span><br><span class="s">8508         put HFB14AI @;</span><br><span class="s">8509         put HFB14BA @;</span><br><span class="s">8510         put HFB14BB @;</span><br><span class="s">8511         put HFB14BC @;</span><br><span class="s">8512         put HFB14BD @;</span><br><span class="s">8513         put HFB14BE @;</span><br><span class="s">8514         put HFB14BF @;</span><br><span class="s">8515         put HFB14BG @;</span><br><span class="s">8516         put HFB14BH @;</span><br><span class="s">8517         put HFB16A @;</span><br><span class="s">8518         put HFB16B @;</span><br><span class="s">8519         put HFB17 @;</span><br><span class="s">8520         put HFC1 @;</span><br><span class="s">8521         put HFC2S @;</span><br><span class="s">8522         put HFC3S @;</span><br><span class="s">8523         put HFC4S @;</span><br><span class="s">8524         put HFC5S @;</span><br><span class="s">8525         put HFC6A @;</span><br><span class="s">8526         put HFC6A1 @;</span><br><span class="s">8527         put HFC6B @;</span><br><span class="s">8528         put HFC6B1 @;</span><br><span class="s">8529         put HFC6C @;</span><br><span class="s">8530         put HFC6C1 @;</span><br><span class="s">8531         put HFC6D @;</span><br><span class="s">8532         put HFC6D1 @;</span><br><span class="s">8533         put HFC6E @;</span><br><span class="s">8534         put HFC6E1 @;</span><br><span class="s">8535         put HFC7S @;</span><br><span class="s">8536         put HFC8S @;</span><br><span class="s">8537         put HFC9 @;</span><br><span class="s">8538         put HFC10 @;</span><br><span class="s">8539         put HFC11 @;</span><br><span class="s">8540         put HFD1 @;</span><br><span class="s">8541         put HFD2 @;</span><br><span class="s">8542         put HFD3 @;</span><br><span class="s">8543         put HFD4 @;</span><br><span class="s">8544         put HFD5 @;</span><br><span class="s">8545         put HFD9R @;</span><br><span class="s">8546         put HFD10R @;</span><br><span class="s">8547         put HFD12 @;</span><br><span class="s">8548         put HFE1 @;</span><br><span class="s">8549         put HFE2 @;</span><br><span class="s">8550         put HFE3 @;</span><br><span class="s">8551         put HFE4 @;</span><br><span class="s">8552         put HFE5 @;</span><br><span class="s">8553         put HFE6 @;</span><br><span class="s">8554         put HFE7 @;</span><br><span class="s">8555         put HFE8A @;</span><br><span class="s">8556         put HFE8B @;</span><br><span class="s">8557         put HFE8C @;</span><br><span class="s">8558         put HFE8D @;</span><br><span class="s">8559         put HFE8E @;</span><br><span class="s">8560         put HFE9 @;</span><br><span class="s">8561         put HFE10 @;</span><br><span class="s">8562         put HFE11 @;</span><br><span class="s">8563         put HFE12 @;</span><br><span class="s">8564         put HFE13 @;</span><br><span class="s">8565         put HFE14 @;</span><br><span class="s">8566         put HFE15 @;</span><br><span class="s">8567         put HFE16 @;</span><br><span class="s">8568         put HFE17 @;</span><br><span class="s">8569         put HFE18 @;</span><br><span class="s">8570         put HFF1 @;</span><br><span class="s">8571         put HFF2R @;</span><br><span class="s">8572         put HFF3A @;</span><br><span class="s">8573         put HFF3B @;</span><br><span class="s">8574         put HFF3C @;</span><br><span class="s">8575         put HFF3D @;</span><br><span class="s">8576         put HFF3E @;</span><br><span class="s">8577         put HFF3F @;</span><br><span class="s">8578         put HFF4 @;</span><br><span class="s">8579         put HFF5 @;</span><br><span class="s">8580         put HFF6A @;</span><br><span class="s">8581         put HFF6B @;</span><br><span class="s">8582         put HFF6C @;</span><br><span class="s">8583         put HFF6D @;</span><br><span class="s">8584         put HFF7 @;</span><br><span class="s">8585         put HFF8 @;</span><br><span class="s">8586         put HFF9 @;</span><br><span class="s">8587         put HFF10 @;</span><br><span class="s">8588         put HFF11 @;</span><br><span class="s">8589         put HFF12A @;</span><br><span class="s">8590         put HFF12B @;</span><br><span class="s">8591         put HFF13A @;</span><br><span class="s">8592         put HFF13B @;</span><br><span class="s">8593         put HFF13DA @;</span><br><span class="s">8594         put HFF13DB @;</span><br><span class="s">8595         put HFF13E @;</span><br><span class="s">8596         put HFF14A @;</span><br><span class="s">8597         put HFF14B @;</span><br><span class="s">8598         put HFF14D @;</span><br><span class="s">8599         put HFF15A @;</span><br><span class="s">8600         put HFF15B @;</span><br><span class="s">8601         put HFF16A @;</span><br><span class="s">8602         put HFF16B @;</span><br><span class="s">8603         put HFF16D @;</span><br><span class="s">8604         put HFF16E @;</span><br><span class="s">8605         put HFF17A @;</span><br><span class="s">8606         put HFF17B @;</span><br><span class="s">8607         put HFF18 @;</span><br><span class="s">8608         put HFF19R @;</span><br><span class="s">8609         put HFF20R @;</span><br><span class="s">8610         put HFHSEQN @;</span><br><span class="s">8611         put HFHAGER @;</span><br><span class="s">8612         put HFHSEX @;</span><br><span class="s">8613         put HFHFIPCR @;</span><br><span class="s">8614         put HFHEDUCR @;</span><br><span class="s">8615         put HFHEMPL @;</span><br><span class="s">8616         put HFHMRST @;</span><br><span class="s">8617         put HFHMLSV @;</span><br><span class="s">8618         put HFRELR @;</span><br><span class="s">8619         put HFAGERR @;</span><br><span class="s">8620         put HAVERS @;</span><br><span class="s">8621         put HAINTVR @;</span><br><span class="s">8622         put HALANG @;</span><br><span class="s">8623         put HAA1 @;</span><br><span class="s">8624         put HAA2 @;</span><br><span class="s">8625         put HAA2A @;</span><br><span class="s">8626         put HAA3 @;</span><br><span class="s">8627         put HAA4 @;</span><br><span class="s">8628         put HAA5 @;</span><br><span class="s">8629         put HAA6A @;</span><br><span class="s">8630         put HAA6B @;</span><br><span class="s">8631         put HAA6C @;</span><br><span class="s">8632         put HAA6D @;</span><br><span class="s">8633         put HAB1 @;</span><br><span class="s">8634         put HAB2 @;</span><br><span class="s">8635         put HAB3 @;</span><br><span class="s">8636         put HAB4 @;</span><br><span class="s">8637         put HAB5 @;</span><br><span class="s">8638         put HAB6S @;</span><br><span class="s">8639         put HAB7 @;</span><br><span class="s">8640         put HAC1A @;</span><br><span class="s">8641         put HAC1B @;</span><br><span class="s">8642         put HAC1C @;</span><br><span class="s">8643         put HAC1D @;</span><br><span class="s">8644         put HAC1E @;</span><br><span class="s">8645         put HAC1F @;</span><br><span class="s">8646         put HAC1G @;</span><br><span class="s">8647         put HAC1H @;</span><br><span class="s">8648         put HAC1I @;</span><br><span class="s">8649         put HAC1J @;</span><br><span class="s">8650         put HAC1K @;</span><br><span class="s">8651         put HAC1L @;</span><br><span class="s">8652         put HAC1M @;</span><br><span class="s">8653         put HAC1N @;</span><br><span class="s">8654         put HAC1O @;</span><br><span class="s">8655         put HAC2E @;</span><br><span class="s">8656         put HAC2F @;</span><br><span class="s">8657         put HAC2H @;</span><br><span class="s">8658         put HAC2J @;</span><br><span class="s">8659         put HAC2K @;</span><br><span class="s">8660         put HAC3AR @;</span><br><span class="s">8661         put HAC3CR @;</span><br><span class="s">8662         put HAC3DR @;</span><br><span class="s">8663         put HAC3ER @;</span><br><span class="s">8664         put HAC3FR @;</span><br><span class="s">8665         put HAC3GR @;</span><br><span class="s">8666         put HAC3HR @;</span><br><span class="s">8667         put HAC3IR @;</span><br><span class="s">8668         put HAC3JR @;</span><br><span class="s">8669         put HAC3KR @;</span><br><span class="s">8670         put HAC3LR @;</span><br><span class="s">8671         put HAC3MR @;</span><br><span class="s">8672         put HAC3NR @;</span><br><span class="s">8673         put HAC3OR @;</span><br><span class="s">8674         put HAC3OS @;</span><br><span class="s">8675         put HAC4A @;</span><br><span class="s">8676         put HAC4B @;</span><br><span class="s">8677         put HAC5A1 @;</span><br><span class="s">8678         put HAC5A2 @;</span><br><span class="s">8679         put HAC5A3 @;</span><br><span class="s">8680         put HAC5A4 @;</span><br><span class="s">8681         put HAC5A5 @;</span><br><span class="s">8682         put HAC5A6 @;</span><br><span class="s">8683         put HAC5A7 @;</span><br><span class="s">8684         put HAC5A8 @;</span><br><span class="s">8685         put HAC5A9 @;</span><br><span class="s">8686         put HAC5A10 @;</span><br><span class="s">8687         put HAC5A11 @;</span><br><span class="s">8688         put HAC5A12 @;</span><br><span class="s">8689         put HAC5B1 @;</span><br><span class="s">8690         put HAC5B2 @;</span><br><span class="s">8691         put HAC5B3 @;</span><br><span class="s">8692         put HAC5B4 @;</span><br><span class="s">8693         put HAC5B5 @;</span><br><span class="s">8694         put HAC5B6 @;</span><br><span class="s">8695         put HAC5B7 @;</span><br><span class="s">8696         put HAC5B8 @;</span><br><span class="s">8697         put HAC5B9 @;</span><br><span class="s">8698         put HAC5B10 @;</span><br><span class="s">8699         put HAC5B11 @;</span><br><span class="s">8700         put HAC5B12 @;</span><br><span class="s">8701         put HAC6 @;</span><br><span class="s">8702         put HAC7 @;</span><br><span class="s">8703         put HAC7A @;</span><br><span class="s">8704         put HAC8 @;</span><br><span class="s">8705         put HAD1 @;</span><br><span class="s">8706         put HAD2 @;</span><br><span class="s">8707         put HAD3 @;</span><br><span class="s">8708         put HAD4 @;</span><br><span class="s">8709         put HAD5R @;</span><br><span class="s">8710         put HAD6 @;</span><br><span class="s">8711         put HAD7S @;</span><br><span class="s">8712         put HAD8 @;</span><br><span class="s">8713         put HAD9S @;</span><br><span class="s">8714         put HAD10 @;</span><br><span class="s">8715         put HAD11AS @;</span><br><span class="s">8716         put HAD11BS @;</span><br><span class="s">8717         put HAD12S @;</span><br><span class="s">8718         put HAD13S @;</span><br><span class="s">8719         put HAD14 @;</span><br><span class="s">8720         put HAD15 @;</span><br><span class="s">8721         put HAE1 @;</span><br><span class="s">8722         put HAE2 @;</span><br><span class="s">8723         put HAE3 @;</span><br><span class="s">8724         put HAE4A @;</span><br><span class="s">8725         put HAE4B @;</span><br><span class="s">8726         put HAE4C @;</span><br><span class="s">8727         put HAE4D @;</span><br><span class="s">8728         put HAE4D1 @;</span><br><span class="s">8729         put HAE4D2 @;</span><br><span class="s">8730         put HAE4D3 @;</span><br><span class="s">8731         put HAE4D4 @;</span><br><span class="s">8732         put HAE4D5 @;</span><br><span class="s">8733         put HAE4D6 @;</span><br><span class="s">8734         put HAE5A @;</span><br><span class="s">8735         put HAE5B @;</span><br><span class="s">8736         put HAE5C @;</span><br><span class="s">8737         put HAE5D1 @;</span><br><span class="s">8738         put HAE5D2 @;</span><br><span class="s">8739         put HAE5D3 @;</span><br><span class="s">8740         put HAE5D4 @;</span><br><span class="s">8741         put HAE5D5 @;</span><br><span class="s">8742         put HAE5D6 @;</span><br><span class="s">8743         put HAE6 @;</span><br><span class="s">8744         put HAE7 @;</span><br><span class="s">8745         put HAE8A @;</span><br><span class="s">8746         put HAE8B @;</span><br><span class="s">8747         put HAE8C @;</span><br><span class="s">8748         put HAE8D @;</span><br><span class="s">8749         put HAE9A @;</span><br><span class="s">8750         put HAE9B @;</span><br><span class="s">8751         put HAE9C @;</span><br><span class="s">8752         put HAE9D @;</span><br><span class="s">8753         put HAE10 @;</span><br><span class="s">8754         put HAE11A @;</span><br><span class="s">8755         put HAE11B @;</span><br><span class="s">8756         put HAE11C @;</span><br><span class="s">8757         put HAF1 @;</span><br><span class="s">8758         put HAF2 @;</span><br><span class="s">8759         put HAF3 @;</span><br><span class="s">8760         put HAF4 @;</span><br><span class="s">8761         put HAF5 @;</span><br><span class="s">8762         put HAF6 @;</span><br><span class="s">8763         put HAF7A @;</span><br><span class="s">8764         put HAF7B @;</span><br><span class="s">8765         put HAF7C @;</span><br><span class="s">8766         put HAF7D @;</span><br><span class="s">8767         put HAF7E @;</span><br><span class="s">8768         put HAF7F @;</span><br><span class="s">8769         put HAF7G @;</span><br><span class="s">8770         put HAF7H @;</span><br><span class="s">8771         put HAF9 @;</span><br><span class="s">8772         put HAF10 @;</span><br><span class="s">8773         put HAF11 @;</span><br><span class="s">8774         put HAF12R @;</span><br><span class="s">8775         put HAF13R @;</span><br><span class="s">8776         put HAF14 @;</span><br><span class="s">8777         put HAF15 @;</span><br><span class="s">8778         put HAF16 @;</span><br><span class="s">8779         put HAF17 @;</span><br><span class="s">8780         put HAF18 @;</span><br><span class="s">8781         put HAF19 @;</span><br><span class="s">8782         put HAF20 @;</span><br><span class="s">8783         put HAF21 @;</span><br><span class="s">8784         put HAF22 @;</span><br><span class="s">8785         put HAF23 @;</span><br><span class="s">8786         put HAF24 @;</span><br><span class="s">8787         put HAF25 @;</span><br><span class="s">8788         put HAF26 @;</span><br><span class="s">8789         put HAF27 @;</span><br><span class="s">8790         put HAG1 @;</span><br><span class="s">8791         put HAG2 @;</span><br><span class="s">8792         put HAG3 @;</span><br><span class="s">8793         put HAG4A @;</span><br><span class="s">8794         put HAG4B @;</span><br><span class="s">8795         put HAG4C @;</span><br><span class="s">8796         put HAG5A @;</span><br><span class="s">8797         put HAG5B @;</span><br><span class="s">8798         put HAG5C @;</span><br><span class="s">8799         put HAG6A @;</span><br><span class="s">8800         put HAG6B @;</span><br><span class="s">8801         put HAG6C @;</span><br><span class="s">8802         put HAG7 @;</span><br><span class="s">8803         put HAG8A @;</span><br><span class="s">8804         put HAG8B @;</span><br><span class="s">8805         put HAG8C @;</span><br><span class="s">8806         put HAG8D @;</span><br><span class="s">8807         put HAG8E @;</span><br><span class="s">8808         put HAG8F @;</span><br><span class="s">8809         put HAG9AR @;</span><br><span class="s">8810         put HAG9BR @;</span><br><span class="s">8811         put HAG9CR @;</span><br><span class="s">8812         put HAG9DR @;</span><br><span class="s">8813         put HAG9ER @;</span><br><span class="s">8814         put HAG9FR @;</span><br><span class="s">8815         put HAG10A @;</span><br><span class="s">8816         put HAG10B @;</span><br><span class="s">8817         put HAG10C @;</span><br><span class="s">8818         put HAG10D @;</span><br><span class="s">8819         put HAG10E @;</span><br><span class="s">8820         put HAG10F @;</span><br><span class="s">8821         put HAG11 @;</span><br><span class="s">8822         put HAG12 @;</span><br><span class="s">8823         put HAG13 @;</span><br><span class="s">8824         put HAG14 @;</span><br><span class="s">8825         put HAG15 @;</span><br><span class="s">8826         put HAG16 @;</span><br><span class="s">8827         put HAG17A @;</span><br><span class="s">8828         put HAG17B @;</span><br><span class="s">8829         put HAG17C @;</span><br><span class="s">8830         put HAG17D @;</span><br><span class="s">8831         put HAG17E @;</span><br><span class="s">8832         put HAG17F @;</span><br><span class="s">8833         put HAG17G @;</span><br><span class="s">8834         put HAG17H @;</span><br><span class="s">8835         put HAG17I @;</span><br><span class="s">8836         put HAG17J @;</span><br><span class="s">8837         put HAG17K @;</span><br><span class="s">8838         put HAG17L @;</span><br><span class="s">8839         put HAG17M @;</span><br><span class="s">8840         put HAG17N @;</span><br><span class="s">8841         put HAG17O @;</span><br><span class="s">8842         put HAG17FF @;</span><br><span class="s">8843         put HAG17P @;</span><br><span class="s">8844         put HAG17Q @;</span><br><span class="s">8845         put HAG17R @;</span><br><span class="s">8846         put HAG17S @;</span><br><span class="s">8847         put HAG17T @;</span><br><span class="s">8848         put HAG17U @;</span><br><span class="s">8849         put HAG17V @;</span><br><span class="s">8850         put HAG17W @;</span><br><span class="s">8851         put HAG17X @;</span><br><span class="s">8852         put HAG17Y @;</span><br><span class="s">8853         put HAG17Z @;</span><br><span class="s">8854         put HAG17AA @;</span><br><span class="s">8855         put HAG17BB @;</span><br><span class="s">8856         put HAG17CC @;</span><br><span class="s">8857         put HAG17DD @;</span><br><span class="s">8858         put HAG17EE @;</span><br><span class="s">8859         put HAG18 @;</span><br><span class="s">8860         put HAG19A @;</span><br><span class="s">8861         put HAG19B @;</span><br><span class="s">8862         put HAG19C @;</span><br><span class="s">8863         put HAG19D @;</span><br><span class="s">8864         put HAG19E @;</span><br><span class="s">8865         put HAG19F @;</span><br><span class="s">8866         put HAG19G @;</span><br><span class="s">8867         put HAG19H @;</span><br><span class="s">8868         put HAG19I @;</span><br><span class="s">8869         put HAG19J @;</span><br><span class="s">8870         put HAG19K @;</span><br><span class="s">8871         put HAG19L @;</span><br><span class="s">8872         put HAG19M @;</span><br><span class="s">8873         put HAG19N @;</span><br><span class="s">8874         put HAG19O @;</span><br><span class="s">8875         put HAG19FF @;</span><br><span class="s">8876         put HAG19P @;</span><br><span class="s">8877         put HAG19Q @;</span><br><span class="s">8878         put HAG19R @;</span><br><span class="s">8879         put HAG19S @;</span><br><span class="s">8880         put HAG19T @;</span><br><span class="s">8881         put HAG19U @;</span><br><span class="s">8882         put HAG19V @;</span><br><span class="s">8883         put HAG19W @;</span><br><span class="s">8884         put HAG19X @;</span><br><span class="s">8885         put HAG19Y @;</span><br><span class="s">8886         put HAG19Z @;</span><br><span class="s">8887         put HAG19AA @;</span><br><span class="s">8888         put HAG19BB @;</span><br><span class="s">8889         put HAG19CC @;</span><br><span class="s">8890         put HAG19DD @;</span><br><span class="s">8891         put HAG19EE @;</span><br><span class="s">8892         put HAG20 @;</span><br><span class="s">8893         put HAG21 @;</span><br><span class="s">8894         put HAG22 @;</span><br><span class="s">8895         put HAG23 @;</span><br><span class="s">8896         put HAG24 @;</span><br><span class="s">8897         put HAG25 @;</span><br><span class="s">8898         put HAG26 @;</span><br><span class="s">8899         put HAG27 @;</span><br><span class="s">8900         put HAG28 @;</span><br><span class="s">8901         put HAG29 @;</span><br><span class="s">8902         put HAG30 @;</span><br><span class="s">8903         put HAG31 @;</span><br><span class="s">8904         put HAG32 @;</span><br><span class="s">8905         put HAG33 @;</span><br><span class="s">8906         put HAG34 @;</span><br><span class="s">8907         put HAH1 @;</span><br><span class="s">8908         put HAH2 @;</span><br><span class="s">8909         put HAH3 @;</span><br><span class="s">8910         put HAH4 @;</span><br><span class="s">8911         put HAH5 @;</span><br><span class="s">8912         put HAH6 @;</span><br><span class="s">8913         put HAH7 @;</span><br><span class="s">8914         put HAH8 @;</span><br><span class="s">8915         put HAH9 @;</span><br><span class="s">8916         put HAH10 @;</span><br><span class="s">8917         put HAH11 @;</span><br><span class="s">8918         put HAH12 @;</span><br><span class="s">8919         put HAH13 @;</span><br><span class="s">8920         put HAH14 @;</span><br><span class="s">8921         put HAH15 @;</span><br><span class="s">8922         put HAH16 @;</span><br><span class="s">8923         put HAH17 @;</span><br><span class="s">8924         put HAJ0 @;</span><br><span class="s">8925         put HAJ1 @;</span><br><span class="s">8926         put HAJ2A @;</span><br><span class="s">8927         put HAJ2B @;</span><br><span class="s">8928         put HAJ2C @;</span><br><span class="s">8929         put HAJ3S @;</span><br><span class="s">8930         put HAJ4 @;</span><br><span class="s">8931         put HAJ5 @;</span><br><span class="s">8932         put HAJ6 @;</span><br><span class="s">8933         put HAJ7 @;</span><br><span class="s">8934         put HAJ8 @;</span><br><span class="s">8935         put HAJ9 @;</span><br><span class="s">8936         put HAJ10 @;</span><br><span class="s">8937         put HAJ11 @;</span><br><span class="s">8938         put HAJ12 @;</span><br><span class="s">8939         put HAJ13 @;</span><br><span class="s">8940         put HAJ14 @;</span><br><span class="s">8941         put HAJ15 @;</span><br><span class="s">8942         put HAJ16 @;</span><br><span class="s">8943         put HAJ17 @;</span><br><span class="s">8944         put HAJ18R @;</span><br><span class="s">8945         put HAK1 @;</span><br><span class="s">8946         put HAK2 @;</span><br><span class="s">8947         put HAK3A @;</span><br><span class="s">8948         put HAK3A1 @;</span><br><span class="s">8949         put HAK3B @;</span><br><span class="s">8950         put HAK3B1R @;</span><br><span class="s">8951         put HAK3C @;</span><br><span class="s">8952         put HAK3C1R @;</span><br><span class="s">8953         put HAK4 @;</span><br><span class="s">8954         put HAK5 @;</span><br><span class="s">8955         put HAK6 @;</span><br><span class="s">8956         put HAK7 @;</span><br><span class="s">8957         put HAK8 @;</span><br><span class="s">8958         put HAK9 @;</span><br><span class="s">8959         put HAK10 @;</span><br><span class="s">8960         put HAK11 @;</span><br><span class="s">8961         put HAK12 @;</span><br><span class="s">8962         put HAK13 @;</span><br><span class="s">8963         put HAK14 @;</span><br><span class="s">8964         put HAL1 @;</span><br><span class="s">8965         put HAL2 @;</span><br><span class="s">8966         put HAL3 @;</span><br><span class="s">8967         put HAL4 @;</span><br><span class="s">8968         put HAL5 @;</span><br><span class="s">8969         put HAL6 @;</span><br><span class="s">8970         put HAL7 @;</span><br><span class="s">8971         put HAL8 @;</span><br><span class="s">8972         put HAL9 @;</span><br><span class="s">8973         put HAL10 @;</span><br><span class="s">8974         put HAL11A @;</span><br><span class="s">8975         put HAL11B @;</span><br><span class="s">8976         put HAL12 @;</span><br><span class="s">8977         put HAL13 @;</span><br><span class="s">8978         put HAL14A @;</span><br><span class="s">8979         put HAL14B @;</span><br><span class="s">8980         put HAL14C @;</span><br><span class="s">8981         put HAL14D @;</span><br><span class="s">8982         put HAL14E @;</span><br><span class="s">8983         put HAL15A @;</span><br><span class="s">8984         put HAL15B @;</span><br><span class="s">8985         put HAL15C @;</span><br><span class="s">8986         put HAL15D @;</span><br><span class="s">8987         put HAL15E @;</span><br><span class="s">8988         put HAL15F @;</span><br><span class="s">8989         put HAL15G @;</span><br><span class="s">8990         put HAL15H @;</span><br><span class="s">8991         put HAL15I @;</span><br><span class="s">8992         put HAL15J @;</span><br><span class="s">8993         put HAL15K @;</span><br><span class="s">8994         put HAL15L @;</span><br><span class="s">8995         put HAL15M @;</span><br><span class="s">8996         put HAL16A @;</span><br><span class="s">8997         put HAL16B @;</span><br><span class="s">8998         put HAL17 @;</span><br><span class="s">8999         put HAL18 @;</span><br><span class="s">9000         put HAL19A @;</span><br><span class="s">9001         put HAL19B @;</span><br><span class="s">9002         put HAL19C @;</span><br><span class="s">9003         put HAL20A @;</span><br><span class="s">9004         put HAL20B @;</span><br><span class="s">9005         put HAL20C @;</span><br><span class="s">9006         put HAM1 @;</span><br><span class="s">9007         put HAM2 @;</span><br><span class="s">9008         put HAM3 @;</span><br><span class="s">9009         put HAM4 @;</span><br><span class="s">9010         put HAM5S @;</span><br><span class="s">9011         put HAM6S @;</span><br><span class="s">9012         put HAM7 @;</span><br><span class="s">9013         put HAM8S @;</span><br><span class="s">9014         put HAM9S @;</span><br><span class="s">9015         put HAM10S @;</span><br><span class="s">9016         put HAM11 @;</span><br><span class="s">9017         put HAM12 @;</span><br><span class="s">9018         put HAM13 @;</span><br><span class="s">9019         put HAM14 @;</span><br><span class="s">9020         put HAM15A @;</span><br><span class="s">9021         put HAM15B @;</span><br><span class="s">9022         put HAM15C @;</span><br><span class="s">9023         put HAM15D @;</span><br><span class="s">9024         put HAM15E @;</span><br><span class="s">9025         put HAM15F @;</span><br><span class="s">9026         put HAM15G @;</span><br><span class="s">9027         put HAM15H @;</span><br><span class="s">9028         put HAM15K @;</span><br><span class="s">9029         put HAM15L @;</span><br><span class="s">9030         put HAM15M @;</span><br><span class="s">9031         put HAM15N @;</span><br><span class="s">9032         put HAM15O @;</span><br><span class="s">9033         put HAM15P @;</span><br><span class="s">9034         put HAM15Q @;</span><br><span class="s">9035         put HAM15R @;</span><br><span class="s">9036         put HAM15S @;</span><br><span class="s">9037         put HAM15T @;</span><br><span class="s">9038         put HAM15U @;</span><br><span class="s">9039         put HAM15V @;</span><br><span class="s">9040         put HAM15W @;</span><br><span class="s">9041         put HAM15X @;</span><br><span class="s">9042         put HAM15Y @;</span><br><span class="s">9043         put HAM15Z @;</span><br><span class="s">9044         put HAN1AS @;</span><br><span class="s">9045         put HAN1BS @;</span><br><span class="s">9046         put HAN1C @;</span><br><span class="s">9047         put HAN1D @;</span><br><span class="s">9048         put HAN1ES @;</span><br><span class="s">9049         put HAN1FS @;</span><br><span class="s">9050         put HAN1GS @;</span><br><span class="s">9051         put HAN1HS @;</span><br><span class="s">9052         put HAN1IS @;</span><br><span class="s">9053         put HAN2AS @;</span><br><span class="s">9054         put HAN2BS @;</span><br><span class="s">9055         put HAN2CS @;</span><br><span class="s">9056         put HAN2DS @;</span><br><span class="s">9057         put HAN2ES @;</span><br><span class="s">9058         put HAN2FS @;</span><br><span class="s">9059         put HAN2GS @;</span><br><span class="s">9060         put HAN2HS @;</span><br><span class="s">9061         put HAN2IS @;</span><br><span class="s">9062         put HAN2JS @;</span><br><span class="s">9063         put HAN3AS @;</span><br><span class="s">9064         put HAN3BS @;</span><br><span class="s">9065         put HAN3CS @;</span><br><span class="s">9066         put HAN3DS @;</span><br><span class="s">9067         put HAN3ES @;</span><br><span class="s">9068         put HAN3FS @;</span><br><span class="s">9069         put HAN4AS @;</span><br><span class="s">9070         put HAN4BS @;</span><br><span class="s">9071         put HAN4CS @;</span><br><span class="s">9072         put HAN4DS @;</span><br><span class="s">9073         put HAN4ES @;</span><br><span class="s">9074         put HAN4FS @;</span><br><span class="s">9075         put HAN4GS @;</span><br><span class="s">9076         put HAN4HS @;</span><br><span class="s">9077         put HAN4IS @;</span><br><span class="s">9078         put HAN4JS @;</span><br><span class="s">9079         put HAN4KS @;</span><br><span class="s">9080         put HAN4LS @;</span><br><span class="s">9081         put HAN5AS @;</span><br><span class="s">9082         put HAN5BS @;</span><br><span class="s">9083         put HAN5CS @;</span><br><span class="s">9084         put HAN5DS @;</span><br><span class="s">9085         put HAN5ES @;</span><br><span class="s">9086         put HAN5FS @;</span><br><span class="s">9087         put HAN5GS @;</span><br><span class="s">9088         put HAN5HS @;</span><br><span class="s">9089         put HAN5IS @;</span><br><span class="s">9090         put HAN5JS @;</span><br><span class="s">9091         put HAN5KS @;</span><br><span class="s">9092         put HAN5LS @;</span><br><span class="s">9093         put HAN6AS @;</span><br><span class="s">9094         put HAN6BS @;</span><br><span class="s">9095         put HAN6CS @;</span><br><span class="s">9096         put HAN6DS @;</span><br><span class="s">9097         put HAN6ES @;</span><br><span class="s">9098         put HAN6FS @;</span><br><span class="s">9099         put HAN6GS @;</span><br><span class="s">9100         put HAN6HS @;</span><br><span class="s">9101         put HAN6IS @;</span><br><span class="s">9102         put HAN6JS @;</span><br><span class="s">9103         put HAN7AS @;</span><br><span class="s">9104         put HAN7BS @;</span><br><span class="s">9105         put HAN7CS @;</span><br><span class="s">9106         put HAN8 @;</span><br><span class="s">9107         put HAN8ACD @;</span><br><span class="s">9108         put HAN8AS @;</span><br><span class="s">9109         put HAN8BCD @;</span><br><span class="s">9110         put HAN8BS @;</span><br><span class="s">9111         put HAN8CCD @;</span><br><span class="s">9112         put HAN8CS @;</span><br><span class="s">9113         put HAN8DCD @;</span><br><span class="s">9114         put HAN8DS @;</span><br><span class="s">9115         put HAN8ECD @;</span><br><span class="s">9116         put HAN8ES @;</span><br><span class="s">9117         put HAN8FCD @;</span><br><span class="s">9118         put HAN8FS @;</span><br><span class="s">9119         put HAN9 @;</span><br><span class="s">9120         put HAN10A @;</span><br><span class="s">9121         put HAN10B @;</span><br><span class="s">9122         put HAN10C @;</span><br><span class="s">9123         put HAN10D @;</span><br><span class="s">9124         put HAN10E @;</span><br><span class="s">9125         put HAP1 @;</span><br><span class="s">9126         put HAP1A @;</span><br><span class="s">9127         put HAP2 @;</span><br><span class="s">9128         put HAP3 @;</span><br><span class="s">9129         put HAP4 @;</span><br><span class="s">9130         put HAP5 @;</span><br><span class="s">9131         put HAP6 @;</span><br><span class="s">9132         put HAP7 @;</span><br><span class="s">9133         put HAP8 @;</span><br><span class="s">9134         put HAP9 @;</span><br><span class="s">9135         put HAP10 @;</span><br><span class="s">9136         put HAP10A @;</span><br><span class="s">9137         put HAP11 @;</span><br><span class="s">9138         put HAP12 @;</span><br><span class="s">9139         put HAP13 @;</span><br><span class="s">9140         put HAP14 @;</span><br><span class="s">9141         put HAP15 @;</span><br><span class="s">9142         put HAP16 @;</span><br><span class="s">9143         put HAP17A1 @;</span><br><span class="s">9144         put HAP17A2 @;</span><br><span class="s">9145         put HAP17A3 @;</span><br><span class="s">9146         put HAP17B @;</span><br><span class="s">9147         put HAP18A @;</span><br><span class="s">9148         put HAP18B @;</span><br><span class="s">9149         put HAP18C @;</span><br><span class="s">9150         put HAP18D @;</span><br><span class="s">9151         put HAP18E @;</span><br><span class="s">9152         put HAP19A @;</span><br><span class="s">9153         put HAP19B @;</span><br><span class="s">9154         put HAP19C @;</span><br><span class="s">9155         put HAQ1 @;</span><br><span class="s">9156         put HAQ2A @;</span><br><span class="s">9157         put HAQ2B @;</span><br><span class="s">9158         put HAQ2C @;</span><br><span class="s">9159         put HAQ2D @;</span><br><span class="s">9160         put HAQ2E @;</span><br><span class="s">9161         put HAQ2F @;</span><br><span class="s">9162         put HAQ2G @;</span><br><span class="s">9163         put HAQ2I @;</span><br><span class="s">9164         put HAQ2K @;</span><br><span class="s">9165         put HAQ2L @;</span><br><span class="s">9166         put HAQ3S @;</span><br><span class="s">9167         put HAQ4 @;</span><br><span class="s">9168         put HAQ5 @;</span><br><span class="s">9169         put HAQ6 @;</span><br><span class="s">9170         put HAQ7 @;</span><br><span class="s">9171         put HAQ8 @;</span><br><span class="s">9172         put HAQ9 @;</span><br><span class="s">9173         put HAR1 @;</span><br><span class="s">9174         put HAR2 @;</span><br><span class="s">9175         put HAR3 @;</span><br><span class="s">9176         put HAR4S @;</span><br><span class="s">9177         put HAR5 @;</span><br><span class="s">9178         put HAR6 @;</span><br><span class="s">9179         put HAR7S @;</span><br><span class="s">9180         put HAR8 @;</span><br><span class="s">9181         put HAR9 @;</span><br><span class="s">9182         put HAR10 @;</span><br><span class="s">9183         put HAR11R @;</span><br><span class="s">9184         put HAR12S @;</span><br><span class="s">9185         put HAR13 @;</span><br><span class="s">9186         put HAR14 @;</span><br><span class="s">9187         put HAR15 @;</span><br><span class="s">9188         put HAR16 @;</span><br><span class="s">9189         put HAR17 @;</span><br><span class="s">9190         put HAR18AS @;</span><br><span class="s">9191         put HAR18BS @;</span><br><span class="s">9192         put HAR19A @;</span><br><span class="s">9193         put HAR19B @;</span><br><span class="s">9194         put HAR20R @;</span><br><span class="s">9195         put HAR21 @;</span><br><span class="s">9196         put HAR22 @;</span><br><span class="s">9197         put HAR23 @;</span><br><span class="s">9198         put HAR24 @;</span><br><span class="s">9199         put HAR25 @;</span><br><span class="s">9200         put HAR26 @;</span><br><span class="s">9201         put HAR27 @;</span><br><span class="s">9202         put HAR28 @;</span><br><span class="s">9203         put HAS1 @;</span><br><span class="s">9204         put HAS2 @;</span><br><span class="s">9205         put HAS3 @;</span><br><span class="s">9206         put HAS4 @;</span><br><span class="s">9207         put HAS5 @;</span><br><span class="s">9208         put HAS8R @;</span><br><span class="s">9209         put HAS9R @;</span><br><span class="s">9210         put HAS11 @;</span><br><span class="s">9211         put HAS12S @;</span><br><span class="s">9212         put HAS13 @;</span><br><span class="s">9213         put HAS14 @;</span><br><span class="s">9214         put HAS15 @;</span><br><span class="s">9215         put HAS16A @;</span><br><span class="s">9216         put HAS16B @;</span><br><span class="s">9217         put HAS16C @;</span><br><span class="s">9218         put HAS16D @;</span><br><span class="s">9219         put HAS17 @;</span><br><span class="s">9220         put HAS17R @;</span><br><span class="s">9221         put HAS18 @;</span><br><span class="s">9222         put HAS19 @;</span><br><span class="s">9223         put HAS19R @;</span><br><span class="s">9224         put HAS21 @;</span><br><span class="s">9225         put HAS22 @;</span><br><span class="s">9226         put HAS23 @;</span><br><span class="s">9227         put HAS24 @;</span><br><span class="s">9228         put HAS25 @;</span><br><span class="s">9229         put HAS26 @;</span><br><span class="s">9230         put HAS27A @;</span><br><span class="s">9231         put HAS27B @;</span><br><span class="s">9232         put HAS27C @;</span><br><span class="s">9233         put HAS27D @;</span><br><span class="s">9234         put HAS27E @;</span><br><span class="s">9235         put HAS27F @;</span><br><span class="s">9236         put HAS27G @;</span><br><span class="s">9237         put HAS27H @;</span><br><span class="s">9238         put HAS27HCD @;</span><br><span class="s">9239         put HAS28 @;</span><br><span class="s">9240         put HAS29 @;</span><br><span class="s">9241         put HAT1S @;</span><br><span class="s">9242         put HAT1MET @;</span><br><span class="s">9243         put HAT2 @;</span><br><span class="s">9244         put HAT2MET @;</span><br><span class="s">9245         put HAT3S @;</span><br><span class="s">9246         put HAT4 @;</span><br><span class="s">9247         put HAT4MET @;</span><br><span class="s">9248         put HAT5S @;</span><br><span class="s">9249         put HAT6 @;</span><br><span class="s">9250         put HAT6MET @;</span><br><span class="s">9251         put HAT7S @;</span><br><span class="s">9252         put HAT8 @;</span><br><span class="s">9253         put HAT8MET @;</span><br><span class="s">9254         put HAT9S @;</span><br><span class="s">9255         put HAT10 @;</span><br><span class="s">9256         put HAT10MET @;</span><br><span class="s">9257         put HAT11S @;</span><br><span class="s">9258         put HAT12 @;</span><br><span class="s">9259         put HAT12MET @;</span><br><span class="s">9260         put HAT13S @;</span><br><span class="s">9261         put HAT14 @;</span><br><span class="s">9262         put HAT14MET @;</span><br><span class="s">9263         put HAT15S @;</span><br><span class="s">9264         put HAT16 @;</span><br><span class="s">9265         put HAT16MET @;</span><br><span class="s">9266         put HAT17S @;</span><br><span class="s">9267         put HAT18 @;</span><br><span class="s">9268         put HAT19CD @;</span><br><span class="s">9269         put HAT19MET @;</span><br><span class="s">9270         put HAT20S @;</span><br><span class="s">9271         put HAT21CD @;</span><br><span class="s">9272         put HAT21MET @;</span><br><span class="s">9273         put HAT22S @;</span><br><span class="s">9274         put HAT23CD @;</span><br><span class="s">9275         put HAT23MET @;</span><br><span class="s">9276         put HAT24S @;</span><br><span class="s">9277         put HAT25CD @;</span><br><span class="s">9278         put HAT25MET @;</span><br><span class="s">9279         put HAT26S @;</span><br><span class="s">9280         put HAT27 @;</span><br><span class="s">9281         put HAT28 @;</span><br><span class="s">9282         put HAT29 @;</span><br><span class="s">9283         put HAT30 @;</span><br><span class="s">9284         put HAV1S @;</span><br><span class="s">9285         put HAV2S @;</span><br><span class="s">9286         put HAV3S @;</span><br><span class="s">9287         put HAV4S @;</span><br><span class="s">9288         put HAV5 @;</span><br><span class="s">9289         put HAV6S @;</span><br><span class="s">9290         put HAV7R @;</span><br><span class="s">9291         put HAV8 @;</span><br><span class="s">9292         put HAV9 @;</span><br><span class="s">9293         put HAV10R @;</span><br><span class="s">9294         put HAV11 @;</span><br><span class="s">9295         put HAV12R @;</span><br><span class="s">9296         put HAV13R @;</span><br><span class="s">9297         put HAY6 @;</span><br><span class="s">9298         put HAY7 @;</span><br><span class="s">9299         put HAY8 @;</span><br><span class="s">9300         put HAY9 @;</span><br><span class="s">9301         put HAY10 @;</span><br><span class="s">9302         put HAY11A @;</span><br><span class="s">9303         put HAY11B @;</span><br><span class="s">9304         put HAY11C @;</span><br><span class="s">9305         put HAY11D @;</span><br><span class="s">9306         put HAY11E @;</span><br><span class="s">9307         put HAY11F @;</span><br><span class="s">9308         put HAY11G @;</span><br><span class="s">9309         put HAY11H @;</span><br><span class="s">9310         put HAY11I @;</span><br><span class="s">9311         put HAY11J @;</span><br><span class="s">9312         put HAZA1 @;</span><br><span class="s">9313         put HAZA1A @;</span><br><span class="s">9314         put HAZA1CC $ @;</span><br><span class="s">9315         put HAZA2 @;</span><br><span class="s">9316         put HAZA2A1 @;</span><br><span class="s">9317         put HAZA2A2 @;</span><br><span class="s">9318         put HAZA2A3 @;</span><br><span class="s">9319         put HAZA2A4 @;</span><br><span class="s">9320         put HAZA3 @;</span><br><span class="s">9321         put HAZA4 @;</span><br><span class="s">9322         put HAZA4A @;</span><br><span class="s">9323         put HAZA5 @;</span><br><span class="s">9324         put HAZA5R @;</span><br><span class="s">9325         put HAZA6 @;</span><br><span class="s">9326         put HAZA7A @;</span><br><span class="s">9327         put HAZA7AA @;</span><br><span class="s">9328         put HAZA7B @;</span><br><span class="s">9329         put HAZA7BA @;</span><br><span class="s">9330         put HAZA8AK1 @;</span><br><span class="s">9331         put HAZA8AK5 @;</span><br><span class="s">9332         put HAZA8A3 @;</span><br><span class="s">9333         put HAZA8A4 @;</span><br><span class="s">9334         put HAZA8BK1 @;</span><br><span class="s">9335         put HAZA8BK5 @;</span><br><span class="s">9336         put HAZA8B3 @;</span><br><span class="s">9337         put HAZA8B4 @;</span><br><span class="s">9338         put HAZA8CK1 @;</span><br><span class="s">9339         put HAZA8CK5 @;</span><br><span class="s">9340         put HAZA8C3 @;</span><br><span class="s">9341         put HAZA8C4 @;</span><br><span class="s">9342         put HAZA8DK1 @;</span><br><span class="s">9343         put HAZA8DK5 @;</span><br><span class="s">9344         put HAZA8D3 @;</span><br><span class="s">9345         put HAZA8D4 @;</span><br><span class="s">9346         put HAZA9 @;</span><br><span class="s">9347         put HAZA10 @;</span><br><span class="s">9348         put HAZA11A @;</span><br><span class="s">9349         put HAZA11AR @;</span><br><span class="s">9350         put HAZA11B @;</span><br><span class="s">9351         put HAZA11BR @;</span><br><span class="s">9352         put HAZA12 @;</span><br><span class="s">9353         put HAZMNK1R @;</span><br><span class="s">9354         put HAZNOK1R @;</span><br><span class="s">9355         put HAZMNK5R @;</span><br><span class="s">9356         put HAZNOK5R @;</span><br><span class="s">9357         put HAX1A @;</span><br><span class="s">9358         put HAX1B @;</span><br><span class="s">9359         put HAX1C @;</span><br><span class="s">9360         put HAX2A @;</span><br><span class="s">9361         put HAX2B @;</span><br><span class="s">9362         put HAX2C @;</span><br><span class="s">9363         put HAX3CG @;</span><br><span class="s">9364         put HAX3DG @;</span><br><span class="s">9365         put HAX6SG @;</span><br><span class="s">9366         put HAX8SG @;</span><br><span class="s">9367         put HAX3CH @;</span><br><span class="s">9368         put HAX3DH @;</span><br><span class="s">9369         put HAX6SH @;</span><br><span class="s">9370         put HAX8SH @;</span><br><span class="s">9371         put HAX3CI @;</span><br><span class="s">9372         put HAX3DI @;</span><br><span class="s">9373         put HAX6SI @;</span><br><span class="s">9374         put HAX8SI @;</span><br><span class="s">9375         put HAX3CJ @;</span><br><span class="s">9376         put HAX3DJ @;</span><br><span class="s">9377         put HAX6SJ @;</span><br><span class="s">9378         put HAX8SJ @;</span><br><span class="s">9379         put HAX3CK @;</span><br><span class="s">9380         put HAX3DK @;</span><br><span class="s">9381         put HAX6SK @;</span><br><span class="s">9382         put HAX8SK @;</span><br><span class="s">9383         put HAX3CL @;</span><br><span class="s">9384         put HAX3DL @;</span><br><span class="s">9385         put HAX6SL @;</span><br><span class="s">9386         put HAX8SL @;</span><br><span class="s">9387         put HAX3CM @;</span><br><span class="s">9388         put HAX3DM @;</span><br><span class="s">9389         put HAX6SM @;</span><br><span class="s">9390         put HAX8SM @;</span><br><span class="s">9391         put HAX3CN @;</span><br><span class="s">9392         put HAX3DN @;</span><br><span class="s">9393         put HAX6SN @;</span><br><span class="s">9394         put HAX8SN @;</span><br><span class="s">9395         put HAX3CO @;</span><br><span class="s">9396         put HAX3DO @;</span><br><span class="s">9397         put HAX6SO @;</span><br><span class="s">9398         put HAX8SO @;</span><br><span class="s">9399         put HAX3CP @;</span><br><span class="s">9400         put HAX3DP @;</span><br><span class="s">9401         put HAX6SP @;</span><br><span class="s">9402         put HAX8SP @;</span><br><span class="s">9403         put HAX3CQ @;</span><br><span class="s">9404         put HAX3DQ @;</span><br><span class="s">9405         put HAX6SQ @;</span><br><span class="s">9406         put HAX8SQ @;</span><br><span class="s">9407         put HAX3CR @;</span><br><span class="s">9408         put HAX3DR @;</span><br><span class="s">9409         put HAX6SR @;</span><br><span class="s">9410         put HAX8SR @;</span><br><span class="s">9411         put HAX3CS @;</span><br><span class="s">9412         put HAX3DS @;</span><br><span class="s">9413         put HAX6SS @;</span><br><span class="s">9414         put HAX8SS @;</span><br><span class="s">9415         put HAX3CT @;</span><br><span class="s">9416         put HAX3DT @;</span><br><span class="s">9417         put HAX6ST @;</span><br><span class="s">9418         put HAX8ST @;</span><br><span class="s">9419         put HAX3CU @;</span><br><span class="s">9420         put HAX3DU @;</span><br><span class="s">9421         put HAX6SU @;</span><br><span class="s">9422         put HAX8SU @;</span><br><span class="s">9423         put HAX3CV @;</span><br><span class="s">9424         put HAX3DV @;</span><br><span class="s">9425         put HAX6SV @;</span><br><span class="s">9426         put HAX8SV @;</span><br><span class="s">9427         put HAX3CW @;</span><br><span class="s">9428         put HAX3DW @;</span><br><span class="s">9429         put HAX6SW @;</span><br><span class="s">9430         put HAX8SW @;</span><br><span class="s">9431         put HAX9DG @;</span><br><span class="s">9432         put HAX9EG @;</span><br><span class="s">9433         put HAX9FG @;</span><br><span class="s">9434         put HAX11AG $ @;</span><br><span class="s">9435         put HAX12SG @;</span><br><span class="s">9436         put HAX9DH @;</span><br><span class="s">9437         put HAX9EH @;</span><br><span class="s">9438         put HAX9FH @;</span><br><span class="s">9439         put HAX11AH $ @;</span><br><span class="s">9440         put HAX12SH @;</span><br><span class="s">9441         put HAX9DI @;</span><br><span class="s">9442         put HAX9EI @;</span><br><span class="s">9443         put HAX9FI @;</span><br><span class="s">9444         put HAX11AI $ @;</span><br><span class="s">9445         put HAX12SI @;</span><br><span class="s">9446         put HAX9DJ @;</span><br><span class="s">9447         put HAX9EJ @;</span><br><span class="s">9448         put HAX9FJ @;</span><br><span class="s">9449         put HAX11AJ $ @;</span><br><span class="s">9450         put HAX12SJ @;</span><br><span class="s">9451         put HAX9DK @;</span><br><span class="s">9452         put HAX9EK @;</span><br><span class="s">9453         put HAX9FK @;</span><br><span class="s">9454         put HAX11AK $ @;</span><br><span class="s">9455         put HAX12SK @;</span><br><span class="s">9456         put HAX9DL @;</span><br><span class="s">9457         put HAX9EL @;</span><br><span class="s">9458         put HAX9FL @;</span><br><span class="s">9459         put HAX11AL $ @;</span><br><span class="s">9460         put HAX12SL @;</span><br><span class="s">9461         put HAX9DM @;</span><br><span class="s">9462         put HAX9EM @;</span><br><span class="s">9463         put HAX9FM @;</span><br><span class="s">9464         put HAX11AM $ @;</span><br><span class="s">9465         put HAX12SM @;</span><br><span class="s">9466         put HAX9DN @;</span><br><span class="s">9467         put HAX9EN @;</span><br><span class="s">9468         put HAX9FN @;</span><br><span class="s">9469         put HAX11AN $ @;</span><br><span class="s">9470         put HAX12SN @;</span><br><span class="s">9471         put HAX9DO @;</span><br><span class="s">9472         put HAX9EO @;</span><br><span class="s">9473         put HAX9FO @;</span><br><span class="s">9474         put HAX11AO $ @;</span><br><span class="s">9475         put HAX12SO @;</span><br><span class="s">9476         put HAX9DP @;</span><br><span class="s">9477         put HAX9EP @;</span><br><span class="s">9478         put HAX9FP @;</span><br><span class="s">9479         put HAX11AP $ @;</span><br><span class="s">9480         put HAX12SP @;</span><br><span class="s">9481         put HAX9DQ @;</span><br><span class="s">9482         put HAX9EQ @;</span><br><span class="s">9483         put HAX9FQ @;</span><br><span class="s">9484         put HAX11AQ $ @;</span><br><span class="s">9485         put HAX12SQ @;</span><br><span class="s">9486         put HAX9DR @;</span><br><span class="s">9487         put HAX9ER @;</span><br><span class="s">9488         put HAX9FR @;</span><br><span class="s">9489         put HAX11AR $ @;</span><br><span class="s">9490         put HAX12SR @;</span><br><span class="s">9491         put HAX9DS @;</span><br><span class="s">9492         put HAX9ES @;</span><br><span class="s">9493         put HAX9FS @;</span><br><span class="s">9494         put HAX11AS $ @;</span><br><span class="s">9495         put HAX12SS @;</span><br><span class="s">9496         put HAX9DT @;</span><br><span class="s">9497         put HAX9ET @;</span><br><span class="s">9498         put HAX9FT @;</span><br><span class="s">9499         put HAX11AT $ @;</span><br><span class="s">9500         put HAX12ST @;</span><br><span class="s">9501         put HAX9DU @;</span><br><span class="s">9502         put HAX9EU @;</span><br><span class="s">9503         put HAX9FU @;</span><br><span class="s">9504         put HAX11AU $ @;</span><br><span class="s">9505         put HAX12SU @;</span><br><span class="s">9506         put HAX9DV @;</span><br><span class="s">9507         put HAX9EV @;</span><br><span class="s">9508         put HAX9FV @;</span><br><span class="s">9509         put HAX11AV $ @;</span><br><span class="s">9510         put HAX12SV @;</span><br><span class="s">9511         put HAX13AG @;</span><br><span class="s">9512         put HAX15SG @;</span><br><span class="s">9513         put HAX16AG @;</span><br><span class="s">9514         put HAX16A1G @;</span><br><span class="s">9515         put HAX17SG @;</span><br><span class="s">9516         put HAX13AH @;</span><br><span class="s">9517         put HAX15SH @;</span><br><span class="s">9518         put HAX16AH @;</span><br><span class="s">9519         put HAX16A1H @;</span><br><span class="s">9520         put HAX17SH @;</span><br><span class="s">9521         put HAX13AI @;</span><br><span class="s">9522         put HAX15SI @;</span><br><span class="s">9523         put HAX16AI @;</span><br><span class="s">9524         put HAX16A1I @;</span><br><span class="s">9525         put HAX17SI @;</span><br><span class="s">9526         put HAX13AJ @;</span><br><span class="s">9527         put HAX15SJ @;</span><br><span class="s">9528         put HAX16AJ @;</span><br><span class="s">9529         put HAX16A1J @;</span><br><span class="s">9530         put HAX17SJ @;</span><br><span class="s">9531         put HAX18A @;</span><br><span class="s">9532         put HAX19AS @;</span><br><span class="s">9533         put HAX18B @;</span><br><span class="s">9534         put HAX19BS @;</span><br><span class="s">9535         put HAX18C @;</span><br><span class="s">9536         put HAX19CS @;</span><br><span class="s">9537         put HAX18D @;</span><br><span class="s">9538         put HAX18DB @;</span><br><span class="s">9539         put HAX19DS @;</span><br><span class="s">9540         put HAX18E @;</span><br><span class="s">9541         put HAX18EB @;</span><br><span class="s">9542         put HAX19ES @;</span><br><span class="s">9543         put HAX18F @;</span><br><span class="s">9544         put HAX18FB @;</span><br><span class="s">9545         put HAX19FS @;</span><br><span class="s">9546         put HAX18G @;</span><br><span class="s">9547         put HAX18GB @;</span><br><span class="s">9548         put HAX19GS ;</span><br><span class="s">9549         ;</span><br><span class="s">9550       end;</span><br><span class="s">9551      if _ERROR_ then call symputx(&#39;_EFIERR_&#39;,1);  /* set ERROR detection macro variable */</span><br><span class="s">9552      if EFIEOD then call symputx(&#39;_EFIREC_&#39;,EFIOUT);</span><br><span class="s">9553      run;</span><br><span class="cm">NOTE: The file &#39;adult-merge.csv&#39; is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/adult-merge.csv,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=27Mar2018:02:52:08</span><br><br><span class="cm">NOTE: 20051 records were written to the file &#39;adult-merge.csv&#39;.</span><br><span class="cm">      The minimum record length was 2695.</span><br><span class="cm">      The maximum record length was 8557.</span><br><span class="cm">NOTE: There were 20050 observations read from the data set WORK.ADULT2.</span><br><span class="cm">NOTE: At least one W.D format was too small for the number to be printed. The decimal may be shifted by the &quot;BEST&quot; format.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           12.53 seconds</span><br><span class="cm">      cpu time            11.76 seconds</span><br><span class="cm">      </span><br><span class="s">20050 records created in adult-merge.csv from ADULT2.</span><br><span class="s">  </span><br><span class="s">  </span><br><span class="cm">NOTE: &quot;adult-merge.csv&quot; file was successfully created.</span><br><span class="cm">NOTE: PROCEDURE EXPORT used (Total process time):</span><br><span class="cm">      real time           13.69 seconds</span><br><span class="cm">      cpu time            12.38 seconds</span><br><span class="cm">      </span><br><span class="s">9554  </span><br><span class="s">9555  </span><br><span class="s">9556  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">9557  </span><br></pre></div>
</body>
</html>



