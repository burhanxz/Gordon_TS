function TS=solveTS_Gordon(k,str,W)
IN=load(str);%str是文件名。将str中的矩阵导入到IN矩阵中。str文件中保存了所有单元节点信息，每行表示x,y,z三个坐标，每三行表示一个单元。
maxRow = size(IN,1);%maxRow是IN矩阵的行数
fprintf('单元数：%f\n',maxRow/3);
S=0+0i;%对S进行初始化。
for i=1:3:maxRow %i是每个单元在IN矩阵中的的起始位置
    A=IN(i:(i+2),:); %取出一个单元到A矩阵中
    if isEffective(A,W)==1%如果入射声波能到达此单元
    I=Gordon(A,k,W);%计算I分量
    w=cos_angle(A,W);%计算单元法向向量和入射声波夹角
    S=S+w*I;%累计
    end
end
S=S.*k/(2*pi);
TS=20*log10(sqrt(real(S).^2+imag(S).^2));%最终得到所有单元综合后的目标强度值
