
function ds = Electrico(t, s)

    ds = zeros(2,1);

    % Parametros 
    K = 2.5;                % Ganancia no inversora
    a = 1e-8;               % Coeficiente de s^2 (R1*R2*C1*C2)
    b = 5e-5;               % Coeficiente de s (R1C1 + R2C1 + R1C2(1-K))
    Vin = 1;                % Entrada tipo escalón (1V)

    % Ecuaciones de estado
    ds(1) = s(2);

    % Despejamos la segunda derivada de: a*y'' + b*y' + y = K*Vin
    ds(2) = (K*Vin - b*s(2) - s(1)) / a;
    
end    