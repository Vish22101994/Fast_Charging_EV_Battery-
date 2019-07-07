function y=add(n)

persistent X_o io
dataType = 'double';

if isempty(X_o)
    
    X_o=[];
    io=1;
end

 if length(X_o)==3
         y=X_o;
        disp('Vector Array Limit Is Exceeded')
        return;    
 end
 
 if length(X_o)<=2
   
    
     X_o(io)=n;
     io=io+1;
   
    
     y=X_o;
    
     disp('keep Adding Numbers into String');
end



end
