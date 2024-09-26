
numSamples = [10^2 10^3 10^4 10^5 10^6];
for j = 1:length(numSamples)
    tic
    numInCirc = 0;
    for i = 1:numSamples(j)
        coordPair = 2*rand(2,1)-1;
        
        if(coordPair(1)^2 + coordPair(2)^2) <= 1
            numInCirc = numInCirc + 1;
        end
    end

    expPi = 4*numInCirc/numSamples(j);

    disp("Number of samples: " + numSamples(j));
    disp("Approximated pi: " + expPi);
    toc
    disp(" ");
    
end
