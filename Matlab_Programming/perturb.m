function D = perturb&Observe(V, T, I)

persistent Vm v1 p1 p2
persistent t1

if isempty(Vm)
    Vm=0;
    v1=0;
    p1=0;
    p2=0;
    t1=0;
end

i=I;
v=V;
t=T;
step=0.1;

if(t<=0.1)
    vm0=36;
    p1=v*i;
    Vm=vm0;
    v1=v;
    t=t1;
    D=vm0;
    return
end

    if((t-t1)>0.1)
        p2=v*i;
        delp=p2-p1;
        delv=v-v1;
        if (delp>0)
            if (delv>0)
            else
              Vm=Vm+step;
             
            end
                  Vm=Vm+step;
        else
            
            if (delv>0)
                   Vm=Vm+step;
            else
                   Vm=Vm+step;
            end
            
        end
        D=Vm;
        v1=v;
        t1=t;
    else
          D=Vm
          
    end
