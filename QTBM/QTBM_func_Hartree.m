%%%%%%%%%%% Функция QTBM, работающая с единицами Хартри %%%%%%%%%%%%%%%%%%%

% Входные параметры:
% xv: координатный вектор
% U_0: смещение зоны проводимости
% Vb: напряжение смещения
% E: энергия
% xb: координата начала первого барьера
% d: ширина барьера
% mw: эфф. масса в яме, md: эфф. масса в барьере
% E0:  базовая энергия
% aE: 1 - эмиттер справа, 0 - слева
% aC: 1 - коллектор слева, 0 - справа

% Выходные параметры:
% PSI: волновая функция

function PSI = QTBM_func_Hartree(xv,U0,Vb,E,xb,d,md,mw,E0,aE,aC)

    dx = xv(2) - xv(1);
    Nx = length(xv) - 2;
    mL = mw;
    mR = mw;
        
    [Ux, mx] = simp_ux_mx(xv,U0,Vb,xb,d,md,mw,E0);
        
    
    % Составление матрицы, находящейся слева от вектора волновой функции
    a = 1 / (4 * dx ^ 2);
    s = zeros(Nx + 1, 1);
    dd = zeros(Nx, 1);
    
    for j = 2 : Nx - 1
        dd(j) = a * (1/(mx(j-1)) + 2/(mx(j)) + 1/(mx(j+1)) ) + Ux(j);
        s(j) = a * (1/(mx(j-1))+1/(mx(j)));
    end
    
    dd(1) = a*( 1/(mL) + 2/(mx(1)) + 1/(mx(2)) ) + Ux(1);
    dd(Nx) = a*( 1/(mx(Nx-1)) + 2/(mx(Nx)) + 1/(mR) ) + Ux(Nx);
    
    s(1) = a*(1/(mL)+1/(mx(1)));
    s(Nx) = a*(1/(mx(Nx))+1/(mx(Nx-1)));
    s(Nx+1) = a*(1/(mR)+1/(mx(Nx)));
    
    k1 = sqrt(2 * mx(1) * (E - Ux(1)));
    kNx = sqrt(2 * mx(Nx) * (E - Ux(Nx)));
    
    z1 =  exp(1i * k1 * dx);
    zNx = exp(1i * kNx * dx);
    
    alpha1 = 1 / (z1 - (z1 ^ (-1)));
    beta1 = (-z1 ^ (-1)) / ((z1) - z1 ^ (-1));
    
    alphaNx = 1 / (zNx - zNx ^ (-1));
    betaNx = (zNx ^ (-1)) / (zNx ^ (-1) - zNx);

    dg1 = [-s(1 : Nx); betaNx; 0];
    dg2 = [alpha1; dd - E; alphaNx];
    dg3 = [0; beta1; -s(2 : Nx + 1)];
    Hs3 = spdiags([dg1, dg2, dg3], -1 : 1, Nx + 2, Nx + 2);
    
    % Предполагаем, что волна идёт слева => a_1 = 1.
    % Получаем матрицу, находящуюся за знаком =
    avec = zeros(Nx + 2, 1);
    avec(1) = aE;
    avec(end) = -aC;
    
    % Итоговая волновая функция
    PSI = Hs3 \ sparse(avec);      
end