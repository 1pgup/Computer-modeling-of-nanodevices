%%%%%%%%%%%%%%%%%%%%%%%% III-V Тройные сплавы на InP %%%%%%%%%%%%%%%%%%%%%%

x = 0.53;
InGaAs = x * InAs + (1-x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.37;
InGaAs37 = x * InAs + (1-x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.45;
InGaAs45 = x * InAs + (1-x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.715;
InGaAs71 = x * InAs + (1-x) * GaAs - x * (1 - x) * InGaAs_bowing;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0.48;
AlInAs = x * AlAs + (1 - x) * InAs - x * (1 - x) * AlInAs_bowing;
x = 0.80;
AlInAs80 = x * AlAs + (1 - x) * InAs - x * (1 - x) * AlInAs_bowing;

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

x = 0.51;
GaAsSb = x * GaAs + (1 - x) * GaSb - x *(1 - x) * GaAsSb_bowing;
x = 0.56;
AlAsSb = x * AlAs + (1 - x) * AlSb - x * (1 - x) * AlAsSb_bowing;

%%%%%%%%%%%%%%%%%%%%%%%% III-V Тройные сплавы на GaAs %%%%%%%%%%%%%%%%%%%%%

x = 0.10;
AlGaAs_bowing(idx_Eg6c) = -0.127 + 1.310 * x;
AlGaAs_bowing(idx_VBO)  =  0.27  -  1.05 * x;
AlGaAs10 = x * AlAs + (1 - x) * GaAs - x * (1 - x) * AlGaAs_bowing;
x = 0.15;
AlGaAs_bowing(idx_Eg6c) = -0.127 + 1.310 * x;
AlGaAs_bowing(idx_VBO)  =  0.27  -  1.05 * x;
AlGaAs15 = x * AlAs + (1 - x) * GaAs - x * (1 - x) * AlGaAs_bowing;
x = 0.20;
AlGaAs_bowing(idx_Eg6c) = -0.127 + 1.310 * x;
AlGaAs_bowing(idx_VBO)  =  0.27  -  1.05 * x;
AlGaAs20 = x * AlAs + (1 - x) * GaAs - x * (1 - x) * AlGaAs_bowing;
x = 0.30;
AlGaAs_bowing(idx_Eg6c) = -0.127 + 1.310 * x;
AlGaAs_bowing(idx_VBO)  =  0.27  -  1.05 * x;
AlGaAs30 = x*AlAs + (1-x)*GaAs - x*(1-x)*AlGaAs_bowing;

x=0.40;
AlGaAs_bowing(idx_Eg6c) = -0.127 + 1.310*x;
AlGaAs_bowing(idx_VBO)  =  0.27  -  1.05*x;
AlGaAs40 = x * AlAs + (1 - x) * GaAs - x * (1-x) * AlGaAs_bowing;
x = 0.05;
InGaAs05 = x * InAs + (1-x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.06;
InGaAs06 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.07;
InGaAs07 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.08;
InGaAs08 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.09;
InGaAs09 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.10;
InGaAs10 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.15;
InGaAs15 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.20;
InGaAs20 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.25;
InGaAs25 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.30;
InGaAs30 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;
x = 0.40;
InGaAs40 = x * InAs + (1 - x) * GaAs - x * (1 - x) * InGaAs_bowing;

%%%%%%%%%%%%%%%%%% III-V Тройные сплавы на InAs/GaSb/AlSb %%%%%%%%%%%%%%%%%

x = 0.25;
GaInSb25 =  x * InSb + (1 - x) * GaSb - x * (1 - x) * GaInSb_bowing;
x = 0.35;
GaInSb35 =  x * InSb + (1 - x) * GaSb - x * (1 - x) * GaInSb_bowing;
x = 0.09;
GaAsSb91 = x * GaAs + (1 - x) * GaSb - x * (1 - x) * GaAsSb_bowing;
x = 0.91;
InAsSb   = x * InAs + (1 - x) * InSb - x .* (1 - x) * InAsSb_bowing;
x = 0.5; y = 0.08;
AlGaAsSb = x * GaSb + (1 - x) * (y * AlAs + (1 - y) * AlSb - y * (1 ...
    - y) * AlAsSb_bowing);