
def initMatrix(nb):
    matrix = []
    n = nb*2
    #nb = 32
    pari = 2
    dispari = 1
    for i in range(n):
        if i < nb:
            #se il numero e' pari
            if (i % 2 == 0):
                test = "1 " * (pari)
                valCol = test.split()
                matrix.append(valCol)
                pari += 1
            else:
                test = "1 " * (dispari)
                valCol = test.split()
                matrix.append(valCol)
                dispari += 1
        elif i < nb + 4:
            test = "1 " * (int(nb / 2) + 1)
            valCol = test.split()
            matrix.append(valCol)
            dispari = int(nb / 2)-1
            pari = int(nb / 2)
        else:
            if (i % 2 == 0):
                test = "1 " * (pari)
                valCol = test.split()
                matrix.append(valCol)
                pari -= 1
            else:
                test = "1 " * (dispari)
                valCol = test.split()
                matrix.append(valCol)
                dispari -= 1
    return matrix

def printMatrix(mat, stage):
    fileTopen = open("resMatrix" + str(stage) + ".txt", "w")        
    for el in mat:
        print(" ".join(el))
        fileTopen.write(" ".join(el) + "\n")
    fileTopen.close()


