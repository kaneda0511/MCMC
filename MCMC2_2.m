clear;

%ガンマ分布の描画
a = 9;
b = 0.5;
x = linspace(0,100)
y = (b^(a) .* x.^(a-1) .*exp(-b*x))/gamma(a);
%y = pdf("Gamma",x,a,b); こっちのpdf関数を使うとうまくいかない
plot(x,y,"LineWidth",2)
hold on

%棄却サンプリング
N = 10000;
K = 0.18;

for i = N
    %ガンマ関数の描画から今回発生させる乱数は（0,40)に設定
    xp = 0+(0+40)*rand(i,1);
    yp = 0+(0+K)*rand(i,1);
    pdf = (b^(a) .* xp.^(a-1) .*exp(-b*xp))/gamma(a);
end

A = find(yp<=pdf)
samples = xp(A)
histogram(samples,30,Normalization="pdf")
%histogramのNormalizationは正規化のタイプを指定する