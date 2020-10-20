/*Associations with Bonus*/
ods graphics off;
proc freq data=STAT1.ameshousing3;
    tables (Lot_Shape_2 Fireplaces)*Bonus
          / chisq expected cellchi2 nocol nopercent 
            relrisk;
    format Bonus bonusfmt.;
    title 'Associations with Bonus';
run;

ods graphics on;
