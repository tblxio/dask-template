import dask.dataframe as dd


def read(filePath):
    daskDf = dd.read_csv(filePath)
    return daskDf


def count(daskDf):
    return daskDf.index.size
