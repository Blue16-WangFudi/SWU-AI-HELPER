function X = Sequential_Gaussian_elimination(A,b)
% ˳���˹��ȥ����ⷽ��AX=b������AΪ����
dimension=length(b);
A=[A,b];
for i=1:dimension-1
    A((i+1):dimension,(i+1):(dimension+1))=A((i+1):dimension,(i+1):(dimension+1))-...
        A(i+1:dimension,i)./A(i,i).*A(i,(i+1):(dimension+1));
    A((i+1):dimension,i)=zeros(dimension-i,1);
    %A
end;
%�ش�
X=zeros(dimension,1);
X(dimension)=A(dimension,dimension+1)/A(dimension,dimension);
for k=dimension-1:-1:1
    X(k)=(A(k,dimension+1)-A(k,(k+1):dimension)*X((k+1):dimension))/A(k,k);
end;


