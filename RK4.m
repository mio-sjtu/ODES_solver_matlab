
function k = RK4(f,y,h)
    k1 = f(y);
    k2 = f(y+h*k1/2);
    k3 = f(y+h*k2/2);
    k4 = f(y+h*k3);
    k=(k1+2*k2+2*k3+k4)/6; 
end