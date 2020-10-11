/*Matthew Piedade*/
/*Import data*/
DATA WORK.BAKERYSALES    ;
 INFILE '/home/u43103072/bsa570_v4_wk4_assignment_data.txt' DELIMITER = '|' MISSOVER DSD LRECL=32767 FIRSTOBS=2 ;
 /*Specifies the informat for reading the values of the variables that are listed in the INFORMAT statement. */
 INFORMAT strDate $30. ;
 INFORMAT product best32. ;
 INFORMAT sales nlnum32. ;
 /*Specifies the format that is listed for writing the values of the variables. */
 FORMAT strDate $30. ;
 FORMAT product best12. ;
 FORMAT sales nlnum12. ;
 INPUT
 strDate  $
 product
 sales
;
/*Defines Index*/
DATA new;
SET bakerysales;
dateSlashFinder=FIND(strDate,"/");
dateCommaFinder=INDEX(strDate, ',');
FORMAT productSales COMMA20.;
FORMAT productName $30.;
FORMAT date MMDDYY10.;
/*Solves for logic expression then Do group process and recall value*/
IF dateCommaFinder = 0 THEN 
	DO 
	    date = input(strDate,MMDDYY10.);
	    FORMAT date MMDDYY10.;	
        day = day(date);
        mnth=month(date);
        year=year(date);
	END;
ELSE
         DO  
              date3 = SUBSTR(strDate, dateCommaFinder+2);
              dateSpaceFinder=INDEX(date3, ' ');
              month = SUBSTR(date3, 1, dateSpaceFinder);
              SELECT (month);
                          WHEN ('January')           mnth=01;
                          WHEN ('February')          mnth=02;
                          WHEN ('March')             mnth=03;
                          WHEN ('April')             mnth=04;
                     WHEN ('May')               mnth=05;
                     WHEN ('June')              mnth=06;
                     WHEN ('July')              mnth=07;
                     WHEN ('August')            mnth=08;
                     WHEN ('September')         mnth=09;
                     WHEN ('October')           mnth=10;
                     WHEN ('November')          mnth=11;
                     WHEN ('December')          mnth=12;
                     OTHERWISE                  mnth=.;
                     END;

          day  = INPUT(SUBSTR(date3,dateSpaceFinder+1,2),2.);
          year = INPUT(SUBSTR(date3,dateSpaceFinder+5,4),4.);
          date = MDY(mnth,day,year);
       END;

/*Converts a numerical value stored in a character variable into a numeric variable */
productSales = INPUT(TRIM(sales), COMMA20.);
SELECT (product);
   WHEN (1)                   productName='Breakfast bar';
   WHEN (2)                   productName='Cookie bar';
   WHEN (3)                   productName='Savory meal bar';
OTHERWISE                     productName=.;
END;
RUN;

/*Procedure used to display descriptive statistics in tabular format */
PROC TABULATE DATA = new FORMAT=DOLLAR11. STYLE={BACKGROUND=WHITE FOREGROUND=BLUE JUST=CENTER};
   CLASS productName  year mnth;
   VAR productSales;
   KEYLABEL ALL='Totals';
   TABLE productName = '' ALL, ((year='Year'*mnth='Month' ALL)*productSales='' *SUM='');
RUN;
