function a = remove_rmpg(a,idx)

if ~a.n, return, end
if isempty(idx), return, end
a.con(idx,:) = [];
a.bus(idx) = [];
a.sup(idx) = [];
a.u(idx) = [];
a.n = a.n - length(idx);
