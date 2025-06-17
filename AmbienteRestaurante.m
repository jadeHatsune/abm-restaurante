tic
clear all; close all; clc;

%% 1. Creación del ambiente
lab = rgb2gray(imread('restaurante.png'));
labB = 120 > lab; 
labB = imresize(labB,[100,100]);
labBi = zeros(100,100);
labBi(labB>0)=255;

% Mapeo del area 
Ib = zeros(100,100); % Ib

% Instancia de mesas
Ib(8, 20) = 1;
Ib(8, 24) = 1;
Ib(6, 22) = 1;
Ib(10, 22) = 1;

Ib(8, 35) = 1;
Ib(8, 39) = 1;
Ib(6, 37) = 1;
Ib(10, 37) = 1;

Ib(8, 50) = 1;
Ib(8, 54) = 1;
Ib(6, 52) = 1;
Ib(10, 52) = 1;

Ib(8, 65) = 1;
Ib(8, 69) = 1;
Ib(6, 67) = 1;
Ib(10, 67) = 1;

Ib(8, 80) = 1;
Ib(8, 84) = 1;
Ib(6, 82) = 1;
Ib(10, 82) = 1;

Ib(20, 20) = 1;
Ib(20, 24) = 1;
Ib(18, 22) = 1;
Ib(22, 22) = 1;

Ib(20, 35) = 1;
Ib(20, 39) = 1;
Ib(18, 37) = 1;
Ib(22, 37) = 1;

Ib(20, 50) = 1;
Ib(20, 54) = 1;
Ib(18, 52) = 1;
Ib(22, 52) = 1;

Ib(20, 65) = 1;
Ib(20, 69) = 1;
Ib(18, 67) = 1;
Ib(22, 67) = 1;

Ib(20, 80) = 1;
Ib(20, 84) = 1;
Ib(18, 82) = 1;
Ib(22, 82) = 1;

Ib(32, 20) = 1;
Ib(32, 24) = 1;
Ib(30, 22) = 1;
Ib(34, 22) = 1;

Ib(32, 35) = 1;
Ib(32, 39) = 1;
Ib(30, 37) = 1;
Ib(34, 37) = 1;

Ib(32, 50) = 1;
Ib(32, 54) = 1;
Ib(30, 52) = 1;
Ib(34, 52) = 1;

Ib(32, 65) = 1;
Ib(32, 69) = 1;
Ib(30, 67) = 1;
Ib(34, 67) = 1;

Ib(32, 80) = 1;
Ib(32, 84) = 1;
Ib(30, 82) = 1;
Ib(34, 82) = 1;

Ib(44, 20) = 1;
Ib(44, 24) = 1;
Ib(42, 22) = 1;
Ib(46, 22) = 1;

Ib(44, 35) = 1;
Ib(44, 39) = 1;
Ib(42, 37) = 1;
Ib(46, 37) = 1;

Ib(44, 50) = 1;
Ib(44, 54) = 1;
Ib(42, 52) = 1;
Ib(46, 52) = 1;

Ib(44, 65) = 1;
Ib(44, 69) = 1;
Ib(42, 67) = 1;
Ib(46, 67) = 1;

Ib(44, 80) = 1;
Ib(44, 84) = 1;
Ib(42, 82) = 1;
Ib(46, 82) = 1;

Ib(56, 20) = 1;
Ib(56, 24) = 1;
Ib(54, 22) = 1;
Ib(58, 22) = 1;

Ib(56, 35) = 1;
Ib(56, 39) = 1;
Ib(54, 37) = 1;
Ib(58, 37) = 1;

Ib(56, 50) = 1;
Ib(56, 54) = 1;
Ib(54, 52) = 1;
Ib(58, 52) = 1;

Ib(56, 65) = 1;
Ib(56, 69) = 1;
Ib(54, 67) = 1;
Ib(58, 67) = 1;

Ib(56, 80) = 1;
Ib(56, 84) = 1;
Ib(54, 82) = 1;
Ib(58, 82) = 1;

Ib(68, 20) = 1;
Ib(68, 24) = 1;
Ib(66, 22) = 1;
Ib(70, 22) = 1;

Ib(68, 35) = 1;
Ib(68, 39) = 1;
Ib(66, 37) = 1;
Ib(70, 37) = 1;

Ib(68, 50) = 1;
Ib(68, 54) = 1;
Ib(66, 52) = 1;
Ib(70, 52) = 1;

