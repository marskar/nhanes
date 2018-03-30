

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





proc export data=NHANES
   outfile='mort.csv'
   dbms=csv
   replace;
run;
