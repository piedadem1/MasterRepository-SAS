/*Matthew Piedade*/
/*Import Datfile*/
PROC IMPORT DATAFILE="/home/u43103072/bsa570_v4_wk5_assignment_data1.xlsx"
		    OUT=bakerysales
		    DBMS=XLSX
		    REPLACE;
RUN;

/*Import Datfile*/
PROC IMPORT DATAFILE="/home/u43103072/bsa570_v4_wk5_assignment_data2.xlsx"
		    OUT=bakerycosts
		    DBMS=XLSX
		    REPLACE;
RUN;
/*ensure the data is properly formatted*/
PROC PRINT DATA=bakerysales;
RUN;
/*ensure the data is properly formatted*/
PROC PRINT DATA=bakerycosts;
RUN;
/*orders data set observations by StoreNumber & QuarterEnding*/
PROC SORT DATA=bakerysales OUT=bakerysalesSorted; 
  BY storeNumber quarterEnding; 
RUN; 
/*orders data set observations by StoreNumber & QuarterEnding*/
PROC SORT DATA=bakerycosts OUT=bakerycostsSorted; 
  BY storeNumber quarterEnding; 
RUN; 
/*Merges sorted lists*/
DATA bakeryrevenue; 
  MERGE bakerysalesSorted bakerycostsSorted; 
  BY storeNumber quarterEnding; 
RUN; 
/*Calculates Revenue*/
DATA bakeryrevenueCalculated;
SET bakeryrevenue;
revenue = sales - costs;
RUN;
/*SQL used to group the data, and set data in order*/
PROC SQL ;
TITLE 'Bakery Revenue By Store';
SELECT storeNumber, state, city, SUM(revenue) AS TotalRevenue 
FROM bakeryrevenueCalculated
GROUP BY  storeNumber, state, city
ORDER BY TotalRevenue descending;
QUIT;
RUN;
