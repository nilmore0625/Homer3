function [contents, str] = procStreamDefaultFileSubj(procFuncRun)

% Choose default procStream group section based on the run procStream
% output; if it's output ia dodAvg, choose the dodAvg default, otherwise
% choose dcAvg. 
if ~exist('procFuncRun','var') | isempty(procFuncRun)
    procFuncRun(1).funcArgOut = '';
end

datatype = 'dcAvg';
for ii=1:length(procFuncRun)
    if ~isempty(strfind(procFuncRun(ii).funcArgOut, 'dodAvg'))
        datatype = 'dodAvg';
        break;
    end
end

contents_dcAvg = {...
    '%% subj\n', ...
    '@ hmrBlockAvgSubj [dcAvg,dcAvgStd,tHRF,nTrials] (dcAvgRuns,dcAvgStdRuns,dcSum2Runs,tHRFRuns,chRuns,nTrialsRuns,CondName2Run\n', ...
    '\n\n', ...
    };

contents_dodAvg = {...
    '%% subj\n', ...
    '@ hmrBlockAvgSubj [dodAvg,dodAvgStd,tHRF,nTrials] (dodAvgRuns,dodAvgStdRuns,dodSum2Runs,tHRFRuns,chRuns,nTrialsRuns,CondName2Run\n', ...
    '\n\n', ...
    };

if strcmp(datatype, 'dcAvg')
    contents = contents_dcAvg;
else
    contents = contents_dodAvg;
end

str = cell2str(contents);

