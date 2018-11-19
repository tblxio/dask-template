from .context import daskfunc

import unittest

class TestSuite(unittest.TestCase):

    def test_dask_count(self):
        daskDf = daskfunc.read('tests/data/sample.csv')
        actualCount = daskfunc.count(daskDf)
        assert(actualCount == 5)


if __name__ == '__main__':
    unittest.main()
