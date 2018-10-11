function [contents, str] = procStreamDefaultFileRun()

contents = {...
    '%% run\n', ...
    '@ hmrIntensity2OD dod (d\n', ...
    '@ enPCAFilter #[dod,svs,nSV] (dod,ch,tIncMan nSV %%0.1f 0\n', ...
    '@ hmrMotionArtifact tIncAuto (dod,t,ch,tIncMan tMotion %%0.1f 0.5 tMask %%0.1f 1 STDEVthresh %%0.1f 50 AMPthresh %%0.1f 5\n', ...
    '@ enStimRejection [s,tRangeStimReject] (t,s,tIncAuto,tIncMan tRange %%0.1f_%%0.1f -5_10\n', ...
    '@ hmrBandpassFilt dod (dod,t hpf %%0.3f 0.01 lpf %%0.1f 0.5\n', ...
    '@ hmrOD2Conc dc (dod,SD,ch ppf %%0.1f_%%0.1f 6_6\n', ...
    '@ hmrBlockAvg [dcAvg,dcAvgStd,tHRF,nTrials,dcSum2] (dc,s,t trange %%0.1f_%%0.1f -5_30\n', ...
    '\n\n', ...
    };

str = cell2str(contents);