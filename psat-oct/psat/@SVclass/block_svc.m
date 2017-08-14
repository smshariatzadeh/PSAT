function [enables,prompts] = block_svc(a,object,values,enables,prompts)

display1 = ['plot([1 0.8],[0.5 0.5],' ...
            '[0 0.2],[0.5 0.5],' ...
            '[0.8 0.8 0.2 0.2 0.8],[0 1 1 0 0]), ', ... 
            'plot([1 1],[-0.1 1.1],' ...
            '[1.05 1.05],[0.1 0.9],' ...
            '[1.1 1.1],[0.3 0.7]), ', ...
            'color(''green''), ', ... 
            'plot([0.1 0.3 0.7 0.9],[-0.4 -0.4 1.4 1.4])'];

display2 = ['plot([-1.6 -1.8 -1.8],[0.5 0.5 4],', ...
            '[0.2 0.2],[0.5 4],[-0.9 -0.9],[3 5],', ...
            '[0 0.2],[0.5 0.5],[-0.65 -0.85],[0.5 0.5],' ...
            '[-1.8 -0.9],[4 4],[0.2 -0.8],[4 4],', ...
            '[0.2 0.4],[1.9 1.9],[-1.8 -2],[1.9 1.9],', ...
            '[0.4 0.4],[2.9 0.9],[0.5 0.5],[2.5 1.3],', ...
            '[0.6 0.6],[2.1 1.7]), ', ...
            'plot(-0.7+0.1*xc,4+yc,', ...
            '-1.15+0.175+0.125*yi,0.5+0.5*xi,', ...
            '-1.15-0.325+0.125*yi,0.5+0.5*xi,', ...
            '-1.15-0.075+0.125*yi,0.5+0.5*xi), ', ...
            'color(''magenta''), plot(xa,ya)'];

type   = str2num(values{2});

idx1 = [3 4 6];
idx2 = [7 8 9];

switch type
 
 case 1
  prompts(idx1) = {'Regulator Time Constant Tr [s]'; ...
                   'Regulator Gain Kr [p.u./p.u.]'; ...
                   'B_max and B_min [p.u.  p.u.]'};
  enables(idx2) = {'off'; 'off'; 'off'};
  set_param(object,'MaskDisplay',display1);
 
 case 2
  prompts(idx1) = {'Regulator Time Constant T2 [s]'; ...
                   'Regulator Gain K [p.u./p.u.]'; ...
                   'Alpha_max and Alpha_min [rad rad]'};
  enables(idx2) = {'on';  'on';  'on'};
  set_param(object,'MaskDisplay',display2);

end

