%q1p1
x=5;
X=[1 5 10];
y1=(9*sqrt(x)-5*x)/(x+1);
Y1=(9.*sqrt(X)-5.*X)/(X+1);
y2=x^(-1.8)*cos(x)+(sin(x)^3)*log10(x);
Y2=x.^(-1.8).*cos(X)+(sin(X).^3).*log10(X);
%q1p2
clear;clc; close all
x=[0:0.1:10];
y1=(9.*sqrt(x)-5.*x)./(x+1);
y2=x.^(-1.8).*cos(x)+(sin(x).^3).*log10(x);
figure; plot(x,y1); xlabel('x'); ylabel('y');
figure; plot(x,y2); xlabel('x'); ylabel('y');
figure; plot(x,y1, x,y2); xlabel('x'); ylabel('y');
%q1p3
clc; clear; close all;
ya1=fzero(@q1,3);
ya2=fzero(@q1,6);

yb1=fzero(@q2,3);
yb2=fzero(@q2,6);
yb3=fzero(@q2,9);
disp(ya1)
disp(ya2)
disp(yb1)
disp(yb2)
disp(yb3)

%q3
clc;clear;close all
[x1,y1]=fminbnd(@q3, 0, 10);
[x2,y2]=fminbnd(@q3, 5, 10);
x=[0:0.1:10];
y=q3(x);
plot(x,y); xlabel('x'); ylabel('y');

%q4
clc;clear;close all
[Dmin,Cmin]=fminbnd(@f4,0,50);
[Cmin,Lmin]=f4(Dmin);
x=[0:0.1:10];
[C,L]=f4(x);
figure
plot(x,C), xlabel('D'), ylabel('Cost')
figure
plot(L,C), xlabel('L'), ylabel('Cost')

function y_a=q1(x)
y_a=(9.*sqrt(x)-5.*x)./(x+1);
end
function y_b=q2(x)
y_b=x.^(-1.8).*cos(x)+(sin(x).^3).*log10(x);
end
function y3=q3(x)
y3=1+exp(-0.2.*2).*sin(x+2);
end
function [C,L]=f4(D)
A=500;
L=A-D.^2/2;
C=40*2*D + 50*2*L;
end
