function a = setvg(a,idx,v)

if ~a.n, return, end
if isempty(idx), return, end
if isnumeric(idx)
  a.con(idx,4) = v;
elseif strcmp(idx,'all')
  a.con(:,4) = v;
end  
