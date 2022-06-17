classdef Activation_ReLU
    
    properties
        output = [];
    end
    
    methods
        function obj = forward(obj,input)
            %compare every val in input matrix, if < 0 --> change to 0
            obj.output = max(0,input);
        end
    end
end

