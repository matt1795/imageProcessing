% 2D DCT Basis Function

% Author: Matthew Knight
% File Name: dct_basis2.m
% Date: 2017-11-14

function y = dct_basis2(n, u, v, x, y)

    y = dct_basis(n,x,u)*dct_basis(n,y,v);

    
