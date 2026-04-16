import os, sys
import glob
import optparse
# my imports
import BsTauTauAnalyzer.Flattener.logger as log 

#FIXME : make such that picks a unique naming convention
def main():
    parser = optparse.OptionParser()
    parser.add_option("-i", "--inputDir", dest="inputDir", help="input directory")
    parser.add_option("-o", "--outputFile", dest="outputFile", help="output .root file")
    parser.add_option("-d", "--dryrun", dest="dryrun", action="store_true", default=False, help="print hadd command without executing it")
    (options, args) = parser.parse_args()

    # input location
    inputDir    = options.inputDir
    inFiles     = "%s/*.root" % inputDir
    nFiles      = len(glob.glob(inFiles))
    if nFiles == 0:
        log.print_warning(" NO .root files found in %s, exiting" % inputDir)
        sys.exit(1)

    # output location
    outputFile = options.outputFile
    outputDir  = os.path.dirname(outputFile)
    if not os.path.exists(outputDir):
        os.makedirs(outputDir)
        log.print_info(" created output directory %s" % outputDir)
    if os.path.exists(outputFile):
        log.print_warning(" output file %s already exists, exiting" % outputFile)
        sys.exit(1)

    # hadd command
    log.print_info(" hadding %d files in %s and writing to %s" % (nFiles, inputDir, outputFile))
    cmd = "python $CMSSW_BASE/src/PhysicsTools/NanoAODTools/scripts/haddnano.py %s %s" % (outputFile, inFiles)
    log.print_exe(cmd)
    if not options.dryrun:
        os.system(cmd)

if __name__ == "__main__":
    sys.exit(main())