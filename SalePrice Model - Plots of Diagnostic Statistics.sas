%let interval=Gr_Liv_Area Basement_Area Garage_Area Deck_Porch_Area 
         Lot_Area Age_Sold Bedroom_AbvGr Total_Bathroom ;

/*SalePrice Model - Plots of Diagnostic Statistics*//*Part A*/
ods graphics on;
proc reg data=STAT1.ameshousing3;
    CONTINUOUS: model SalePrice 
                  = &interval;
    title 'SalePrice Model - Plots of Diagnostic Statistics';
run;
quit;


/*Part B*/
proc reg data=STAT1.ameshousing3 
         plots(only)=(QQ RESIDUALBYPREDICTED RESIDUALS);
    CONTINUOUS: model SalePrice 
                  = &interval;
    title 'SalePrice Model - Plots of Diagnostic Statistics';
run;
quit;

