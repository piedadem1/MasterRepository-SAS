/*Import Data & file location*/
PROC IMPORT OUT=employees DATAFILE= 
"/home/u43103072/bsa570_v4_wk2_assignment_data.xlsx"
DBMS=xlsx REPLACE;
     GETNAMES=YES;
RUN;
/*ensure the data is properly formatted*/
PROC PRINT DATA=employees;
RUN;
/*get a count of the employees by their positions*/
PROC TABULATE DATA=employees;
CLASS position;
TABLE position ALL;
RUN;
/*calculate the years of service*/
DATA employees;
SET employees;
IF endDate = . THEN endDate = TODAY();
RUN;
/*eliminate any position that isn’t Truck Driver*/
DATA truckers;
SET employees;
IF JOB ne 'Truck Driver' THEN DELETE;
RUN;
DATA truckers;
/*compute the years of service each truck driver has completed.*/
SET truckers;
yearsOfService=INT(YRDIF(hireDate, endDate));
RUN;
/*calculate the number of truck drivers that worked 0, 1, 2, 3, 4, or 5 years;*/
PROC PRINT DATA=truckers;
RUN;
/*Export File*/
ODS EXCEL FILE='/home/u43103072/bsa570_v4_wk2_assignment_data.xlsx'
    OPTIONS(sheet_interval='table');
PROC FREQ DATA=truckers;
TABLE yearsOfService;
RUN;
ODS EXCEL CLOSE;
