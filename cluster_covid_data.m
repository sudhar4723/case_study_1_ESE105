%case study 1 script
[C, indx] = kmeans(CNTY_COVID, 9);
cv = cvpartition(size(CNTY_COVID,1),'HoldOut',0.3);
idx = cv.test;
% Separate to training and test data
dataTrain = CNTY_COVID(~idx,:);
dataTest  = CNTY_COVID(idx,:);
dataTest