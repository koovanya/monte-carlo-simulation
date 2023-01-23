function vt=monte_carlo_eurocall(S0,K,r,T,sigma,N)

% 建立向量
ST=zeros(1,N);
VT=zeros(1,N);

% 建立ST模拟值
for i=1:N
    ST(i)=S0.*exp((r-0.5.*sigma.^2).*T+sigma.*sqrt(T).*randn);
end

% 计算欧式看涨期权价格
VT=max(ST-K,0);
vt=mean(VT)*exp(-r.*T);

end