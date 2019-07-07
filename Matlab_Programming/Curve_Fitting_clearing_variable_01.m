function [x , y]= Curve_Fitting_clearing_variable_01(D ,V , I, d_ref)
     
        persistent d_1 d_2 Vo Io io 
        dataType = 'double';
        
        if isempty(Vo)
            
     d_1=2;
     d_2=3;
     Vo=2;
     Io=6; 
     io=1;
        end    
     if d_ref ~= 0.6
        vars = whos;
        vars = vars([vars.persistent]);
        varName = {vars.name}
        clear(varName{:});
        y=[];
        x=[];
        return;
     else
          x=3;
          y=2;
     end
     
     

     
     d_1=d_1+1;
     d_2=d_2+1;
     Vo=Vo+1;
     Io=Io;
     io=io+2;
     
     d_1 
     d_2
     Vo 
     Io
     io
     
     
     
end