




%data = spiral_data(3);




%figure(1)
%scatter(data(:,1), data(:,2), 12, data(:,3)); axis equal;
%grid

%figure(2)
%scatter(data(:,1), data(:,2));axis equal;
%grid



function data = spiral_data(n , N, degrees, start)
% Generate "n spirals" dataset with N instances.
% degrees controls the length of the spirals
% start determines how far from the origin the spirals start, in degrees
% noise displaces the instances from the spiral. 
%  0 is no noise, at 1 the spirals will start overlapping

    if nargin < 1
        n = 2;
    end
    if nargin < 2
        N = 300;
    end
    if nargin < 3
        degrees = 300;
    end
    if nargin < 4
        start = 50;
    end

    
    noise = 0.7;
    deg2rad = (2*pi)/360;
    start = start * deg2rad;
    N1 = floor(N/2);
    N2 = N-N1;
    data = zeros(floor(N/2),3);
 
    
    for i=1:n
    
        if mod(i,2) == 0
            N = N1;
            n = start + sqrt(rand(N,1)) * degrees * deg2rad;
            d = [-cos(n)/i.*n + rand(N,1)*noise sin(n)/i.*n+rand(N,1)*noise zeros(N,1)+i];
            
        
        else
            N = N2;
            n = start + sqrt(rand(N,1)) * degrees * deg2rad;
            d = [cos(n)/i.*n+rand(N,1)*noise -sin(n)/i.*n+rand(N,1)*noise zeros(N,1)+i];
            
        end
        
        
        dat = data;

        data = [dat;d];
 
        
      
           
        
    end
    
    data( ~any(data,2), : ) = [];
    
    
end



function data = twospirals(N, degrees, start, noise)
% Generate "two spirals" dataset with N instances.
% degrees controls the length of the spirals
% start determines how far from the origin the spirals start, in degrees
% noise displaces the instances from the spiral. 
%  0 is no noise, at 1 the spirals will start overlapping
    if nargin < 1
        N = 100;
    end
    if nargin < 2
        degrees = 570;
    end
    if nargin < 3
        start = 90;
    end
    if nargin < 5
        noise = 0.2;
    end  
    
    deg2rad = (2*pi)/360;
    start = start * deg2rad;
    N1 = floor(N/2);
    N2 = N-N1;
    
    n = start + sqrt(rand(N1,1)) * degrees * deg2rad;   
    d1 = [-cos(n).*n + rand(N1,1)*noise sin(n).*n+rand(N1,1)*noise zeros(N1,1)];
    
    n = start + sqrt(rand(N1,1)) * degrees * deg2rad;      
    d2 = [cos(n).*n+rand(N2,1)*noise -sin(n).*n+rand(N2,1)*noise ones(N2,1)];
    
    data = [d1;d2];
end

































