%% Black rainbow colormap
% This colormap follows the rainbow/jet scheme
% but it replaces green with black
black_rainbow = [ ... 
           0	0	0.5625
    0	0	0.60625
    0	0	0.65
    0	0	0.69375
    0	0	0.7375
    0	0	0.78125
    0	0	0.825
    0	0	0.86875
    0	0	0.9125
    0	0	0.95625
    0	0	1
    0	0.071429	1
    0	0.14286	1
    0	0.21429	1
    0	0.28571	1
    0	0.35714	1
    0	0.42857	1
    0	0.5	1
    0	0.57143	1
    0	0.64286	1
    0	0.71429	1
    0	0.78571	1
    0	0.85714	1
    0	0.92857	1
    0	1	1
    0	0.85714	0.85714
    0	0.71429	0.71429
    0	0.57143	0.57143
    0	0.42857	0.42857
    0	0.28571	0.28571
    0	0.14286	0.14286
    0	0	0
    0.14286	0.14286	0
    0.28571	0.28571	0
    0.42857	0.42857	0
    0.57143	0.57143	0
    0.71429	0.71429	0
    0.85714	0.85714	0
    1	1	0
    1	0.92857	0
    1	0.85714	0
    1	0.78571	0
    1	0.71429	0
    1	0.64286	0
    1	0.57143	0
    1	0.5	0
    1	0.42857	0
    1	0.35714	0
    1	0.28571	0
    1	0.21429	0
    1	0.14286	0
    1	0.071429	0
    1	0	0
    0.95455	0	0
    0.90909	0	0
    0.86364	0	0
    0.81818	0	0
    0.77273	0	0
    0.72727	0	0
    0.68182	0	0
    0.63636	0	0
    0.59091	0	0
    0.54545	0	0
    0.5	0	0];

%% Black rainbow more gradual

P = size(black_rainbow,1);
black_rainbow_plus = interp1(1:P, black_rainbow, linspace(1,P,256), 'linear');
% 
% 
% black_rainbow_plus=[ ... 
%     0	0	0.525
%     0	0	0.54138
%     0	0	0.55776
%     0	0	0.57414
%     0	0	0.59052
%     0	0	0.6069
%     0	0	0.62328
%     0	0	0.63966
%     0	0	0.65603
%     0	0	0.67241
%     0	0	0.68879
%     0	0	0.70517
%     0	0	0.72155
%     0	0	0.73793
%     0	0	0.75431
%     0	0	0.77069
%     0	0	0.78707
%     0	0	0.80345
%     0	0	0.81983
%     0	0	0.83621
%     0	0	0.85259
%     0	0	0.86897
%     0	0	0.88534
%     0	0	0.90172
%     0	0	0.9181
%     0	0	0.93448
%     0	0	0.95086
%     0	0	0.96724
%     0	0	0.98362
%     0	0	1
%     0	0.033333	1
%     0	0.066667	1
%     0	0.1	1
%     0	0.13333	1
%     0	0.16667	1
%     0	0.2	1
%     0	0.23333	1
%     0	0.26667	1
%     0	0.3	1
%     0	0.33333	1
%     0	0.36667	1
%     0	0.4	1
%     0	0.43333	1
%     0	0.46667	1
%     0	0.5	1
%     0	0.53333	1
%     0	0.56667	1
%     0	0.6	1
%     0	0.63333	1
%     0	0.66667	1
%     0	0.7	1
%     0	0.73333	1
%     0	0.76667	1
%     0	0.8	1
%     0	0.83333	1
%     0	0.86667	1
%     0	0.9	1
%     0	0.93333	1
%     0	0.96667	1
%     0	1	1
%     0	0.95238	0.95238
%     0	0.90476	0.90476
%     0	0.85714	0.85714
%     0	0.80952	0.80952
%     0	0.7619	0.7619
%     0	0.71429	0.71429
%     0	0.66667	0.66667
%     0	0.61905	0.61905
%     0	0.57143	0.57143
%     0	0.52381	0.52381
%     0	0.47619	0.47619
%     0	0.42857	0.42857
%     0	0.38095	0.38095
%     0	0.33333	0.33333
%     0	0.28571	0.28571
%     0	0.2381	0.2381
%     0	0.19048	0.19048
%     0	0.14286	0.14286
%     0	0.095238	0.095238
%     0	0.047619	0.047619
%     0	0	0
%     0.05	0.05	0
%     0.1	0.1	0
%     0.15	0.15	0
%     0.2	0.2	0
%     0.25	0.25	0
%     0.3	0.3	0
%     0.35	0.35	0
%     0.4	0.4	0
%     0.45	0.45	0
%     0.5	0.5	0
%     0.55	0.55	0
%     0.6	0.6	0
%     0.65	0.65	0
%     0.7	0.7	0
%     0.75	0.75	0
%     0.8	0.8	0
%     0.85	0.85	0
%     0.9	0.9	0
%     0.95	0.95	0
%     1	1	0
%     1	0.96552	0
%     1	0.93103	0
%     1	0.89655	0
%     1	0.86207	0
%     1	0.82759	0
%     1	0.7931	0
%     1	0.75862	0
%     1	0.72414	0
%     1	0.68966	0
%     1	0.65517	0
%     1	0.62069	0
%     1	0.58621	0
%     1	0.55172	0
%     1	0.51724	0
%     1	0.48276	0
%     1	0.44828	0
%     1	0.41379	0
%     1	0.37931	0
%     1	0.34483	0
%     1	0.31034	0
%     1	0.27586	0
%     1	0.24138	0
%     1	0.2069	0
%     1	0.17241	0
%     1	0.13793	0
%     1	0.10345	0
%     1	0.068966	0
%     1	0.034483	0
%     1	0	0
%     0.98333	0	0
%     0.96667	0	0
%     0.95	0	0
%     0.93333	0	0
%     0.91667	0	0
%     0.9	0	0
%     0.88333	0	0
%     0.86667	0	0
%     0.85	0	0
%     0.83333	0	0
%     0.81667	0	0
%     0.8	0	0
%     0.78333	0	0
%     0.76667	0	0
%     0.75	0	0
%     0.73333	0	0
%     0.71667	0	0
%     0.7	0	0
%     0.68333	0	0
%     0.66667	0	0
%     0.65	0	0
%     0.63333	0	0
%     0.61667	0	0
%     0.6	0	0
%     0.58333	0	0
%     0.56667	0	0
%     0.55	0	0
%     0.53333	0	0
%     0.51667	0	0
%     0.5	0	0];

