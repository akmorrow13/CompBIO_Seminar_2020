import unittest
import pandas as pd
from PlotMAPQ.test import MAPQTestCase
from PlotMAPQ.functions import *
import os
from subprocess import Popen, PIPE, STDOUT

class TestMAPQ(MAPQTestCase):

    def test_PrintDictionaryToTab(self):

        dictIn = {0:10, 4: 30, 10: 20, 50: 100}

        filePath = self.tmpFile()
        print(filePath )
        PrintDictionaryToTab("MAPQ",
                            "readCount",
                            dictIn,
                            filePath)


        # read back in temp file
        df = pd.read_csv(filePath , sep='\t')
        assert(df.shape[0] == 4)

    def test_SaveMAPQHistogram(self):

        dictIn = {0:10, 4: 30, 10: 20, 50: 100}

        filePath = self.tmpFile() + ".pdf"

        SaveMAPQHistogram(dictIn, filePath, title="MAPQ")
        assert(os.path.exists(filePath))


    def test_countMAPQ(self):
        tmpDir = self.tmpDir()
        sampleName = "mouseSample"
        bamIn = os.path.join(os.path.dirname(os.path.abspath(__file__)), "data/mouse_chrM.bam")
        cmd = ' '.join(["plot-mapq", bamIn, sampleName, tmpDir])
        p = Popen(cmd, shell=True, stdin=PIPE, stdout=PIPE, stderr=PIPE, close_fds=True)
        output = p.stdout.read()

        assert(os.path.exists(os.path.join(tmpDir, sampleName + "_MAPQScores.tab")))
        assert(os.path.exists(os.path.join(tmpDir, sampleName + "_MAPQhist.pdf")))

if __name__ == '__main__':
    unittest.main()
