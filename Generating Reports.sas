/*Import datafile*/
PROC IMPORT DATAFILE="/home/u43103072/bsa570_v4_wk6_assignment_data.xlsx"
		    OUT=bakerySales
		    DBMS=XLSX
		    REPLACE;
RUN;
/*Delete the cookie bar from the dataset*/
DATA bakerySalesWithoutCookies;
SET bakerySales;
IF product = 'Cookie bar' THEN DELETE;
;
/*Delete the sales from 2015 and 2018 from the dataset*/
DATA relevantBakerySales;
SET bakerySalesWithoutCookies;
IF year(date) = 2015 OR year(date) = 2018 THEN DELETE;
year=Year(date);
;

ODS LISTING close;
ODS HTML FILE = "/home/u43103072/bsa570_v4_wk6_assignment_data_HTML_report.htm";

/*Change the label from "when you enjoy" to "Success Indicators" from the dataset*/
PROC TABULATE DATA = relevantBakerySales FORMAT=DOLLAR11.;
   CLASS product whenYouEnjoy year;
   VAR sales;
   KEYLABEL ALL='Totals';
   TABLE year ALL,  product*whenYouEnjoy*sales= ' '*SUM;
   TITLE "Good For You! Sales Data";
   LABEL whenYouEnjoy='Success Indicators' product='Product' year='Year';
   KEYLABEL Sum=' ';
   FOOTNOTE "Historical data pertaining to existing product line.";
RUN;
/* SGPLOT procedure to create statistical graphic*/
TITLE 'Two-Year Good For You! Bakery Sales Data';
PROC SGPLOT DATA=relevantBakerySales;
  VBAR product / RESPONSE=sales GROUP=whenYouEnjoy GROUPDISPLAY=cluster 
    STAT=sum DATASKIN=gloss;
  XAXIS DISPLAY=(nolabel noticks);
  YAXIS GRID;
RUN;

ODS HTML CLOSE;
ODS LISTING;
