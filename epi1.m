clear;

%sample number
N = 10000;

% x-cordinate of each sample
x = rand(N,1);
% y-cordinete of each sample
y = rand(N,1);

% estimate pi
epi = zeros(N,1);

for ii=1:N
    %samples inside the circle
    %find関数により内側は1外側が０となる(x^2+y^2<=1)
    sic = find(x(1:ii,1).^2+y(1:ii,1).^2<=1);

    %the number of the circle plotted inside the circle
    nic = length(sic);
    epi(ii)=4*nic/ii;
end

epi(10000)
%
%