# 绘制有定义域的图形
[x,y]=meshgrid(-4:.01:4);
z = 100 * x .^2 + 200 * y .^ 2;
z(x.^2 + y.^2>1) = NaN;
mesh(x,y,z)