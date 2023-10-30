################################             
################################
# DEFININDO ARQUIVOS
################################             
################################


nome = "relogin_teste"
inputASM = 'inputs/'+ nome + '.txt' #Arquivo de entrada de contém o assembly
# inputASM = 'testes.txt'
outputBIN = 'outputs/' + nome + '.txt' #Arquivo de saída que contém o binário formatado para VHDL
# outputBIN = 'BIN_test.txt' 
outputMIF = 'initROM.mif' #Arquivo de saída que contém o binário formatado para .mif


# DEFININDO

noveBits = True
address = 0  # Inicialize o endereço de memória
labels = {}  # Dicionário para armazenar labels e seus endereços
comentarios = {}
variaveis = {}
Rs = {
    "R0" : '"00"',
    "R1" : '"01"',
    "R2" : '"10"',
    "R3" : '"11"'
}

################################             
################################
# DEFININDO MNEMONICOS
################################             
################################

mne =	{ 
    "NOP":    "0",
    "LDA":    "1",
    "SOMA":   "2",
    "SUB":    "3",
    "LDI":    "4",
    "STA":    "5",
    "JMP":    "6",
    "JEQ":    "7",
    "CEQ":    "8",
    "JSR":    "9",
    "RET":    "A",
    "AND_OP": "B", 
    "CLT":    "C",
    "JLT":    "D"
}

################################             
################################
# DEFININDO FUNCOES DE CONVERSAO
################################             
################################

# Converte o valor após o caractere arroba '@' em um valor hexadecimal de 2 dígitos (8 bits)
def  converteArroba(line):
    line = line.split('@')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line

# Converte o valor após o caractere arroba '@' em um valor hexadecimal de 2 dígitos (8 bits) e concatena com o bit de habilita 
def  converteArroba9bits(line):
    line = line.split('@')

    if line[0] == "5":
        l = list(line[1])
        reg = [l[len(l)-2], l[len(l)-1]]
        del(l[-1])
        del(l[-1])
        registrador = "".join(reg)
        line[1] = "".join(l)

    else:
        l = list(line[0])
        line[0] = l[0]
        del(l[0])
        registrador = "".join(l)

    line[1] = line[1].replace("\n", "")
    if line[1] in variaveis:
        line[1] = variaveis[line[1]]

    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = f"\" & {Rs[registrador]} & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = f"\" & {Rs[registrador]} & '0' & x\"" + line[1]
    line = ''.join(line)

    return line

