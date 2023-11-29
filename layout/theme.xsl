	<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
                xmlns="http://www.w3.org/TR/xhtml1/strict">
  <xsl:output
   method="text"
   indent="yes"
   encoding="UTF-8"
/>
  
<xsl:template match="interface">



/*Portions of this code derived from the Skeleton framework
* Skeleton V2.0.4!
* Copyright 2014, Dave Gamache
* www.getskeleton.com
* Free to use under the MIT license.
* http://www.opensource.org/licenses/mit-license.php
* 12/29/2014
*/

html {
  font-size: 62.5%; 
  -webkit-text-size-adjust: auto;
  }

.container {
  position: relative;
  width: 100%;
  max-width: 960px;
  margin: 0 auto;
  padding: 20px;
  box-sizing: border-box; 
}

.column,
.columns {
  margin-top:5%;
  width: 100%;
  float: left;
  box-sizing: border-box; 
  }

/* For devices larger than 400px */
@media (min-width: 400px) {
  .container {
    width: 85%;
    }
}

/* For devices larger than 550px */
@media (min-width: 550px) {

html {
  font-size: 65%; 
  -webkit-text-size-adjust: auto;
  }
  
  .container {
    width: 80%; }
  .column,
  .columns {
    margin-left: 4%; }
  .column:first-child,
  .columns:first-child {
    margin-left: 0; }

  .one.column,
  .one.columns                    { width: 4.66666666667%; }
  .two.columns                    { width: 13.3333333333%; }
  .three.columns                  { width: 22%;            }
  .four.columns                   { width: 30.6666666667%; }
  .five.columns                   { width: 39.3333333333%; }
  .six.columns                    { width: 48%;            }
  .seven.columns                  { width: 56.6666666667%; }
  .eight.columns                  { width: 65.3333333333%; }
  .nine.columns                   { width: 74.0%;          }
  .ten.columns                    { width: 82.6666666667%; }
  .eleven.columns                 { width: 91.3333333333%; }
  .twelve.columns                 { width: 100%; margin-left: 0; }

  .one-third.column               { width: 30.6666666667%; }
  .two-thirds.column              { width: 65.3333333333%; }

  .one-half.column                { width: 48%; }

  /* Offsets */
  .offset-by-one.column,
  .offset-by-one.columns          { margin-left: 8.66666666667%; }
  .offset-by-two.column,
  .offset-by-two.columns          { margin-left: 17.3333333333%; }
  .offset-by-three.column,
  .offset-by-three.columns        { margin-left: 26%;            }
  .offset-by-four.column,
  .offset-by-four.columns         { margin-left: 34.6666666667%; }
  .offset-by-five.column,
  .offset-by-five.columns         { margin-left: 43.3333333333%; }
  .offset-by-six.column,
  .offset-by-six.columns          { margin-left: 52%;            }
  .offset-by-seven.column,
  .offset-by-seven.columns        { margin-left: 60.6666666667%; }
  .offset-by-eight.column,
  .offset-by-eight.columns        { margin-left: 69.3333333333%; }
  .offset-by-nine.column,
  .offset-by-nine.columns         { margin-left: 78.0%;          }
  .offset-by-ten.column,
  .offset-by-ten.columns          { margin-left: 86.6666666667%; }
  .offset-by-eleven.column,
  .offset-by-eleven.columns       { margin-left: 95.3333333333%; }

  .offset-by-one-third.column,
  .offset-by-one-third.columns    { margin-left: 34.6666666667%; }
  .offset-by-two-thirds.column,
  .offset-by-two-thirds.columns   { margin-left: 69.3333333333%; }

  .offset-by-one-half.column,
  .offset-by-one-half.columns     { margin-left: 52%; }

} 


  
body {
  font-size: 1.5em; /* currently ems cause chrome bug misinterpreting rems on body element */
  line-height: 1.6;
  font-weight: 400;
  font-family: "Raleway", "HelveticaNeue", "Helvetica Neue", Helvetica, Arial, sans-serif;
background-color:
  <xsl:value-of select="interaction/htmlBgColor"/>;
  overflow-y:hidden !important;
 }
 


