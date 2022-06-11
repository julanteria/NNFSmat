
inputs=[1, 2, 3, 2.5];

weights=[0.2, 0.8, -0.5, 1; 
		 0.5, -0.91, 0.26, -0.5; 
		-0.26, -0.27, 0.17, 0.87];

biases = [2, 3, 0.5];

layer_output = cell(0,3);




for i=1:length(biases)
    
    neuron_out = 0;
    
    for ii=1:length(weights(i,:))
        
        neuron_out = neuron_out + inputs(ii)*weights(i,ii);
    end
    
    neuron_out = neuron_out + biases(i);
    
    layer_out(i) = neuron_out;
    %disp(biases(i));
    %disp(weights(i,:));
end 
disp(layer_out);

