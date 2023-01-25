# Utilizando uma colection do tipo array escreva um progarama que receba 3 numeros e no final
# exiba cada um deles elevado a segunda potencia.
#
INSERIR_NUMERO = 1
SAIR = 2
$numeros = []

def inserir_numero
     
    calc = []
    for i in 1..3
     puts "Digite o numero " + "#{i}" + " a inserir: "
     temp = (gets.chomp().to_i)
     $numeros << temp
     calc << temp * temp
     end
     puts "Numeros inseridos: " + "#{$numeros[0..2]}"
     puts
     puts "Numeros calculados: " + "#{calc[0..2]}"
    
end


   
    

  


def menu
     puts "[#{INSERIR_NUMERO}] Inserir um numero:"   
     puts "[#{SAIR}] Sair:" 
     print "Escolha uma opção:"
     return gets.to_i()
end


loop do
    
    opcao = menu()

    if(opcao == INSERIR_NUMERO)
        inserir_numero()

    elsif (opcao == SAIR)

        break
    else 

       puts "Opção Invalida!"
    end
end
