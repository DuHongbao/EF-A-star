clc;clear;
Q0 = 1.3;
Q1 = 1.3;
Q2 = 1.3;
Q3 = 0.7;
Q4 = 0.5;
Q5 = 0.4;
Q6 = 0.7;
Q7 = 1.3;
Q8 = 1.3;
Q9 = 1.3;

i= -3:0.1:6;
C_u = [];

for u=0:0.1:0.9
    N0 = u^3/6;
    C_u = [C_u,N0*Q0];
end

for u=1:0.1:1.9
    N0 = -u^3/2 + 2*u^2-2*u+2/3;
    N1 = (u-1)^3/6;
    C_u = [C_u,N0*Q0+N1*Q1];
end

for u=2:0.1:2.9
    N0 = u^3/2 - 4*u^2 + 10*u-22/3;
    N1 = -(u-1)^3/2 + 2*(u-1)^2-2*(u-1)+2/3;
    N2 = (u-2)^3/6;
    C_u = [C_u,N0*Q0+N1*Q1+N2*Q2];
end

for u=3:0.1:3.9
    N0 = -u^3/6 + 2*u^2 - 8*u + 32/3;
    N1 = (u-1)^3/2 - 4*(u-1)^2 + 10*(u-1)-22/3;
    N2 = -(u-2)^3/2 + 2*(u-2)^2-2*(u-2)+2/3;
    N3 = (u-3)^3/6;
    C_u = [C_u,N0*Q0+N1*Q1+N2*Q2+N3*Q3];
end

for u=4:0.1:4.9
    N1 = -(u-1)^3/6 + 2*(u-1)^2 - 8*(u-1) + 32/3;
    N2 = (u-2)^3/2 - 4*(u-2)^2 + 10*(u-2)-22/3;
    N3 = -(u-3)^3/2 + 2*(u-3)^2-2*(u-3)+2/3;
    N4 = (u-4)^3/6;
    C_u = [C_u,N1*Q1+N2*Q2+N3*Q3+N4*Q4];
end

for u=5:0.1:5.9
    N2 = -(u-2)^3/6 + 2*(u-2)^2 - 8*(u-2) + 32/3;
    N3 = (u-3)^3/2 - 4*(u-3)^2 + 10*(u-3)-22/3;
    N4 = -(u-4)^3/2 + 2*(u-4)^2-2*(u-4)+2/3;
    N5 = (u-5)^3/6;
    C_u = [C_u,N2*Q2+N3*Q3+N4*Q4+N5*Q5];
end

for u=6:0.1:6.9
    N3 = -(u-3)^3/6 + 2*(u-3)^2 - 8*(u-3) + 32/3;
    N4 = (u-4)^3/2 - 4*(u-4)^2 + 10*(u-4)-22/3;
    N5 = -(u-5)^3/2 + 2*(u-5)^2-2*(u-5)+2/3;
    N6 = (u-6)^3/6;
    C_u = [C_u,N3*Q3+N4*Q4+N5*Q5+N6*Q6];
end


for u=7:0.1:7.9
    N4 = -(u-4)^3/6 + 2*(u-4)^2 - 8*(u-4) + 32/3;
    N5 = (u-5)^3/2 - 4*(u-5)^2 + 10*(u-5)-22/3;
    N6 = -(u-6)^3/2 + 2*(u-6)^2-2*(u-6)+2/3;
    N7 = (u-7)^3/6;
    C_u = [C_u,N4*Q4+N5*Q5+N6*Q6+N7*Q7];
end

for u=8:0.1:9
    N5 = -(u-5)^3/6 + 2*(u-5)^2 - 8*(u-5) + 32/3;
    N6 = (u-6)^3/2 - 4*(u-6)^2 + 10*(u-6)-22/3;
    N7 = -(u-7)^3/2 + 2*(u-7)^2-2*(u-7)+2/3;
    N8 = (u-8)^3/6;
    C_u = [C_u,N5*Q5+N6*Q6+N7*Q7+N8*Q8];
end

hold on
%plot(i,C_u,'r*-','LineWidth',3);
% plot(i(11:21),C_u(11:21),'g*-','LineWidth',3);
plot(i(41:91),C_u(41:91),'b*-','LineWidth',2);
%plot(i(21:31),C_u(21:31),'g*-','LineWidth',3);
%plot(i(61:71),C_u(61:71),'b*-','LineWidth',3);


% 
% plot([2,4],[Q3,Q5],'k--','LineWidth',1)
% plot([3,5],[Q4,Q7],'k--','LineWidth',1)
% plot([4,5],[Q5,Q6],'k--','LineWidth',1)
% plot([2,3],[Q3,Q4],'k--','LineWidth',1)


