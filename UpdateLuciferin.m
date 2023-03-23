% Function 2: UpdateLuciferin.m-------------------------------------------------
function UpdateLuciferin
	global n A J Ell gamma ro
	for i = 1 : n
	x1 = A(i,1); y1 = A(i,2);
    x2 = A(i,3); y2 = A(i,4);
    x3 = A(i,5); y3 = A(i,6);
	% The Matlab ’Peaks’ function is used here. Please replace it with
	% the multimodal function for which peaks are sought
	J(i) = costfun(x1,y1,x2,y2,x3,y3);
    
        
	Ell(i) = (1-ro)*Ell(i) + gamma*J(i);
end