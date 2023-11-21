%%%%%%%%%%%%%%%%%%%%%%%%%%%% Структура слоев %%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% первый столбец — использованный материал из «библиотеки»
% второй столбец — длина слоя в нм
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

function M = input_file(num)
    library;             % загрузка базы данных материалов
    extract_parameters;  % извлекаем параметры из библиотеки
    ternary_alloy;       % вычисляем тройной сплав
    if num == 1
        M = [
        GaAs      10
        InGaAs20  10
        GaAs      10
        ];
    elseif num == 2
        M = [
        AlGaAs40      5
        GaAs          5
        AlGaAs40      5
        ];
    elseif num == 3
        M = [
        AlInAs   6
        InGaAs   5.2
        AlInAs   6
        ];
    elseif num == 4
        M = [
        AlInAs   6
        InGaAs   5.9
        AlInAs   1.3
        InGaAs   2.4
        AlInAs   6
        ];
    elseif num == 5
        M = [
        AlInAs   6
        InGaAs   4.6
        AlInAs   1.0
        InGaAs   2.0
        AlInAs   1.0
        InGaAs   1.9
        AlInAs   6
        ];
    elseif num == 6
        M = [
        GaAsSb   10
        InGaAs   10
        GaAsSb   10
        ];
    end
end