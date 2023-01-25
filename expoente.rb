# Crie um programa que possua um metodo que resolva a potencia dadoum numero base e um expoente
# Estes 2 valores devem ser informados pelo ususario
#
CALC_VALOR = 1
SAIR = 2
$numeros = []

def calc_valor
     puts "Digite o numero base " 
     base = (gets.chomp().to_i)
     puts "Digite o numero expoente "
     expoente = (gets.chomp().to_i)
     calc = base ** expoente
     
     puts "#{base}" +" ^ "+ "#{expoente}" + " = " + "#{calc}"
     puts
     puts
end

def menu
     puts "[#{CALC_VALOR}] Calcular valor:"   
     puts "[#{SAIR}] Sair:" 
     print "Escolha uma opção:"
     return gets.to_i()
end

loop do
    
    opcao = menu()

    if(opcao == CALC_VALOR)
        calc_valor()

    elsif (opcao == SAIR)

        break
    else 

       puts "Opção Invalida!"
    end
end


