function LVout = NewLV(name)
%NEWLV Creates an empty Launch Vehicle class to be filled using other functions.
%   Input:
%   - name      a string
%   Output:
%   - LVout     empty structure to hold Launch Vehicle properties

if ~ischar(name)
    error('Launch vehicle name should be a string.');
end

LVout.Name = name;
LVout.NbPayloads = 0;
LVout.NbStages = 0;

end

