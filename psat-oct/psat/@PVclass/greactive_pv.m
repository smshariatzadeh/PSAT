function greactive_pv(p)

global DAE

if ~p.n, return, end

DAE.g(p.vbus(find(p.u))) = 0;
