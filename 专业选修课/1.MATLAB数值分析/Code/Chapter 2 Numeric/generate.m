function N = generate(dimension)
%GENERATE ����n�׷���
%dimension:����ά��
N=zeros(dimension,dimension);
for i=1:dimension
    N(i,i)=5;
    if i~=dimension
        N(i,i+1)=6;
    end;
    if i~=1
        N(i,i-1)=1;
    end;
end;

end