h1, h2, h3, h4, h5, h6 {
  margin-top: 0;
  margin-bottom: 2rem;
  font-weight: 300; }
h1 { font-size: 4.0rem; line-height: 1.2;  letter-spacing: -.1rem;}
h2 { font-size: 3.6rem; line-height: 1.25; letter-spacing: -.1rem; }
h3 { font-size: 3.0rem; line-height: 1.3;  letter-spacing: -.1rem; }
h4 { font-size: 2.4rem; line-height: 1.35; letter-spacing: -.08rem; }
h5 { font-size: 1.8rem; line-height: 1.5;  letter-spacing: -.05rem; }
h6 { font-size: 1.5rem; line-height: 1.6;  letter-spacing: 0; }

/* Larger than phablet */
@media (min-width: 550px) {
  h1 { font-size: 5.0rem; }
  h2 { font-size: 4.2rem; }
  h3 { font-size: 3.6rem; }
  h4 { font-size: 3.0rem; }
  h5 { font-size: 2.4rem; }
  h6 { font-size: 1.5rem; }
}

p {
  margin-top: 0; 
  }

h1 {
    font-weight: normal;
    margin: .5em 0 0.5em;
    text-shadow: rgba(0, 0, 0, 0.44) 1px 1px 2px;
	color:#0099CC;
}
  
.hideOnRun
	display:none;
}

#adaDiv{
	display:none;
}

.ada{
	float:left;
	margin-top: 5px;
	margin-left: 5px;
	
}

.mapButton{
	float:left;
	background-color:#FFFFFF;
	padding-right:5px;
	margin-top: -5px;
	border: 1px solid white;	
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	margin-left: 10px;
	height: 30px;
	
}

.showLocationButton{
	float:left;
	background-color:#FFFFFF;
	padding-right:5px;
	margin-top: -5px;
	border: 1px solid white;	
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	margin-left: 10px;
	height: 30px;
	
}

.print{
	float:left;
	padding-right:5px;
	margin-top: 5px;
	margin-left: 2px;
}

.printImage:hover {
	background:url("images/icon-print-hover.png");	
			 
}
/* primary elements */

.mainWrapper{
padding:10px;
display:flex;
flex-direction:row;
flex-wrap: nowrap;
align-content: flex-start;
height:100vh;
}

.jetWrapper{
 height: 100%;
 position:relative !important;
 margin-left:auto !important;
 margin-right:auto !important;
 width: 85% !important;
 max-width:1400px !important;
 overflow:hidden !important;
 padding:0px;
 padding-bottom: 100px !important;
 order:2;
 flex-grow: 4;
 
 
}

.header{
	position:absolute;
	top:0px;
	background-size:100% 100%;
	<xsl:variable name="headerBgColor" select="interaction/headerBgColor" />
	<xsl:if test="contains($headerBgColor, 'background:')">
    <xsl:value-of select="interaction/headerBgColor"/>
	</xsl:if>
	height: 70px;
	width: 100% !important;
	border-color: <xsl:value-of select="interaction/htmlBgColor"/>;
	border-style:solid;
	border-width:0px;
	z-index:20 !important;
	padding: 0px !important;
	margin-bottom:0px !important;
	
}

.banner{
	position:absolute;
	top:0px;
	background-size:100% 100%;
	height: 70px;
	width: 100% !important;
	border-color: <xsl:value-of select="interaction/htmlBgColor"/>;
	border-style:solid;
	border-width:0px;
	z-index:19 !important;
	padding: 0px !important;
	margin-bottom:0px !important;
	text-align: center;
	font-weight:bold;
	padding-top:20px !important;
	
}

.viewer{
	border-radius: 0px 0px 0px 0px;
	border: 2px solid #e7e7e7;
	position:relative;
	margin-bottom:0px !important;
	height: 80vh;
	font-size: 1 em;
	background-color:<xsl:value-of select="interaction/innerBgColor"/>;
	overflow: hidden !important;
	width: 100% !important;
	padding: 0px !important;
	
	
}

