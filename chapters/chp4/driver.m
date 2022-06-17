

%X = [12 2 -1;2 -1 11;-2 1 10];
 
%disp(max(0,X));

data = spiral_data(3);

X = data(:,1:end-1);

dense1 = Layer_Dense(2,3);

activation1 = Activation_ReLU();

dense1 = dense1.forward(X);

activation1 = activation1.forward(dense1.output);

disp(activation1.output);
