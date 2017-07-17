function A=StrToMx(str)%将str字符串转换成ASCII码与字符‘！’的差值，放入矩阵A中
a=length(str);
A=zeros(1,a);
for i=1:1:a;
    A(1,i)=str(i)-'!';
end
