PROC IMPORT OUT=employees DATAFILE= 
"/home/u43103072/bsa570_v4_wk2_assignment_data.xlsx"
DBMS=xlsx REPLACE;
     GETNAMES=YES;
RUN;
PROC PRINT DATA=employees;
RUN;
PROC TABULATE DATA=employees;
CLASS position;
TABLE position ALL;
RUN;
DATA employees;
SET employees;
IF endDate = . THEN endDate = TODAY();
RUN;
DATA truckers;
SET employees;
IF JOB ne 'Truck Driver' THEN DELETE;
RUN;
DATA truckers;
SET truckers;
yearsOfService=INT(YRDIF(hireDate, endDate));
RUN;
PROC PRINT DATA=truckers;
RUN;
ODS EXCEL FILE='/home/u43103072/bsa570_v4_wk2_assignment_data.xlsx'
    OPTIONS(sheet_interval='table');
PROC FREQ DATA=truckers;
TABLE yearsOfService;
RUN;
ODS EXCEL CLOSE;