.navigator{
	position:relative;
	border-radius: 0px 0px 10px 10px;
	background-size:100% 100%;
	height: 50px;
	padding-top: 15px !important;
	width: 100% !important;
	<xsl:variable name="footerBgColor" select="interaction/footerBgColor" />
	<xsl:if test="contains($footerBgColor, 'background:')">
    <xsl:value-of select="interaction/footerBgColor"/>
	</xsl:if>
	
}



.navigator .controls{
	
	float:right;
	-webkit-touch-callout:none;
	-webkit-user-select:none;
	-moz-user-select:none;
	 user-select:none;
	 margin-bottom:10px;
	 margin-right:20px;
	  
}

.navigator .controls a {
		font-size: 40px;
		
		opacity: .8;
		color: #000000;
		-webkit-touch-callout:none;
		-webkit-user-select:none;
		-moz-user-select:none;
		 user-select:none;	 
		 margin-top:10px;
}

.navigator .controls a.enabled {
			opacity: 0.6;
			color: hsl(185, 85%, 70%);
			text-shadow: 0px 0px 2px hsla(185, 45%, 70%, 0.3);
}
.navigator .controls a.enabled:active {
			margin-top: 1px;
}

.navigator .controls .left {
		z-index:50;
		border-style:none;
		width:30px;
		height:30px;		
		float: right;
		margin-top:0px;
		margin-right:5px;
		padding-top:0px;
		padding-right:10px;
		padding-left:8px;
		
		background: url('../../layout/arrowLeft.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		
	border: 0px solid white;	
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	}

.navigator .controls .left:hover {
		width:30px;
		height:30px;			
		float: right;
		margin-top:0px;
		margin-right:5px;
		padding-top:10px;
		padding-right:10px;
		padding-left:8px;
		background: url('../../layout/arrowLeft_down.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		border: 0px solid white;	
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		border-radius: 10px;
}

.navigator .controls .left[disabled] {
		width:30px;
		height:30px;			
		float: right;
		margin-top:0px;
		padding-top:10px;
		padding-right:10px;
		padding-left:8px;
		background: url('../../layout/arrowLeft_gray.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		border: 0px solid white;	
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		border-radius: 10px;
}


	.navigator .controls .right {
		z-index:50;
		border-style:none;
		width:30px;
		height:30px;			
		float: right;
		margin-top:0px;
		margin-right:10px;
		padding-top:10px;
		padding-right:10px;
		padding-left:8px;
		
		background: url('../../layout/arrowRight.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		border: 0px solid white;	
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		border-radius: 10px;
}

.navigator .controls .right:hover {
		width:30px;
		height:30px;			
		float: right;
		margin-top:0px;
		margin-right:10px;
		padding-top:10px;
		padding-right:10px;
		padding-left:8px;
		background: url('../../layout/arrowRight_down.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		border: 0px solid white;	
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		border-radius: 10px;
}

.navigator .controls .right[disabled] {
		width:30px;
		height:30px;			
		float: right;
		margin-top:0px;
		padding-top:10px;
		padding-right:10px;
		padding-left:8px;
		background: url('../../layout/arrowRight_gray.png'); 
		-webkit-background-size: contain; /* For WebKit*/
    	-moz-background-size: contain;    /* Mozilla*/
    	-o-background-size: contain;      /* Opera*/
    	background-size: contain; 
		background-repeat: no-repeat;
		border: 0px solid white;	
		-webkit-border-radius: 10px;
		-moz-border-radius: 10px;
		border-radius: 10px;
}

.navigator .feedback{
	float:right;
	margin-top:7px;
	margin-right:10px;
}

/* Inside of viewer */



.page,.ReportPage,.mPage,.ShortAnswerPage,.LongAnswerPage, .organizerPage{
	position:relative;
	top: 0px;
	background-color:<xsl:value-of select="interaction/innerBgColor"/>;
	height: 80vh;
	width: 100% !important;
	overflow-y:auto !important;
	overflow-x:hidden !important;
	padding: 5% !important;
	
}


.WidgetPage,.mQuestionPage,.JournalPage{
	height: 80vh;
	width: 100% !important;
	overflow-y:auto !important;
	overflow-x:hidden !important;
	
	
}

video{
	max-height: 400px !important;
}

.ShortAnswerPage .text{
 position: relative !important;
 top: 100px !important;
 width:80% !important;
 margin:10px !important;
 left: 10% !important;
}

.ShortAnswerPage .inputbox{
 position: relative !important;
 top: 160px !important;
 width:80% !important;
 margin:10px !important;
 left: 10% !important;
 margin-bottom: 200px !important;
}
.ShortAnswerPage {
  padding-bottom: 200px !important;
}

.VideoPage .content {
    position: relative !important;
    padding-bottom: 56.25% !important;
    padding-top: 30px; height: 0; overflow: hidden !important;
	width: 98% !important;
    height: 0 !important;
	left: 1% !important;
	
	
}

.VideoPage iframe{
	position: absolute !important;
    top: 0 !important;
    width: 100% !important;
    height: 100% !important;
	left: 0 !important;
	
	
}

#kaltura_div{
    position: relative !important;
    padding-bottom: 56.25% !important;
    padding-top: 30px; height: 0; overflow: hidden !important;
	width: 98% !important;
    height: 0 !important;
	left: 1% !important;
	
	
}



#kaltura_player{
	position: absolute !important;
    top: 0 !important;
    width: 100% !important;
    height: 100% !important;
	left: 0 !important;
	
	
}

.content{
	position:relative;
	padding: 10px;
	width: 98%;
	height: 98% !important;
	max-height:98% !important;
}

.Crossword.content{
     width: 100%;
	padding:0px;
}


.content > .component{
	background-color:#0000FF;
	position:absolute;
	width:100% !important;
}

.overlay{
	background-color:<xsl:value-of select="interaction/innerBgColor"/>;
	border-style:outset;
	border-width: 10 px;
	padding: 10px;
	height: 480px;
	width: 880px;
	position:absolute;
	top: 100px;
	left: 0px;
	font-size: 1 em;
	-moz-box-shadow: 3px 3px 4px #000;
	-webkit-box-shadow: 3px 3px 4px #000;
	box-shadow: 3px 3px 4px #000;
	overflow-x:hidden;
	overflow-y:auto;
	z-index:60;
}

.overlayContent{
	background-color:<xsl:value-of select="interaction/innerBgColor"/>;
	height: 480px;
	width: 880px;
}

.popup{
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;
	color: #FFFFFF;
	
	border-bottom-style:solid;
	border-bottom-width: 20 px;
	border-bottom-color:<xsl:value-of select="interaction/htmlBgColor"/>;
	border-top-style:solid;
	border-top-width: 20px;
	border-top-color:<xsl:value-of select="interaction/htmlBgColor"/>;
	padding: 10px;
	width: 80%;
	position:absolute;
	top: 10%;
	left: 10%;
	font-size: 1 em;
	overflow-x: hidden;
	overflow-y: scroll;
	z-index:50;
	max-width:960px;
	padding-bottom:100px;
	border: 2px solid black;
	
}

.popupContent{
	overflow:auto;
}

.tooltip{
	background-color:#FFFFEE;
	border-style:outset;
	border-width: 10 px;
	padding: 10px;
	height: 50px;
	width: 200px;
	position:absolute;
	top: 100px;
	left: 100px;
	font-size: 1 em;
	overflow:hidden;
	z-index:20;
}

.tooltipContent{
	overflow:auto;
}

/*
dashboard will need to be restored to support gadgets, remove x
*/

.dashboardx{
	position: absolute !important;
	border-style:none;
	height: 100px;
	width: 175px !important;
	overflow:visible;
	z-index:20;
	top: 500px !important;
	margin-left:auto;
	margin-right:auto;
	background:none;
	left:580px !important;	
	
}

.dbMeterDiv{
	
	border-style:none;
	height: 75px;
	width: 150px;
	overflow:visible;
	z-index:20;
	visibility:hidden;
	
}

.dbMeterDivContent{
	position:absolute;
	pointer-events: none;
	top: 0px !important;
	left: 0px !important;
	

}
.dbMeterNeedleDiv{
	position:absolute;
	border-style:none;
	overflow:hidden;
	z-index:21;
	top: 0px !important;
	left: 0px !important;

}

.dbMeterNeedleDivContent{
	top: 0px !important;
	left: 0px !important;
}

/*
the following meter selectors support the legacy meter
*/

.meterDiv{
	position:absolute;
	border-style:none;
	height: 75px;
	width: 150px;
	overflow:visible;
	z-index:40;
}

.meterDivContent{
	overflow:auto;
	position:absolute;
}
.meterNeedleDiv{
	border-style:none;
	overflow:hidden;
	z-index:41;
}

.meterNeedleDivContent{
	position:absolute;
}

.closeButton{
	float:right;
	margin: 5px;
	height:50px;
	width:100px;
	border: 1px solid white;
	color:black;
	
}
 
.questionBlock{
	padding: 0px;
	top: -200px;
	position:relative;
	overflow-x:hidden;
	overflow-y:hidden;
	
}

.inputbox{
	position:absolute;
	left: 0px;
	top: 0px;
	text-align:left;
}

.image{
	border-color:#48525c;
	border-style:solid;
}

/*image handlers */

.ImagePage .image{
	display: block !important;
	margin-right: auto !important;
	margin-left: auto !important;
	height: 75%;
	width:75%;
	border-color:#48525c;
	border-style:solid;
}

.MenuPage .imageparent{
	position:absolute;	
}

.flashcard .imageparent{
	position:absolute;	
}

.interviewImage{
	position:absolute;	
}

.menuImage{
	position:absolute;
}

.ImagePage .imageparent{
	margin-top:20px !important;
	display: block !important;
	margin-right: auto !important;
	margin-left: auto !important;
}
.caption{
	position:relative;
}

.text{
	position:relative;
	width:90% !important;
	height:auto !important;
	padding: 5px;
}

.textBlock{
	position:absolute;
	padding: 5px;
	overflow-x:hidden;
	overflow-y:auto;
}

.longAnswer{
	position:absolute;
	width: 90% !important;
	padding: 5px;
	overflow-x:hidden;
	overflow-y:auto;
	text-align:left;
	background-color:#fefefe;
	border-color:#48525c;
	border-style:solid;
	word-wrap:break-word;
	valign:top;
	left: 5px !important;
}

.LongAnswerPage .textBlock{

	position:relative;
	width: 98% !important;
	padding: 20px;
	overflow-x:hidden;
	overflow-y:auto;
	text-align:left;
	word-wrap:break-word;
	valign:top;
}



.instructions {
	background-color:transparent;
}

.instructionsContent {
	background-color:transparent;
	font-family:sans-serif;
	font-size: 20 px;
	border-style:none;
}

.categoryTitle{
	border-style:none;
	background-color:transparent;
	position:absolute;
	font-size: 20 px;
	font-weight:bold;
}

.dragTarget {
	position:absolute;
	background-color:#cccccc;
	border-color:#48525c;
	border-style:dotted;
	overflow:hidden;
}

.anchorTile{
	position:absolute;
	background-color:#ebebeb;
	border-color:#48525c;
	border-style:solid;
	border-width: 1 px;
	overflow:hidden;
}

.dragTile{
	position:absolute;
	background-color:#ebebeb;
	border-color:#48525c;
	border-style:solid;
	border-width:1px;
	-moz-box-shadow: 3px 3px 4px #000;
	-webkit-box-shadow: 3px 3px 4px #000;
	box-shadow: 3px 3px 4px #000;
	overflow:hidden;
	z-index:1;
}

.tileLabel{
	padding: 3px;
	background-color:transparent;
	left: 0px;
	top: 0px;
	border-style:none;
	pointer-events: none;
	word-wrap: break-word; 
	font-family:sans-serif;
	font-size: 12px;
}

.dragHandle{
	background-color:#e7e7e7;
	margin-right: 10px;
	position:absolute;
}
		
.checkButton{
	position: relative;
	border: 1px solid white;
	color:white;
	text-shadow: 2px 2px #000000;
	background-color:black;
	margin-top:-5px;
	margin-left:110px;
	margin-right: 20px;
	height: 25px;
	width: 75px;
	-webkit-background-size: contain; /* For WebKit*/
    -moz-background-size: contain;    /* Mozilla*/
    -o-background-size: contain;      /* Opera*/
    background-size: contain; 
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	bottom: 10px !important;
}

.checkButton[disabled] {
	border: 1px solid white;
	background:none;
}

.interviewerDistractor{
	cursor:pointer;
}

.interviewerStem{
	font-weight:bold;
	cursor:default;
}

.InterviewPage .content .componentX{
	 	width: 0px !important;
		height: 0px !important;
}

.report{
	font-size: 30px;
}

input,select,textarea{
    -webkit-user-select: text;
}

.qitem{
	margin-top:20px;
	margin-bottom:20px;
}

.distractorContainer{
	clear:both;
	width:100%;
}

.distractorHost{
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;
	color: #000000;
	padding:10px;
	overflow:hidden;
}
.distractorHost:hover{
	opacity:.5; 
}

.distractor{
	display:inline;
	vertical-align: top;
	height:30px;
	overflow:hidden;
	-webkit-touch-callout: none;
	-webkit-user-select: none;
	-khtml-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}
.distractor.text{
	position:static;
	padding-top:0px;
	
	
}

.stem{
	clear:both;
}

.distractorcheckbutton{
	position:relative;
	top:0px;
	float:left;
	display:block;
	margin-right:20px;
	margin-left:20px;
}

.staticDistractor{
	position:static;
	padding:5px;
	margin-bottom:40px !important;
}

.progressBar{
	position:absolute;
	visibility:hidden;
	left:0px;
	height: 2px;
	width: 30%;
	bottom:-8px;
}

.reportParagraph{
	padding:20px;
}

#crosswordDiv {
	float:left;
	width : 500px;
	height : 400px;
}
	
.hintsDiv {
	float:left;
	border : 1px solid gray;
	width: 220px;
	height : 150px;
	margin : 5px;
	padding: 5px;
	overflow-y:hidden;
	overflow-x:hidden;
}

.hintsSelect{
	font-size: 11px;
	border : none;
	width: 220px;
	height : 150px;
	margin : 1px;
}

.directionDiv{
	float: left;
	font-size: 50px;
	border : none;
	width: 60px;
	height : 60px;
	margin : 10px;
}



/* Table of Contents, Menus */

.TOC select{
   position:relative !important;
   background:transparent;
   width: 20%;
   min-width:100px;
   padding: 5px;
   padding-right: 10px;
   font-size: 14px !important;
   color: #FFFFFF;
   height: 35px;
   top:1px;
   left: 100px;	
   margin-left:10px;
   margin-right:10px;
}

.TOC option {
    background-color:#efefef;
    font-family:sans-serif;
	font-size: 14px;
	color: #000000;
}

/*
first menu style
*/

nav#menux{
	top:90px;
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;
	width: 280px;
	height: 600px;
	left: 0px;
	border-right: thick double #070707;
	margin-right: 50px;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	z-index:141 !important;
}

nav#menu{
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;
	position:absolute !important;
	top:40px;
	left:20px !important;
	margin-right: 20px;
	width:15%;
	min-width:200px;
	max-width:200px;
	height: 100%;
	max-height:600px;
	left: 0px !important;
	z-index:141 !important;
	padding-right: 10px !important;
	border-right: 10px <xsl:value-of select="interaction/outerBgColor"/> solid;
	
}

