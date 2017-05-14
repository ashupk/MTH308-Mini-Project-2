% This script is submitted by Ashu Prakash, Roll No, 14146
% This code is written for Mini Project 2 of MTH308A
% Date: 26 April 2017

function approx = approxFunction(xEval, xGrid, fGrid)

% The programme is based on Chebyshev Interpolation 
% Computation of elements of the interpolation matrix

% Definition of nGrid, nEval, a and b
nGrid = size(xGrid,2);
nEval = size(xEval,2);
a=xGrid(nGrid);
b=xGrid(1);

for j = 1:nGrid
    p(j)=1;
    if(j==1)
        p(j) = 2;
    end
    if(j==nGrid)
        p(j) = 2;
    end
end
    
% initializing interpolation matrix
I=zeros(nGrid,nGrid);
for j = 1:(nGrid)
    for k = 1:(nGrid)
        I(j,k) = 2*cos((j-1)*pi*((k-1)/(nGrid-1)))/((p(j)*p(k)*(nGrid-1)));
    end
end


A=zeros(1,nGrid);
for j = 1:1:nGrid
    for k = 1:1:nGrid
        A(j) =A(j)+ I(j,k)*fGrid(k);
    end
end

% Initializing the approximate functioon
f_approx=zeros(1,nEval);

  for j = 1:nEval
        for k=1:nGrid
            f_approx(j) = f_approx(j)+A(k)*cos((k-1)*acos((-b-a+(2*xEval(j)))/(b-a)));
        end
  end
    approx = f_approx;
end
