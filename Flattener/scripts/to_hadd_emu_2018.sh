# $!/bin/bash
DATADIR=/eos/cms/store/group/phys_bphys/cbasile/BsTauTau-ttbar/test2018-v2
OUTDIR=/eos/cms/store/group/phys_bphys/cbasile/BsTauTau-ttbar/test2018-v2/flat_ntuples/ntuples_emu_2018_ParT

## - Bs->tau tau -
#python2 runHadd.py -i ${DATADIR}/crab_bstautau_0000_emu/ -o ${OUTDIR}/ttbarToBsToTauTau.root
## - DY -
#python2 runHadd.py -i ${DATADIR}/crab_dy_000*_emu/ -o ${OUTDIR}/DY.root
#python2 runHadd.py -i ${DATADIR}/crab_dyext_000*_emu/ -o ${OUTDIR}/DY_ext.root
## - SINGLE TOP -
#python2 runHadd.py -i ${DATADIR}/crab_st_s_000*_emu/ -o ${OUTDIR}/ST_s.root
#python2 runHadd.py -i ${DATADIR}/crab_st_t_000*_emu/ -o ${OUTDIR}/ST_t_top.root
#python2 runHadd.py -i ${DATADIR}/crab_st_antit_000*_emu/ -o ${OUTDIR}/ST_t_antitop.root
#python2 runHadd.py -i ${DATADIR}/crab_st_tw_000*_emu/ -o ${OUTDIR}/ST_tW.root
#python2 runHadd.py -i ${DATADIR}/crab_st_antitw_000*_emu/ -o ${OUTDIR}/ST_tW_antitop.root
## - TTBAR -
#python2 runHadd.py -i ${DATADIR}/crab_tt_fullylep_000*_emu/ -o ${OUTDIR}/TTTo2L2Nu.root
#python2 runHadd.py -i ${DATADIR}/crab_tt_semilep_000*_emu/ -o ${OUTDIR}/TTToSemileptonic.root
#python2 runHadd.py -i ${DATADIR}/crab_tt_had_000*_emu/ -o ${OUTDIR}/TTToHadronic.root
## - W+jets -
#python2 runHadd.py -i ${DATADIR}/crab_w_000*_emu/ -o ${OUTDIR}/W.root
#python2 runHadd.py -i ${DATADIR}/crab_wext_000*_emu/ -o ${OUTDIR}/W_ext.root
## - DIBOSON -
#python2 runHadd.py -i ${DATADIR}/crab_ww_000*_emu/ -o ${OUTDIR}/WW.root
#python2 runHadd.py -i ${DATADIR}/crab_wz_000*_emu/ -o ${OUTDIR}/WZ.root
#python2 runHadd.py -i ${DATADIR}/crab_zz_000*_emu/ -o ${OUTDIR}/ZZ.root

# - DATA -
python2 runHadd.py -i ${DATADIR}/crab_SingleMuA_000*_emu/ -o ${OUTDIR}/SingleMuonA.root
python2 runHadd.py -i ${DATADIR}/crab_SingleMuB_000*_emu/ -o ${OUTDIR}/SingleMuonB.root
python2 runHadd.py -i ${DATADIR}/crab_SingleMuC_000*_emu/ -o ${OUTDIR}/SingleMuonC.root
python2 runHadd.py -i ${DATADIR}/crab_SingleMuD_000*_emu/ -o ${OUTDIR}/SingleMuonD.root

python2 runHadd.py -i ${DATADIR}/crab_egammaA_000*_emu/ -o ${OUTDIR}/EGammaA.root
python2 runHadd.py -i ${DATADIR}/crab_egammaB_000*_emu/ -o ${OUTDIR}/EGammaB.root
python2 runHadd.py -i ${DATADIR}/crab_egammaC_000*_emu/ -o ${OUTDIR}/EGammaC.root
python2 runHadd.py -i ${DATADIR}/crab_egammaD_000*_emu/ -o ${OUTDIR}/EGammaD.root

python2 runHadd.py -i ${DATADIR}/crab_muonEGA_000*_emu/ -o ${OUTDIR}/MuonEGA.root
python2 runHadd.py -i ${DATADIR}/crab_muonEGB_000*_emu/ -o ${OUTDIR}/MuonEGB.root
python2 runHadd.py -i ${DATADIR}/crab_muonEGC_000*_emu/ -o ${OUTDIR}/MuonEGC.root
python2 runHadd.py -i ${DATADIR}/crab_muonEGD_000*_emu/ -o ${OUTDIR}/MuonEGD.root