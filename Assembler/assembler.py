from sys import stdin

opcodes = dict()
functions = dict()
registers = dict()
cmd_types = dict()

opcodes = {
    "and": "0000",
    "or": "0000",
    "xor": "0000",
    "sum": "0000",
    "sub": "0000",
    "mul": "0000",
    "div": "0000",
    "rem": "0000",
    "sw": "0001",
    "lw": "0010",
    "beq": "0011"
}

functions = {
    "and": "0000",
    "or": "0001",
    "xor": "0010",
    "sum": "0011",
    "sub": "0100",
    "mul": "0101",
    "div": "0110",
    "rem": "0111"
}

registers = {
    "$R0": "0000",
    "$R1": "0001",
    "$R2": "0010",
    "$R3": "0011",
    "$R4": "0100",
    "$R5": "0101",
    "$R6": "0110",
    "$R7": "0111"
}

cmd_types = {
    "and": "R",
    "or": "R",
    "xor": "R",
    "sum": "R",
    "sub": "R",
    "mul": "R",
    "div": "R",
    "rem": "R",
    "sw": "I",
    "lw": "I",
    "beq": "I"
}


def assembly_to_binary(string):

    string = string.replace(',', '')

    sections = string.split(" ")

    answer = ""

    sections[len(sections)-1] = sections[len(sections) -
                                         1][:len(sections[len(sections)-1]) - 1]

    cmdtype = sections[0]

    if cmd_types.get(cmdtype) == "R":   # command is R type
        answer += opcodes[sections[0]]
        answer += " "
        answer += registers[sections[2]]
        answer += " "
        answer += registers[sections[3]]
        answer += " "
        answer += registers[sections[1]]
        answer += " "
        answer += functions[sections[0]]

    else:   # command is I type
        if sections[0] == "beq":
            answer += opcodes[sections[0]]
            answer += " "
            answer += registers[sections[1]]
            answer += " "
            answer += registers[sections[2]]
            answer += " "
        else:
            answer += opcodes[sections[0]]
            answer += " "
            answer += registers[sections[2]]
            answer += " "
            answer += registers[sections[1]]
            answer += " "

        if len(sections[3]) < 8:
            while(len(sections[3]) < 4):
                sections[3] = "0" + sections[3]
            while(len(sections[3]) < 8):
                sections[3] = "0000 " + sections[3]
        elif len(sections[3]) > 8:
            sections[3] = sections[3][len(sections[3]) - 8:]
        answer += sections[3]

    return answer


def binary_to_hex(string):
    sections = string.split(" ")

    answer = ""

    for section in sections:
        dec = int(section, 2)
        hexa = hex(dec)
        answer += hexa[2:]

    return answer


for line in stdin:
    print(binary_to_hex(assembly_to_binary(line)))