Ib(68, 65) = 1;
Ib(68, 69) = 1;
Ib(66, 67) = 1;
Ib(70, 67) = 1;

Ib(68, 80) = 1;
Ib(68, 84) = 1;
Ib(66, 82) = 1;
Ib(70, 82) = 1;

Ib(80, 20) = 1;
Ib(80, 24) = 1;
Ib(78, 22) = 1;
Ib(82, 22) = 1;

Ib(80, 35) = 1;
Ib(80, 39) = 1;
Ib(78, 37) = 1;
Ib(82, 37) = 1;

Ib(80, 50) = 1;
Ib(80, 54) = 1;
Ib(78, 52) = 1;
Ib(82, 52) = 1;

Ib(92, 20) = 1;
Ib(92, 24) = 1;
Ib(80, 22) = 1;
Ib(94, 22) = 1;

Ib(92, 35) = 1;
Ib(92, 39) = 1;
Ib(80, 37) = 1;
Ib(94, 37) = 1;

Ib(92, 50) = 1;
Ib(92, 54) = 1;
Ib(80, 52) = 1;
Ib(94, 52) = 1;

% Inicia el algoritmo de chamfer
Chamfer;

% Se añade el restaurante a mapa de distancias D chamfer
D(labBi == 255) = 255;


%% 2. Creación e inicialización de agentes
[m, n] = size(Ib); % Se toman los valores m y n de la imagen binaria

% Numero de agentes
numClientes = 200;

% Se inicializan los vectores de las posiciones de los agentes
M = zeros(1, numClientes);

N = zeros(1, numClientes);


% Se genera la matriz de Clientes
Cliente.pos = zeros(size(Ib));
Cliente.status = zeros(size(Ib));
Cliente.wait = zeros(size(Ib));

% Se inicializan los clientes dentro del area de mapeo
for k = 1: numClientes
    
    y = randi([2, 8]);
    x = randi([2, 99]);

    Cliente.pos(x, y) = 1;
    Cliente.status(x, y) = 1;
    Cliente.wait(x, y) = 0;

    M(k) = x;
    N(k) = y;

end

%% 2.5 Otras configuraciones del modelo

% Heatmap
num_rows = 100;
num_cols = 100;

% Crear el colormap de difuminado de colores
cmap = [
    0 0 0;       % 0 - Negro: vacío
    1 1 1;       % 1 - Blanco: base
    0 1 0;       % 2 - Verde: leve actividad
    1 1 0;       % 3 - Amarillo: actividad media
    1 0.5 0;     % 4 - Naranja: actividad alta
    1 0 0;       % 5 - Rojo: actividad crítica
];

% Numero de iteraciones
iteraciones = 1500;

% Variable para contar cuando salen del restaurante
contadorClientes = zeros(1, iteraciones + 1);
contadorClientes(1,1) = numClientes;
band = 0;

%% 3. Se inicial las Iteraciones y se escriben las reglas
% ==== Clientes ====
% Cliente.status 0 = Cliente inactivo
% Cliente.status 1 = cliente buscando mesa
% Cliente.status 2 = cliente en mesa
% Cliente.status 3 = Cliente comiendo
% Cliente.status 4 = Cliente estancado

