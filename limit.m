function flag=limit(temp)
    global A m step1 Ell bound R C
    flag=0;
    for k = 1 : m
        if (temp(1,k) < -bound) | (temp(1,k) > bound)
            flag = 1;
            break;
        end
    end
    for i = 1 : length(R)
        if norm(temp-C(i,:))<R(i)
            flag = 1;
        end
    end
end
    