function y= Detection(G,T)

     persistent G_ref
     dataType='double';
      
      if isempty(G)
         G_ref=1;
      end
      
      if G==G_ref
         
          y=0;
          G_ref=G;
          
      else
          
          y=1;
          G_ref=G;
          
      
      end 



end 