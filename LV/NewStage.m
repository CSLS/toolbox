function Stage = NewStage(name,fuelmass,emptymass,isp)
%NEWSTAGE Summary of this function goes here
%   Inputs (masses are in tons)

if ~ischar(name)
    error('Stage name should be a string.');
end

Stage.Name = name;
Stage.FuelMass = fuelmass;
Stage.EmptyMass = emptymass;
Stage.Isp = isp;

end

