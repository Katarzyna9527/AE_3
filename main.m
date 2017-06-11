% plik:  main.m 
% opis:  przyk�adowy skrypt pokazuj�cy u�ycie sieci neuronowych w 
%        programie MATLAB
% autor: Zbigniew Szyma�ski <z.szymanski@ii.pw.edu.pl>
% data:  2013-11-20

clc;    
clear all;

% Import danych z pliku tekstowego
train=importdata('approx_22_train.asc');
test=importdata('approx_22_test.asc');
% Opis tablicy 'dane':
% kolumny 1,2 - wsp�rz�dne punkt�w do klasyfikacji
% kolumna 3   - etykieta punktu {-1,1}
%{
wart_kl_poz=0.9;                %warto�ci etykiet u�ywane przy uczeniu
wart_kl_neg=-0.9;
idx_poz=find(dane(:,3)==1);     %indeksy punkt�w klasy pozytywnej
idx_neg=find(dane(:,3)==-1);    %indeksy punkt�w klasy negatywnej
dane(idx_poz,3)=wart_kl_poz;    %zmiana warto�ci etykiet klasy poz.
dane(idx_neg,3)=wart_kl_neg;    %zmiana warto�ci etykiet klasy neg.
%}
% Uczenie sieci neuronowej
blad_test = 0;
blad_train = 0;

% symulacja i liczenie �redniej b��du �redniokwadratowego
% for i =1:15
% liczba_neuronow_ukrytych=8;
% [net]=train_net(train(1,:)',train(2,:)',liczba_neuronow_ukrytych);
% % net.IW{1,1};
% % net.LW{2,1};
% % net.b{1,1};
% % net.b{2,1};
% Y_test = sim(net,test(1,:));
% Y_test_rzeczywiste = test(2,:);
% blad_test = blad_test + sum((Y_test-Y_test_rzeczywiste).^2);
%  plot(test(1,:),Y_test);
%  hold on
% 
% Y_train = sim(net,train(1,:));
% Y_train_rzeczywiste = train(2,:);
% blad_train = blad_train + sum((Y_train-Y_train_rzeczywiste).^2);
%  plot(train(1,:),Y_train);
% end
% 
% blad_train = blad_train/15
% blad_test = blad_test/15

% x = test(1,:);
% y = test(2,:);
% plot(x,y,'o',...
%     'MarkerSize',4,...
%     'MarkerEdgeColor',[0.1,0.1,0.1],...
%     'MarkerFaceColor','m');
% xlabel('x');
% ylabel('y');
% hold on
% liczba_neuronow_ukrytych=8;
% [net]=train_net(train(1,:)',train(2,:)',liczba_neuronow_ukrytych);
% Y_test = sim(net,test(1,:));
% Y_test_rzeczywiste = test(2,:);
% blad_test = blad_test + sum((Y_test-Y_test_rzeczywiste).^2);
% plot(test(1,:),Y_test,'LineWidth',3);
% hold on

x = train(1,:);
y = train(2,:);
plot(x,y,'o',...
    'MarkerSize',4,...
    'MarkerEdgeColor',[0.1,0.1,0.1],...
    'MarkerFaceColor','m');
xlabel('x');
ylabel('y');
hold on
liczba_neuronow_ukrytych=8;
[net]=train_net(train(1,:)',train(2,:)',liczba_neuronow_ukrytych);
Y_train = sim(net,train(1,:));
Y_train_rzeczywiste = train(2,:);
blad_train = blad_train + sum((Y_train-Y_train_rzeczywiste).^2);
plot(train(1,:),Y_train,'LineWidth',3);
hold on
view(net)

