function m = calculate()
%p240 ʵ��3
res=0;
m=0;
while (res<100)
    m=m+1;
    res=res+log(1+m);
end

