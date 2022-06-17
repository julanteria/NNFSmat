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
      
      
      %I dont know why this *
      function obj = set.output(obj, val)
          obj.output = val;
      end
      
      
      % * and/or this doesnt set obj.output
      function obj = forward(obj, inputs)
          
          if size(inputs,2) ==  size(obj.weights,1)
            X = inputs * obj.weights + obj.biases;
            obj.output = X;
            
         
          elseif size(inputs,2) ==  size(obj.weights,2)
              obj.output = inputs * obj.weights' + obj.biases;
          
          else
              disp("Dimension Problem while trying Matrix-Multiplication.")
          end
          
      end
      
   end
   
end