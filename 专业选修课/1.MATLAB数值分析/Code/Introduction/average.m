function res = average(X)
%  ��nά����ľ�ֵ
    res=0;
    for i=1:length(X)
        res=res+X(i);
    end
    res=res/length(X);
end

