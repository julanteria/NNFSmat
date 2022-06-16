data = spiral_data(3);

%figure(1)
%scatter(data(:,1), data(:,2), 12, data(:,3)); axis equal;


%figure(2)
%scatter(data(:,1), data(:,2));axis equal;


dense1 = Layer_Dense(2, 3);

X = data(:,1:end-1);

dense1.forward(X);