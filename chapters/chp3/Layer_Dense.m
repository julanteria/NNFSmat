classdef Layer_Dense
    
   properties
      weights = [];
      biases = [];
      output = [];
   end
   
   methods
      function obj = Layer_Dense(n_inputs, n_neurons)
         obj.weights = 0.01 * randn(n_inputs, n_neurons);
         obj.biases = zeros(1, n_neurons);
      end
      
      function obj = forward(obj, inputs)
        obj.output = inputs * obj.weights' + obj.biases;
      end
      
   end
   
end