function I2=Gordon(A,k,W)
W=W./sqrt(dot(W,W));%W是声源的三维坐标向量，在此将其单位化
L1=[A(1,1)-A(2,1),A(1,2)-A(2,2),A(1,3)-A(2,3)];
L2=[A(1,1)-A(3,1),A(1,2)-A(3,2),A(1,3)-A(3,3)];%L1和L2是三角形单元的两个边的向量
n=cross(L1,L2);%两个边向量叉乘得到了法向向量n
n=n./sqrt(dot(n,n));%对法向向量进行单位化
p1=[(A(1,1)+A(2,1))/2,(A(1,2)+A(2,2))/2,(A(1,3)+A(2,3))/2];
p2=[(A(1,1)+A(3,1))/2,(A(1,2)+A(3,2))/2,(A(1,3)+A(3,3))/2];
p3=[(A(3,1)+A(2,1))/2,(A(3,2)+A(2,2))/2,(A(3,3)+A(2,3))/2];%p1,p2,p3分别是三条边中点的位置向量
a1=[A(2,1)-A(1,1),A(2,2)-A(1,2),A(2,3)-A(1,3)];
a2=[A(1,1)-A(3,1),A(1,2)-A(3,2),A(1,3)-A(3,3)];
a3=[A(3,1)-A(2,1),A(3,2)-A(2,2),A(3,3)-A(2,3)];%a1,a2,a3分别是三角形单元三个边的向量，其端点必须严格遵照首尾相连的顺序，即1-2，,2-3，3-1

if 20*dot(a1,W)==0
    s1=dot(cross(n,W),a1)*exp(1i*2*k*dot(p1,W));
else 
    s1=dot(cross(n,W),a1)*exp(1i*2*k*dot(p1,W))*sin(20*dot(a1,W))/(20*dot(a1,W));
end
if 20*dot(a2,W)==0
    s2=dot(cross(n,W),a2)*exp(1i*2*k*dot(p2,W));
else
    s2=dot(cross(n,W),a2)*exp(1i*2*k*dot(p2,W))*sin(20*dot(a2,W))/(20*dot(a2,W));
end
if 20*dot(a3,W)==0
    s3=dot(cross(n,W),a3)*exp(1i*2*k*dot(p3,W));
else
    s3=dot(cross(n,W),a3)*exp(1i*2*k*dot(p3,W))*sin(20*dot(a3,W))/(20*dot(a3,W));
end
%以上三个if-else语句分别对三条边进行计算。若满足边向量和入射向量垂直，则sin()/()项置为1，否则计算sin()/()项。
s=s1+s2+s3;%将计算结果合并
I2=s./(-1i*2*k*dot(cross(n,W),cross(n,W)));%计算出某个三角形单元的目标强度的相关分量。