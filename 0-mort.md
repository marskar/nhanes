

```sas

*********************************************************************
April, 2015  
 
 THIS IS AN EXAMPLE OF A PROGRAM THAT CAN BE USED TO READ THE
 PUBLIC-USE LINKED MORTALITY ASCII FILES FROM A STORED LOCATION 
 INTO TEMPORARY SAS WORK DATASET AND PRODUCE BASIC FREQUENCIES.
 
 NOTE: THE FORMAT DEFINITIONS GIVEN BELOW WILL RESULT IN
       PROCEDURE OUTPUT SHOWING VALUES THAT HAVE BEEN
       GROUPED AS THEY ARE SHOWN IN THE FILE LAYOUT
       DOCUMENTATION.

 NOTE: IN ORDER TO READ THE PUBLIC-USE LINKED MORTALITY ASCII FILE 
       INTO A PERMANENT SAS DATASET, PLEASE CONSULT SAS DOCUMENTATION
       AND MODIFY THE PROGRAM ACCORDINGLY.

 NOTE: AS SOME VARIABLES ARE SURVEY SPECIFIC, WE HAVE HIGHLIGHTED
       SECTIONS OF CODE WITH "!!!" TO IDENTIFY WHERE THE USER 
       SHOULD MODIFY THE PROGRAM BASED ON THE SURVEY. 
 
Public-use Linked Mortality-Follow-up through December 31, 2011

***********************************************************************

TO DOWNLOAD AND SAVE THE PUBLIC-USE LINKED MORTALITY FILES TO YOUR 
HARD DRIVE, FOLLOW THESE STEPS:

*STEP 1: DESIGNATE A FOLDER ON YOUR HARD DRIVE TO DOWNLOAD THE PUBLIC-USE LINKED 
		 MORTALITY FILE. IN THIS EXAMPLE, THE DATA WILL
         BE SAVED TO: 'C:\PUBLIC USE DATA'

*STEP 2: TO DOWLOAD THE PUBLIC-USE LINKED MORTALITY FILE, GO TO THE WEB SITE: 
	     ftp://ftp.cdc.gov/pub/Health_Statistics/NCHS/datalinkage/linked_mortality/.

		 RIGHT CLICK ON THE DESIRED SURVEY LINK AND SELECT "Save Target as...". A "Save as" 
		 SCREEN WILL APPEAR AND YOU WILL NEED TO SELECT AND INPUT A LOCATION WHERE TO SAVE 
	     THE DATA FILE ON YOUR HARD DRIVE.

		 IT IS ALSO IMPORTANT THAT THE BOX "Save Type as" reads ".dat Document".
		 THIS WILL ENSURE THAT THE DATA FILE IS SAVED TO YOUR HARD DRIVE IN THE 
	     CORRECT FORMAT. 

	  	 IN THIS EXAMPLE, WE SAVE THE DATA FILE IN THE FOLDER 'C:\PUBLIC USE DATA\' 
	     AND SAVE THE DATA FILE AS "SURVEYNAME_mort_public_use_2011.dat".


***********************************************************************;

* DEFINE VARIABLE VALUES FOR REPORTS;

PROC FORMAT;

  VALUE ELIGFMT
    1 = "Eligible"
    2 = "Under age 18"
    3 = "Ineligible" ;

  VALUE MORTFMT
    0 = "Assumed alive"
    1 = "Assumed deceased"
    . = "Ineligible or under age 18";

  VALUE MRSRCFMT
  	1 = "Yes";

 VALUE CAUSEFMT
  	0 = "No"
	1 = "Yes"
	. = "Ineligible, under age 18 or assumed alive";

  VALUE FLAGFMT
    0 = "No"
    1 = "Yes"  
    . = "Ineligible, under age 18, assumed alive or no cause data";

  VALUE $UCODFMT
		"001" = "Diseases of heart (I00-I09, I11, I13, I20-I51)"
		"002" = "Malignant neoplasms (C00-C97)"
		"003" = "Chronic lower respiratory diseases (J40-J47)"
		"004" = "Accidents (unintentional injuries) (V01-X59, Y85-Y86)"
		"005" = "Cerebrovascular diseases (I60-I69)"
		"006" = "Alzheimer's disease (G30)"
		"007" = "Diabetes mellitus (E10-E14)"
		"008" = "Influenza and pneumonia (J09-J18)"
		"009" = "Nephritis, nephrotic syndrome and nephrosis (N00-N07, N17-N19, N25-N27)"
		"010" = "All other causes (residual)" 
		"   " = "Ineligible, under age 18, assumed alive or no cause data" ;

RUN ;

*CREATE A TEMPORARY SAS WORK DATASET;

*This applies to all surveys but users need to select the appropriate public-use ID for the survey being used;

*Select PUBLICID for NHIS or LSOAII;
*Select SEQN for NHANES;

DATA NHANES;

INFILE "NHANES_III_MORT_2011_PUBLIC.dat"  LRECL = 61 PAD MISSOVER ;

* INPUT VARIABLES;
INPUT
	/*!!!THE PUBLIC-USE ID IS SURVEY SPECIFIC
         SELECT THE PUBLIC-USE ID THAT CORRESPONDS
         TO THE SURVEY BEING READ IN!!!*/

	SEQN			1-5 	/* SEQN IS THE PUBLIC-USE ID FOR NHANES */

	ELIGSTAT		15
	MORTSTAT		16
	CAUSEAVL		17
	UCOD_LEADING	$18-20
	DIABETES		21
	HYPERTEN		22
	

	PERMTH_INT		44-46	/*NHANES ONLY*/
	PERMTH_EXM		47-49	/*NHANES ONLY*/

	MORTSRCE_NDI	50
	MORTSRCE_CMS	51
	MORTSRCE_SSA	52
	MORTSRCE_DC		53
	MORTSRCE_DCL	54
     ;


* DEFINE VARIABLE LABELS;
LABEL
	/*!!!SELECT PUBLICID OR SEQN!!!*/
	
	ELIGSTAT		=	'Eligibility Status for Mortality Follow-up'
	MORTSTAT		=	'Final Mortality Status'
	CAUSEAVL		=	'Cause of Death Data Available'
	UCOD_LEADING	=	'Underlying Cause of Death Recode from UCOD_113 Leading Causes'
	DIABETES		=	'Diabetes flag from multiple cause of death'
	HYPERTEN		=	'Hypertension flag from multiple cause of death'

	/*!!!THE FOLLOWING LABELS ARE SURVEY SPECIFIC
         KEEP ONLY THOSE THAT CORRESPOND TO THE SURVEY BEING
         READ IN!!!*/


	/*NHANES ONLY*/
	SEQN			=	'NHANES Respondent Sequence Number'
	PERMTH_INT		=	'Person Months of Follow-up from Interview Date'
	PERMTH_EXM		=	'Person Months of Follow-up from MEC/Exam Date'

	MORTSRCE_NDI	=	'Mortality Source: NDI Match'
	MORTSRCE_CMS 	=	'Mortality Source: CMS Information'
	MORTSRCE_SSA 	=	'Mortality Source: SSA Information'
	MORTSRCE_DC 	=	'Mortality Source: Death Certificate Match'
	MORTSRCE_DCL 	=	'Mortality Source: Data Collection'
	;

   * ASSOCIATE VARIABLES WITH FORMAT VALUES;
FORMAT    
	ELIGSTAT 		ELIGFMT.          
	MORTSTAT 		MORTFMT.
	UCOD_LEADING	UCODFMT.
	MORTSRCE_NDI 	MRSRCFMT.
	MORTSRCE_CMS 	MRSRCFMT.
	MORTSRCE_SSA 	MRSRCFMT.
	MORTSRCE_DC 	MRSRCFMT.
	MORTSRCE_DCL 	MRSRCFMT.
	
	CAUSEAVL 		CAUSEFMT.
	DIABETES 		FLAGFMT.          
	HYPERTEN 		FLAGFMT. 
     	;
RUN;


OPTIONS PAGENO=1;

*RUN PROC CONTENTS;
PROC CONTENTS DATA=NHANES;
RUN;

*RUN FREQUENCIES;
PROC FREQ DATA=NHANES;
TABLES 
	ELIGSTAT
	MORTSTAT 
	UCOD_LEADING 
	CAUSEAVL
	DIABETES
	HYPERTEN 
	MORTSRCE_NDI
	MORTSRCE_CMS
	MORTSRCE_SSA
	MORTSRCE_DC
	MORTSRCE_DCL

/*!!!THE FOLLOWING VARIABLES ARE SURVEY SPECIFIC
         KEEP ONLY THOSE THAT CORRESPOND TO THE SURVEY BEING
         READ IN!!!*/

	PERMTH_INT	/*NHANES ONLY*/
	PERMTH_EXM	/*NHANES ONLY*/
	
	/ MISSING;
TITLE1 "NHANES PUBLIC-USE LINKED MORTALITY FILE";
TITLE2 "UNWEIGHTED FREQUENCIES";

* USER NOTE: TO SEE UNFORMATTED VALUES IN THE FREQUENCY PROCEDURE, 
  UNCOMMENT THE STATEMENT "FORMAT _ALL_" BELOW ;
* FORMAT _ALL_;
RUN;




```




