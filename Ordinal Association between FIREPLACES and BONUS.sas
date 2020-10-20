/*Ordinal Association between FIREPLACES and BONUS*/
ods graphics off;
proc freq data=STAT1.ameshousing3;
    tables Fireplaces*Bonus / chisq measures cl;
    format Bonus bonusfmt.;
    title 'Ordinal Association between FIREPLACES and BONUS?';
run;

ods graphics on;
