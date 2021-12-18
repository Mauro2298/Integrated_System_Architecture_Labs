HA = []
FA = []
NumSignal = []

    
def daddaInst(matrix, bitNextStage):
    vectStageHA = []
    vectStageFA = []
    vectStageNumbSign = []
    
    for numCol in range(len(matrix)):
        numHA = 0
        numFA = 0
        while len(matrix[numCol]) > bitNextStage:
            if len(matrix[numCol]) - bitNextStage == 1:

                matrix[numCol].pop(-1)
                numHA += 1
                if numCol + 1 < len(matrix):
                    matrix[numCol + 1].append("1")
                else:
                    matrix.append(["1"])
        
            else:

                matrix[numCol].pop(-1)
                matrix[numCol].pop(-1)
                numFA += 1
                if numCol + 1 < len(matrix):
                    matrix[numCol + 1].append("1")
                else:
                    matrix.append(["1"])
        vectStageFA.append(str(numFA))
        vectStageHA.append(str(numHA))
        vectStageNumbSign.append(str(len(matrix[numCol])))
    NumSignal.append(vectStageNumbSign)
    HA.append(vectStageHA)
    FA.append(vectStageFA)

    return matrix