nav#menu.splitpanelmenu{
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;
	position:relative !important;
	top:50px;
	margin-right: 20px;
	width:200px;
	min-width:200px;
	max-width:200px;
	height: auto !important;
	left: 0px !important;
	z-index:141 !important;
	padding-right: 10px !important;
	border-right: 10px <xsl:value-of select="interaction/htmlBgColor"/> solid;
	order:1;
	flex-grow: 1;
}


.menu{	
	float:left;
	padding-right:10px;
	margin-top: 5px;
	}
	
}	

li.subtopic.mm-selected a{
  border-left: 1px solid #FFFFFF;
  margin-left: 20px;
  }

li.subtopic.mm-selected > a{
   background: rgba(0, 0, 0, 0.5);
   margin-left: 10px; 
   border: none;
}

li.subtopic a{
	text-overflow: ellipsis;
	text-decoration: none;
	white-space: nowrap;
	overflow: hidden;
	line-height: 10px;
	display: block;
	padding: 10px 10px 10px 20px;
	margin-left: 10px; 
	margin-bottom: 10px;
  }

/*
second menu style
*/

#nav_2		{
	background-color: <xsl:value-of select="interaction/outerBgColor"/>;	
	width:160px;
	height:485px;
	top:90px;
	float:left;
	padding: 0px !important;
	border-radius: 20px; 
	margin: 10px 10px 10px 10px;
	box-shadow: 3px 3px 6px rgba(0,0,0,0.5);
	}

