% Function 8: Path.m---------------------------------------
function Del = Path(i,j)
	global A m
	hyp = norm(i-j);
	for k = 1 : 2
		Del(:,k) = (j(k)-i(k))/hyp;
	end
end