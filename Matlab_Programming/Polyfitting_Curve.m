function Vmp = Polyfitting_Curve(V, I)
         
         Xo=V(1);
         X1=V(2);
         X2=V(3);
         
         Yo=I(1);
         Y1=I(2);
         Y2=I(3);
          
         a=0;
         b=0;
         c=0;
         d=0;
        
         t1=[Xo, X1, X2];
         t2=[Yo, Y1, Y2];
         
         
         %% Lagrange's Differentiation Formula 
         %% We initially Assume Second Order is Interpolated from Three Points 
         
        
         syms x
         
         f=(((x-X1)*(x-X2))/((Xo-X1)*(X1-X2)))*Yo .....
             + (((x-Xo)*(x-X2))/((X1-Xo)*(X1-X2)))*Y1....
             +(((x-Xo)*(x-X1))/((X2-Xo)*(X2-X1)))*Y2;
         f
         
         g=diff(f);
         g
         
         k=solve(g);
         k
            
         
         X_t=polyfit(t1,t2,5)
         
%          X_i=roots(X_t)
         
%          Y_i=polyval(X_t,X_i(:));
         
         D_i=polyder(X_t)
         
         Y_new= roots(D_i)
         
         T_i=polyval(X_t,Y_new(:))
         
         Imp=max(T_i(:));
         Imp
         Vmp=max(Y_new(:));
  
      
       
       
        
       
       

end 
