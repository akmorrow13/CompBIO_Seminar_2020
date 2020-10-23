import os
import sys
import tempfile
import unittest

class MAPQTestCase(unittest.TestCase):

	def tmpFile(self):
		tempFile = tempfile.NamedTemporaryFile(delete=True)
		tempFile.close()
		return tempFile.name

	def tmpDir(self):
	 	return tempfile.TemporaryDirectory().name
