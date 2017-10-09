clear all;
close all;

region = 10;

x = linspace(-region,region,200);
y = linspace(-region,region,200);
[xx yy] = meshgrid(x, y);
aa = sqrt(xx.^2 + yy.^2);
bb = aa;
zz = sin(aa);
zz = zz.*exp(-bb);
mesh(xx,yy,zz);

theta = 0;
while(1)
    theta = theta + 2*pi/30;
    if(theta>=2*pi)
        theta = 0;
    end
    zz = sin(aa+theta);
    zz = zz.*exp(-0.1*bb);
    mesh(xx,yy,zz);
    drawnow;
    axis([-region region -region region -1 1]);
end
