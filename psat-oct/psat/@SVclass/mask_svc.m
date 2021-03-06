function [x,y,s] = mask_svc(a,idx,orient,vals)

switch vals{2}
 
 case '1' % B model
 
  x = cell(7,1);
  y = cell(7,1);
  s = cell(7,1);

  x{1} = [1 0.8];
  y{1} = [0.5 0.5];
  s{1} = 'k';

  x{2} = [0 0.2];
  y{2} = [0.5 0.5];
  s{2} = 'k';

  x{3} = [0.8 0.8 0.2 0.2 0.8];
  y{3} = [0 1 1 0 0];
  s{3} = 'k';

  x{4} = [1 1];
  y{4} = [-0.1 1.1];
  s{4} = 'k';

  x{5} = [1.05 1.05];
  y{5} = [0.1 0.9];
  s{5} = 'k';

  x{6} = [1.1 1.1];
  y{6} = [0.3 0.7];
  s{6} = 'k';

  x{7} = [0.1 0.3 0.7 0.9];
  y{7} = [-0.4 -0.4 1.4 1.4];
  s{7} = 'g';

 case '2' % alpha model
  
  [xi,yi] = fm_draw('ind','Svc',orient);
  [xc,yc] = fm_draw('cap','Svc',orient);
  [xa,ya] = fm_draw('acdc','Svc',orient);

  x = cell(17,1);
  y = cell(17,1);
  s = cell(17,1);
 
  x{1} = [-1.6 -1.8 -1.8];
  y{1} = [0.5 0.5 4];
  s{1} = 'k';

  x{2} = [0.2 0.2];
  y{2} = [0.5 4];
  s{2} = 'k';

  x{3} = [-0.9 -0.9];
  y{3} = [3 5];
  s{3} = 'k';

  x{4} = [0 0.2];
  y{4} = [0.5 0.5];
  s{4} = 'k';

  x{5} = [-0.65 -0.85];
  y{5} = [0.5 0.5];
  s{5} = 'k';

  x{6} = [-1.8 -0.9];
  y{6} = [4 4];
  s{6} = 'k';
  
  x{7} = [0.2 -0.8];
  y{7} = [4 4];
  s{7} = 'k';

  x{8} = [0.2 0.4];
  y{8} = [1.9 1.9];
  s{8} = 'k';
  
  x{9} = [-1.8 -2];
  y{9} = [1.9 1.9];
  s{9} = 'k';

  x{10} = -0.7+0.1*xc;
  y{10} = 4+yc;
  s{10} = 'k';

  x{11} = -1.15+0.175+0.125*yi;
  y{11} = 0.5+0.5*xi;
  s{11} = 'k';

  x{12} = -1.15-0.325+0.125*yi;
  y{12} = 0.5+0.5*xi;
  s{12} = 'k';

  x{13} = -1.15-0.075+0.125*yi;
  y{13} = 0.5+0.5*xi;
  s{13} = 'k';

  x{14} = [0.4 0.4];
  y{14} = [2.9 0.9];
  s{14} = 'k';

  x{15} = [0.5 0.5];
  y{15} = [2.5 1.3];
  s{15} = 'k';

  x{16} = [0.6 0.6];
  y{16} = [2.1 1.7];
  s{16} = 'k';

  x{17} = xa;
  y{17} = ya;
  s{17} = 'm';

end

[x,y] = fm_maskrotate(x,y,orient);
