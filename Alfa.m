    function [alfa_r,alfa_f]=Alfa(params)
     betta=params.betta;
     lf=params.lf; 
     %
     alfa_r=betta+((wr*lf)/(vx))-delta_f;
     alfa_f=betta-((wr*lf)/(vx));
    end