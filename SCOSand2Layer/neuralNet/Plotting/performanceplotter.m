
db2estimate = net1(testset')';
testError = 100*(testTarget-db2estimate)./testTarget;
scatter3(testratio, testthiccness, testError);
Tx = testratio'; Ty = testthiccness'; Tz = testError';
f = fit([Tx, Ty],Tz,'poly23');
plot( f, [Tx, Ty], Tz )