#menu_2 {
	margin: 0px !important;
	padding-left: 10px !important;
}

#menu_2	li	{
	margin: 20px 5px 5px 5px;
	text-indent: 0px;
	lineheight:1.2;
	list-style-type: none;
	overflow: hidden;
    text-overflow: ellipsis;
	}
	

#nav_2 li.mm-selected>span{
	
	border-bottom: medium none;
	 background: none; 
	text-decoration:underline;
	 text-decoration-style: solid;
}
	

#nav_2 ul li a {
    border-bottom: medium none;
}

#menu_2.ui-menu {
   padding: 3px;
}



#nav_2 ul li a {
	display:inline !important;
}

.categoryDiv{
	padding-left:20px;
	border: 1px #070707;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background-color: rgba(177,216,245,1) ;
	
}

.tileDiv:hover {
    cursor: pointer;
}

.tileDiv{

	padding-left:20px;
	border: thick double #070707;
	-webkit-border-radius: 5px;
	-moz-border-radius: 5px;
	border-radius: 5px;
	background: rgb(225,255,255); /* Old browsers */
background: -moz-linear-gradient(-45deg,  rgba(225,255,255,1) 0%, rgba(225,255,255,1) 7%, rgba(225,255,255,1) 12%, rgba(253,255,255,1) 12%, rgba(230,248,253,1) 30%, rgba(200,238,251,1) 54%, rgba(190,228,248,1) 75%, rgba(177,216,245,1) 100%); /* FF3.6+ */
background: -webkit-gradient(linear, left top, right bottom, color-stop(0%,rgba(225,255,255,1)), color-stop(7%,rgba(225,255,255,1)), color-stop(12%,rgba(225,255,255,1)), color-stop(12%,rgba(253,255,255,1)), color-stop(30%,rgba(230,248,253,1)), color-stop(54%,rgba(200,238,251,1)), color-stop(75%,rgba(190,228,248,1)), color-stop(100%,rgba(177,216,245,1))); /* Chrome,Safari4+ */
background: -webkit-linear-gradient(-45deg,  rgba(225,255,255,1) 0%,rgba(225,255,255,1) 7%,rgba(225,255,255,1) 12%,rgba(253,255,255,1) 12%,rgba(230,248,253,1) 30%,rgba(200,238,251,1) 54%,rgba(190,228,248,1) 75%,rgba(177,216,245,1) 100%); /* Chrome10+,Safari5.1+ */
background: -o-linear-gradient(-45deg,  rgba(225,255,255,1) 0%,rgba(225,255,255,1) 7%,rgba(225,255,255,1) 12%,rgba(253,255,255,1) 12%,rgba(230,248,253,1) 30%,rgba(200,238,251,1) 54%,rgba(190,228,248,1) 75%,rgba(177,216,245,1) 100%); /* Opera 11.10+ */
background: -ms-linear-gradient(-45deg,  rgba(225,255,255,1) 0%,rgba(225,255,255,1) 7%,rgba(225,255,255,1) 12%,rgba(253,255,255,1) 12%,rgba(230,248,253,1) 30%,rgba(200,238,251,1) 54%,rgba(190,228,248,1) 75%,rgba(177,216,245,1) 100%); /* IE10+ */
background: linear-gradient(135deg,  rgba(225,255,255,1) 0%,rgba(225,255,255,1) 7%,rgba(225,255,255,1) 12%,rgba(253,255,255,1) 12%,rgba(230,248,253,1) 30%,rgba(200,238,251,1) 54%,rgba(190,228,248,1) 75%,rgba(177,216,245,1) 100%); /* W3C */


}

