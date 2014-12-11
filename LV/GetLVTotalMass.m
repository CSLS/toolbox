function totalmass = GetLVTotalMass(lv)
%GETLVMASS Summary of this function goes here
%   Detailed explanation goes here

totalmass = 0;

for k=1:lv.NbStages
    totalmass = totalmass+GetStageTotalMass(lv.Stages(k));
end

for k=1:lv.NbPayloads
    totalmass = totalmass+lv.Payloads(k).Mass;
end

end

