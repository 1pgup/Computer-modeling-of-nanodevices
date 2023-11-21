%%%% Функция создает профиль потенциала RTD и вектор эффективной массы %%%%

% Входные параметры: 
% xv: координатный вектор, 
% U_0: смещение зоны проводимости
% x_b: координата начала первого барьера
% d: ширина барьера
% mw: эфф. масса в яме, md: эфф. масса в барьере
% E_0: начальная энергия электрона

% Выходные параметры: 
% Ux: глобальный потенциальный профиль
% mx: глобальная эффективная масса

function [Ux, mx] = simp_ux_mx(xv,U_0,V_a,x_b,d,md,mw,E_0)

    Nx = length(xv);
    Ux = zeros(Nx, 1);
    
    [~, LEstart] = min(abs(xv - (x_b)));
    [~, d1start] = min(abs(xv - (x_b)));

    [~, d1fin] = min(abs(xv - (x_b + d)));
    wstart = d1fin + 1;
    [~, wfin] = min(abs(xv - (x_b + d)));
    wfin = wfin - 1;
    d2start = wfin + 1;
    [~, d2fin] = min(abs(xv - (x_b + d)));
    [~, LCfin] = min(abs(xv - (x_b + d)));
    LCfin = LCfin - 1;
    

    Ux_b1 = d1start : d1fin;
    Ux_w = wstart : wfin; 
    Ux_b2 = d2start : d2fin;
    
    
    Ux(1 : LEstart-1) = 0;
    Ux(Ux_b1) = U_0 ;
    Ux(Ux_b2) = U_0;
    Ux(Ux_w) = 0;
    Ux(LCfin + 1 : end) = -V_a;
    
    UV = zeros(Nx, 1);
    UV(LEstart : LCfin) = linspace(0, -V_a, LCfin - LEstart + 1).';
    Ux = Ux + UV + E_0;

    Ux_loc = Ux(LEstart - 1 : LCfin + 1);
    x_loc = xv(LEstart - 1 : LCfin + 1);


    [~, d1start_loc] = min(abs(x_loc - x_b));
    [~, d1fin_loc] = min(abs(x_loc - (x_b + d)));
    [~, wfin_loc] = min(abs(x_loc-(x_b + d)));
    d2start_loc = wfin_loc + 1;
    [~, d2fin_loc] = min(abs(x_loc - (x_b + d)));

    N = length(Ux_loc) - 2;
    mx_loc = mw * ones(N + 2, 1);
    mx_loc(1) = mw;
    mx_loc(end) = mw;
    mx_loc(d1start_loc - 1 : d1fin_loc - 1) = md;
    mx_loc(d2start_loc - 2 : d2fin_loc - 1) = md;
    
    NL = LEstart - 1;
    NR = Nx - (NL + length(Ux_loc)); 
    mxL = mw * ones(NL, 1);
    mxR = mw * ones(NR, 1);

    mx = [mxL; mx_loc; mxR];
end