# Converte o valor após o caractere cifrão'$' em um valor hexadecimal de 2 dígitos (8 bits) 
def  converteCifrao(line):
    line = line.split('$')
    line[1] = hex(int(line[1]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line

# Converte o valor após o caractere arroba '$' em um valor hexadecimal de 2 dígitos (8 bits) e concatena com o bit de habilita 
def  converteCifrao9bits(line):
    line = line.split('$')

    l = list(line[0])
    line[0] = l[0]
    del(l[0])
    registrador = "".join(l)

    if(int(line[1]) > 255 ):
        line[1] = str(int(line[1]) - 256)
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = "\" & '1' & x\"" + line[1]
        line[1] = f"\" & {Rs[registrador]} & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(line[1]))[2:].upper().zfill(2)
        line[1] = f"\" & {Rs[registrador]} & '0' & x\"" + line[1]
    line = ''.join(line)
    return line

def convertePonto(line, labels):
    line = line.split('.')
    label = line[1].strip()
    line[1] = hex(int(labels[label]))[2:].upper().zfill(2)
    line = ''.join(line)
    return line

def convertePonto9bits(line, labels):
    line = line.split('.')
    label = line[1].strip()

    if(int(labels[label]) > 255 ):
        line[1] = (int(labels[label]) - 256)
        line[1] = hex(line[1])[2:].upper().zfill(2)
        line[1] = f"\" & {Rs['R0']} & '1' & x\"" + line[1]
    else:
        line[1] = hex(int(labels[label]))[2:].upper().zfill(2)
        line[1] = f"\" & {Rs['R0']} & '0' & x\"" + line[1]
    line = ''.join(line)

    return line

# Define a string que representa o comentário a partir do caractere cerquilha '#'
def defineComentario(line):
    if '#' in line:
        line = line.split('#')
        line = line[0] + "\t#" + line[1]
        return line
    else:
        return line

# Remove o comentário a partir do caractere cerquilha '#', deixando apenas a instrução
def defineInstrucao(line):
    line = line.split('#')
    line = line[0]
    return line
    
# Consulta o dicionário e "converte" o mnemônico em seu respectivo valor em hexadecimal
def trataMnemonico(line, address, labels):
    line = line.replace("\n", "") #Remove o caracter de final de linha
    line = line.replace("\t", "") #Remove o caracter de tabulacao
    line_parts = line.split(' ')

    # Se for um label, adicione ao dicionário
    if line_parts[0].endswith(':'):
        label = line_parts[0][:-1]  # Remove o ':' do final
        labels[label] = address
        return line  # Não há instrução para essa linha

    line_parts[0] = mne[line_parts[0]]
    line = "".join(line_parts)
    return line

############################             
############################
# SEQUENCIA DE CONVERSAO
############################             
############################

with open(inputASM, "r") as f: #Abre o arquivo ASM
    lines = f.readlines() #Verifica a quantidade de linhas
    
    
with open(outputBIN, "w+") as f:  #Abre o destino BIN

    conta = 0
    variaveis_lidas = 0
    linhas_codigo = 0

    for linha in lines:
        if linhas_codigo == 1:
            if ':' in linha:
                linha = linha.replace("\n", "")
                comentarios[conta] = linha
                linha = linha.split(':')
                labels[linha[0]] = conta
                conta -= 1
            conta += 1
        if linha == "VARIAVEL_FIM\n":
            linhas_codigo = 1

    cont = 0 #Cria uma variável para contagem
    
    for line in lines:        
        #Verifica se a linha começa com alguns caracteres invalidos ('\n' ou ' ' ou '#')
        if (line.startswith('\n') or line.startswith(' ') or line.startswith('#')):
            line = line.replace("\n", "")
            print("-- Sintaxe invalida" + ' na Linha: ' + ' --> (' + line + ')') #Print apenas para debug
        
        #Se a linha for válida para conversão, executa
        else:
            
            #Exemplo de linha => 1. JSR @14 #comentario1
            comentarioLine = defineComentario(line).replace("\n","") #Define o comentário da linha. Ex: #comentario1
            instrucaoLine = defineInstrucao(line).replace("\n","") #Define a instrução. Ex: JSR @14

            if variaveis_lidas == 1:

                instrucaoLine = trataMnemonico(instrucaoLine, address, labels) #Trata o mnemonico. Ex(JSR @14): x"9" @14

                if '@' in instrucaoLine: #Se encontrar o caractere arroba '@' 
                    if noveBits == False:
                        instrucaoLine = converteArroba(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                    else:
                        instrucaoLine = converteArroba9bits(instrucaoLine) #converte o número após o caractere Ex(JSR @14): x"9" x"0E"
                        
                elif '$' in instrucaoLine: #Se encontrar o caractere cifrao '$'
                    if noveBits == False:
                        instrucaoLine = converteCifrao(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"
                    else:
                        instrucaoLine = converteCifrao9bits(instrucaoLine) #converte o número após o caractere Ex(LDI $5): x"4" x"05"

                elif ':' in instrucaoLine:
                    line = ""   
                    f.write(line) #Escreve no arquivo BIN.txt
                    print(line,end = '') #Print apenas para debug
                    
                elif '.' in instrucaoLine:
                    if noveBits == False:
                        instrucaoLine = convertePonto(instrucaoLine, labels)
                    else:
                        instrucaoLine = convertePonto9bits(instrucaoLine, labels)
                
                else: #Senão, se a instrução nao possuir nenhum imediato, ou seja, nao conter '@' ou '$'
                    instrucaoLine = instrucaoLine.replace("\n", "") #Remove a quebra de linha
                    if noveBits == False:
                        instrucaoLine = instrucaoLine + '00' #Acrescenta o valor x"00". Ex(RET): x"A" x"00"
                    else:
                        instrucaoLine = instrucaoLine + "\" & " + '"00" & ' + "\'0\' & " + "x\"00" #Acrescenta o valor x"00". Ex(RET): x"A" x"00"

                if ':' in instrucaoLine:
                    line = ""   
                    f.write(line) #Escreve no arquivo BIN.txt
                    print(line,end = '') #Print apenas para debug
                else:
                    line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + '\n'  #Formata para o arquivo BIN
                                                                                                            #Entrada => 1. JSR @14 #comentario1
                                                                                                            #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1

                    if cont in comentarios:
                        line = 'tmp(' + str(cont) + ') := x"' + instrucaoLine + '";\t-- ' + comentarioLine + ' ' +comentarios[cont] + '\n'  #Formata para o arquivo BIN
                                                                                                            #Entrada => 1. JSR @14 #comentario1
                                                                                                            #Saída =>   1. tmp(0) := x"90E";	-- JSR @14 	#comentario1

                    cont+=1 #Incrementa a variável de contagem, utilizada para incrementar as posições de memória no VHDL
                    address += 1  # Incrementa o endereço de memória
                    
                    f.write(line) #Escreve no arquivo BIN.txt
                    
                    print(line,end = '') #Print apenas para debug
            else:
                if instrucaoLine != "VARIAVEL_INIT" and instrucaoLine != "VARIAVEL_FIM":
                    line = line.split(' = ')
                    variavel = line[0]
                    valor = int(line[1])
                    variaveis[variavel] = valor
                if instrucaoLine == "VARIAVEL_FIM":
                    variaveis_lidas = 1

############################             
############################            
#Conversão para arquivo .mif
############################             
############################
            
with open(outputMIF, "r") as f: #Abre o arquivo .mif
    headerMIF = f.readlines() #Faz a leitura das linhas do arquivo,
                              #para fazer a aquisição do header
    
    
with open(outputBIN, "r") as f: #Abre o arquivo BIN
    lines = f.readlines() #Faz a leitura das linhas do arquivo
    
    
with open(outputMIF, "w") as f:  #Abre o destino .mif novamente
                                 #agora para preenchê-lo com o pograma

    cont = 0 #Cria uma variável para contagem
    
    #########################################
    #Preenche com o header lido anteriormente 
    for lineHeader in headerMIF:      
        if cont < 21:           #Contagem das linhas de cabeçalho
            f.write(lineHeader) #Escreve no arquivo se saída .mif o cabeçalho (21 linhas)
        cont = cont + 1         #Incrementa varíavel de contagem
   #-----------------------------------------
   ##########################################
  
    for line in lines: #Varre as linhas do código formatado para a ROM (VHDL)
    
        replacements = [('t', ''), ('m', ''), ('p', ''), ('(', ''), (')', ''), ('=', ''), ('x', ''), ('"', '')] #Define os caracteres que serão excluídos
        
        ##########################################
        #Remove os caracteres que foram definidos
        for char, replacement in replacements:
            if char in line:
                line = line.replace(char, replacement)
        #-----------------------------------------
        ##########################################
                
        line = line.split('#') #Remove o comentário da linha
        
        if "\n" in line[0]:
            line = line[0] 
        else:
            line = line[0] + '\n' #Insere a quebra de linha ('\n') caso não tenha

        f.write(line) #Escreve no arquivo initROM.mif
    f.write("END;") #Acrescente o indicador de finalização da memória. (END;)