.ui-tabs { 
 display:block;
	background-color:transparent !important;
	border:none;
	padding-left:10px;
	padding-right:10px;
	padding-top:5px;
	padding-bottom:0px;
	height: 50px;
	width: 880px;
	position:relative;
	font-size: 1 em;
	overflow:hidden;
    
 
  }
  
  #tabs li{
  margin-top:10px !important;
  }
  
  #tabs{
	position:relative !important;
	top: 10px;
	width: 100% !important;
	height: auto !important;
	border:1px black solid;
  	background-color:transparent;
	z-index:50;
	margin-left:auto;
	margin-right:auto;
  }
  
  ul#resources{
  	border:none;
  	background-color:transparent;
  	  }
  
  .ui-tabs-anchor {
  	background-color:<xsl:value-of select="interaction/outerBgColor"/> !important;
	}
  
   .colorboxDiv{
  	margin: 20px;
  	padding: 20px;
  	-moz-box-shadow: 10px  7px  5px  #000000;
	-webkit-box-shadow: 10px  7px  5px  #000000;
	box-shadow: 10px  7px  5px  #000000;
  	overflow-y:auto !important;
	overflow-x:hidden;
  	background-color:white;
  }
  
  .colorboxDiv .component{
	height: 0px !important;
  }
  .colorboxDiv .text{
	width: 98% !important;
  }
  
  #cboxLoadedContent {
	overflow:hidden !important;
	overflow-y:auto !important;
}

