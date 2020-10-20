/*proc reg data_proc glm data_proc plm restore*/  /*Part A*/
ods graphics on;

proc reg data=STAT1.ameshousing3 ;
    model SalePrice=Basement_Area Lot_Area;
    title "Model with Basement Area and Lot Area";
run;
quit;

/*Part B*/
proc glm data=STAT1.ameshousing3 
         plots(only)=(contourfit);
    model SalePrice=Basement_Area Lot_Area;
    store out=multiple;
    title "Model with Basement Area and Gross Living Area";
run;
quit;

/*Part C*/
proc plm restore=multiple plots=all;
    effectplot contour (y=Basement_Area x=Lot_Area);
    effectplot slicefit(x=Lot_Area sliceby=Basement_Area=250 to 1000 by 250);
run; 

title;


