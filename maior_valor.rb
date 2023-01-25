# Dado o seguinte hash  number = {A:10, B:30, C:20, D:25, E:15}
# crie uma instrução que seleciona o maior valor deste hash 
# e no final imprima a chave e o valor do elemento resultante 

INSERIR = 1
SAIR = 2

def inserir_dados()
    vetor = []
    number = {A:10, B:30, C:20, D:25, E:15}
    x = number.key(number.values.max)    
    puts "O  maior valor deste hash é " + "#{number [x]}"
   
    puts "O maior elemento é " + "#{x}" + " => " + "#{number [x]}"
   
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
