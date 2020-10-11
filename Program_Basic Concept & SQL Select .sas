/*Matthew Piedade*/
/*creats statement creates data view*/
DATA bakerydata;
LENGTH State $17 City $14;
   INFILE DATALINES DELIMITER=',';
INPUT State $
City $
Year
Revenue;
DATALINES;
Alabama,Montgomery,2013,105196
Alaska,Juneau,2013,84725
Arizona,Phoenix,2013,39641
Arkansas,Little Rock,2013,118836
California,Sacramento,2013,142043
Colorado,Denver,2013,60778
Connecticut,Hartford,2013,132689
Delaware,Dover,2013,130220
Florida,Tallahassee,2013,148916
Georgia,Atlanta,2013,138480
Hawaii,Honolulu,2013,123215
Idaho,Boise,2013,83153
Illinois,Springfield,2013,95731
Indiana,Indianapolis,2013,145297
Iowa,Des Moines,2013,144081
Kansas,Topeka,2013,95137
Kentucky,Frankfort,2013,73956
Louisiana,Baton Rouge,2013,59691
Maine,Augusta,2013,53554
Maryland,Annapolis,2013,103205
Massachusetts,Boston,2013,136295
Michigan,Lansing,2013,70875
Minnesota,Minneapolis,2013,97261
Mississippi,Jackson,2013,46735
Missouri,Jefferson City,2013,68825
Montana,Helena,2013,33138
Nebraska,Lincoln,2013,142112
Nevada,Carson City,2013,48698
New Hampshire,Concord,2013,116028
New Jersey,Trenton,2013,83873
New Mexico,Santa Fe,2013,88124
New York,Albany,2013,108430
North Carolina,Raleigh,2013,119476
North Dakota,Bismarck,2013,32463
Ohio,Columbus,2013,41818
Oklahoma,Oklahoma City,2013,32872
Oregon,Salem,2013,54129
Pennsylvania,Harrisburg,2013,44672
Rhode Island,Providence,2013,68687
South Carolina,Columbia,2013,87534
South Dakota,Pierre,2013,115886
Tennessee,Memphis,2013,59096
Texas,Austin,2013,69776
Utah,Salt Lake City,2013,102626
Vermont,Montpellier,2013,33078
Virginia,Richmond,2013,103447
Washington,Olympia,2013,81189
West Virginia,Charleston,2013,82160
Wisconsin,Madison,2013,95123
Wyoming,Cheyenne,2013,89726
Alabama,Montgomery,2014,104782
Alaska,Juneau,2014,148726
Arizona,Phoenix,2014,68502
Arkansas,Little Rock,2014,64735
California,Sacramento,2014,100283
Colorado,Denver,2014,78883
Connecticut,Hartford,2014,124471
Delaware,Dover,2014,48292
Florida,Tallahassee,2014,115752
Georgia,Atlanta,2014,57438
Hawaii,Honolulu,2014,53634
Idaho,Boise,2014,31788
Illinois,Springfield,2014,80959
Indiana,Indianapolis,2014,84529
Iowa,Des Moines,2014,139807
Kansas,Topeka,2014,65262
Kentucky,Frankfort,2014,120736
Louisiana,Baton Rouge,2014,81096
Maine,Augusta,2014,88250
Maryland,Annapolis,2014,82002
Massachusetts,Boston,2014,111506
Michigan,Lansing,2014,115190
Minnesota,Minneapolis,2014,69482
Mississippi,Jackson,2014,38841
Missouri,Jefferson City,2014,30554
Montana,Helena,2014,34170
Nebraska,Lincoln,2014,72713
Nevada,Carson City,2014,98361
New Hampshire,Concord,2014,129069
New Jersey,Trenton,2014,108288
New Mexico,Santa Fe,2014,78404
New York,Albany,2014,56615
North Carolina,Raleigh,2014,67354
North Dakota,Bismarck,2014,145007
Ohio,Columbus,2014,112603
Oklahoma,Oklahoma City,2014,116929
Oregon,Salem,2014,121802
Pennsylvania,Harrisburg,2014,124733
Rhode Island,Providence,2014,90494
South Carolina,Columbia,2014,82457
South Dakota,Pierre,2014,60853
Tennessee,Memphis,2014,34413
Texas,Austin,2014,35079
Utah,Salt Lake City,2014,127345
Vermont,Montpellier,2014,67645
Virginia,Richmond,2014,111417
Washington,Olympia,2014,69109
West Virginia,Charleston,2014,47684
Wisconsin,Madison,2014,69011
Wyoming,Cheyenne,2014,102755
Alabama,Montgomery,2015,112382
Alaska,Juneau,2015,30800
Arizona,Phoenix,2015,123033
Arkansas,Little Rock,2015,104557
California,Sacramento,2015,143991
Colorado,Denver,2015,68773
Connecticut,Hartford,2015,40826
Delaware,Dover,2015,87209
Florida,Tallahassee,2015,96278
Georgia,Atlanta,2015,88374
Hawaii,Honolulu,2015,139248
Idaho,Boise,2015,36336
Illinois,Springfield,2015,103726
Indiana,Indianapolis,2015,55189
Iowa,Des Moines,2015,146335
Kansas,Topeka,2015,34169
Kentucky,Frankfort,2015,89643
Louisiana,Baton Rouge,2015,128310
Maine,Augusta,2015,58588
Maryland,Annapolis,2015,31241
Massachusetts,Boston,2015,113819
Michigan,Lansing,2015,37244
Minnesota,Minneapolis,2015,33024
Mississippi,Jackson,2015,50791
Missouri,Jefferson City,2015,40108
Montana,Helena,2015,52048
Nebraska,Lincoln,2015,68078
Nevada,Carson City,2015,132945
New Hampshire,Concord,2015,34417
New Jersey,Trenton,2015,40333
New Mexico,Santa Fe,2015,61929
New York,Albany,2015,127960
North Carolina,Raleigh,2015,58924
North Dakota,Bismarck,2015,45860
Ohio,Columbus,2015,47969
Oklahoma,Oklahoma City,2015,135671
Oregon,Salem,2015,40341
Pennsylvania,Harrisburg,2015,120976
Rhode Island,Providence,2015,145034
South Carolina,Columbia,2015,144594
South Dakota,Pierre,2015,123106
Tennessee,Memphis,2015,121732
Texas,Austin,2015,122831
Utah,Salt Lake City,2015,114080
Vermont,Montpellier,2015,82486
Virginia,Richmond,2015,114246
Washington,Olympia,2015,65914
West Virginia,Charleston,2015,68098
Wisconsin,Madison,2015,99764
Wyoming,Cheyenne,2015,126471
Alabama,Montgomery,2016,77162
Alaska,Juneau,2016,64497
Arizona,Phoenix,2016,85152
Arkansas,Little Rock,2016,64632
California,Sacramento,2016,88540
Colorado,Denver,2016,103145
Connecticut,Hartford,2016,92261
Delaware,Dover,2016,97738
Florida,Tallahassee,2016,121279
Georgia,Atlanta,2016,70676
Hawaii,Honolulu,2016,77137
Idaho,Boise,2016,105561
Illinois,Springfield,2016,50083
Indiana,Indianapolis,2016,100490
Iowa,Des Moines,2016,61172
Kansas,Topeka,2016,40067
Kentucky,Frankfort,2016,146912
Louisiana,Baton Rouge,2016,115226
Maine,Augusta,2016,101448
Maryland,Annapolis,2016,135503
Massachusetts,Boston,2016,79928
Michigan,Lansing,2016,131708
Minnesota,Minneapolis,2016,73986
Mississippi,Jackson,2016,59987
Missouri,Jefferson City,2016,45944
Montana,Helena,2016,95055
Nebraska,Lincoln,2016,119738
Nevada,Carson City,2016,39804
New Hampshire,Concord,2016,125700
New Jersey,Trenton,2016,45055
New Mexico,Santa Fe,2016,69532
New York,Albany,2016,105576
North Carolina,Raleigh,2016,132734
North Dakota,Bismarck,2016,109839
Ohio,Columbus,2016,86187
Oklahoma,Oklahoma City,2016,110632
Oregon,Salem,2016,52142
Pennsylvania,Harrisburg,2016,81122
Rhode Island,Providence,2016,128310
South Carolina,Columbia,2016,47349
South Dakota,Pierre,2016,117920
Tennessee,Memphis,2016,109302
Texas,Austin,2016,104696
Utah,Salt Lake City,2016,56105
Vermont,Montpellier,2016,124114
Virginia,Richmond,2016,119429
Washington,Olympia,2016,75210
West Virginia,Charleston,2016,64385
Wisconsin,Madison,2016,45383
Wyoming,Cheyenne,2016,71607
Alabama,Montgomery,2017,63180
Alaska,Juneau,2017,98584
Arizona,Phoenix,2017,57483
Arkansas,Little Rock,2017,47227
California,Sacramento,2017,75173
Colorado,Denver,2017,120132
Connecticut,Hartford,2017,133792
Delaware,Dover,2017,98686
Florida,Tallahassee,2017,30786
Georgia,Atlanta,2017,103253
Hawaii,Honolulu,2017,34971
Idaho,Boise,2017,34242
Illinois,Springfield,2017,33008
Indiana,Indianapolis,2017,97657
Iowa,Des Moines,2017,79211
Kansas,Topeka,2017,137892
Kentucky,Frankfort,2017,38301
Louisiana,Baton Rouge,2017,83175
Maine,Augusta,2017,73286
Maryland,Annapolis,2017,95590
Massachusetts,Boston,2017,93570
Michigan,Lansing,2017,147614
Minnesota,Minneapolis,2017,121890
Mississippi,Jackson,2017,97583
Missouri,Jefferson City,2017,94730
Montana,Helena,2017,62705
Nebraska,Lincoln,2017,43747
Nevada,Carson City,2017,98704
New Hampshire,Concord,2017,61622
New Jersey,Trenton,2017,129174
New Mexico,Santa Fe,2017,98152
New York,Albany,2017,57214
North Carolina,Raleigh,2017,72998
North Dakota,Bismarck,2017,119524
Ohio,Columbus,2017,149551
Oklahoma,Oklahoma City,2017,125645
Oregon,Salem,2017,33500
Pennsylvania,Harrisburg,2017,77016
Rhode Island,Providence,2017,48687
South Carolina,Columbia,2017,81053
South Dakota,Pierre,2017,64733
Tennessee,Memphis,2017,97256
Texas,Austin,2017,78534
Utah,Salt Lake City,2017,56099
Vermont,Montpellier,2017,116751
Virginia,Richmond,2017,132848
Washington,Olympia,2017,40558
West Virginia,Charleston,2017,78878
Wisconsin,Madison,2017,84156
Wyoming,Cheyenne,2017,45475
;

/*prints the observations in a SAS data set*/
PROC PRINT DATA=bakerydata;


/*SQL used to group the data by state and sum the revenue of the business*/
PROC SQL ;
TITLE 'Bakery Sales By State';
SELECT State, SUM(Revenue)  AS TotalRevenue 
FROM bakerydata
GROUP BY State
ORDER BY TotalRevenue descending;
QUIT;
