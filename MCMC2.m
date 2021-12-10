clear;
fig = figure;

%ベータ分布の描画
a = 10.2;
b = 5.8;
x = linspace(0,1,10000000);
y = betapdf(x,a,b);
plot(x,y)
hold on

%棄却サンプリング
N = 100000;
K = 0.001;
%Kは0.1から初めて徐々に値を１/10ずつ減らし、調整すると良いかも
%Kに関してのアニメーションはできないか？
%N = 10000000 K = 0.013
%N = 100000   K = 0.0013

samples = [];
for i = N
    xp = rand(i,1);
    yp = 0+(0+K)*rand(i,1);
    pdf = (xp.^(a-1).*(1-xp).^(b-1));
end
A = find(yp<=pdf)
samples = xp(A)
histogram(samples,30,Normalization="pdf")
%histogramのNormalizationは正規化のタイプを指定する


