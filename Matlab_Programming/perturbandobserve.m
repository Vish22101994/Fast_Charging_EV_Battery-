function D= perturbandobserve(V, I, T)

persistent m1 p1 p2 v1

persistent t1
%intialization at t=0!!!!
    t1=0;
    v1=0;
    m1=0;
    p1=0;
    p2=0;
end

%Intialiization of local variable within the function1!!!!

i=I;
v=V;
step=0.1;

if t<=0.1
    m0=36;
    p1=v*i;
    t1=t;
    m1=m0;
    v1=v;
    D=m1;
    return
end

if ((t-t1) > 0.1)
       p2=v*i;
       delp=p2-p1;
       delv=v-v1;
       if(delp==0)
            D=m1 ;
            p1=p2;
            t1=t;
            v1=v;
            return
       end
       
       if (delp>0)
           if (delv>0)
               m1-m1+step;
           else
               m1=m1-step;
           end 
       else 
           if (delv>0)
               m1-m1+step;
           else
               m1=m1-step;
           end 
       end
       D=m1;
       p1=p2;
       t1=1;
       v1=v;
else
    D=m1;
end
   D=m1;
   end
   
   
       
else 
end
            
    
    
    


