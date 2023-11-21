%%%%%%%%%%%%%%%%%%%%%%%%%% Загрузка библиотеки %%%%%%%%%%%%%%%%%%%%%%%%%%%%

DB = importdata('materialDB_ZB.csv', ',');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaAs');
    if idx == 1
        GaAs = DB.data(:, i - 1)';
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlAs');
    if idx == 1
        AlAs = DB.data(:, i - 1)';
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InAs');
    if idx == 1
        InAs = DB.data(:, i - 1)';
    end
end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InSb');
    if idx == 1
        InSb = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaSb');
    if idx == 1
        GaSb = DB.data(:, i - 1)';
    end

end

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlSb');
    if idx == 1
        AlSb = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% Inp %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InP');
    if idx == 1
        InP = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaP');
    if idx == 1
        GaP = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlP');
    if idx == 1
        AlP = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlGaAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlGaAs');
    if idx == 1
        AlGaAs_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InGaAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InGaAs');
    if idx == 1
        InGaAs_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlInAs %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlInAs');
    if idx == 1
        AlInAs_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaInP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaInP');
    if idx == 1
        GaInP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlInP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlInP');
    if idx == 1
        AlInP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlGaP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlGaP');
    if idx == 1
        AlGaP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaInSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaInSb');
    if idx == 1
        GaInSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlInSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlInSb');
    if idx == 1
        AlInSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlGaSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlGaSb');
    if idx == 1
        AlGaSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaAsSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaAsSb');
    if idx == 1
        GaAsSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InAsSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InAsSb');
    if idx == 1
        InAsSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlAsSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlAsSb');
    if idx == 1
        AlAsSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaAsP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaAsP');
    if idx == 1
        GaAsP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InAsP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InAsP');
    if idx == 1
        InAsP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlAsP %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlAsP');
    if idx == 1
        AlAsP_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% GaPSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'GaPSb');
    if idx == 1
        GaPSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% InPSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'InPSb');
    if idx == 1
        InPSb_bowing = DB.data(:, i - 1)';
    end
end 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%% AlPSb %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(1, :))
    idx = strcmp(DB.textdata{1, i}, 'AlPSb');
    if idx == 1
        AlPSb_bowing = DB.data(:, i - 1)';
    end
end 