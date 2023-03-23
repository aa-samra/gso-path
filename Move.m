% Function 7: Move.m------------------------------------
function Move(i,j)
	global A m step1 Ell bound
	if (j>0) & (Ell(i) > Ell(j))
		temp(i,1:2) = A(i,1:2) + step1*Path(A(i,1:2),A(j,1:2));
        temp(i,3:4) = A(i,3:4) + step1*Path(A(i,3:4),A(j,3:4));
        temp(i,5:6) = A(i,5:6) + step1*Path(A(i,5:6),A(j,5:6));
%         temp(i,1:6)=A(i,1:6)+step1*Path(A(i,1:6),A(j,1:6));
		flag = 0;
%         flag=limit(temp(i,:));
		for k = 1 : m
			if (temp(i,k) <-5*bound) | (temp(i,k) > 5*bound)
				flag = 1;
				break;
            end
        end
		if (flag == 0)
			A(i,:) = temp(i,:);
		end
	end
end