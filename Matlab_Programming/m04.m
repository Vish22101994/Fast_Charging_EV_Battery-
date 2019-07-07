X=[1; 2; 3];
Y=[1;2 ;3];
Z=[0; 0 ;0 ]
for i=1:3
        
        Z(i)=X(i)*Y(i);
t = timer('TimerFcn', 'stat=false; disp(''Calculation will be shown to you after 10 seconds Please Hold yourself for a while'')',....
                   'StartDelay',10);
               
               
         start(t)
         
         stat=true;
         while(stat==true)
             disp('.')
             pause(0.1)
         end
         
end         
         
 Z        
         
         