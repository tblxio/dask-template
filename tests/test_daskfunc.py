from .context import daskfunc

import unittest

class TestSuite(unittest.TestCase):

    def read_df(self):
        return daskfunc.read('tests/data/sample.csv')


    def test_dask_count(self):
        daskDf = self.read_df()
        actualCount = daskfunc.count(daskDf)
        assert(actualCount == 6)

    def test_dask_distinct_count(self):
        daskDf = self.read_df()
        actualCount = daskfunc.distinct_count(daskDf, 'colour')
        assert(actualCount == 5)


if __name__ == '__main__':
    unittest.main()
