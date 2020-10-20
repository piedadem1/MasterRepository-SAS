/*Regression of PctBodyFat2 on All*/  /*Part A*/
ods graphics off;
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck Chest Abdomen Hip Thigh
          Knee Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors';
run;
quit;

/*Part B*/
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck Chest Abdomen Hip Thigh
               Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors, Minus Knee';
run;
quit;

/*Part C*/
proc reg data=STAT1.BodyFat2;
    model PctBodyFat2=Age Weight Height
          Neck       Abdomen Hip Thigh
               Ankle Biceps Forearm Wrist;
    title 'Regression of PctBodyFat2 on All '
          'Predictors, Minus Knee, Chest';
run;
quit;

