function b = subsref_breaker(a,index)

switch index(1).type
 case '.'
  switch index(1).subs
   case 'con'
    if length(index) == 2
      b = a.con(index(2).subs{:});
    else
      b = a.con;
    end
   case 'store'
    if length(index) == 2
      b = a.store(index(2).subs{:});
    else
      b = a.store;
    end
   case 'bus'
    if length(index) == 2
      b = a.bus(index(2).subs{:});
    else
      b = a.bus;
    end
   case 't1'
    if length(index) == 2
      b = a.t1(index(2).subs{:});
    else
      b = a.t1;
    end
   case 't2'
    if length(index) == 2
      b = a.t2(index(2).subs{:});
    else
      b = a.t2;
    end
   case 'line'
    if length(index) == 2
      b = a.line(index(2).subs{:});
    else
      b = a.line;
    end
   case 'n'
    b = a.n;
   case 'u'
    if length(index) == 2
      b = a.u(index(2).subs{:});
    else
      b = a.u;
    end
   case 'ncol'
    b = a.ncol;
   case 'format'
    b = a.format;
  end
end
