
function [d_err Ve Ie]= Curve_Fitting(D ,V , I, d_ref)
             
     

        persistent d_1 d_2 Vo Io io 
        dataType = 'double';
      
%         if d_ref ~= d_new
%                  vars = whos;
%                 vars = vars([vars.persistent]);
%                 varName = {vars.name};
%                 clear(varName{:});
%                 d_err=d_ref;
% %                 Ve=[];
% %                 Ie=[];
%                 return;
%                 
%         end
    
        if isempty(Vo)
            Vo=0;
            Io=0;
            io=1;
            d_1=0;
            d_2=0;
            d_new=d_ref;
        end
        
        
        Vo
        Io
        d_ref 
        d_1
        d_2
      
                 if length(Vo)==3
                        Ve=Vo;
                        Ie=Io;
                        d_err=d_ref;
                        disp('Vector Array Limit Is Exceeded')
                        i0=0; 
                        return;    
                 end

                 if length(Vo)<=2       
                        if D==d_1

                            disp('Adding Second Point in Array Vo and Io')
                            Vo(io)=V;
                            Io(io)=I;
                            d_2=d_ref - 0.2*d_ref;
                            d_err=d_2;     
                            io=io+1;

                        end

                        if D==d_ref
                            disp('Adding First Point in Array Vo and Io')
                            Vo(io)=V;
                            Io(io)=I;
                            d_1=d_ref + 0.2*d_ref;
                            d_err=d_1;
                            io=io+1;
                        end

                        if D==d_2
                            disp('Adding third Point in Array Vo and Io')
                            Vo(io)=V;
                            Io(io)=I;
                            d_err=d_2;
                            io=io+1;

                        end 
                 end
        
        Ve=Vo;
        Ie=Io;
end
            
        
      