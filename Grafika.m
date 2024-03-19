%10-misol

disp('5_1-misol');
h=pi/10;
x=pi/10:h:pi;
f1=sin(x).*exp(x);
f2=sin(x).*x.^2;
f3=sin(x).*x;
%grafik
plot(x,f1,':m');
hold on;
plot(x,f2,'-');
plot(x,f3,'--ok');
legend('f1','f2','f3');
title('Grafik')%,'FontSize',12,'Fontweight','bold');
hold off;

%bar
f=[f1;f2;f3];
bar(x,f');%barh(x,f');
bar(x,f','stack');

%stem
%x=-3:0.1:3;
f4=exp(-x.^2/2);
stem(x,f1);
hold on;
stem(x,f2,'filled');
stem(x,f3,'filled');
stem(x,f4,'filled');
hold off;

disp('5_2-misol');
x=-pi:pi/10:pi;
%funk=@(x) (x<=0) .*nthroot(1+x.^2,3)+ (x>0) .*(sin(x).^2+(1+x)/(1+exp(x)));
y1=@(x) (1+x.^2)/(sqrt(1+x.^4));
y2=@(x) 2*x+sin(x).^2/(3+x);
g1=@(x) exp(x);
g2=@(x) cos(x);
r1=@(x) (1+x.^2).^1/3;
r2=@(x) sin(x).^2+(1+x)./(1+exp(x));
w=@(x) (x<=0) .*sqrt(1+x.^2)+(x>0).*2*x-7;
fplot(r1, -pi:0,'r')
hold on
fplot(r2, 0:pi,'k')
hold off
grid on;

%Matlab kod
