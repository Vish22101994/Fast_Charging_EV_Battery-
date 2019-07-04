function dc = IC( x, y, Adc, dcinit)


persistent dco Vold Iold
dataType = 'double';

if isempty(Vold)
    Vold=0;
    Iold=0;
    dco=dcinit;
end


dV=Vpv-Vold;
dI=y-Iold;

if dV==0
    if dI==0
        dc =dco;
        return
    else
        if dI>0
            dc = dco + Adc; 
        else
            dc = dco - Adc; 
        end
    end
else
    if y+(dI/dV)*Vpv==0
        dc=dco;
        return
    else
        if y+(dI/dV)*Vpv>0
            dc = dco - Adc; 
        else
            dc = dco + Adc; 
        end
    end
end
dcmax=0.95; 
  dcmin=0.05;
if dc>=dcmax || dc<=dcmin
    dc=dco;
end

dco=dc;
Vold=Vpv;
Iold=y;
end
