%% Function with one output 
function y = average(x)
     if ~isvector(x)
         disp('Input must be Vextor')
     end
     y=sum(x)/length(x);
end


