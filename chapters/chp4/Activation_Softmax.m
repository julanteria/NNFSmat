classdef Activation_Softmax
    
    properties
        output = [];
    end
    
    methods
        function obj = forward(obj,input)
            %get max of Matrix 
            maxi = max(input,[],'all');
            
            %every element minus maxi for dodging overflow e^x
            input = input - maxi;
            %disp(input);
            
            e_val = exp(input);
            
            e_sums = sum(e_val);
            
            
            obj.output = e_val ./ e_sums;
        end
    end
end