for iteracion = 1: iteraciones

    for h = 1: length(M)

        %Almacenamiento de las coordenadas originales del agente al inicio de cada iteracion
        
        posm = M(h);
        posn = N(h);

        % Cliente en mesa
        if Cliente.status(M(h), N(h)) == 2
            Cliente.status(M(h), N(h)) = 3;
        end
        
        % Cliente comiendo
        if Cliente.status(M(h), N(h)) == 3
            
            Cliente.wait(M(h), N(h)) = Cliente.wait(M(h), N(h)) + 1;
            if Cliente.wait(M(h), N(h)) >= 300
                % Si hay una salida el agente sale del sistema
                Cliente.pos(M(h), N(h)) = 0;
                Cliente.status(M(h), N(h)) = 0;
                Cliente.wait(M(h), N(h)) = 0;
                D(M(h), N(h)) = 0;
                M(h) = -10;
                N(h) = -10;
                band = band + 1;
            end
            continue;

        end
        
        % validación de que el elemento sea un agente  
        if Cliente.status(M(h),N(h)) == 4 %si el agente esta estancado
        % Si el agente está estancado, aumenta el valor de distancia de su celda actual
            if D(M(h),N(h)) <= 252
                D(M(h),N(h)) = D(M(h),N(h))+3;
            end 
        end

        % Obtencion del vecindario Moore
        
        Block = D(M(h)-1:M(h)+1, N(h)-1:N(h)+1);

        % Valida que un cliente no tiene una mesa en su vecindario
        if Block(2, 2) == 0
            
            D(M(h), N(h)) = 255;
            Cliente.status(M(h), N(h)) = 2;

        % Si no hay una mesa o salida, se evalua el siguiente paso a dar
        elseif min(min(Block)) < D(M(h), N(h))
            
            % Se deja el espacio anterior vacio
            Cliente.pos(M(h), N(h)) = 0;
            Cliente.status(M(h), N(h)) = 0;

            % Se encuentran los valores menores al agente central en el vecindario para avanzar
            [r1, c1] = find(Block < D(M(h), N(h)));
            for v = 1 : length(r1)
                if Cliente.status(M(h) - 2 + r1(v), N(h) - 2 + c1(v)) == 1 || Cliente.status(M(h) - 2 + r1(v), N(h) - 2 + c1(v)) == 2

                    r1(v) = 0;
                    c1(v) = 0;

                end

            end

            % Elimina las posiciones ocupadas y selecciona una aleatoriamente
            r1(r1 == 0) = [];
            c1(c1 == 0) = [];
            if isempty(r1)
                continue;
            end
            index = randi(length(r1));

            % Se implementa el movimiento del agente
            M(h) = M(h) - 2 + r1(index);
            N(h) = N(h) - 2 + c1(index);
            if M(h) == 1, M(h) = M(h) + 1; end
            if N(h) == 1, N(h) = N(h) + 1; end
            if M(h) == 99, M(h) = M(h) - 1; end
            if N(h) == 99, N(h) = N(h) - 1; end
            Cliente.pos(M(h), N(h)) = 1;
            Cliente.status(M(h), N(h)) = 1;
        
        % Se asigna el estancamiento    
        elseif posm == M(h) && posn == N(h)
            
            Cliente.status(M(h), N(h)) = 4;

        else

            % Movimiento de agente aleatorio
            M(h) = M(h) - 2 + randi([2,3]);
            N(h) = N(h) - 2 + randi([2,3]);

        end
        
        contadorClientes(1, iteracion + 1) = numClientes - band;

    end

    % Actualizacion de posiciones y visualizacion
    T1 = M(M > 0);
    T2 = N(N > 0);

    M = T1;
    N = T2;

    u = length(M);
    dat = randperm(u);

    M = M(dat);
    N = N(dat);

    % Etiquetar componentes conectados
    cc = bwconncomp(Cliente.pos);

    % Crear la matriz de calor basada en los clusters
    heat_matrix = zeros(num_rows, num_cols);

    % Asignar un nivel de calor a cada cluster basado en su tamano
    for i = 1 : cc.NumObjects
    
        cluster_size = numel(cc.PixelIdxList{i});
        heat_level = min(cluster_size, 5); % Máximo nivel 5
        heat_matrix(cc.PixelIdxList{i}) = heat_level;

    end

    % Crear una matriz de colores basada en la matriz de calor
    color_matrix = zeros(num_rows, num_cols, 3);
    for i = 1:num_rows
        for j = 1:num_cols
            color_idx = heat_matrix(i, j);
            if color_idx > 0
                color_matrix(i, j, :) = cmap(color_idx + 1, :);
            end
        end
    end
    
    %Se prepara el mapeo del ambiente
    labG = zeros(100,100);
    labG(labBi == 255) = 1;
    
    %Se grafican los agentes y los muros
    RGB = zeros(100,100,3); % Limpio

    % Clientes (Azul)
    RGB(:,:,3) = Cliente.pos;
    
    % Muros (Gris)
    RGB(:,:,1) = RGB(:,:,1) + 0.5 * labG;
    RGB(:,:,2) = RGB(:,:,2) + 0.5 * labG;
    RGB(:,:,3) = RGB(:,:,3) + 0.5 * labG;

    combined_matrix = max(RGB, color_matrix);
    J = imresize(combined_matrix, 10, 'nearest');
    
    title(['Iteración: ', num2str(iteracion)]);
    figure(1)
    imshow(J);
    drawnow;
end
toc