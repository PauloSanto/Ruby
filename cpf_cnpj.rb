# Siga a documentação da gem CPF_CNPJ para criar um programa que recebe como entrada um numero
# de CPF e em um metodo verifica se este numero é valido

require "cpf_cnpj"

VALIDA_CPF = 1
SAIR = 2


def valida_cpf
     puts "Digite o CPF " 
     number = gets.chomp()
      if CPF.valid?(number)  
      puts "O CPF " + "#{number}" +" é VALIDO "
      else
      puts "O CPF " + "#{number}" +" é INVALIDO " 
      end
     
     
     puts
     puts
end

def menu
     puts "[#{VALIDA_CPF}] Validar CPF:"   
     puts "[#{SAIR}] Sair:" 
     print "Escolha uma opção:"
     return gets.to_i()
end

loop do
    
    opcao = menu()

    if(opcao == VALIDA_CPF)
        valida_cpf()

    elsif (opcao == SAIR)

        break
    else 

       puts "Opção Invalida!"
    end
end

