    function [Fzf,Fzr]=Fz(params)
      m=params.m;
      g=params.g;
      lr=params.lr; 
      lf=params.lf;
      Fzf=(m*g*lr)/(lf+lr);
      Fzr=(m*g*lf)/(lf+lr);
    end