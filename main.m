clear
clc

shurucanshu

f=@(y) [y(2);
 -((c1+c2)*y(2)+(c2*l_2-c1*l_1)*cos(y(3))*y(4)+(k1+k2)*y(1))/m+(k1*l_1-k2*l_2)*sin(y(3))/m;
 y(4);
 -((c2*l_2-c1*l_1)*cos(y(3))*y(2)+(c1*l_1^2+c2*l_2^2)*cos(y(3))*cos(y(3))*y(4)-(k1*l_1-k2*l_2)*cos(y(3))*y(1))/J-(k1*l_1^2+k2*l_2^2)*sin(y(3))*cos(y(3))/J ];
h=0.1;
t=0:h:30;
y=[0;0;pi-0.01;0];


for i=1:length(t)-1
  y(:,i+1) = y(:,i)+h*RK4(f,y(:,i),h);
end



% plot(t,y(1,:),'linewidth',2)
% hold on
% plot(t,y(2,:),'linewidth',2)
% hold on
plot(t,y(3,:),'linewidth',2)
% hold on
% plot(t,y(4,:),'linewidth',2)
legend('y3')
xlabel('t')
ylabel('y')
