#meu primeiro progarma em Ruby
INSERIR_RECEITA = 1
DELETAR_RECEITA = 2
PROCURAR_RECEITA = 3
IMPRIMIR_RECEITAS = 4
SAIR = 5

def bem_vindo
    puts
    puts "====== Bem-vindo ao seu programa de receitas ======"
    puts
end

def menu
    bem_vindo() 
     puts "[#{INSERIR_RECEITA}] Cadastrar uma receita:"   
     puts "[#{DELETAR_RECEITA}] Apagar uma receita:" 
     puts "[#{PROCURAR_RECEITA}] Procurar uma receita:" 
     puts "[#{IMPRIMIR_RECEITAS}] Imprimir lista de receitas:" 
     puts "[#{SAIR}] Sair:" 
     print "Escolha uma opção:"
     return gets.to_i()
end

def inserir_receita
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts "Receita #{nome} cadastrada com sucesso!"
    return { nome: nome, tipo: tipo }
end

def imprimir_receitas(receitas)
    puts
    puts "====== Receitas cadastradas ======"
    
    

    receitas.each  do |receita|
        puts "#{receita [:nome]} - #{receita [:tipo]} "
        puts
   end
end


receitas = []

loop do
    
    opcao = menu()

    if(opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    
    #elsif (opcao == DELETAR_RECEITAS)
       # imprimir_receitas(receitas)

    #elsif (opcao == PROCURAR_RECEITAS)
     #  procurar_receitas(receitas)

    elsif (opcao == IMPRIMIR_RECEITAS)
        imprimir_receitas(receitas)

    #elsif (opcao == SAIR)
       # break
    else 
       puts "Opção Invalida!"
    end
end