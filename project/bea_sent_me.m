clear all
clc

addpath('class_faces/');

% Read images
imagefiles = dir('class_faces/*.png');

max = length(imagefiles);

names = [];

figure(1)
for i=1:max
    fname = imagefiles(i).name;
    Im{i}=rgb2gray(imread(fname));
    subplot(ceil(sqrt(max)),ceil(sqrt(max)),i); imshow(Im{i})
    Im_vec{i}=reshape(Im{i},[],1);
    
    names{i} = fname(1:end-4);
end

[M,N]=size(Im{1});

A=double(cell2mat(Im_vec))/255;   % each column is a single image
A_mean=mean(A')';             % subtract mean
A_actual_mean = A_mean;
A=A-repmat(A_mean,[1,max]);

% Covariance matrix
L=A'*A;                    % Find eigenvalue and eigenvector
[V,D]=eig(L);
U=A*V;

eigenfaces=[];
for i=1:max
    c=U(:,i);
    eigenfaces{i}=reshape(c,M,N);
    subplot(ceil(sqrt(max)),ceil(sqrt(max)),i);
    imshow(eigenfaces{i},[])
end

x=diag(D);
[xc,xci]=sort(x,'descend'); %largest eval

nsel=24% select  eigen faces
for mi=1:max  % image number
  for k=1:nsel   % eigen face for coeff number
    wi(mi,k) =   sum(A(:,mi).* eigenfaces{xci(k)}(:)) ;
  end
end

imtest=wi(1,:);

Euc_dist=[];
for i=1:max
    q=norm(imtest-wi(i,:))^2;
    Euc_dist=[Euc_dist q];
end

% 
% imno=2;
% imtest=zeros([M,N]);
% for i=1:nsel
%     imtest=imtest+eigenfaces{i}.*wi(imno,i);
% end
% 
% figure;
% imshow(imtest,[]); title('reconstruct')