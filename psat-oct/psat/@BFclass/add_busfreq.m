function a = add_busfreq(a,data)

a.n = a.n + length(data(1,:));
a.con = [a.con; data];