%% Black rainbow for shear

black_rainbow_shear=[...,
    0	0	0
    0.041667	0.039542	0
    0.083333	0.079085	0
    0.125	0.11863	0
    0.16667	0.15817	0
    0.20833	0.19771	0
    0.25	0.23725	0
    0.29167	0.2768	0
    0.33333	0.31634	0
    0.375	0.35588	0
    0.41667	0.39542	0
    0.45833	0.43497	0
    0.5	0.47451	0
    0.54167	0.51405	0
    0.58333	0.55359	0
    0.625	0.59314	0
    0.66667	0.63268	0
    0.70833	0.67222	0
    0.75	0.71176	0
    0.79167	0.75131	0
    0.83333	0.79085	0
    0.875	0.83039	0
    0.91667	0.86993	0
    0.95833	0.90948	0
    1	0.94902	0
    1	0.9332	0
    1	0.91739	0
    1	0.90157	0
    1	0.88575	0
    1	0.86993	0
    1	0.85412	0
    1	0.8383	0
    1	0.82248	0
    1	0.80667	0
    1	0.79085	0
    1	0.77503	0
    1	0.75922	0
    1	0.7434	0
    1	0.72758	0
    1	0.71176	0
    1	0.69595	0
    1	0.68013	0
    1	0.66431	0
    1	0.6485	0
    1	0.63268	0
    1	0.61686	0
    1	0.60105	0
    1	0.58523	0
    1	0.56941	0
    1	0.55359	0
    1	0.53778	0
    1	0.52196	0
    1	0.50614	0
    1	0.49033	0
    1	0.47451	0
    1	0.45869	0
    1	0.44288	0
    1	0.42706	0
    1	0.41124	0
    1	0.39542	0
    1	0.37961	0
    1	0.36379	0
    1	0.34797	0
    1	0.33216	0
    1	0.31634	0
    1	0.30052	0
    1	0.28471	0
    1	0.26889	0
    1	0.25307	0
    1	0.23725	0
    1	0.22144	0
    1	0.20562	0
    1	0.1898	0
    1	0.17399	0
    1	0.15817	0
    1	0.14235	0
    1	0.12654	0
    1	0.11072	0
    1	0.094902	0
    1	0.079085	0
    1	0.063268	0
    1	0.047451	0
    1	0.031634	0
    1	0.015817	0
    1	0	0
    1	0.04	0.037961
    1	0.08	0.075922
    1	0.12	0.11388
    1	0.16	0.15184
    1	0.2	0.1898
    1	0.24	0.22776
    1	0.28	0.26573
    1	0.32	0.30369
    1	0.36	0.34165
    1	0.4	0.37961
    1	0.44	0.41757
    1	0.48	0.45553
    1	0.52	0.49349
    1	0.56	0.53145
    1	0.6	0.56941
    1	0.64	0.60737
    1	0.68	0.64533
    1	0.72	0.68329
    1	0.76	0.72125
    1	0.8	0.75922
    1	0.84	0.79718
    1	0.88	0.83514
    1	0.92	0.8731
    1	0.96	0.91106
    1	1	0.94902
    0.96667	0.96667	0.94405
    0.93333	0.93333	0.93908
    0.9	0.9	0.93412
    0.86667	0.86667	0.92915
    0.83333	0.83333	0.92418
    0.8	0.8	0.91922
    0.76667	0.76667	0.91425
    0.73333	0.73333	0.90928
    0.7	0.7	0.90431
    0.66667	0.66667	0.89935
    0.63333	0.63333	0.89438
    0.6	0.6	0.88941
    0.56667	0.56667	0.88444
    0.53333	0.53333	0.87948
    0.5	0.5	0.87451
    0.46667	0.46667	0.86954
    0.43333	0.43333	0.86458
    0.4	0.4	0.85961
    0.36667	0.36667	0.85464
    0.33333	0.33333	0.84967
    0.3	0.3	0.84471
    0.26667	0.26667	0.83974
    0.23333	0.23333	0.83477
    0.2	0.2	0.8298
    0.16667	0.16667	0.82484
    0.13333	0.13333	0.81987
    0.1	0.1	0.8149
    0.066667	0.066667	0.80993
    0.033333	0.033333	0.80497
    0	0	0.8];

