%%%%%%%%%%%%%%%%%%%%%%%%%%%% Параметр решётки %%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i, 1}, 'a');
  if idx == 1
    idx_a = i - 1;
  end
end

%%%%%%%%%%%%%%%%%%%%%% Запрещенная зона в полупроводнике %%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i, 1},'Eg6cG');
  if idx == 1
    idx_Eg6c = i - 1;
  end
end

%%%% Зависимость запрещенной зоны от температуры «альфа» в точке гамма %%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i,1}, 'alphaG');
  if idx == 1
    idx_alphaG = i - 1;
  end
end

%%%% Зависимость запрещенной зоны от температуры «бета» в точке гамма %%%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i,1}, 'betaG');
  if idx == 1
    idx_betaG = i-1;
  end
end

%%%%%%%%%%%%%%%%%%%%%% Смещение валентной зоны %%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i, 1}, 'VBO');
  if idx == 1
    idx_VBO = i - 1;
  end
end

%%%%%%%%%%%%%%%%%%%%%%%%% Эффективная масса %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

for i = 1 : length(DB.textdata(:, 1))
  idx = strcmp(DB.textdata{i,1}, 'me');
  if idx == 1
    idx_me = i - 1;
  end
end