#cboxClose{
margin-right:10px !important;
width:30px !important;;
height:30px !important;;
background: url(images/icon-close.png) no-repeat !important;
}
#cboxClose:hover{
background: url(images/icon-close.png) no-repeat;
}
   
.ui-widget-content{
border:none !important;
background-color:transparent !important;
	}
	
.organizerContent .divRow{
background-color:<xsl:value-of select="interaction/innerBgColor"/> !important;
}


p{
	word-wrap: break-word !important;
	overflow: visible;
}

.text, .textBlock{
	width: 95% !important;
	left: 0px !important;
}


.dialog1{
	width:40% !important;
	height:auto !important;
	float:left;
	padding: 15px;
	margin: 1em 0 3em;
	border: 2px solid #5a8f00;
	color: #333;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	margin-top: 30px;
}


.dialog2{
	width:40% !important;
	height:auto !important;
	float:right;
	padding: 15px;
	margin: 1em 0 3em;
	border: 2px solid #5a8f00;
	color: #333;
	background: #fff;
	-webkit-border-radius: 10px;
	-moz-border-radius: 10px;
	border-radius: 10px;
	margin-top: 30px;
}

.dialog1, .dialog2{
	font-size: .8em !important;
	width:45% !important;
	padding-bottom:0px !important;
	
	
}



.character1 img, .character2 img{
	clear:both;
	margin-top:20px !important;
	width:75% !important;
	height:auto !important;
	max-height: 200px;
	
}

.character1 img{
	float:right !important;
	}

.character2 img{
	float:left !important;
	
}

.notesContent, .notesButton{
	color:black;
}

.LS_JET_0004{
	margin:auto;
}


</xsl:template>
</xsl:stylesheet>