%% Black rainbow for shear - LONG

black_rainbow_shear_long=[...,
0.1	0.1	0.8
0.12308	0.12308	0.80513
0.14615	0.14615	0.81026
0.16923	0.16923	0.81538
0.19231	0.19231	0.82051
0.21538	0.21538	0.82564
0.23846	0.23846	0.83077
0.26154	0.26154	0.8359
0.28462	0.28462	0.84103
0.30769	0.30769	0.84615
0.33077	0.33077	0.85128
0.35385	0.35385	0.85641
0.37692	0.37692	0.86154
0.4	0.4	0.86667
0.42308	0.42308	0.87179
0.44615	0.44615	0.87692
0.46923	0.46923	0.88205
0.49231	0.49231	0.88718
0.51538	0.51538	0.89231
0.53846	0.53846	0.89744
0.56154	0.56154	0.90256
0.58462	0.58462	0.90769
0.60769	0.60769	0.91282
0.63077	0.63077	0.91795
0.65385	0.65385	0.92308
0.67692	0.67692	0.92821
0.7	0.7	0.93333
0.72308	0.72308	0.93846
0.74615	0.74615	0.94359
0.76923	0.76923	0.94872
0.79231	0.79231	0.95385
0.81538	0.81538	0.95897
0.83846	0.83846	0.9641
0.86154	0.86154	0.96923
0.88462	0.88462	0.97436
0.90769	0.90769	0.97949
0.93077	0.93077	0.98462
0.95385	0.95385	0.98974
0.97692	0.97692	0.99487
1	1	1
1	1	1
0.99744	0.97436	0.97436
0.99487	0.94872	0.94872
0.99231	0.92308	0.92308
0.98974	0.89744	0.89744
0.98718	0.87179	0.87179
0.98462	0.84615	0.84615
0.98205	0.82051	0.82051
0.97949	0.79487	0.79487
0.97692	0.76923	0.76923
0.97436	0.74359	0.74359
0.97179	0.71795	0.71795
0.96923	0.69231	0.69231
0.96667	0.66667	0.66667
0.9641	0.64103	0.64103
0.96154	0.61538	0.61538
0.95897	0.58974	0.58974
0.95641	0.5641	0.5641
0.95385	0.53846	0.53846
0.95128	0.51282	0.51282
0.94872	0.48718	0.48718
0.94615	0.46154	0.46154
0.94359	0.4359	0.4359
0.94103	0.41026	0.41026
0.93846	0.38462	0.38462
0.9359	0.35897	0.35897
0.93333	0.33333	0.33333
0.93077	0.30769	0.30769
0.92821	0.28205	0.28205
0.92564	0.25641	0.25641
0.92308	0.23077	0.23077
0.92051	0.20513	0.20513
0.91795	0.17949	0.17949
0.91538	0.15385	0.15385
0.91282	0.12821	0.12821
0.91026	0.10256	0.10256
0.90769	0.076923	0.076923
0.90513	0.051282	0.051282
0.90256	0.025641	0.025641
0.9	0	0
0.9	0	0
0.90256	0.012821	0.0025641
0.90513	0.025641	0.0051282
0.90769	0.038462	0.0076923
0.91026	0.051282	0.010256
0.91282	0.064103	0.012821
0.91538	0.076923	0.015385
0.91795	0.089744	0.017949
0.92051	0.10256	0.020513
0.92308	0.11538	0.023077
0.92564	0.12821	0.025641
0.92821	0.14103	0.028205
0.93077	0.15385	0.030769
0.93333	0.16667	0.033333
0.9359	0.17949	0.035897
0.93846	0.19231	0.038462
0.94103	0.20513	0.041026
0.94359	0.21795	0.04359
0.94615	0.23077	0.046154
0.94872	0.24359	0.048718
0.95128	0.25641	0.051282
0.95385	0.26923	0.053846
0.95641	0.28205	0.05641
0.95897	0.29487	0.058974
0.96154	0.30769	0.061538
0.9641	0.32051	0.064103
0.96667	0.33333	0.066667
0.96923	0.34615	0.069231
0.97179	0.35897	0.071795
0.97436	0.37179	0.074359
0.97692	0.38462	0.076923
0.97949	0.39744	0.079487
0.98205	0.41026	0.082051
0.98462	0.42308	0.084615
0.98718	0.4359	0.087179
0.98974	0.44872	0.089744
0.99231	0.46154	0.092308
0.99487	0.47436	0.094872
0.99744	0.48718	0.097436
1	0.5	0.1
1	0.5	0.1
0.99744	0.51282	0.1
0.99487	0.52564	0.1
0.99231	0.53846	0.1
0.98974	0.55128	0.1
0.98718	0.5641	0.1
0.98462	0.57692	0.1
0.98205	0.58974	0.1
0.97949	0.60256	0.1
0.97692	0.61538	0.1
0.97436	0.62821	0.1
0.97179	0.64103	0.1
0.96923	0.65385	0.1
0.96667	0.66667	0.1
0.9641	0.67949	0.1
0.96154	0.69231	0.1
0.95897	0.70513	0.1
0.95641	0.71795	0.1
0.95385	0.73077	0.1
0.95128	0.74359	0.1
0.94872	0.75641	0.1
0.94615	0.76923	0.1
0.94359	0.78205	0.1
0.94103	0.79487	0.1
0.93846	0.80769	0.1
0.9359	0.82051	0.1
0.93333	0.83333	0.1
0.93077	0.84615	0.1
0.92821	0.85897	0.1
0.92564	0.87179	0.1
0.92308	0.88462	0.1
0.92051	0.89744	0.1
0.91795	0.91026	0.1
0.91538	0.92308	0.1
0.91282	0.9359	0.1
0.91026	0.94872	0.1
0.90769	0.96154	0.1
0.90513	0.97436	0.1
0.90256	0.98718	0.1
0.9	1	0.1
0.9	1	0.1
0.87692	0.97436	0.097436
0.85385	0.94872	0.094872
0.83077	0.92308	0.092308
0.80769	0.89744	0.089744
0.78462	0.87179	0.087179
0.76154	0.84615	0.084615
0.73846	0.82051	0.082051
0.71538	0.79487	0.079487
0.69231	0.76923	0.076923
0.66923	0.74359	0.074359
0.64615	0.71795	0.071795
0.62308	0.69231	0.069231
0.6	0.66667	0.066667
0.57692	0.64103	0.064103
0.55385	0.61538	0.061538
0.53077	0.58974	0.058974
0.50769	0.5641	0.05641
0.48462	0.53846	0.053846
0.46154	0.51282	0.051282
0.43846	0.48718	0.048718
0.41538	0.46154	0.046154
0.39231	0.4359	0.04359
0.36923	0.41026	0.041026
0.34615	0.38462	0.038462
0.32308	0.35897	0.035897
0.3	0.33333	0.033333
0.27692	0.30769	0.030769
0.25385	0.28205	0.028205
0.23077	0.25641	0.025641
0.20769	0.23077	0.023077
0.18462	0.20513	0.020513
0.16154	0.17949	0.017949
0.13846	0.15385	0.015385
0.11538	0.12821	0.012821
0.092308	0.10256	0.010256
0.069231	0.076923	0.0076923
0.046154	0.051282	0.0051282
0.023077	0.025641	0.0025641
0	0	0];

