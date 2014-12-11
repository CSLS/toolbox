function lvout = AttachStage(lv,stage)
%ATTACHSTAGE Summary of this function goes here
%   Detailed explanation goes here

lvout = lv;

if ~isfield(lv,'Stages')
    lvout.Stages(1) = stage;
else
    lvout.Stages(length(lv.Stages)+1) = stage;
end

lvout.NbStages = lvout.NbStages+1;

end

