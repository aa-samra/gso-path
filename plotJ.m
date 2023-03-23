global R C
  
[X,Y] = meshgrid(-3:0.05:3);
J = sqrt(X.^2 + Y.^2) + eps;
for s=1:length(R)
        J = J - R(s)./sqrt((X-C(s,1)).^2 + (Y-C(s,2)).^2);  
end

surf(X,Y,J)
for i=1:100
    plotbest(i)
end
global A_init Ell r_d
i=60;
for j = 1 : n
		if (j-i)
% 			d(j)=norm(A_init(i,1:2)-A_init(j,1:2))+norm(A_init(i,3:4)-A_init(j,3:4))+norm(A_init(i,5:6)-A_init(j,5:6));
 			
            d(j)=norm(A_init(i,1:6)-A_init(j,1:6));
            

			end
	
end
    stem(d)
    
global N
N
