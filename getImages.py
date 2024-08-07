import os

# Diretório que queremos percorrer
diretorio = './ReceivedImages'

# Verifica se o diretório existe
if not os.path.exists(diretorio):
    print(f'O diretório {diretorio} não existe.')
else:
    # Lista todos os diretórios imediatamente abaixo de ReceivedImages
    subdiretorios = next(os.walk(diretorio))[1]
    
    # Cria uma string com os nomes dos subdiretórios separados por "/"
    output = "/".join(subdiretorios)
    
    # Imprime a string com os nomes dos subdiretórios
    print(output)
