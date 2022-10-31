def  converteArroba(line, labels):
    line = line.split('@')
    if line[1] not in labels.keys():
        line[1] = bin(int(line[1]))[2:].upper().zfill(9)
        line = ''.join(line)
    else:
        line[1] = bin(int(labels[line[1]]))[2:].upper().zfill(9)
        line = ''.join(line)
    return line

labels = {"INICIO":14}
string = "JMP @INICIO"
print(converteArroba(string, labels))