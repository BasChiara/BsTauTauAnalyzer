# BsTauTauAnalyzer

## Setup

```
mkdir MyWorkingDirectory
cd MyWorkingDirectory
cmsrel CMSSW_15_0_10
cd CMSSW_15_0_10/src/
cmsenv
git cms-init
git cms-addpkg PhysicsTools/NanoAODTools
git clone https://github.com/cecilecaillol/BsTauTauAnalyzer.git -b Run3
scram b -j 8
```

## Run locally

Example for a ttbar MC file in the emu final state. The trigger list can be left empty. Change the last word to run other final states, or to run over data (e.g. "emudata2018" instead of "emumc2018").

```
python3 $CMSSW_BASE/src/PhysicsTools/NanoAODTools/scripts/nano_postproc.py output /eos/cms/store/group/phys_bphys/cbasile/BsTauTau-ttbar/nanov15_UParTditau/crabjobs_2026Jul11/ttbarToBsToTauTau_BsFilter_TauTauFilter_TuneCP5_13TeV-pythia8-evtgen/ttbarToBsToTauTau_RunIIUL18_nanoAODv15_v1/260710_222737/0000/step_nanoAODv15_10.root --bi $CMSSW_BASE/src/BsTauTauAnalyzer/Flattener/scripts/keep_in.txt --bo $CMSSW_BASE/src/BsTauTauAnalyzer/Flattener/scripts/keep_out.txt -c "(nMuon>0&&nElectron>0&&nJet>0)" -I BsTauTauAnalyzer.Flattener.Flattener_analysis analysis_emumc2018 -N 1000
```

## Submit jobs via condor

Edit runNtuplizer.py with (or add arguments to the command below):
 * location for the output ntuples in your eos repository
 * final state to be run

Edit EraConfig.py:
 * comment or uncomment the last lines depending on whether you are running on MC or data (different json and trigger conditions)

Choose the list of files you want to run over in the command below (see lists of data and MC samples in BsTauTauAnalyzer/Flattener/data/).

```
voms-proxy-init --voms=cms --valid=48:0
python3 $CMSSW_BASE/src/BsTauTauAnalyzer/Flattener/scripts/runNtuplizer.py --in $CMSSW_BASE/src/BsTauTauAnalyzer/Flattener/data/NanoAODMC2024.txt
```

Follow the instructions printed by the above command to submit jobs. Don't forget the voms part. 
