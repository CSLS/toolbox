function Payload = NewPayload(name,mass)
%NEWPAYLOAD Creates a Payload structure to hold information about a given
%mission payload.
%   Inputs:
%   - name          payload name
%   - mass          payload mass in kg
%   Outputs:
%   - Payload       structure containing payload properties

if ~ischar(name)
    error('Payload name should be a string.');
end

Payload.Name = name;
Payload.Mass = mass;

end

