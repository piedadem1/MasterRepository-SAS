PROC IMPORT DATAFILE="/home/u43103072/bsa570_v4_wk5_assignment_data1.xlsx"
		    OUT=bakerysales
		    DBMS=XLSX
		    REPLACE;
RUN;

PROC IMPORT DATAFILE="/home/u43103072/bsa570_v4_wk5_assignment_data2.xlsx"
		    OUT=bakerycosts
		    DBMS=XLSX
		    REPLACE;
RUN;
PROC PRINT DATA=bakerysales;
RUN;
PROC PRINT DATA=bakerycosts;
RUN;
PROC SORT DATA=bakerysales OUT=bakerysalesSorted; 
  BY storeNumber quarterEnding; 
RUN; 

PROC SORT DATA=bakerycosts OUT=bakerycostsSorted; 
  BY storeNumber quarterEnding; 
RUN; 

DATA bakeryrevenue; 
  MERGE bakerysalesSorted bakerycostsSorted; 
  BY storeNumber quarterEnding; 
RUN; 

DATA bakeryrevenueCalculated;
SET bakeryrevenue;
revenue = sales - costs;
RUN;

PROC SQL ;
TITLE 'Bakery Revenue By Store';
SELECT storeNumber, state, city, SUM(revenue) AS TotalRevenue 
FROM bakeryrevenueCalculated
GROUP BY  storeNumber, state, city
ORDER BY TotalRevenue descending;
QUIT;
RUN;
