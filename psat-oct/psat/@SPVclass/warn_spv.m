function warn_spv(a,idx,msg)

global Bus

fm_disp(fm_strjoin('Warning: SPVG <',int2str(idx), ...
	       '> at bus <',Bus.names(a.bus(idx)),'>: ',msg))
