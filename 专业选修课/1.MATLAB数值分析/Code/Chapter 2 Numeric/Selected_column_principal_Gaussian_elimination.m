%2021.11.16
function X=Selected_column_principal_Gaussian_elimination(A,b)
%ѡ����Ԫ��˹��ȥ�� AX=b,����AΪ����
dimension=length(b);
A=[A,b];
for i=1:dimension-1
    [r,c]=max(abs(A(i:dimension,i)));
    %����ÿ���е����Ԫ�أ�r�������ֵ��c������ЩԪ���� A ����ʾ����������
    c=c+i-1;
    if c>i
        t=A(i,:);A(i,:)=A(c,:);A(c,:)=t;
    end;
    A((i+1):dimension,(i+1):(dimension+1))=A((i+1):dimension,(i+1):(dimension+1))-...
        A(i+1:dimension,i)./A(i,i).*A(i,(i+1):(dimension+1));
    A((i+1):dimension,i)=zeros(dimension-i,1);
end;
%�ش�
X=zeros(dimension,1);
X(dimension)=A(dimension,dimension+1)/A(dimension,dimension);
for k=dimension-1:-1:1
    X(k)=(A(k,dimension+1)-A(k,(k+1):dimension)*X((k+1):dimension))/A(k,k);
end;

