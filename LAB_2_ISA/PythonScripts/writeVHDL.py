def writeVHDLFile(resHA, resFA, strRes, stageNum, nb):
    fileToWrite = open("test.vhd", "w")
    textToWrite = "library ieee;\nuse iee.std_logic_1164.all;\nuse ieee.numeric_std.all;"
    textToWrite += f"\npackage bf is\n\tCONSTANT NBIT : INTEGER := {nb};\n"
    textToWrite += f"\tCONSTANT ROW_NUMBER : INTEGER := {int(nb / 2) + 1};\n\tCONSTANT STAGE_NUMBER : INTEGER := {stageNum};\n"
    textToWrite += f"\tCONSTANT COLUMN_NUMBER : INTEGER := {nb * 2};\n\ttype stage is array (0 TO {nb * 2 - 1}) of INTEGER;\n"
    textToWrite += f"\ttype mat_add is array (0 to {stageNum - 2}) of stage;\n\ttype mat_el is array (0 to {stageNum - 1}) of stage;\n"
    textToWrite += "\tCONSTANT fa_mat : mat_add " + resFA + "\n"
    textToWrite += "\tCONSTANT  ha_mat : mat_add " + resHA + "\n"
    textToWrite += "\tCONSTANT  element_mat  : mat_el " + strRes + "\n" 
    textToWrite += "end bf;"
    fileToWrite.write(textToWrite)
    fileToWrite.close()
    
    
    

