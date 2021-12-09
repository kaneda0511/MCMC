clear;
%半径１,中心（0,0）の円をplot
r = 1;
xc = 0;
yc = 0;
theta = linspace(0,2*pi);
x = r*cos(theta);
y = r*sin(theta);
plot(x,y)

%グラフを正方形へ
axis equal
hold on

N = 1000

%区間(-1,1)の一様分布した数値からなる100行１列のベクトルの生成
x_r = -1 + (1+1)*rand(N,1);
y_r = -1 + (1+1)*rand(N,1);

scatter(x_r,y_r,"red")

%原点からの距離
r1 = (x_r(:,1).^2 + y_r(:,1).^2).^0.5;

%原点からの距離が１未満（円の内部に位置する点を行列の要素数１へ）
I = r1<1;

%行列の要素数が１となったものを数える
N_1 = nnz(I);

%数値的に計算 π/4
ans1 = N_1/N
%真の値
ans1_1 = pi / 4

%数値的に計算　π
ans2 = ans1*4
%真の値
ans2_2 = pi

