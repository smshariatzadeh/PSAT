function Cr = costs_rsrv(a)

Cr = [];

if ~a.n, return, end

Cr = a.u.*a.con(:,5);
