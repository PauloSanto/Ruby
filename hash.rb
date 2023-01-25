# Crie uma colection do tipo hash e permita que o usuario crie 3 elementos informando
# informando a chave eo valor. No final do programa paracada um desses elementos 
# imprima "uma das chaves é ***** e o seu valor é ****"

INSERIR = 1
SAIR = 2

def inserir_dados()
    vetor = []
        for i in 1..3
            puts "Digite a chave " + "#{i}" + " a inserir: "
            chave = gets.chomp()
            puts "Digite o valor " + "#{i}" + " a inserir: "
            valor = gets.chomp()
            numeros = {chave => valor}
            vetor << numeros
            "uma das chaves é ***** e o seu valor é ****"
            puts "uma das chaves é "+"#{chave}" + " e o seu valor é " + "#{numeros[chave]}"
            puts

        end
    
   
    puts
    puts "Valores inseridos {chave => valor}: " + "#{vetor[0..2]}"
    puts
end

def menu()
     puts "[#{INSERIR}] Inserir dados:"   
     puts "[#{SAIR}] Sair:" 
     print "Escolha uma opção:"
     return gets.to_i()
end

loop do
    
    opcao = menu()

    if(opcao == INSERIR)
        inserir_dados()

    elsif (opcao == SAIR)

        break
    else 

       puts "Opção Invalida!"
    end
end
