% DCT Basis function

% Author: Matthew Knight
% File Name: dct_basis.m
% Date: 2017-11-14

function y = dct_basis(n, x, u)
    
    % Determine Alpha
    if u == 0
	a = sqrt(1/n);
    else
	a = sqrt(2/n);
    end

    % Now calculate the basis
    y = a*cos(((2*x+1)*u*pi)/(2*n));
