function [xGrid, fGrid] = discreteData(nGrid, a, b, f)

    % This script is submitted by Ashu Prakash, Roll No, 14146
    % This code is written for Mini Project 2 of MTH308A
    % Date: 26 April 2017

    % Creating the interpolation points
    for k = 1:(nGrid)
        xGrid(k) = ((b-a)/2)*cos((k-1)*pi/(nGrid-1))+((b+a)/2);
    end

    fGrid = f(xGrid);

end