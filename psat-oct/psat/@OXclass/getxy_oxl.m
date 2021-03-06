function [x,y] = getxy_oxl(a,bus,x,y)

if ~a.n, return, end

h = find(ismember(a.bus,bus));

if ~isempty(h)
  x = [x; a.v(h)];
  y = [y; a.If(h)];
end
