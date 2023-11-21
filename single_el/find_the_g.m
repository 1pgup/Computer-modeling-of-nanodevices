%%% Функция для нахождения базисного набора g из орбиталей типа Гаусса %%%%

% alpha - набор базисных коэффициентов
% ra - расположение атома с i-м базисным коэффициентом

% g - базисный набор, построенный из орбиталей типа гаусса 

function g = find_the_g(alpha, ra)
    for i = 1 : 8
        for j = 1 : i
            as1 = alpha(i) + alpha(j);
            ap1 = alpha(i) * alpha(j);
            rp = (alpha(i) * ra(i) + alpha(j) * ra(j)) / as1;
            for k = 1 : i - 1
                for l = 1 : k
                    as2 = alpha(k) + alpha(l);
                    ap2 = alpha(k) * alpha(l);
                    rq = (alpha(k) * ra(k) + alpha(l) * ra(l)) / as2;
                    if ((rp - rq) == 0)
                        F0 = 1;
                    else
                        F0=sqrt(pi)/2*erf(sqrt(as1*as2*(rp-rq)^2/(as1+ ...
                            as2)))/sqrt(as1*as2*(rp-rq)^2/(as1+as2));
                    end
                    g(i, j, k, l) = 2*pi^2.5/as1/as2/(as1+ ...
                        as2)^0.5*exp(-ap1*(ra(i)-ra(j))^2/as1- ...
                        ap2*(ra(k)-ra(l))^2/as2)*F0;
                    g(k, l, i, j) = g(i, j, k, l); % используя симметрию
                    g(j, i, k, l) = g(i, j, k, l); % используя симметрию
                    g(i, j, l, k) = g(i, j, k, l); % используя симметрию
                    g(j, i, l, k) = g(i, j, k, l); % используя симметрию
                    g(k, l, j, i) = g(i, j, k, l); % используя симметрию
                    g(l, k, i, j) = g(i, j, k, l); % используя симметрию
                    g(l, k, j, i) = g(i, j, k, l); % используя симметрию
                end
                k = i;
                for l = 1 : j
                    as2 = alpha(k) + alpha(l);
                    ap2 = alpha(k)  *alpha(l);
                    rq = (alpha(k) * ra(k) + alpha(l) * ra(l)) / as2;
                    if ((rp - rq) == 0)
                        F0 = 1;
                    else
                        F0=sqrt(pi)/2*erf(sqrt(as1*as2*(rp-rq)^2/(as1 ...
                            +as2)))/sqrt(as1*as2*(rp-rq)^2/(as1+as2));
                    end
                    g(i,j,k,l)=2*pi^2.5/as1/as2/(as1 ...
                        +as2)^0.5*exp(-ap1*(ra(i)-ra(j))^2/as1 ...
                        -ap2*(ra(k)-ra(l))^2/as2)*F0;
                    g(k, l, i, j) = g(i, j, k, l); % используя симметрию
                    g(j, i, k, l) = g(i, j, k, l); % используя симметрию
                    g(i, j, l, k) = g(i, j, k, l); % используя симметрию
                    g(j, i, l, k) = g(i, j, k, l); % используя симметрию
                    g(k, l, j, i) = g(i, j, k, l); % используя симметрию
                    g(l, k, i, j) = g(i, j, k, l); % используя симметрию
                    g(l, k, j, i) = g(i, j, k, l); % используя симметрию
                end
            end
        end
    end
end