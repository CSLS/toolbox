function lvout = AttachPayload(lv,payload)
%ATTACHPAYLOAD Used to attach payload to a given launcher. Latest attached
%payload is first to separate.
%   Inputs:
%   - lv        launch vehicle structure
%   - payload   payload structure
%   Output:
%   - lvout     updated launcher structure

lvout = lv;

if ~isfield(lv,'Payloads')
    lvout.Payloads(1) = payload;
else
    lvout.Payloads(length(lv.Payloads)+1) = payload;
end

lvout.NbPayloads = lvout.NbPayloads+1;

end

