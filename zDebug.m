clear all; close all; clc;

%% Launcher
% Create CSL1 Launcher
CSL1 = NewLV('CSL1');

%% Payloads
% Create 2 CubeSat 1U payload. Mass are 1.33kg and 1.2kg.
CS1 = NewPayload('CubeSat1',1.33);
CS2 = NewPayload('CubeSat2',1.2);

% Attach first payload (last ejected)
CSL1 = AttachPayload(CSL1,CS1);
% Attach second payload (first ejected)
CSL1 = AttachPayload(CSL1,CS2);

clear CS1 CS2;

%% Stages
Stage1 = NewStage('Stage1',1,0.1,275);
Stage2 = NewStage('Stage2',0.2,0.02,275);

% Attach 2nd stage (last ejected)
CSL1 = AttachStage(CSL1,Stage2);
% then attach first stage
CSL1 = AttachStage(CSL1,Stage1);

clear Stage1 Stage2;

%% Debug
GetLVTotalMass(CSL1),
CSL1,