<!DOCTYPE html>
<html lang="en" xml:lang="en" xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta charset="utf-8"/>
<meta content="SAS 9.4" name="generator"/>
<title>SAS Output</title>
<style>
/*<![CDATA[*/
.body.c > table, .body.c > pre, .body.c div > table,
.body.c div > pre, .body.c > table, .body.c > pre,
.body.j > table, .body.j > pre, .body.j div > table,
.body.j div > pre, .body.j > table, .body.j > pre,
.body.c p.note, .body.c p.warning, .body.c p.error, .body.c p.fatal,
.body.j p.note, .body.j p.warning, .body.j p.error, .body.j p.fatal,
.body.c > table.layoutcontainer, .body.j > table.layoutcontainer { margin-left: auto; margin-right: auto }
.layoutregion.l table, .layoutregion.l pre, .layoutregion.l p.note,
.layoutregion.l p.warning, .layoutregion.l p.error, .layoutregion.l p.fatal { margin-left: 0 }
.layoutregion.c table, .layoutregion.c pre, .layoutregion.c p.note,
.layoutregion.c p.warning, .layoutregion.c p.error, .layoutregion.c p.fatal { margin-left: auto; margin-right: auto }
.layoutregion.r table, .layoutregion.r pre, .layoutregion.r p.note,
.layoutregion.r table, .layoutregion.r pre, .layoutregion.r p.note,
.layoutregion.r p.warning, .layoutregion.r p.error, .layoutregion.r p.fatal { margin-right: 0 }
article, aside, details, figcaption, figure, footer, header, hgroup, nav, section { display: block }
html{ font-size: 100% }
.body { margin: 1em; font-size: 13px; line-height: 1.231 }
sup { position: relative; vertical-align: baseline; bottom: 0.25em; font-size: 0.8em }
sub { position: relative; vertical-align: baseline; top: 0.25em; font-size: 0.8em }
ul, ol { margin: 1em 0; padding: 0 0 0 40px }
dd { margin: 0 0 0 40px }
nav ul, nav ol { list-style: none; list-style-image: none; margin: 0; padding: 0 }
img { border: 0; vertical-align: middle }
svg:not(:root) { overflow: hidden }
figure { margin: 0 }
table { border-collapse: collapse; border-spacing: 0 }
.layoutcontainer { border-collapse: separate; border-spacing: 0 }
p { margin-top: 0; text-align: left }
h1.heading1 { text-align: left }
h2.heading2 { text-align: left }
h3.heading3 { text-align: left }
h4.heading4 { text-align: left }
h5.heading5 { text-align: left }
h6.heading6 { text-align: left }
span { text-align: left }
table { margin-bottom: 1em }
td, th { text-align: left; padding: 3px 6px; vertical-align: top }
td[class$="fixed"], th[class$="fixed"] { white-space: pre }
section, article { padding-top: 1px; padding-bottom: 8px }
hr.pagebreak { height: 0px; border: 0; border-bottom: 1px solid #c0c0c0; margin: 1em 0 }
.stacked-value { text-align: left; display: block }
.stacked-cell > .stacked-value, td.data > td.data, th.data > td.data, th.data > th.data, td.data > th.data, th.header > th.header { border: 0 }
.stacked-cell > div.data { border-width: 0 }
.systitleandfootercontainer { white-space: nowrap; margin-bottom: 1em }
.systitleandfootercontainer > p { margin: 0 }
.systitleandfootercontainer > p > span { display: inline-block; width: 100%; white-space: normal }
.batch { display: table }
.toc { display: none }
.proc_note_group, .proc_title_group { margin-bottom: 1em }
p.proctitle { margin: 0 }
p.note, p.warning, p.error, p.fatal { display: table }
.notebanner, .warnbanner, .errorbanner, .fatalbanner,
.notecontent, .warncontent, .errorcontent, .fatalcontent { display: table-cell; padding: 0.5em }
.notebanner, .warnbanner, .errorbanner, .fatalbanner { padding-right: 0 }
.body > div > ol li { text-align: left }
.c { text-align: center }
.r { text-align: right }
.l { text-align: left }
.j { text-align: justify }
.d { text-align: right }
.b { vertical-align: bottom }
.m { vertical-align: middle }
.t { vertical-align: top }
a:active { color: #800080 }
.aftercaption {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
    padding-top: 4pt;
}
.batch > colgroup {
    border-left: 1px solid #c1c1c1;
    border-right: 1px solid #c1c1c1;
}
.batch > tbody, .batch > thead, .batch > tfoot {
    border-top: 1px solid #c1c1c1;
    border-bottom: 1px solid #c1c1c1;
}
.batch { border: hidden; }
.batch {
    background-color: #fafbfe;
    border: 1px solid #c1c1c1;
    border-collapse: separate;
    border-spacing: 1px;
    color: #000000;
    font-family: 'SAS Monospace', 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    padding: 7px;
    }
.beforecaption {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.body {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    margin-left: 8px;
    margin-right: 8px;
}
.bodydate {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    text-align: right;
    vertical-align: top;
    width: 100%;
}
.bycontentfolder {
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: none;
    margin-left: 6pt;
}
.byline {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.bylinecontainer > col, .bylinecontainer > colgroup > col, .bylinecontainer > colgroup, .bylinecontainer > tr, .bylinecontainer > * > tr, .bylinecontainer > thead, .bylinecontainer > tbody, .bylinecontainer > tfoot { border: none; }
.bylinecontainer {
    background-color: #fafbfe;
    border: none;
    border-spacing: 1px;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.caption {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.cell, .container {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.contentfolder, .contentitem {
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: none;
    margin-left: 6pt;
}
.contentproclabel, .contentprocname {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.contents {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: decimal;
    margin-left: 8px;
    margin-right: 8px;
}
.contentsdate {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.contenttitle {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: bold;
}
.continued {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
    width: 100%;
}
.data, .dataemphasis {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.dataemphasisfixed {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.dataempty {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.datafixed {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.datastrong {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.datastrongfixed {
    background-color: #ffffff;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.date {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.document {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.errorbanner {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.errorcontent {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.errorcontentfixed {
    background-color: #fafbfe;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.extendedpage {
    background-color: #fafbfe;
    border-style: solid;
    border-width: 1pt;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
    text-align: center;
}
.fatalbanner {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.fatalcontent {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.fatalcontentfixed {
    background-color: #fafbfe;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.folderaction {
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: none;
    margin-left: 6pt;
}
.footer {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.footeremphasis {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.footeremphasisfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.footerempty {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.footerfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.footerstrong {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.footerstrongfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.frame {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.graph > colgroup {
    border-left: 1px solid #c1c1c1;
    border-right: 1px solid #c1c1c1;
}
.graph > tbody, .graph > thead, .graph > tfoot {
    border-top: 1px solid #c1c1c1;
    border-bottom: 1px solid #c1c1c1;
}
.graph { border: hidden; }
.graph {
    background-color: #fafbfe;
    border: 1px solid #c1c1c1;
    border-collapse: separate;
    border-spacing: 1px;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    }
.header {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.headeremphasis {
    background-color: #d8dbd3;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.headeremphasisfixed {
    background-color: #d8dbd3;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.headerempty {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.headerfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.headersandfooters {
    background-color: #edf2f9;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.headerstrong {
    background-color: #d8dbd3;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.headerstrongfixed {
    background-color: #d8dbd3;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #000000;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.heading1, .heading2, .heading3, .heading4, .heading5, .heading6 { font-family: Arial, Helvetica, sans-serif }
.index {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.indexaction, .indexitem {
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: none;
    margin-left: 6pt;
}
.indexprocname {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.indextitle {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: bold;
}
.layoutcontainer, .layoutregion {
    border-width: 0;
    border-spacing: 30px;
}
.linecontent {
    background-color: #fafbfe;
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
a:link { color: #0000ff }
.list {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: disc;
}
.list10 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: square;
}
.list2 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: circle;
}
.list3, .list4, .list5, .list6, .list7, .list8, .list9 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: square;
}
.listitem {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: disc;
}
.listitem10 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: square;
}
.listitem2 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: circle;
}
.listitem3, .listitem4, .listitem5, .listitem6, .listitem7, .listitem8, .listitem9 {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: square;
}
.note {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.notebanner {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.notecontent {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.notecontentfixed {
    background-color: #fafbfe;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.output > colgroup {
    border-left: 1px solid #c1c1c1;
    border-right: 1px solid #c1c1c1;
}
.output > tbody, .output > thead, .output > tfoot {
    border-top: 1px solid #c1c1c1;
    border-bottom: 1px solid #c1c1c1;
}
.output { border: hidden; }
.output {
    background-color: #fafbfe;
    border: 1px solid #c1c1c1;
    border-collapse: separate;
    border-spacing: 1px;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    }
.pageno {
    background-color: #fafbfe;
    border-spacing: 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
    text-align: right;
    vertical-align: top;
}
.pages {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: decimal;
    margin-left: 8px;
    margin-right: 8px;
}
.pagesdate {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.pagesitem {
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    list-style-type: none;
    margin-left: 6pt;
}
.pagesproclabel, .pagesprocname {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.pagestitle {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: bold;
}
.paragraph {
    background-color: #fafbfe;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.parskip > col, .parskip > colgroup > col, .parskip > colgroup, .parskip > tr, .parskip > * > tr, .parskip > thead, .parskip > tbody, .parskip > tfoot { border: none; }
.parskip {
    border: none;
    border-spacing: 0;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
    }
.prepage {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    text-align: left;
}
.proctitle {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.proctitlefixed {
    background-color: #fafbfe;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowfooter {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowfooteremphasis {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.rowfooteremphasisfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.rowfooterempty {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowfooterfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.rowfooterstrong {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowfooterstrongfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowheader {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowheaderemphasis {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.rowheaderemphasisfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: italic;
    font-weight: normal;
}
.rowheaderempty {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowheaderfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.rowheaderstrong {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.rowheaderstrongfixed {
    background-color: #edf2f9;
    border-color: #b0b7bb;
    border-style: solid;
    border-width: 0 1px 1px 0;
    color: #112277;
    font-family: 'Courier New', Courier, monospace;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.systemfooter, .systemfooter10, .systemfooter2, .systemfooter3, .systemfooter4, .systemfooter5, .systemfooter6, .systemfooter7, .systemfooter8, .systemfooter9 {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.systemtitle, .systemtitle10, .systemtitle2, .systemtitle3, .systemtitle4, .systemtitle5, .systemtitle6, .systemtitle7, .systemtitle8, .systemtitle9 {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size: small;
    font-style: normal;
    font-weight: bold;
}
.systitleandfootercontainer > col, .systitleandfootercontainer > colgroup > col, .systitleandfootercontainer > colgroup, .systitleandfootercontainer > tr, .systitleandfootercontainer > * > tr, .systitleandfootercontainer > thead, .systitleandfootercontainer > tbody, .systitleandfootercontainer > tfoot { border: none; }
.systitleandfootercontainer {
    background-color: #fafbfe;
    border: none;
    border-spacing: 1px;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.table > col, .table > colgroup > col {
    border-left: 1px solid #c1c1c1;
    border-right: 0 solid #c1c1c1;
}
.table > tr, .table > * > tr {
    border-top: 1px solid #c1c1c1;
    border-bottom: 0 solid #c1c1c1;
}
.table { border: hidden; }
.table {
    border-color: #c1c1c1;
    border-style: solid;
    border-width: 1px 0 0 1px;
    border-collapse: collapse;
    border-spacing: 0;
    }
.titleandnotecontainer > col, .titleandnotecontainer > colgroup > col, .titleandnotecontainer > colgroup, .titleandnotecontainer > tr, .titleandnotecontainer > * > tr, .titleandnotecontainer > thead, .titleandnotecontainer > tbody, .titleandnotecontainer > tfoot { border: none; }
.titleandnotecontainer {
    background-color: #fafbfe;
    border: none;
    border-spacing: 1px;
    color: #000000;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
    width: 100%;
}
.titlesandfooters {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.usertext {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
a:visited { color: #800080 }
.warnbanner {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: bold;
}
.warncontent {
    background-color: #fafbfe;
    color: #112277;
    font-family: Arial, 'Albany AMT', Helvetica, Helv;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
.warncontentfixed {
    background-color: #fafbfe;
    color: #112277;
    font-family: 'Courier New', Courier;
    font-size:  normal;
    font-style: normal;
    font-weight: normal;
}
/*]]>*/
</style>
</head>
<body class="l body">
<div style="padding-bottom: 8px; padding-top: 1px">
<div id="IDX" class="systitleandfootercontainer" style="border-spacing: 1px">
<p><span class="c systemtitle">NHANES PUBLIC-USE LINKED MORTALITY FILE</span> </p>
<p><span class="c systemtitle2">UNWEIGHTED FREQUENCIES</span> </p>
</div>
<div class="proc_title_group">
<p class="c proctitle">The CONTENTS Procedure</p>
</div>
<div style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="Attributes">
<caption aria-label="Attributes"></caption>
<colgroup><col/><col/><col/><col/></colgroup>
<tbody>
<tr>
<th class="rowheader" scope="row">Data Set Name</th>
<td class="data">WORK.NHANES</td>
<th class="rowheader" scope="row">Observations</th>
<td class="data">33994</td>
</tr>
<tr>
<th class="rowheader" scope="row">Member Type</th>
<td class="data">DATA</td>
<th class="rowheader" scope="row">Variables</th>
<td class="data">14</td>
</tr>
<tr>
<th class="rowheader" scope="row">Engine</th>
<td class="data">V9</td>
<th class="rowheader" scope="row">Indexes</th>
<td class="data">0</td>
</tr>
<tr>
<th class="rowheader" scope="row">Created</th>
<td class="data">03/30/2018 22:12:01</td>
<th class="rowheader" scope="row">Observation Length</th>
<td class="data">112</td>
</tr>
<tr>
<th class="rowheader" scope="row">Last Modified</th>
<td class="data">03/30/2018 22:12:01</td>
<th class="rowheader" scope="row">Deleted Observations</th>
<td class="data">0</td>
</tr>
<tr>
<th class="rowheader" scope="row">Protection</th>
<td class="data">&#160;</td>
<th class="rowheader" scope="row">Compressed</th>
<td class="data">NO</td>
</tr>
<tr>
<th class="rowheader" scope="row">Data Set Type</th>
<td class="data">&#160;</td>
<th class="rowheader" scope="row">Sorted</th>
<td class="data">NO</td>
</tr>
<tr>
<th class="rowheader" scope="row">Label</th>
<td class="data">&#160;</td>
<th class="rowheader" scope="row">&#160;</th>
<td class="data">&#160;</td>
</tr>
<tr>
<th class="rowheader" scope="row">Data Representation</th>
<td class="data">SOLARIS_X86_64, LINUX_X86_64, ALPHA_TRU64, LINUX_IA64</td>
<th class="rowheader" scope="row">&#160;</th>
<td class="data">&#160;</td>
</tr>
<tr>
<th class="rowheader" scope="row">Encoding</th>
<td class="data">utf-8  Unicode (UTF-8)</td>
<th class="rowheader" scope="row">&#160;</th>
<td class="data">&#160;</td>
</tr>
</tbody>
</table>
</div>
<div id="IDX1" style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="Engine/Host Information">
<caption aria-label="Engine/Host Information"></caption>
<colgroup><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="2" scope="colgroup">Engine/Host Dependent Information</th>
</tr>
</thead>
<tbody>
<tr>
<th class="rowheader" scope="row">Data Set Page Size</th>
<td class="data">65536</td>
</tr>
<tr>
<th class="rowheader" scope="row">Number of Data Set Pages</th>
<td class="data">59</td>
</tr>
<tr>
<th class="rowheader" scope="row">First Data Page</th>
<td class="data">1</td>
</tr>
<tr>
<th class="rowheader" scope="row">Max Obs per Page</th>
<td class="data">584</td>
</tr>
<tr>
<th class="rowheader" scope="row">Obs in First Data Page</th>
<td class="data">546</td>
</tr>
<tr>
<th class="rowheader" scope="row">Number of Data Set Repairs</th>
<td class="data">0</td>
</tr>
<tr>
<th class="rowheader" scope="row">Filename</th>
<td class="data">/tmp/SAS_workE58F000009AA_localhost.localdomain/nhanes.sas7bdat</td>
</tr>
<tr>
<th class="rowheader" scope="row">Release Created</th>
<td class="data">9.0401M5</td>
</tr>
<tr>
<th class="rowheader" scope="row">Host Created</th>
<td class="data">Linux</td>
</tr>
<tr>
<th class="rowheader" scope="row">Inode Number</th>
<td class="data">670887</td>
</tr>
<tr>
<th class="rowheader" scope="row">Access Permission</th>
<td class="data">rw-r--r--</td>
</tr>
<tr>
<th class="rowheader" scope="row">Owner Name</th>
<td class="data">sasdemo</td>
</tr>
<tr>
<th class="rowheader" scope="row">File Size</th>
<td class="data">4MB</td>
</tr>
<tr>
<th class="rowheader" scope="row">File Size (bytes)</th>
<td class="data">3932160</td>
</tr>
</tbody>
</table>
</div>
<div id="IDX2" style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="Variables">
<caption aria-label="Variables"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="6" scope="colgroup">Alphabetic List of Variables and Attributes</th>
</tr>
<tr>
<th class="r b header" scope="col">#</th>
<th class="b header" scope="col">Variable</th>
<th class="b header" scope="col">Type</th>
<th class="r b header" scope="col">Len</th>
<th class="b header" scope="col">Format</th>
<th class="b header" scope="col">Label</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">4</th>
<td class="data">CAUSEAVL</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">CAUSEFMT.</td>
<td class="data">Cause of Death Data Available</td>
</tr>
<tr>
<th class="r rowheader" scope="row">6</th>
<td class="data">DIABETES</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">FLAGFMT.</td>
<td class="data">Diabetes flag from multiple cause of death</td>
</tr>
<tr>
<th class="r rowheader" scope="row">2</th>
<td class="data">ELIGSTAT</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">ELIGFMT.</td>
<td class="data">Eligibility Status for Mortality Follow-up</td>
</tr>
<tr>
<th class="r rowheader" scope="row">7</th>
<td class="data">HYPERTEN</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">FLAGFMT.</td>
<td class="data">Hypertension flag from multiple cause of death</td>
</tr>
<tr>
<th class="r rowheader" scope="row">11</th>
<td class="data">MORTSRCE_CMS</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MRSRCFMT.</td>
<td class="data">Mortality Source: CMS Information</td>
</tr>
<tr>
<th class="r rowheader" scope="row">13</th>
<td class="data">MORTSRCE_DC</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MRSRCFMT.</td>
<td class="data">Mortality Source: Death Certificate Match</td>
</tr>
<tr>
<th class="r rowheader" scope="row">14</th>
<td class="data">MORTSRCE_DCL</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MRSRCFMT.</td>
<td class="data">Mortality Source: Data Collection</td>
</tr>
<tr>
<th class="r rowheader" scope="row">10</th>
<td class="data">MORTSRCE_NDI</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MRSRCFMT.</td>
<td class="data">Mortality Source: NDI Match</td>
</tr>
<tr>
<th class="r rowheader" scope="row">12</th>
<td class="data">MORTSRCE_SSA</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MRSRCFMT.</td>
<td class="data">Mortality Source: SSA Information</td>
</tr>
<tr>
<th class="r rowheader" scope="row">3</th>
<td class="data">MORTSTAT</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">MORTFMT.</td>
<td class="data">Final Mortality Status</td>
</tr>
<tr>
<th class="r rowheader" scope="row">9</th>
<td class="data">PERMTH_EXM</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">&#160;</td>
<td class="data">Person Months of Follow-up from MEC/Exam Date</td>
</tr>
<tr>
<th class="r rowheader" scope="row">8</th>
<td class="data">PERMTH_INT</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">&#160;</td>
<td class="data">Person Months of Follow-up from Interview Date</td>
</tr>
<tr>
<th class="r rowheader" scope="row">1</th>
<td class="data">SEQN</td>
<td class="data">Num</td>
<td class="r data">8</td>
<td class="data">&#160;</td>
<td class="data">NHANES Respondent Sequence Number</td>
</tr>
<tr>
<th class="r rowheader" scope="row">5</th>
<td class="data">UCOD_LEADING</td>
<td class="data">Char</td>
<td class="r data">3</td>
<td class="data">$UCODFMT.</td>
<td class="data">Underlying Cause of Death Recode from UCOD_113 Leading Causes</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
<div style="padding-bottom: 8px; padding-top: 1px">
<hr class="pagebreak"/>
<div id="IDX3" class="systitleandfootercontainer" style="border-spacing: 1px">
<p><span class="c systemtitle">NHANES PUBLIC-USE LINKED MORTALITY FILE</span> </p>
<p><span class="c systemtitle2">UNWEIGHTED FREQUENCIES</span> </p>
</div>
<div class="proc_title_group">
<p class="c proctitle">The FREQ Procedure</p>
</div>
<div style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Eligibility Status for Mortality Follow-up</th>
</tr>
<tr>
<th class="r b header" scope="col">ELIGSTAT</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">Eligible</th>
<td class="r data">19592</td>
<td class="r data">57.63</td>
<td class="r data">19592</td>
<td class="r data">57.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Under age 18</th>
<td class="r data">14377</td>
<td class="r data">42.29</td>
<td class="r data">33969</td>
<td class="r data">99.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Ineligible</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX4" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Final Mortality Status</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSTAT</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">Ineligible or under age 18</th>
<td class="r data">14402</td>
<td class="r data">42.37</td>
<td class="r data">14402</td>
<td class="r data">42.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Assumed alive</th>
<td class="r data">12931</td>
<td class="r data">38.04</td>
<td class="r data">27333</td>
<td class="r data">80.41</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Assumed deceased</th>
<td class="r data">6661</td>
<td class="r data">19.59</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX5" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Underlying Cause of Death Recode from UCOD_113 Leading Causes</th>
</tr>
<tr>
<th class="b header" scope="col">UCOD_LEADING</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="rowheader" scope="row">Ineligible, under age 18, assumed alive or no cause data</th>
<td class="r data">27403</td>
<td class="r data">80.61</td>
<td class="r data">27403</td>
<td class="r data">80.61</td>
</tr>
<tr>
<th class="rowheader" scope="row">Diseases of heart (I00-I09, I11, I13, I20-I51)</th>
<td class="r data">1711</td>
<td class="r data">5.03</td>
<td class="r data">29114</td>
<td class="r data">85.64</td>
</tr>
<tr>
<th class="rowheader" scope="row">Malignant neoplasms (C00-C97)</th>
<td class="r data">1388</td>
<td class="r data">4.08</td>
<td class="r data">30502</td>
<td class="r data">89.73</td>
</tr>
<tr>
<th class="rowheader" scope="row">Chronic lower respiratory diseases (J40-J47)</th>
<td class="r data">287</td>
<td class="r data">0.84</td>
<td class="r data">30789</td>
<td class="r data">90.57</td>
</tr>
<tr>
<th class="rowheader" scope="row">Accidents (unintentional injuries) (V01-X59, Y85-Y86)</th>
<td class="r data">170</td>
<td class="r data">0.50</td>
<td class="r data">30959</td>
<td class="r data">91.07</td>
</tr>
<tr>
<th class="rowheader" scope="row">Cerebrovascular diseases (I60-I69)</th>
<td class="r data">492</td>
<td class="r data">1.45</td>
<td class="r data">31451</td>
<td class="r data">92.52</td>
</tr>
<tr>
<th class="rowheader" scope="row">Alzheimer&apos;s disease (G30)</th>
<td class="r data">141</td>
<td class="r data">0.41</td>
<td class="r data">31592</td>
<td class="r data">92.93</td>
</tr>
<tr>
<th class="rowheader" scope="row">Diabetes mellitus (E10-E14)</th>
<td class="r data">234</td>
<td class="r data">0.69</td>
<td class="r data">31826</td>
<td class="r data">93.62</td>
</tr>
<tr>
<th class="rowheader" scope="row">Influenza and pneumonia (J09-J18)</th>
<td class="r data">213</td>
<td class="r data">0.63</td>
<td class="r data">32039</td>
<td class="r data">94.25</td>
</tr>
<tr>
<th class="rowheader" scope="row">Nephritis, nephrotic syndrome and nephrosis (N00-N07, N17-N19, N25-N27)</th>
<td class="r data">101</td>
<td class="r data">0.30</td>
<td class="r data">32140</td>
<td class="r data">94.55</td>
</tr>
<tr>
<th class="rowheader" scope="row">All other causes (residual)</th>
<td class="r data">1854</td>
<td class="r data">5.45</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX6" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Cause of Death Data Available</th>
</tr>
<tr>
<th class="r b header" scope="col">CAUSEAVL</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">Ineligible, under age 18 or assumed alive</th>
<td class="r data">27333</td>
<td class="r data">80.41</td>
<td class="r data">27333</td>
<td class="r data">80.41</td>
</tr>
<tr>
<th class="r rowheader" scope="row">No</th>
<td class="r data">70</td>
<td class="r data">0.21</td>
<td class="r data">27403</td>
<td class="r data">80.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">6591</td>
<td class="r data">19.39</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX7" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Diabetes flag from multiple cause of death</th>
</tr>
<tr>
<th class="r b header" scope="col">DIABETES</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">Ineligible, under age 18, assumed alive or no cause data</th>
<td class="r data">27403</td>
<td class="r data">80.61</td>
<td class="r data">27403</td>
<td class="r data">80.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">No</th>
<td class="r data">5810</td>
<td class="r data">17.09</td>
<td class="r data">33213</td>
<td class="r data">97.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">781</td>
<td class="r data">2.30</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX8" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Hypertension flag from multiple cause of death</th>
</tr>
<tr>
<th class="r b header" scope="col">HYPERTEN</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">Ineligible, under age 18, assumed alive or no cause data</th>
<td class="r data">27403</td>
<td class="r data">80.61</td>
<td class="r data">27403</td>
<td class="r data">80.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">No</th>
<td class="r data">5793</td>
<td class="r data">17.04</td>
<td class="r data">33196</td>
<td class="r data">97.65</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">798</td>
<td class="r data">2.35</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX9" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Mortality Source: NDI Match</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSRCE_NDI</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">27398</td>
<td class="r data">80.60</td>
<td class="r data">27398</td>
<td class="r data">80.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">6596</td>
<td class="r data">19.40</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX10" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Mortality Source: CMS Information</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSRCE_CMS</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">30892</td>
<td class="r data">90.87</td>
<td class="r data">30892</td>
<td class="r data">90.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">3102</td>
<td class="r data">9.13</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX11" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Mortality Source: SSA Information</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSRCE_SSA</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">28497</td>
<td class="r data">83.83</td>
<td class="r data">28497</td>
<td class="r data">83.83</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">5497</td>
<td class="r data">16.17</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX12" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Mortality Source: Death Certificate Match</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSRCE_DC</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">31502</td>
<td class="r data">92.67</td>
<td class="r data">31502</td>
<td class="r data">92.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">Yes</th>
<td class="r data">2492</td>
<td class="r data">7.33</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX13" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Mortality Source: Data Collection</th>
</tr>
<tr>
<th class="r b header" scope="col">MORTSRCE_DCL</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">33994</td>
<td class="r data">100.00</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX14" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Person Months of Follow-up from Interview Date</th>
</tr>
<tr>
<th class="r b header" scope="col">PERMTH_INT</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">14402</td>
<td class="r data">42.37</td>
<td class="r data">14402</td>
<td class="r data">42.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">0</th>
<td class="r data">10</td>
<td class="r data">0.03</td>
<td class="r data">14412</td>
<td class="r data">42.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">1</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">14432</td>
<td class="r data">42.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">2</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">14459</td>
<td class="r data">42.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">3</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">14482</td>
<td class="r data">42.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">4</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">14506</td>
<td class="r data">42.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">5</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">14530</td>
<td class="r data">42.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">6</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">14562</td>
<td class="r data">42.84</td>
</tr>
<tr>
<th class="r rowheader" scope="row">7</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">14596</td>
<td class="r data">42.94</td>
</tr>
<tr>
<th class="r rowheader" scope="row">8</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">14618</td>
<td class="r data">43.00</td>
</tr>
<tr>
<th class="r rowheader" scope="row">9</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">14640</td>
<td class="r data">43.07</td>
</tr>
<tr>
<th class="r rowheader" scope="row">10</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">14670</td>
<td class="r data">43.15</td>
</tr>
<tr>
<th class="r rowheader" scope="row">11</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">14698</td>
<td class="r data">43.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">12</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">14729</td>
<td class="r data">43.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">13</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">14759</td>
<td class="r data">43.42</td>
</tr>
<tr>
<th class="r rowheader" scope="row">14</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">14789</td>
<td class="r data">43.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">15</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">14820</td>
<td class="r data">43.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">16</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">14859</td>
<td class="r data">43.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">17</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">14895</td>
<td class="r data">43.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">18</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">14928</td>
<td class="r data">43.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">19</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">14952</td>
<td class="r data">43.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">20</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">14974</td>
<td class="r data">44.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">21</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">15005</td>
<td class="r data">44.14</td>
</tr>
<tr>
<th class="r rowheader" scope="row">22</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">15032</td>
<td class="r data">44.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">23</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">15063</td>
<td class="r data">44.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">24</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">15086</td>
<td class="r data">44.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">25</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">15106</td>
<td class="r data">44.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">26</th>
<td class="r data">42</td>
<td class="r data">0.12</td>
<td class="r data">15148</td>
<td class="r data">44.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">27</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">15175</td>
<td class="r data">44.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">28</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">15206</td>
<td class="r data">44.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">29</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">15233</td>
<td class="r data">44.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">30</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">15256</td>
<td class="r data">44.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">31</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">15286</td>
<td class="r data">44.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">32</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">15318</td>
<td class="r data">45.06</td>
</tr>
<tr>
<th class="r rowheader" scope="row">33</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">15352</td>
<td class="r data">45.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">34</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">15380</td>
<td class="r data">45.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">35</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">15413</td>
<td class="r data">45.34</td>
</tr>
<tr>
<th class="r rowheader" scope="row">36</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">15445</td>
<td class="r data">45.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">37</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">15482</td>
<td class="r data">45.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">38</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">15508</td>
<td class="r data">45.62</td>
</tr>
<tr>
<th class="r rowheader" scope="row">39</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">15535</td>
<td class="r data">45.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">40</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">15563</td>
<td class="r data">45.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">41</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">15592</td>
<td class="r data">45.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">42</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">15629</td>
<td class="r data">45.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">43</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">15658</td>
<td class="r data">46.06</td>
</tr>
<tr>
<th class="r rowheader" scope="row">44</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">15691</td>
<td class="r data">46.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">45</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">15721</td>
<td class="r data">46.25</td>
</tr>
<tr>
<th class="r rowheader" scope="row">46</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">15753</td>
<td class="r data">46.34</td>
</tr>
<tr>
<th class="r rowheader" scope="row">47</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">15786</td>
<td class="r data">46.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">48</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">15825</td>
<td class="r data">46.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">49</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">15852</td>
<td class="r data">46.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">50</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">15881</td>
<td class="r data">46.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">51</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">15913</td>
<td class="r data">46.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">52</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">15945</td>
<td class="r data">46.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">53</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">15971</td>
<td class="r data">46.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">54</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">16008</td>
<td class="r data">47.09</td>
</tr>
<tr>
<th class="r rowheader" scope="row">55</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">16044</td>
<td class="r data">47.20</td>
</tr>
<tr>
<th class="r rowheader" scope="row">56</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">16069</td>
<td class="r data">47.27</td>
</tr>
<tr>
<th class="r rowheader" scope="row">57</th>
<td class="r data">40</td>
<td class="r data">0.12</td>
<td class="r data">16109</td>
<td class="r data">47.39</td>
</tr>
<tr>
<th class="r rowheader" scope="row">58</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">16141</td>
<td class="r data">47.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">59</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16164</td>
<td class="r data">47.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">60</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">16197</td>
<td class="r data">47.65</td>
</tr>
<tr>
<th class="r rowheader" scope="row">61</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">16234</td>
<td class="r data">47.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">62</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">16259</td>
<td class="r data">47.83</td>
</tr>
<tr>
<th class="r rowheader" scope="row">63</th>
<td class="r data">47</td>
<td class="r data">0.14</td>
<td class="r data">16306</td>
<td class="r data">47.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">64</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">16333</td>
<td class="r data">48.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">65</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">16361</td>
<td class="r data">48.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">66</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">16394</td>
<td class="r data">48.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">67</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">16415</td>
<td class="r data">48.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">68</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">16439</td>
<td class="r data">48.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">69</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">16468</td>
<td class="r data">48.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">70</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">16507</td>
<td class="r data">48.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">71</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">16528</td>
<td class="r data">48.62</td>
</tr>
<tr>
<th class="r rowheader" scope="row">72</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16551</td>
<td class="r data">48.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">73</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">16569</td>
<td class="r data">48.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">74</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">16591</td>
<td class="r data">48.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">75</th>
<td class="r data">38</td>
<td class="r data">0.11</td>
<td class="r data">16629</td>
<td class="r data">48.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">76</th>
<td class="r data">41</td>
<td class="r data">0.12</td>
<td class="r data">16670</td>
<td class="r data">49.04</td>
</tr>
<tr>
<th class="r rowheader" scope="row">77</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">16704</td>
<td class="r data">49.14</td>
</tr>
<tr>
<th class="r rowheader" scope="row">78</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">16732</td>
<td class="r data">49.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">79</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">16763</td>
<td class="r data">49.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">80</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">16793</td>
<td class="r data">49.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">81</th>
<td class="r data">42</td>
<td class="r data">0.12</td>
<td class="r data">16835</td>
<td class="r data">49.52</td>
</tr>
<tr>
<th class="r rowheader" scope="row">82</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">16859</td>
<td class="r data">49.59</td>
</tr>
<tr>
<th class="r rowheader" scope="row">83</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">16898</td>
<td class="r data">49.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">84</th>
<td class="r data">38</td>
<td class="r data">0.11</td>
<td class="r data">16936</td>
<td class="r data">49.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">85</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">16968</td>
<td class="r data">49.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">86</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16991</td>
<td class="r data">49.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">87</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">17025</td>
<td class="r data">50.08</td>
</tr>
<tr>
<th class="r rowheader" scope="row">88</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">17062</td>
<td class="r data">50.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">89</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">17091</td>
<td class="r data">50.28</td>
</tr>
<tr>
<th class="r rowheader" scope="row">90</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">17115</td>
<td class="r data">50.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">91</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">17154</td>
<td class="r data">50.46</td>
</tr>
<tr>
<th class="r rowheader" scope="row">92</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">17178</td>
<td class="r data">50.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">93</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">17210</td>
<td class="r data">50.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">94</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17237</td>
<td class="r data">50.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">95</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">17260</td>
<td class="r data">50.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">96</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">17286</td>
<td class="r data">50.85</td>
</tr>
<tr>
<th class="r rowheader" scope="row">97</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17314</td>
<td class="r data">50.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">98</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">17347</td>
<td class="r data">51.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">99</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">17377</td>
<td class="r data">51.12</td>
</tr>
<tr>
<th class="r rowheader" scope="row">100</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17404</td>
<td class="r data">51.20</td>
</tr>
<tr>
<th class="r rowheader" scope="row">101</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">17438</td>
<td class="r data">51.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">102</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">17473</td>
<td class="r data">51.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">103</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">17506</td>
<td class="r data">51.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">104</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">17542</td>
<td class="r data">51.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">105</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">17575</td>
<td class="r data">51.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">106</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17596</td>
<td class="r data">51.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">107</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17623</td>
<td class="r data">51.84</td>
</tr>
<tr>
<th class="r rowheader" scope="row">108</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17648</td>
<td class="r data">51.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">109</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">17684</td>
<td class="r data">52.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">110</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">17719</td>
<td class="r data">52.12</td>
</tr>
<tr>
<th class="r rowheader" scope="row">111</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">17754</td>
<td class="r data">52.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">112</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">17789</td>
<td class="r data">52.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">113</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17817</td>
<td class="r data">52.41</td>
</tr>
<tr>
<th class="r rowheader" scope="row">114</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">17853</td>
<td class="r data">52.52</td>
</tr>
<tr>
<th class="r rowheader" scope="row">115</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">17884</td>
<td class="r data">52.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">116</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">17907</td>
<td class="r data">52.68</td>
</tr>
<tr>
<th class="r rowheader" scope="row">117</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17935</td>
<td class="r data">52.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">118</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">17961</td>
<td class="r data">52.84</td>
</tr>
<tr>
<th class="r rowheader" scope="row">119</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">17985</td>
<td class="r data">52.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">120</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">18018</td>
<td class="r data">53.00</td>
</tr>
<tr>
<th class="r rowheader" scope="row">121</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">18050</td>
<td class="r data">53.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">122</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">18080</td>
<td class="r data">53.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">123</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">18105</td>
<td class="r data">53.26</td>
</tr>
<tr>
<th class="r rowheader" scope="row">124</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18131</td>
<td class="r data">53.34</td>
</tr>
<tr>
<th class="r rowheader" scope="row">125</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18160</td>
<td class="r data">53.42</td>
</tr>
<tr>
<th class="r rowheader" scope="row">126</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">18194</td>
<td class="r data">53.52</td>
</tr>
<tr>
<th class="r rowheader" scope="row">127</th>
<td class="r data">40</td>
<td class="r data">0.12</td>
<td class="r data">18234</td>
<td class="r data">53.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">128</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">18262</td>
<td class="r data">53.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">129</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">18295</td>
<td class="r data">53.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">130</th>
<td class="r data">37</td>
<td class="r data">0.11</td>
<td class="r data">18332</td>
<td class="r data">53.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">131</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">18362</td>
<td class="r data">54.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">132</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">18393</td>
<td class="r data">54.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">133</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">18426</td>
<td class="r data">54.20</td>
</tr>
<tr>
<th class="r rowheader" scope="row">134</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18452</td>
<td class="r data">54.28</td>
</tr>
<tr>
<th class="r rowheader" scope="row">135</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">18480</td>
<td class="r data">54.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">136</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18509</td>
<td class="r data">54.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">137</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">18544</td>
<td class="r data">54.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">138</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">18568</td>
<td class="r data">54.62</td>
</tr>
<tr>
<th class="r rowheader" scope="row">139</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18597</td>
<td class="r data">54.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">140</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">18617</td>
<td class="r data">54.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">141</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">18647</td>
<td class="r data">54.85</td>
</tr>
<tr>
<th class="r rowheader" scope="row">142</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">18683</td>
<td class="r data">54.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">143</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">18710</td>
<td class="r data">55.04</td>
</tr>
<tr>
<th class="r rowheader" scope="row">144</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">18745</td>
<td class="r data">55.14</td>
</tr>
<tr>
<th class="r rowheader" scope="row">145</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18771</td>
<td class="r data">55.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">146</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18800</td>
<td class="r data">55.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">147</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18826</td>
<td class="r data">55.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">148</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">18857</td>
<td class="r data">55.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">149</th>
<td class="r data">36</td>
<td class="r data">0.11</td>
<td class="r data">18893</td>
<td class="r data">55.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">150</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18922</td>
<td class="r data">55.66</td>
</tr>
<tr>
<th class="r rowheader" scope="row">151</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">18944</td>
<td class="r data">55.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">152</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">18975</td>
<td class="r data">55.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">153</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">18996</td>
<td class="r data">55.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">154</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19024</td>
<td class="r data">55.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">155</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19052</td>
<td class="r data">56.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">156</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">19079</td>
<td class="r data">56.12</td>
</tr>
<tr>
<th class="r rowheader" scope="row">157</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">19112</td>
<td class="r data">56.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">158</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19135</td>
<td class="r data">56.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">159</th>
<td class="r data">38</td>
<td class="r data">0.11</td>
<td class="r data">19173</td>
<td class="r data">56.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">160</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">19200</td>
<td class="r data">56.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">161</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">19222</td>
<td class="r data">56.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">162</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">19241</td>
<td class="r data">56.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">163</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19266</td>
<td class="r data">56.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">164</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">19290</td>
<td class="r data">56.75</td>
</tr>
<tr>
<th class="r rowheader" scope="row">165</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19315</td>
<td class="r data">56.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">166</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">19339</td>
<td class="r data">56.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">167</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19362</td>
<td class="r data">56.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">168</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19388</td>
<td class="r data">57.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">169</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19418</td>
<td class="r data">57.12</td>
</tr>
<tr>
<th class="r rowheader" scope="row">170</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">19440</td>
<td class="r data">57.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">171</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">19462</td>
<td class="r data">57.25</td>
</tr>
<tr>
<th class="r rowheader" scope="row">172</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19485</td>
<td class="r data">57.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">173</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19510</td>
<td class="r data">57.39</td>
</tr>
<tr>
<th class="r rowheader" scope="row">174</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">19545</td>
<td class="r data">57.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">175</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19573</td>
<td class="r data">57.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">176</th>
<td class="r data">38</td>
<td class="r data">0.11</td>
<td class="r data">19611</td>
<td class="r data">57.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">177</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">19640</td>
<td class="r data">57.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">178</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">19675</td>
<td class="r data">57.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">179</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19698</td>
<td class="r data">57.95</td>
</tr>
<tr>
<th class="r rowheader" scope="row">180</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">19717</td>
<td class="r data">58.00</td>
</tr>
<tr>
<th class="r rowheader" scope="row">181</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">19750</td>
<td class="r data">58.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">182</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19775</td>
<td class="r data">58.17</td>
</tr>
<tr>
<th class="r rowheader" scope="row">183</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">19804</td>
<td class="r data">58.26</td>
</tr>
<tr>
<th class="r rowheader" scope="row">184</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">19824</td>
<td class="r data">58.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">185</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">19845</td>
<td class="r data">58.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">186</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">19863</td>
<td class="r data">58.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">187</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">19895</td>
<td class="r data">58.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">188</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19925</td>
<td class="r data">58.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">189</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">19946</td>
<td class="r data">58.68</td>
</tr>
<tr>
<th class="r rowheader" scope="row">190</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">19978</td>
<td class="r data">58.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">191</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20000</td>
<td class="r data">58.83</td>
</tr>
<tr>
<th class="r rowheader" scope="row">192</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">20026</td>
<td class="r data">58.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">193</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">20045</td>
<td class="r data">58.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">194</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20068</td>
<td class="r data">59.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">195</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20091</td>
<td class="r data">59.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">196</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">20116</td>
<td class="r data">59.18</td>
</tr>
<tr>
<th class="r rowheader" scope="row">197</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">20136</td>
<td class="r data">59.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">198</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">20155</td>
<td class="r data">59.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">199</th>
<td class="r data">11</td>
<td class="r data">0.03</td>
<td class="r data">20166</td>
<td class="r data">59.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">200</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20188</td>
<td class="r data">59.39</td>
</tr>
<tr>
<th class="r rowheader" scope="row">201</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">20218</td>
<td class="r data">59.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">202</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">20246</td>
<td class="r data">59.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">203</th>
<td class="r data">16</td>
<td class="r data">0.05</td>
<td class="r data">20262</td>
<td class="r data">59.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">204</th>
<td class="r data">16</td>
<td class="r data">0.05</td>
<td class="r data">20278</td>
<td class="r data">59.65</td>
</tr>
<tr>
<th class="r rowheader" scope="row">205</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20301</td>
<td class="r data">59.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">206</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">20321</td>
<td class="r data">59.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">207</th>
<td class="r data">124</td>
<td class="r data">0.36</td>
<td class="r data">20445</td>
<td class="r data">60.14</td>
</tr>
<tr>
<th class="r rowheader" scope="row">208</th>
<td class="r data">164</td>
<td class="r data">0.48</td>
<td class="r data">20609</td>
<td class="r data">60.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">209</th>
<td class="r data">326</td>
<td class="r data">0.96</td>
<td class="r data">20935</td>
<td class="r data">61.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">210</th>
<td class="r data">114</td>
<td class="r data">0.34</td>
<td class="r data">21049</td>
<td class="r data">61.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">211</th>
<td class="r data">274</td>
<td class="r data">0.81</td>
<td class="r data">21323</td>
<td class="r data">62.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">212</th>
<td class="r data">220</td>
<td class="r data">0.65</td>
<td class="r data">21543</td>
<td class="r data">63.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">213</th>
<td class="r data">273</td>
<td class="r data">0.80</td>
<td class="r data">21816</td>
<td class="r data">64.18</td>
</tr>
<tr>
<th class="r rowheader" scope="row">214</th>
<td class="r data">207</td>
<td class="r data">0.61</td>
<td class="r data">22023</td>
<td class="r data">64.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">215</th>
<td class="r data">168</td>
<td class="r data">0.49</td>
<td class="r data">22191</td>
<td class="r data">65.28</td>
</tr>
<tr>
<th class="r rowheader" scope="row">216</th>
<td class="r data">145</td>
<td class="r data">0.43</td>
<td class="r data">22336</td>
<td class="r data">65.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">217</th>
<td class="r data">327</td>
<td class="r data">0.96</td>
<td class="r data">22663</td>
<td class="r data">66.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">218</th>
<td class="r data">221</td>
<td class="r data">0.65</td>
<td class="r data">22884</td>
<td class="r data">67.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">219</th>
<td class="r data">162</td>
<td class="r data">0.48</td>
<td class="r data">23046</td>
<td class="r data">67.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">220</th>
<td class="r data">250</td>
<td class="r data">0.74</td>
<td class="r data">23296</td>
<td class="r data">68.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">221</th>
<td class="r data">133</td>
<td class="r data">0.39</td>
<td class="r data">23429</td>
<td class="r data">68.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">222</th>
<td class="r data">179</td>
<td class="r data">0.53</td>
<td class="r data">23608</td>
<td class="r data">69.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">223</th>
<td class="r data">122</td>
<td class="r data">0.36</td>
<td class="r data">23730</td>
<td class="r data">69.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">224</th>
<td class="r data">212</td>
<td class="r data">0.62</td>
<td class="r data">23942</td>
<td class="r data">70.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">225</th>
<td class="r data">212</td>
<td class="r data">0.62</td>
<td class="r data">24154</td>
<td class="r data">71.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">226</th>
<td class="r data">219</td>
<td class="r data">0.64</td>
<td class="r data">24373</td>
<td class="r data">71.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">227</th>
<td class="r data">208</td>
<td class="r data">0.61</td>
<td class="r data">24581</td>
<td class="r data">72.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">228</th>
<td class="r data">197</td>
<td class="r data">0.58</td>
<td class="r data">24778</td>
<td class="r data">72.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">229</th>
<td class="r data">177</td>
<td class="r data">0.52</td>
<td class="r data">24955</td>
<td class="r data">73.41</td>
</tr>
<tr>
<th class="r rowheader" scope="row">230</th>
<td class="r data">291</td>
<td class="r data">0.86</td>
<td class="r data">25246</td>
<td class="r data">74.27</td>
</tr>
<tr>
<th class="r rowheader" scope="row">231</th>
<td class="r data">179</td>
<td class="r data">0.53</td>
<td class="r data">25425</td>
<td class="r data">74.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">232</th>
<td class="r data">177</td>
<td class="r data">0.52</td>
<td class="r data">25602</td>
<td class="r data">75.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">233</th>
<td class="r data">215</td>
<td class="r data">0.63</td>
<td class="r data">25817</td>
<td class="r data">75.95</td>
</tr>
<tr>
<th class="r rowheader" scope="row">234</th>
<td class="r data">101</td>
<td class="r data">0.30</td>
<td class="r data">25918</td>
<td class="r data">76.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">235</th>
<td class="r data">182</td>
<td class="r data">0.54</td>
<td class="r data">26100</td>
<td class="r data">76.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">236</th>
<td class="r data">181</td>
<td class="r data">0.53</td>
<td class="r data">26281</td>
<td class="r data">77.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">237</th>
<td class="r data">347</td>
<td class="r data">1.02</td>
<td class="r data">26628</td>
<td class="r data">78.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">238</th>
<td class="r data">179</td>
<td class="r data">0.53</td>
<td class="r data">26807</td>
<td class="r data">78.86</td>
</tr>
<tr>
<th class="r rowheader" scope="row">239</th>
<td class="r data">273</td>
<td class="r data">0.80</td>
<td class="r data">27080</td>
<td class="r data">79.66</td>
</tr>
<tr>
<th class="r rowheader" scope="row">240</th>
<td class="r data">103</td>
<td class="r data">0.30</td>
<td class="r data">27183</td>
<td class="r data">79.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">241</th>
<td class="r data">181</td>
<td class="r data">0.53</td>
<td class="r data">27364</td>
<td class="r data">80.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">242</th>
<td class="r data">235</td>
<td class="r data">0.69</td>
<td class="r data">27599</td>
<td class="r data">81.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">243</th>
<td class="r data">187</td>
<td class="r data">0.55</td>
<td class="r data">27786</td>
<td class="r data">81.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">244</th>
<td class="r data">182</td>
<td class="r data">0.54</td>
<td class="r data">27968</td>
<td class="r data">82.27</td>
</tr>
<tr>
<th class="r rowheader" scope="row">245</th>
<td class="r data">196</td>
<td class="r data">0.58</td>
<td class="r data">28164</td>
<td class="r data">82.85</td>
</tr>
<tr>
<th class="r rowheader" scope="row">246</th>
<td class="r data">117</td>
<td class="r data">0.34</td>
<td class="r data">28281</td>
<td class="r data">83.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">247</th>
<td class="r data">202</td>
<td class="r data">0.59</td>
<td class="r data">28483</td>
<td class="r data">83.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">248</th>
<td class="r data">254</td>
<td class="r data">0.75</td>
<td class="r data">28737</td>
<td class="r data">84.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">249</th>
<td class="r data">437</td>
<td class="r data">1.29</td>
<td class="r data">29174</td>
<td class="r data">85.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">250</th>
<td class="r data">149</td>
<td class="r data">0.44</td>
<td class="r data">29323</td>
<td class="r data">86.26</td>
</tr>
<tr>
<th class="r rowheader" scope="row">251</th>
<td class="r data">7</td>
<td class="r data">0.02</td>
<td class="r data">29330</td>
<td class="r data">86.28</td>
</tr>
<tr>
<th class="r rowheader" scope="row">252</th>
<td class="r data">357</td>
<td class="r data">1.05</td>
<td class="r data">29687</td>
<td class="r data">87.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">253</th>
<td class="r data">7</td>
<td class="r data">0.02</td>
<td class="r data">29694</td>
<td class="r data">87.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">254</th>
<td class="r data">456</td>
<td class="r data">1.34</td>
<td class="r data">30150</td>
<td class="r data">88.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">255</th>
<td class="r data">6</td>
<td class="r data">0.02</td>
<td class="r data">30156</td>
<td class="r data">88.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">256</th>
<td class="r data">143</td>
<td class="r data">0.42</td>
<td class="r data">30299</td>
<td class="r data">89.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">257</th>
<td class="r data">188</td>
<td class="r data">0.55</td>
<td class="r data">30487</td>
<td class="r data">89.68</td>
</tr>
<tr>
<th class="r rowheader" scope="row">258</th>
<td class="r data">93</td>
<td class="r data">0.27</td>
<td class="r data">30580</td>
<td class="r data">89.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">259</th>
<td class="r data">266</td>
<td class="r data">0.78</td>
<td class="r data">30846</td>
<td class="r data">90.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">260</th>
<td class="r data">214</td>
<td class="r data">0.63</td>
<td class="r data">31060</td>
<td class="r data">91.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">261</th>
<td class="r data">279</td>
<td class="r data">0.82</td>
<td class="r data">31339</td>
<td class="r data">92.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">262</th>
<td class="r data">193</td>
<td class="r data">0.57</td>
<td class="r data">31532</td>
<td class="r data">92.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">263</th>
<td class="r data">107</td>
<td class="r data">0.31</td>
<td class="r data">31639</td>
<td class="r data">93.07</td>
</tr>
<tr>
<th class="r rowheader" scope="row">264</th>
<td class="r data">223</td>
<td class="r data">0.66</td>
<td class="r data">31862</td>
<td class="r data">93.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">265</th>
<td class="r data">188</td>
<td class="r data">0.55</td>
<td class="r data">32050</td>
<td class="r data">94.28</td>
</tr>
<tr>
<th class="r rowheader" scope="row">266</th>
<td class="r data">218</td>
<td class="r data">0.64</td>
<td class="r data">32268</td>
<td class="r data">94.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">267</th>
<td class="r data">190</td>
<td class="r data">0.56</td>
<td class="r data">32458</td>
<td class="r data">95.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">268</th>
<td class="r data">152</td>
<td class="r data">0.45</td>
<td class="r data">32610</td>
<td class="r data">95.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">269</th>
<td class="r data">89</td>
<td class="r data">0.26</td>
<td class="r data">32699</td>
<td class="r data">96.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">270</th>
<td class="r data">199</td>
<td class="r data">0.59</td>
<td class="r data">32898</td>
<td class="r data">96.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">271</th>
<td class="r data">197</td>
<td class="r data">0.58</td>
<td class="r data">33095</td>
<td class="r data">97.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">272</th>
<td class="r data">75</td>
<td class="r data">0.22</td>
<td class="r data">33170</td>
<td class="r data">97.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">273</th>
<td class="r data">249</td>
<td class="r data">0.73</td>
<td class="r data">33419</td>
<td class="r data">98.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">274</th>
<td class="r data">167</td>
<td class="r data">0.49</td>
<td class="r data">33586</td>
<td class="r data">98.80</td>
</tr>
<tr>
<th class="r rowheader" scope="row">275</th>
<td class="r data">144</td>
<td class="r data">0.42</td>
<td class="r data">33730</td>
<td class="r data">99.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">276</th>
<td class="r data">207</td>
<td class="r data">0.61</td>
<td class="r data">33937</td>
<td class="r data">99.83</td>
</tr>
<tr>
<th class="r rowheader" scope="row">277</th>
<td class="r data">57</td>
<td class="r data">0.17</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
<div id="IDX15" style="padding-bottom: 8px; padding-top: 1px">
<div style="padding-bottom: 8px; padding-top: 1px">
<table class="table" style="border-spacing: 0" aria-label="One-Way Frequencies">
<caption aria-label="One-Way Frequencies"></caption>
<colgroup><col/></colgroup><colgroup><col/><col/><col/><col/></colgroup>
<thead>
<tr>
<th class="c b header" colspan="5" scope="colgroup">Person Months of Follow-up from MEC/Exam Date</th>
</tr>
<tr>
<th class="r b header" scope="col">PERMTH_EXM</th>
<th class="r b header" scope="col">Frequency</th>
<th class="r b header" scope="col">Percent</th>
<th class="r b header" scope="col">Cumulative<br/>Frequency</th>
<th class="r b header" scope="col">Cumulative<br/>Percent</th>
</tr>
</thead>
<tbody>
<tr>
<th class="r rowheader" scope="row">.</th>
<td class="r data">16256</td>
<td class="r data">47.82</td>
<td class="r data">16256</td>
<td class="r data">47.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">0</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">16273</td>
<td class="r data">47.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">1</th>
<td class="r data">16</td>
<td class="r data">0.05</td>
<td class="r data">16289</td>
<td class="r data">47.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">2</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">16309</td>
<td class="r data">47.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">3</th>
<td class="r data">13</td>
<td class="r data">0.04</td>
<td class="r data">16322</td>
<td class="r data">48.01</td>
</tr>
<tr>
<th class="r rowheader" scope="row">4</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">16346</td>
<td class="r data">48.08</td>
</tr>
<tr>
<th class="r rowheader" scope="row">5</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">16372</td>
<td class="r data">48.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">6</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">16392</td>
<td class="r data">48.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">7</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16415</td>
<td class="r data">48.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">8</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">16436</td>
<td class="r data">48.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">9</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">16454</td>
<td class="r data">48.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">10</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">16479</td>
<td class="r data">48.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">11</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">16505</td>
<td class="r data">48.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">12</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">16530</td>
<td class="r data">48.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">13</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">16552</td>
<td class="r data">48.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">14</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">16582</td>
<td class="r data">48.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">15</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">16615</td>
<td class="r data">48.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">16</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">16641</td>
<td class="r data">48.95</td>
</tr>
<tr>
<th class="r rowheader" scope="row">17</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">16669</td>
<td class="r data">49.04</td>
</tr>
<tr>
<th class="r rowheader" scope="row">18</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16692</td>
<td class="r data">49.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">19</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">16711</td>
<td class="r data">49.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">20</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">16740</td>
<td class="r data">49.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">21</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">16758</td>
<td class="r data">49.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">22</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">16786</td>
<td class="r data">49.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">23</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">16808</td>
<td class="r data">49.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">24</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16831</td>
<td class="r data">49.51</td>
</tr>
<tr>
<th class="r rowheader" scope="row">25</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">16860</td>
<td class="r data">49.60</td>
</tr>
<tr>
<th class="r rowheader" scope="row">26</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">16881</td>
<td class="r data">49.66</td>
</tr>
<tr>
<th class="r rowheader" scope="row">27</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">16911</td>
<td class="r data">49.75</td>
</tr>
<tr>
<th class="r rowheader" scope="row">28</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">16935</td>
<td class="r data">49.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">29</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">16959</td>
<td class="r data">49.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">30</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">16982</td>
<td class="r data">49.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">31</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17003</td>
<td class="r data">50.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">32</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">17032</td>
<td class="r data">50.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">33</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">17061</td>
<td class="r data">50.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">34</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17086</td>
<td class="r data">50.26</td>
</tr>
<tr>
<th class="r rowheader" scope="row">35</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17113</td>
<td class="r data">50.34</td>
</tr>
<tr>
<th class="r rowheader" scope="row">36</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">17146</td>
<td class="r data">50.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">37</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">17168</td>
<td class="r data">50.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">38</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17193</td>
<td class="r data">50.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">39</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17218</td>
<td class="r data">50.65</td>
</tr>
<tr>
<th class="r rowheader" scope="row">40</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17246</td>
<td class="r data">50.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">41</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">17270</td>
<td class="r data">50.80</td>
</tr>
<tr>
<th class="r rowheader" scope="row">42</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">17302</td>
<td class="r data">50.90</td>
</tr>
<tr>
<th class="r rowheader" scope="row">43</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17329</td>
<td class="r data">50.98</td>
</tr>
<tr>
<th class="r rowheader" scope="row">44</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">17359</td>
<td class="r data">51.06</td>
</tr>
<tr>
<th class="r rowheader" scope="row">45</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">17381</td>
<td class="r data">51.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">46</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">17415</td>
<td class="r data">51.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">47</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">17446</td>
<td class="r data">51.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">48</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17471</td>
<td class="r data">51.39</td>
</tr>
<tr>
<th class="r rowheader" scope="row">49</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">17490</td>
<td class="r data">51.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">50</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17518</td>
<td class="r data">51.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">51</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17539</td>
<td class="r data">51.59</td>
</tr>
<tr>
<th class="r rowheader" scope="row">52</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">17571</td>
<td class="r data">51.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">53</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">17597</td>
<td class="r data">51.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">54</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">17630</td>
<td class="r data">51.86</td>
</tr>
<tr>
<th class="r rowheader" scope="row">55</th>
<td class="r data">15</td>
<td class="r data">0.04</td>
<td class="r data">17645</td>
<td class="r data">51.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">56</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">17679</td>
<td class="r data">52.01</td>
</tr>
<tr>
<th class="r rowheader" scope="row">57</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">17701</td>
<td class="r data">52.07</td>
</tr>
<tr>
<th class="r rowheader" scope="row">58</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17722</td>
<td class="r data">52.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">59</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">17751</td>
<td class="r data">52.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">60</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">17779</td>
<td class="r data">52.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">61</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17800</td>
<td class="r data">52.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">62</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">17835</td>
<td class="r data">52.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">63</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17860</td>
<td class="r data">52.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">64</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17885</td>
<td class="r data">52.61</td>
</tr>
<tr>
<th class="r rowheader" scope="row">65</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">17912</td>
<td class="r data">52.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">66</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">17937</td>
<td class="r data">52.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">67</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">17954</td>
<td class="r data">52.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">68</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">17975</td>
<td class="r data">52.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">69</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">18004</td>
<td class="r data">52.96</td>
</tr>
<tr>
<th class="r rowheader" scope="row">70</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">18023</td>
<td class="r data">53.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">71</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">18045</td>
<td class="r data">53.08</td>
</tr>
<tr>
<th class="r rowheader" scope="row">72</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">18062</td>
<td class="r data">53.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">73</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">18082</td>
<td class="r data">53.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">74</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">18116</td>
<td class="r data">53.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">75</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">18143</td>
<td class="r data">53.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">76</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">18178</td>
<td class="r data">53.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">77</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">18205</td>
<td class="r data">53.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">78</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18231</td>
<td class="r data">53.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">79</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">18249</td>
<td class="r data">53.68</td>
</tr>
<tr>
<th class="r rowheader" scope="row">80</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">18288</td>
<td class="r data">53.80</td>
</tr>
<tr>
<th class="r rowheader" scope="row">81</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">18313</td>
<td class="r data">53.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">82</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">18348</td>
<td class="r data">53.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">83</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">18382</td>
<td class="r data">54.07</td>
</tr>
<tr>
<th class="r rowheader" scope="row">84</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">18414</td>
<td class="r data">54.17</td>
</tr>
<tr>
<th class="r rowheader" scope="row">85</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">18433</td>
<td class="r data">54.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">86</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">18466</td>
<td class="r data">54.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">87</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">18492</td>
<td class="r data">54.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">88</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">18522</td>
<td class="r data">54.49</td>
</tr>
<tr>
<th class="r rowheader" scope="row">89</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">18550</td>
<td class="r data">54.57</td>
</tr>
<tr>
<th class="r rowheader" scope="row">90</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">18571</td>
<td class="r data">54.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">91</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">18596</td>
<td class="r data">54.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">92</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">18626</td>
<td class="r data">54.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">93</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">18651</td>
<td class="r data">54.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">94</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">18668</td>
<td class="r data">54.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">95</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">18695</td>
<td class="r data">54.99</td>
</tr>
<tr>
<th class="r rowheader" scope="row">96</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">18714</td>
<td class="r data">55.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">97</th>
<td class="r data">39</td>
<td class="r data">0.11</td>
<td class="r data">18753</td>
<td class="r data">55.17</td>
</tr>
<tr>
<th class="r rowheader" scope="row">98</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">18778</td>
<td class="r data">55.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">99</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">18797</td>
<td class="r data">55.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">100</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">18821</td>
<td class="r data">55.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">101</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">18853</td>
<td class="r data">55.46</td>
</tr>
<tr>
<th class="r rowheader" scope="row">102</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">18881</td>
<td class="r data">55.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">103</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">18908</td>
<td class="r data">55.62</td>
</tr>
<tr>
<th class="r rowheader" scope="row">104</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">18942</td>
<td class="r data">55.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">105</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">18960</td>
<td class="r data">55.77</td>
</tr>
<tr>
<th class="r rowheader" scope="row">106</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">18988</td>
<td class="r data">55.86</td>
</tr>
<tr>
<th class="r rowheader" scope="row">107</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">19012</td>
<td class="r data">55.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">108</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">19045</td>
<td class="r data">56.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">109</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19071</td>
<td class="r data">56.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">110</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19099</td>
<td class="r data">56.18</td>
</tr>
<tr>
<th class="r rowheader" scope="row">111</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">19130</td>
<td class="r data">56.27</td>
</tr>
<tr>
<th class="r rowheader" scope="row">112</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19155</td>
<td class="r data">56.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">113</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19183</td>
<td class="r data">56.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">114</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19213</td>
<td class="r data">56.52</td>
</tr>
<tr>
<th class="r rowheader" scope="row">115</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19236</td>
<td class="r data">56.59</td>
</tr>
<tr>
<th class="r rowheader" scope="row">116</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">19258</td>
<td class="r data">56.65</td>
</tr>
<tr>
<th class="r rowheader" scope="row">117</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19284</td>
<td class="r data">56.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">118</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">19301</td>
<td class="r data">56.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">119</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">19332</td>
<td class="r data">56.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">120</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19357</td>
<td class="r data">56.94</td>
</tr>
<tr>
<th class="r rowheader" scope="row">121</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19382</td>
<td class="r data">57.02</td>
</tr>
<tr>
<th class="r rowheader" scope="row">122</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19407</td>
<td class="r data">57.09</td>
</tr>
<tr>
<th class="r rowheader" scope="row">123</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">19425</td>
<td class="r data">57.14</td>
</tr>
<tr>
<th class="r rowheader" scope="row">124</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19455</td>
<td class="r data">57.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">125</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">19486</td>
<td class="r data">57.32</td>
</tr>
<tr>
<th class="r rowheader" scope="row">126</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">19515</td>
<td class="r data">57.41</td>
</tr>
<tr>
<th class="r rowheader" scope="row">127</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">19537</td>
<td class="r data">57.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">128</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19567</td>
<td class="r data">57.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">129</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19593</td>
<td class="r data">57.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">130</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">19622</td>
<td class="r data">57.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">131</th>
<td class="r data">35</td>
<td class="r data">0.10</td>
<td class="r data">19657</td>
<td class="r data">57.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">132</th>
<td class="r data">29</td>
<td class="r data">0.09</td>
<td class="r data">19686</td>
<td class="r data">57.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">133</th>
<td class="r data">12</td>
<td class="r data">0.04</td>
<td class="r data">19698</td>
<td class="r data">57.95</td>
</tr>
<tr>
<th class="r rowheader" scope="row">134</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19728</td>
<td class="r data">58.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">135</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19754</td>
<td class="r data">58.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">136</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">19778</td>
<td class="r data">58.18</td>
</tr>
<tr>
<th class="r rowheader" scope="row">137</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">19803</td>
<td class="r data">58.25</td>
</tr>
<tr>
<th class="r rowheader" scope="row">138</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">19821</td>
<td class="r data">58.31</td>
</tr>
<tr>
<th class="r rowheader" scope="row">139</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">19847</td>
<td class="r data">58.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">140</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">19871</td>
<td class="r data">58.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">141</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">19899</td>
<td class="r data">58.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">142</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">19933</td>
<td class="r data">58.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">143</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">19956</td>
<td class="r data">58.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">144</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">19986</td>
<td class="r data">58.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">145</th>
<td class="r data">17</td>
<td class="r data">0.05</td>
<td class="r data">20003</td>
<td class="r data">58.84</td>
</tr>
<tr>
<th class="r rowheader" scope="row">146</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">20036</td>
<td class="r data">58.94</td>
</tr>
<tr>
<th class="r rowheader" scope="row">147</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">20060</td>
<td class="r data">59.01</td>
</tr>
<tr>
<th class="r rowheader" scope="row">148</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">20092</td>
<td class="r data">59.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">149</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">20118</td>
<td class="r data">59.18</td>
</tr>
<tr>
<th class="r rowheader" scope="row">150</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20139</td>
<td class="r data">59.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">151</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">20159</td>
<td class="r data">59.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">152</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20181</td>
<td class="r data">59.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">153</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">20206</td>
<td class="r data">59.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">154</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">20225</td>
<td class="r data">59.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">155</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">20257</td>
<td class="r data">59.59</td>
</tr>
<tr>
<th class="r rowheader" scope="row">156</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">20284</td>
<td class="r data">59.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">157</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20307</td>
<td class="r data">59.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">158</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">20333</td>
<td class="r data">59.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">159</th>
<td class="r data">31</td>
<td class="r data">0.09</td>
<td class="r data">20364</td>
<td class="r data">59.90</td>
</tr>
<tr>
<th class="r rowheader" scope="row">160</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20387</td>
<td class="r data">59.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">161</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">20406</td>
<td class="r data">60.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">162</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20429</td>
<td class="r data">60.10</td>
</tr>
<tr>
<th class="r rowheader" scope="row">163</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20451</td>
<td class="r data">60.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">164</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20472</td>
<td class="r data">60.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">165</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">20496</td>
<td class="r data">60.29</td>
</tr>
<tr>
<th class="r rowheader" scope="row">166</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20517</td>
<td class="r data">60.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">167</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">20541</td>
<td class="r data">60.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">168</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">20560</td>
<td class="r data">60.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">169</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">20580</td>
<td class="r data">60.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">170</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">20598</td>
<td class="r data">60.59</td>
</tr>
<tr>
<th class="r rowheader" scope="row">171</th>
<td class="r data">26</td>
<td class="r data">0.08</td>
<td class="r data">20624</td>
<td class="r data">60.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">172</th>
<td class="r data">16</td>
<td class="r data">0.05</td>
<td class="r data">20640</td>
<td class="r data">60.72</td>
</tr>
<tr>
<th class="r rowheader" scope="row">173</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20661</td>
<td class="r data">60.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">174</th>
<td class="r data">33</td>
<td class="r data">0.10</td>
<td class="r data">20694</td>
<td class="r data">60.88</td>
</tr>
<tr>
<th class="r rowheader" scope="row">175</th>
<td class="r data">32</td>
<td class="r data">0.09</td>
<td class="r data">20726</td>
<td class="r data">60.97</td>
</tr>
<tr>
<th class="r rowheader" scope="row">176</th>
<td class="r data">28</td>
<td class="r data">0.08</td>
<td class="r data">20754</td>
<td class="r data">61.05</td>
</tr>
<tr>
<th class="r rowheader" scope="row">177</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">20779</td>
<td class="r data">61.13</td>
</tr>
<tr>
<th class="r rowheader" scope="row">178</th>
<td class="r data">23</td>
<td class="r data">0.07</td>
<td class="r data">20802</td>
<td class="r data">61.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">179</th>
<td class="r data">27</td>
<td class="r data">0.08</td>
<td class="r data">20829</td>
<td class="r data">61.27</td>
</tr>
<tr>
<th class="r rowheader" scope="row">180</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20850</td>
<td class="r data">61.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">181</th>
<td class="r data">24</td>
<td class="r data">0.07</td>
<td class="r data">20874</td>
<td class="r data">61.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">182</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20896</td>
<td class="r data">61.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">183</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">20917</td>
<td class="r data">61.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">184</th>
<td class="r data">16</td>
<td class="r data">0.05</td>
<td class="r data">20933</td>
<td class="r data">61.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">185</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">20955</td>
<td class="r data">61.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">186</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">20975</td>
<td class="r data">61.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">187</th>
<td class="r data">30</td>
<td class="r data">0.09</td>
<td class="r data">21005</td>
<td class="r data">61.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">188</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">21030</td>
<td class="r data">61.86</td>
</tr>
<tr>
<th class="r rowheader" scope="row">189</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">21050</td>
<td class="r data">61.92</td>
</tr>
<tr>
<th class="r rowheader" scope="row">190</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">21072</td>
<td class="r data">61.99</td>
</tr>
<tr>
<th class="r rowheader" scope="row">191</th>
<td class="r data">25</td>
<td class="r data">0.07</td>
<td class="r data">21097</td>
<td class="r data">62.06</td>
</tr>
<tr>
<th class="r rowheader" scope="row">192</th>
<td class="r data">18</td>
<td class="r data">0.05</td>
<td class="r data">21115</td>
<td class="r data">62.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">193</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">21134</td>
<td class="r data">62.17</td>
</tr>
<tr>
<th class="r rowheader" scope="row">194</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">21156</td>
<td class="r data">62.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">195</th>
<td class="r data">22</td>
<td class="r data">0.06</td>
<td class="r data">21178</td>
<td class="r data">62.30</td>
</tr>
<tr>
<th class="r rowheader" scope="row">196</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">21198</td>
<td class="r data">62.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">197</th>
<td class="r data">15</td>
<td class="r data">0.04</td>
<td class="r data">21213</td>
<td class="r data">62.40</td>
</tr>
<tr>
<th class="r rowheader" scope="row">198</th>
<td class="r data">10</td>
<td class="r data">0.03</td>
<td class="r data">21223</td>
<td class="r data">62.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">199</th>
<td class="r data">15</td>
<td class="r data">0.04</td>
<td class="r data">21238</td>
<td class="r data">62.48</td>
</tr>
<tr>
<th class="r rowheader" scope="row">200</th>
<td class="r data">34</td>
<td class="r data">0.10</td>
<td class="r data">21272</td>
<td class="r data">62.58</td>
</tr>
<tr>
<th class="r rowheader" scope="row">201</th>
<td class="r data">19</td>
<td class="r data">0.06</td>
<td class="r data">21291</td>
<td class="r data">62.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">202</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">21312</td>
<td class="r data">62.69</td>
</tr>
<tr>
<th class="r rowheader" scope="row">203</th>
<td class="r data">11</td>
<td class="r data">0.03</td>
<td class="r data">21323</td>
<td class="r data">62.73</td>
</tr>
<tr>
<th class="r rowheader" scope="row">204</th>
<td class="r data">21</td>
<td class="r data">0.06</td>
<td class="r data">21344</td>
<td class="r data">62.79</td>
</tr>
<tr>
<th class="r rowheader" scope="row">205</th>
<td class="r data">20</td>
<td class="r data">0.06</td>
<td class="r data">21364</td>
<td class="r data">62.85</td>
</tr>
<tr>
<th class="r rowheader" scope="row">206</th>
<td class="r data">71</td>
<td class="r data">0.21</td>
<td class="r data">21435</td>
<td class="r data">63.06</td>
</tr>
<tr>
<th class="r rowheader" scope="row">207</th>
<td class="r data">129</td>
<td class="r data">0.38</td>
<td class="r data">21564</td>
<td class="r data">63.43</td>
</tr>
<tr>
<th class="r rowheader" scope="row">208</th>
<td class="r data">311</td>
<td class="r data">0.91</td>
<td class="r data">21875</td>
<td class="r data">64.35</td>
</tr>
<tr>
<th class="r rowheader" scope="row">209</th>
<td class="r data">245</td>
<td class="r data">0.72</td>
<td class="r data">22120</td>
<td class="r data">65.07</td>
</tr>
<tr>
<th class="r rowheader" scope="row">210</th>
<td class="r data">146</td>
<td class="r data">0.43</td>
<td class="r data">22266</td>
<td class="r data">65.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">211</th>
<td class="r data">208</td>
<td class="r data">0.61</td>
<td class="r data">22474</td>
<td class="r data">66.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">212</th>
<td class="r data">219</td>
<td class="r data">0.64</td>
<td class="r data">22693</td>
<td class="r data">66.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">213</th>
<td class="r data">194</td>
<td class="r data">0.57</td>
<td class="r data">22887</td>
<td class="r data">67.33</td>
</tr>
<tr>
<th class="r rowheader" scope="row">214</th>
<td class="r data">191</td>
<td class="r data">0.56</td>
<td class="r data">23078</td>
<td class="r data">67.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">215</th>
<td class="r data">229</td>
<td class="r data">0.67</td>
<td class="r data">23307</td>
<td class="r data">68.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">216</th>
<td class="r data">205</td>
<td class="r data">0.60</td>
<td class="r data">23512</td>
<td class="r data">69.17</td>
</tr>
<tr>
<th class="r rowheader" scope="row">217</th>
<td class="r data">169</td>
<td class="r data">0.50</td>
<td class="r data">23681</td>
<td class="r data">69.66</td>
</tr>
<tr>
<th class="r rowheader" scope="row">218</th>
<td class="r data">190</td>
<td class="r data">0.56</td>
<td class="r data">23871</td>
<td class="r data">70.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">219</th>
<td class="r data">219</td>
<td class="r data">0.64</td>
<td class="r data">24090</td>
<td class="r data">70.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">220</th>
<td class="r data">205</td>
<td class="r data">0.60</td>
<td class="r data">24295</td>
<td class="r data">71.47</td>
</tr>
<tr>
<th class="r rowheader" scope="row">221</th>
<td class="r data">107</td>
<td class="r data">0.31</td>
<td class="r data">24402</td>
<td class="r data">71.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">222</th>
<td class="r data">128</td>
<td class="r data">0.38</td>
<td class="r data">24530</td>
<td class="r data">72.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">223</th>
<td class="r data">171</td>
<td class="r data">0.50</td>
<td class="r data">24701</td>
<td class="r data">72.66</td>
</tr>
<tr>
<th class="r rowheader" scope="row">224</th>
<td class="r data">178</td>
<td class="r data">0.52</td>
<td class="r data">24879</td>
<td class="r data">73.19</td>
</tr>
<tr>
<th class="r rowheader" scope="row">225</th>
<td class="r data">246</td>
<td class="r data">0.72</td>
<td class="r data">25125</td>
<td class="r data">73.91</td>
</tr>
<tr>
<th class="r rowheader" scope="row">226</th>
<td class="r data">199</td>
<td class="r data">0.59</td>
<td class="r data">25324</td>
<td class="r data">74.50</td>
</tr>
<tr>
<th class="r rowheader" scope="row">227</th>
<td class="r data">253</td>
<td class="r data">0.74</td>
<td class="r data">25577</td>
<td class="r data">75.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">228</th>
<td class="r data">98</td>
<td class="r data">0.29</td>
<td class="r data">25675</td>
<td class="r data">75.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">229</th>
<td class="r data">242</td>
<td class="r data">0.71</td>
<td class="r data">25917</td>
<td class="r data">76.24</td>
</tr>
<tr>
<th class="r rowheader" scope="row">230</th>
<td class="r data">158</td>
<td class="r data">0.46</td>
<td class="r data">26075</td>
<td class="r data">76.70</td>
</tr>
<tr>
<th class="r rowheader" scope="row">231</th>
<td class="r data">175</td>
<td class="r data">0.51</td>
<td class="r data">26250</td>
<td class="r data">77.22</td>
</tr>
<tr>
<th class="r rowheader" scope="row">232</th>
<td class="r data">199</td>
<td class="r data">0.59</td>
<td class="r data">26449</td>
<td class="r data">77.80</td>
</tr>
<tr>
<th class="r rowheader" scope="row">233</th>
<td class="r data">146</td>
<td class="r data">0.43</td>
<td class="r data">26595</td>
<td class="r data">78.23</td>
</tr>
<tr>
<th class="r rowheader" scope="row">234</th>
<td class="r data">135</td>
<td class="r data">0.40</td>
<td class="r data">26730</td>
<td class="r data">78.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">235</th>
<td class="r data">175</td>
<td class="r data">0.51</td>
<td class="r data">26905</td>
<td class="r data">79.15</td>
</tr>
<tr>
<th class="r rowheader" scope="row">236</th>
<td class="r data">257</td>
<td class="r data">0.76</td>
<td class="r data">27162</td>
<td class="r data">79.90</td>
</tr>
<tr>
<th class="r rowheader" scope="row">237</th>
<td class="r data">220</td>
<td class="r data">0.65</td>
<td class="r data">27382</td>
<td class="r data">80.55</td>
</tr>
<tr>
<th class="r rowheader" scope="row">238</th>
<td class="r data">209</td>
<td class="r data">0.61</td>
<td class="r data">27591</td>
<td class="r data">81.16</td>
</tr>
<tr>
<th class="r rowheader" scope="row">239</th>
<td class="r data">195</td>
<td class="r data">0.57</td>
<td class="r data">27786</td>
<td class="r data">81.74</td>
</tr>
<tr>
<th class="r rowheader" scope="row">240</th>
<td class="r data">126</td>
<td class="r data">0.37</td>
<td class="r data">27912</td>
<td class="r data">82.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">241</th>
<td class="r data">192</td>
<td class="r data">0.56</td>
<td class="r data">28104</td>
<td class="r data">82.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">242</th>
<td class="r data">150</td>
<td class="r data">0.44</td>
<td class="r data">28254</td>
<td class="r data">83.11</td>
</tr>
<tr>
<th class="r rowheader" scope="row">243</th>
<td class="r data">179</td>
<td class="r data">0.53</td>
<td class="r data">28433</td>
<td class="r data">83.64</td>
</tr>
<tr>
<th class="r rowheader" scope="row">244</th>
<td class="r data">212</td>
<td class="r data">0.62</td>
<td class="r data">28645</td>
<td class="r data">84.26</td>
</tr>
<tr>
<th class="r rowheader" scope="row">245</th>
<td class="r data">100</td>
<td class="r data">0.29</td>
<td class="r data">28745</td>
<td class="r data">84.56</td>
</tr>
<tr>
<th class="r rowheader" scope="row">246</th>
<td class="r data">179</td>
<td class="r data">0.53</td>
<td class="r data">28924</td>
<td class="r data">85.09</td>
</tr>
<tr>
<th class="r rowheader" scope="row">247</th>
<td class="r data">199</td>
<td class="r data">0.59</td>
<td class="r data">29123</td>
<td class="r data">85.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">248</th>
<td class="r data">243</td>
<td class="r data">0.71</td>
<td class="r data">29366</td>
<td class="r data">86.39</td>
</tr>
<tr>
<th class="r rowheader" scope="row">249</th>
<td class="r data">330</td>
<td class="r data">0.97</td>
<td class="r data">29696</td>
<td class="r data">87.36</td>
</tr>
<tr>
<th class="r rowheader" scope="row">250</th>
<td class="r data">154</td>
<td class="r data">0.45</td>
<td class="r data">29850</td>
<td class="r data">87.81</td>
</tr>
<tr>
<th class="r rowheader" scope="row">251</th>
<td class="r data">5</td>
<td class="r data">0.01</td>
<td class="r data">29855</td>
<td class="r data">87.82</td>
</tr>
<tr>
<th class="r rowheader" scope="row">252</th>
<td class="r data">351</td>
<td class="r data">1.03</td>
<td class="r data">30206</td>
<td class="r data">88.86</td>
</tr>
<tr>
<th class="r rowheader" scope="row">253</th>
<td class="r data">10</td>
<td class="r data">0.03</td>
<td class="r data">30216</td>
<td class="r data">88.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">254</th>
<td class="r data">334</td>
<td class="r data">0.98</td>
<td class="r data">30550</td>
<td class="r data">89.87</td>
</tr>
<tr>
<th class="r rowheader" scope="row">255</th>
<td class="r data">7</td>
<td class="r data">0.02</td>
<td class="r data">30557</td>
<td class="r data">89.89</td>
</tr>
<tr>
<th class="r rowheader" scope="row">256</th>
<td class="r data">187</td>
<td class="r data">0.55</td>
<td class="r data">30744</td>
<td class="r data">90.44</td>
</tr>
<tr>
<th class="r rowheader" scope="row">257</th>
<td class="r data">80</td>
<td class="r data">0.24</td>
<td class="r data">30824</td>
<td class="r data">90.67</td>
</tr>
<tr>
<th class="r rowheader" scope="row">258</th>
<td class="r data">235</td>
<td class="r data">0.69</td>
<td class="r data">31059</td>
<td class="r data">91.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">259</th>
<td class="r data">198</td>
<td class="r data">0.58</td>
<td class="r data">31257</td>
<td class="r data">91.95</td>
</tr>
<tr>
<th class="r rowheader" scope="row">260</th>
<td class="r data">143</td>
<td class="r data">0.42</td>
<td class="r data">31400</td>
<td class="r data">92.37</td>
</tr>
<tr>
<th class="r rowheader" scope="row">261</th>
<td class="r data">342</td>
<td class="r data">1.01</td>
<td class="r data">31742</td>
<td class="r data">93.38</td>
</tr>
<tr>
<th class="r rowheader" scope="row">262</th>
<td class="r data">130</td>
<td class="r data">0.38</td>
<td class="r data">31872</td>
<td class="r data">93.76</td>
</tr>
<tr>
<th class="r rowheader" scope="row">263</th>
<td class="r data">135</td>
<td class="r data">0.40</td>
<td class="r data">32007</td>
<td class="r data">94.15</td>
</tr>
<tr>
<th class="r rowheader" scope="row">264</th>
<td class="r data">161</td>
<td class="r data">0.47</td>
<td class="r data">32168</td>
<td class="r data">94.63</td>
</tr>
<tr>
<th class="r rowheader" scope="row">265</th>
<td class="r data">195</td>
<td class="r data">0.57</td>
<td class="r data">32363</td>
<td class="r data">95.20</td>
</tr>
<tr>
<th class="r rowheader" scope="row">266</th>
<td class="r data">171</td>
<td class="r data">0.50</td>
<td class="r data">32534</td>
<td class="r data">95.71</td>
</tr>
<tr>
<th class="r rowheader" scope="row">267</th>
<td class="r data">173</td>
<td class="r data">0.51</td>
<td class="r data">32707</td>
<td class="r data">96.21</td>
</tr>
<tr>
<th class="r rowheader" scope="row">268</th>
<td class="r data">84</td>
<td class="r data">0.25</td>
<td class="r data">32791</td>
<td class="r data">96.46</td>
</tr>
<tr>
<th class="r rowheader" scope="row">269</th>
<td class="r data">193</td>
<td class="r data">0.57</td>
<td class="r data">32984</td>
<td class="r data">97.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">270</th>
<td class="r data">173</td>
<td class="r data">0.51</td>
<td class="r data">33157</td>
<td class="r data">97.54</td>
</tr>
<tr>
<th class="r rowheader" scope="row">271</th>
<td class="r data">166</td>
<td class="r data">0.49</td>
<td class="r data">33323</td>
<td class="r data">98.03</td>
</tr>
<tr>
<th class="r rowheader" scope="row">272</th>
<td class="r data">171</td>
<td class="r data">0.50</td>
<td class="r data">33494</td>
<td class="r data">98.53</td>
</tr>
<tr>
<th class="r rowheader" scope="row">273</th>
<td class="r data">136</td>
<td class="r data">0.40</td>
<td class="r data">33630</td>
<td class="r data">98.93</td>
</tr>
<tr>
<th class="r rowheader" scope="row">274</th>
<td class="r data">177</td>
<td class="r data">0.52</td>
<td class="r data">33807</td>
<td class="r data">99.45</td>
</tr>
<tr>
<th class="r rowheader" scope="row">275</th>
<td class="r data">112</td>
<td class="r data">0.33</td>
<td class="r data">33919</td>
<td class="r data">99.78</td>
</tr>
<tr>
<th class="r rowheader" scope="row">276</th>
<td class="r data">75</td>
<td class="r data">0.22</td>
<td class="r data">33994</td>
<td class="r data">100.00</td>
</tr>
</tbody>
</table>
</div>
</div>
</div>
</body>
</html>





```sas
proc export data=NHANES
   outfile='mort.csv'
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

<div class="highlight"><pre><span></span><span class="s">587  ods listing close;ods html5 (id=saspy_internal) file=stdout options(bitmap_mode=&#39;inline&#39;) device=svg; ods graphics on /</span><br><span class="s">587! outputfmt=png;</span><br><span class="cm">NOTE: Writing HTML5(SASPY_INTERNAL) Body file: STDOUT</span><br><span class="s">588  </span><br><span class="s">589  proc export data=NHANES</span><br><span class="s">590     outfile=&#39;mort.csv&#39;</span><br><span class="s">591     dbms=csv</span><br><span class="s">592     replace;</span><br><span class="s">593  run;</span><br><span class="s">594   /**********************************************************************</span><br><span class="s">595   *   PRODUCT:   SAS</span><br><span class="s">596   *   VERSION:   9.4</span><br><span class="s">597   *   CREATOR:   External File Interface</span><br><span class="s">598   *   DATE:      30MAR18</span><br><span class="s">599   *   DESC:      Generated SAS Datastep Code</span><br><span class="s">600   *   TEMPLATE SOURCE:  (None Specified.)</span><br><span class="s">601   ***********************************************************************/</span><br><span class="s">602      data _null_;</span><br><span class="s">603      %let _EFIERR_ = 0; /* set the ERROR detection macro variable */</span><br><span class="s">604      %let _EFIREC_ = 0;     /* clear export record count macro variable */</span><br><span class="s">605      file &#39;mort.csv&#39; delimiter=&#39;,&#39; DSD DROPOVER lrecl=32767;</span><br><span class="s">606      if _n_ = 1 then        /* write column names or labels */</span><br><span class="s">607       do;</span><br><span class="s">608         put</span><br><span class="s">609            &quot;SEQN&quot;</span><br><span class="s">610         &#39;,&#39;</span><br><span class="s">611            &quot;ELIGSTAT&quot;</span><br><span class="s">612         &#39;,&#39;</span><br><span class="s">613            &quot;MORTSTAT&quot;</span><br><span class="s">614         &#39;,&#39;</span><br><span class="s">615            &quot;CAUSEAVL&quot;</span><br><span class="s">616         &#39;,&#39;</span><br><span class="s">617            &quot;UCOD_LEADING&quot;</span><br><span class="s">618         &#39;,&#39;</span><br><span class="s">619            &quot;DIABETES&quot;</span><br><span class="s">620         &#39;,&#39;</span><br><span class="s">621            &quot;HYPERTEN&quot;</span><br><span class="s">622         &#39;,&#39;</span><br><span class="s">623            &quot;PERMTH_INT&quot;</span><br><span class="s">624         &#39;,&#39;</span><br><span class="s">625            &quot;PERMTH_EXM&quot;</span><br><span class="s">626         &#39;,&#39;</span><br><span class="s">627            &quot;MORTSRCE_NDI&quot;</span><br><span class="s">628         &#39;,&#39;</span><br><span class="s">629            &quot;MORTSRCE_CMS&quot;</span><br><span class="s">630         &#39;,&#39;</span><br><span class="s">631            &quot;MORTSRCE_SSA&quot;</span><br><span class="s">632         &#39;,&#39;</span><br><span class="s">633            &quot;MORTSRCE_DC&quot;</span><br><span class="s">634         &#39;,&#39;</span><br><span class="s">635            &quot;MORTSRCE_DCL&quot;</span><br><span class="s">636         ;</span><br><span class="s">637       end;</span><br><span class="s">638     set  NHANES   end=EFIEOD;</span><br><span class="s">639         format SEQN best12. ;</span><br><span class="s">640         format ELIGSTAT eligfmt12. ;</span><br><span class="s">641         format MORTSTAT mortfmt26. ;</span><br><span class="s">642         format CAUSEAVL causefmt41. ;</span><br><span class="s">643         format UCOD_LEADING $ucodfmt71. ;</span><br><span class="s">644         format DIABETES flagfmt56. ;</span><br><span class="s">645         format HYPERTEN flagfmt56. ;</span><br><span class="s">646         format PERMTH_INT best12. ;</span><br><span class="s">647         format PERMTH_EXM best12. ;</span><br><span class="s">648         format MORTSRCE_NDI mrsrcfmt3. ;</span><br><span class="s">649         format MORTSRCE_CMS mrsrcfmt3. ;</span><br><span class="s">650         format MORTSRCE_SSA mrsrcfmt3. ;</span><br><span class="s">651         format MORTSRCE_DC mrsrcfmt3. ;</span><br><span class="s">652         format MORTSRCE_DCL mrsrcfmt3. ;</span><br><span class="s">653       do;</span><br><span class="s">654         EFIOUT + 1;</span><br><span class="s">655         put SEQN @;</span><br><span class="s">656         put ELIGSTAT @;</span><br><span class="s">657         put MORTSTAT @;</span><br><span class="s">658         put CAUSEAVL @;</span><br><span class="s">659         put UCOD_LEADING $ @;</span><br><span class="s">660         put DIABETES @;</span><br><span class="s">661         put HYPERTEN @;</span><br><span class="s">662         put PERMTH_INT @;</span><br><span class="s">663         put PERMTH_EXM @;</span><br><span class="s">664         put MORTSRCE_NDI @;</span><br><span class="s">665         put MORTSRCE_CMS @;</span><br><span class="s">666         put MORTSRCE_SSA @;</span><br><span class="s">667         put MORTSRCE_DC @;</span><br><span class="s">668         put MORTSRCE_DCL ;</span><br><span class="s">669         ;</span><br><span class="s">670       end;</span><br><span class="s">671      if _ERROR_ then call symputx(&#39;_EFIERR_&#39;,1);  /* set ERROR detection macro variable */</span><br><span class="s">672      if EFIEOD then call symputx(&#39;_EFIREC_&#39;,EFIOUT);</span><br><span class="s">673      run;</span><br><span class="cm">NOTE: The file &#39;mort.csv&#39; is:</span><br><span class="cm">      Filename=/mnt/hgfs/myfolders/mort.csv,</span><br><span class="cm">      Owner Name=root,Group Name=vboxsf,</span><br><span class="cm">      Access Permission=-rwxrwx---,</span><br><span class="cm">      Last Modified=30Mar2018:22:12:03</span><br><br><span class="cm">NOTE: 33995 records were written to the file &#39;mort.csv&#39;.</span><br><span class="cm">      The minimum record length was 79.</span><br><span class="cm">      The maximum record length was 273.</span><br><span class="cm">NOTE: There were 33994 observations read from the data set WORK.NHANES.</span><br><span class="cm">NOTE: DATA statement used (Total process time):</span><br><span class="cm">      real time           0.44 seconds</span><br><span class="cm">      cpu time            0.33 seconds</span><br><span class="cm">      </span><br><span class="s">33994 records created in mort.csv from NHANES.</span><br><span class="s">  </span><br><span class="s">  </span><br><span class="cm">NOTE: &quot;mort.csv&quot; file was successfully created.</span><br><span class="cm">NOTE: PROCEDURE EXPORT used (Total process time):</span><br><span class="cm">      real time           0.57 seconds</span><br><span class="cm">      cpu time            0.42 seconds</span><br><span class="cm">      </span><br><span class="s">674  </span><br><span class="s">675  ods html5 (id=saspy_internal) close;ods listing;</span><br><br><span class="s">676  </span><br></pre></div>
</body>
</html>



