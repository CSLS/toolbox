function totalmass = GetStageTotalMass(stage)
%GETSTAGETOTALMASS Summary of this function goes here
%   Detailed explanation goes here

totalmass = 1000*stage.EmptyMass+1000*stage.FuelMass;

end

