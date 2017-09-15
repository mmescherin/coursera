% dataset3ParamsTrain

% Load from ex6data3: 
% You will have X, y in your environment
load('ex6data3.mat');


CArr = [0.01 0.03 0.1 0.3 1 3 10 30];
sigmaArr = CArr;

cg = 0;
sg = 0;
res = 1;
ii = 1;

for cc = CArr;
 for ss = sigmaArr; 
   model= svmTrain(X, y, cc, @(x1, x2) gaussianKernel(x1, x2, ss));
   predictions = svmPredict(model, Xval);   
   
   mm = mean(double(predictions ~= yval));
   
   if mm < res;
     cg = cc;
     sg = ss;
     res = mm;
   endif;   
   
%subplot(8,8,ii);
ii = ii + 1;
   visualizeBoundary(X, y, model);
   legend(sprintf('C = %0.2f, sigma = %0.2f, error = %0.2f \n', cc, ss, mm));

   
   fprintf('C = %0.2f, sigma = %0.2f, error = %0.2f \n', cc, ss, mm);
   fprintf('Program paused. Press enter to continue.\n');
   pause;
  endfor;
endfor;

fprintf('C = %0.2f, sigma = %0.2f, error = %0.2f \n', cg, sg, res);

fprintf('Program paused. Press enter to continue.\n');
pause;


