from DaddaOurMatr import initMatrix
from DaddaOurMatr import printMatrix
from analysisComp import *
from writeVHDL import writeVHDLFile

def strResult(val):
        
    retVal = ":= (\n"
    for stage in val:
        tmpStr = "("
        tmpStr += ",".join(stage)
        tmpStr += "),\n"
        retVal += tmpStr
    retVal = retVal[:-2]
    retVal += ");"
    return retVal


def countSignCol(matr):
    vectR = []
    global NumSignal
    for el in matr:
        vectR.append(str(len(el)))
    NumSignal.append(vectR)



l = 2
i = 0
nb = 8
n = int(nb / 2) + 1
vect = [2]

while l < n:

    l = int(3 / 2 * l)
    vect.append(l)
vect.reverse()




matrix = initMatrix(nb)
countSignCol(matrix)
vect.pop(0)


print()

for numLine in vect:
    matrix = daddaInst(matrix, numLine)


    i += 1

HAcomp = strResult(HA)
FAcomp = strResult(FA)
NumSignalComp=strResult(NumSignal)
#print(len(vect))
writeVHDLFile(HAcomp, FAcomp, NumSignalComp, len(vect) + 1, nb)


