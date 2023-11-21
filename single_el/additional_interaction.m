%%%%%%%%%% Функция для расчёта взаимодействия ядро H - e %%%%%%%%%%%%%%%%%%

% g - базисный набор, построенный из орбиталей типа гаусса
% C - матрица, состоящая из коэффициентов c_mi для i-ой молекулярной 
% орбитали и m-ой атомной орбитали

% Qs - взаимодействие атома H с каждым e

function Qs = additional_interaction(g, C)
    Qs = 0;
    for i = 1 : 8
        for j = 1 : 8
            for k = 1 : 8
                for l = 1 : 8
                    Qs = Qs + g(i, j, k, l) * C(i) * C(j) * C(k) * C(l);
                end
            end
        end
    end
end