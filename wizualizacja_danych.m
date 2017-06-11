zb_ucz = importdata('approx_22_train.asc');
x = zb_ucz(1,:);
y = zb_ucz(2,:);
plot(x,y,'o',...
    'MarkerSize',4,...
    'MarkerEdgeColor',[0.1,0.1,0.1],...
    'MarkerFaceColor','m');
xlabel('x');
ylabel('y');

% zb_test = importdata('approx_22_test.asc');
% x = zb_test(1,:);
% y = zb_test(2,:);
% plot(x,y,'o',...
%     'MarkerSize',4,...
%     'MarkerEdgeColor',[0.1,0.1,0.1],...
%     'MarkerFaceColor','m');
% xlabel('x');
% ylabel('y');