%% Black rainbow smoother - LONG

black_rainbow_plus_long=[...,
0	0	0.5
0	0	0.51379
0	0	0.52759
0	0	0.54138
0	0	0.55517
0	0	0.56897
0	0	0.58276
0	0	0.59655
0	0	0.61034
0	0	0.62414
0	0	0.63793
0	0	0.65172
0	0	0.66552
0	0	0.67931
0	0	0.6931
0	0	0.7069
0	0	0.72069
0	0	0.73448
0	0	0.74828
0	0	0.76207
0	0	0.77586
0	0	0.78966
0	0	0.80345
0	0	0.81724
0	0	0.83103
0	0	0.84483
0	0	0.85862
0	0	0.87241
0	0	0.88621
0	0	0.9
0	0	0.9
0.0068966	0.017241	0.90345
0.013793	0.034483	0.9069
0.02069	0.051724	0.91034
0.027586	0.068966	0.91379
0.034483	0.086207	0.91724
0.041379	0.10345	0.92069
0.048276	0.12069	0.92414
0.055172	0.13793	0.92759
0.062069	0.15517	0.93103
0.068966	0.17241	0.93448
0.075862	0.18966	0.93793
0.082759	0.2069	0.94138
0.089655	0.22414	0.94483
0.096552	0.24138	0.94828
0.10345	0.25862	0.95172
0.11034	0.27586	0.95517
0.11724	0.2931	0.95862
0.12414	0.31034	0.96207
0.13103	0.32759	0.96552
0.13793	0.34483	0.96897
0.14483	0.36207	0.97241
0.15172	0.37931	0.97586
0.15862	0.39655	0.97931
0.16552	0.41379	0.98276
0.17241	0.43103	0.98621
0.17931	0.44828	0.98966
0.18621	0.46552	0.9931
0.1931	0.48276	0.99655
0.2	0.5	1
0.2	0.5	1
0.21724	0.51724	1
0.23448	0.53448	1
0.25172	0.55172	1
0.26897	0.56897	1
0.28621	0.58621	1
0.30345	0.60345	1
0.32069	0.62069	1
0.33793	0.63793	1
0.35517	0.65517	1
0.37241	0.67241	1
0.38966	0.68966	1
0.4069	0.7069	1
0.42414	0.72414	1
0.44138	0.74138	1
0.45862	0.75862	1
0.47586	0.77586	1
0.4931	0.7931	1
0.51034	0.81034	1
0.52759	0.82759	1
0.54483	0.84483	1
0.56207	0.86207	1
0.57931	0.87931	1
0.59655	0.89655	1
0.61379	0.91379	1
0.63103	0.93103	1
0.64828	0.94828	1
0.66552	0.96552	1
0.68276	0.98276	1
0.7	1	1
0.7	1	1
0.67586	0.96552	0.96552
0.65172	0.93103	0.93103
0.62759	0.89655	0.89655
0.60345	0.86207	0.86207
0.57931	0.82759	0.82759
0.55517	0.7931	0.7931
0.53103	0.75862	0.75862
0.5069	0.72414	0.72414
0.48276	0.68966	0.68966
0.45862	0.65517	0.65517
0.43448	0.62069	0.62069
0.41034	0.58621	0.58621
0.38621	0.55172	0.55172
0.36207	0.51724	0.51724
0.33793	0.48276	0.48276
0.31379	0.44828	0.44828
0.28966	0.41379	0.41379
0.26552	0.37931	0.37931
0.24138	0.34483	0.34483
0.21724	0.31034	0.31034
0.1931	0.27586	0.27586
0.16897	0.24138	0.24138
0.14483	0.2069	0.2069
0.12069	0.17241	0.17241
0.096552	0.13793	0.13793
0.072414	0.10345	0.10345
0.048276	0.068966	0.068966
0.024138	0.034483	0.034483
0	0	0
0	0	0
0.034483	0.034483	0.013793
0.068966	0.068966	0.027586
0.10345	0.10345	0.041379
0.13793	0.13793	0.055172
0.17241	0.17241	0.068966
0.2069	0.2069	0.082759
0.24138	0.24138	0.096552
0.27586	0.27586	0.11034
0.31034	0.31034	0.12414
0.34483	0.34483	0.13793
0.37931	0.37931	0.15172
0.41379	0.41379	0.16552
0.44828	0.44828	0.17931
0.48276	0.48276	0.1931
0.51724	0.51724	0.2069
0.55172	0.55172	0.22069
0.58621	0.58621	0.23448
0.62069	0.62069	0.24828
0.65517	0.65517	0.26207
0.68966	0.68966	0.27586
0.72414	0.72414	0.28966
0.75862	0.75862	0.30345
0.7931	0.7931	0.31724
0.82759	0.82759	0.33103
0.86207	0.86207	0.34483
0.89655	0.89655	0.35862
0.93103	0.93103	0.37241
0.96552	0.96552	0.38621
1	1	0.4
1	1	0.4
1	0.98621	0.38966
1	0.97241	0.37931
1	0.95862	0.36897
1	0.94483	0.35862
1	0.93103	0.34828
1	0.91724	0.33793
1	0.90345	0.32759
1	0.88966	0.31724
1	0.87586	0.3069
1	0.86207	0.29655
1	0.84828	0.28621
1	0.83448	0.27586
1	0.82069	0.26552
1	0.8069	0.25517
1	0.7931	0.24483
1	0.77931	0.23448
1	0.76552	0.22414
1	0.75172	0.21379
1	0.73793	0.20345
1	0.72414	0.1931
1	0.71034	0.18276
1	0.69655	0.17241
1	0.68276	0.16207
1	0.66897	0.15172
1	0.65517	0.14138
1	0.64138	0.13103
1	0.62759	0.12069
1	0.61379	0.11034
1	0.6	0.1
1	0.6	0.1
0.99655	0.57931	0.096552
0.9931	0.55862	0.093103
0.98966	0.53793	0.089655
0.98621	0.51724	0.086207
0.98276	0.49655	0.082759
0.97931	0.47586	0.07931
0.97586	0.45517	0.075862
0.97241	0.43448	0.072414
0.96897	0.41379	0.068966
0.96552	0.3931	0.065517
0.96207	0.37241	0.062069
0.95862	0.35172	0.058621
0.95517	0.33103	0.055172
0.95172	0.31034	0.051724
0.94828	0.28966	0.048276
0.94483	0.26897	0.044828
0.94138	0.24828	0.041379
0.93793	0.22759	0.037931
0.93448	0.2069	0.034483
0.93103	0.18621	0.031034
0.92759	0.16552	0.027586
0.92414	0.14483	0.024138
0.92069	0.12414	0.02069
0.91724	0.10345	0.017241
0.91379	0.082759	0.013793
0.91034	0.062069	0.010345
0.9069	0.041379	0.0068966
0.90345	0.02069	0.0034483
0.9	0	0
0.9	0	0
0.88276	0	0
0.86552	0	0
0.84828	0	0
0.83103	0	0
0.81379	0	0
0.79655	0	0
0.77931	0	0
0.76207	0	0
0.74483	0	0
0.72759	0	0
0.71034	0	0
0.6931	0	0
0.67586	0	0
0.65862	0	0
0.64138	0	0
0.62414	0	0
0.6069	0	0
0.58966	0	0
0.57241	0	0
0.55517	0	0
0.53793	0	0
0.52069	0	0
0.50345	0	0
0.48621	0	0
0.46897	0	0
0.45172	0	0
0.43448	0	0
0.41724	0	0
0.4	0	0];
