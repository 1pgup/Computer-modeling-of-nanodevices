function[E, psi] = FDT_ef_mass(z, V0, Mass, n)
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Константы %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

    hbar = 1.054e-34;
    e = 1.602e-19;
    m0 = 9.11e-31;
    dz = z(2) - z(1);

    shift = min(V0);
    V0 = V0 - shift;
    V0(1) = 2;
    V0(end) = 2;

%%%%%%%%%%%%%%%%%%%%%% Создание диагональной матрицы %%%%%%%%%%%%%%%%%%%%%%

    Massp = [(Mass(1 : end - 1) + Mass(2 : end)) / 2   Mass(end)];
    Massm = [Mass(1) (Mass(1 : end - 1) + Mass(2 : end)) / 2];

    b = 1 ./ Massp + 1./Massm;
    a = 1 ./ Massm(2 : end);
    c = 1 ./ Massp(1 : end - 1);

    matrix = (-1) * diag(b)  +  diag(a, -1)  +  diag(c, 1);

    matrix = matrix / dz^2;

%%%%%%%%%%%%%%%%%%%%%%%% Создание Гамильтониана %%%%%%%%%%%%%%%%%%%%%%%%%%%

    H = (-hbar ^ 2 / (2 * m0)) * matrix + diag(V0 * e);
    H = sparse(H);

%%%%%%%%%%%%%%%%%%%%%%%% Решение уравнения Шрёдингера %%%%%%%%%%%%%%%%%%%%%

    [psi, Energy] = eigs(H, n, 'SM');
    E = diag(Energy) / e + shift;

%%%%%%%%%%%%%%%%%%%%%% Нормализация волновой функции %%%%%%%%%%%%%%%%%%%%%%

    for i = 1 : n
        psi(:, i) = psi(:, i) / sqrt(trapz(z', abs(psi(:, i)) .^ 2));  
    end
end