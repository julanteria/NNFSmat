
%disp(Y);

format long

data = spiral_data(3);
X = data(:,1:end-1);


% Create Dense layer with 2 input features and 3 output values
dense1 = Layer_Dense(2, 3);

% Create ReLU activation (to be used with Dense layer):
activation1 = Activation_ReLU();

% Create second Dense layer with 3 input features (as we take output
% of previous layer here) and 3 output values (output values)
dense2 = Layer_Dense(3, 3);


% Create Softmax activation (to be used with Dense layer):
activation2 = Activation_Softmax();


% Make a forward pass of our training data through this layer
dense1 = dense1.forward(X);


% Make a forward pass through activation function
% it takes the output of first dense layer here
activation1 = activation1.forward(dense1.output);


% Make a forward pass through second Dense layer
% it takes outputs of activation function of first layer as inputs
dense2 = dense2.forward(activation1.output);


% Make a forward pass through activation function
% it takes the output of second dense layer here
activation2 = activation2.forward(dense2.output);


%disp(dense2.output);
%disp(activation1.output);
disp(activation2.output);





%{
X = [4.8 1.21 2.385];

activation1 = Activation_Softmax();

activation1 = activation1.forward(X);

disp(activation1.output); 
disp(sum(activation1.output)); 

%}


