#meu primeiro progarma em Ruby
INSERIR_RECEITA = 1
DELETAR_RECEITA = 2
PROCURAR_RECEITA = 3
IMPRIMIR_RECEITAS = 4
SAIR = 5

def bem_vindo
    puts "====== Bem-vindo ao seu programa de receitas ======"
    puts
end

def inserir_receita
    puts "Digite o nome da receita: "
    nome = gets.chomp()
    puts "Digite o tipo da receita: "
    tipo = gets.chomp()
    puts "Receita #{nome} cadastrada com sucesso!"
    return { nome: nome, tipo: tipo }
end

def deletar_receita (receitas)
    if receitas.empty?
        puts  "=== NAO EXISTEM RECEITAS CADASTRADAS ===" 
    else
        puts "Digite o nome da receita a deletar: "
        nome_deletar = gets.chomp()
        print "Confirme delete [S] ou [N] : " 
        puts "#{nome_deletar}"
        confirma_delete = gets.chomp()
        if confirma_delete == "S" or "s"
            receitas.filter! { |receita| receita[:nome] != nome_deletar }
            puts "Deletado  #{nome_deletar}"
        end
    end
end

def procurar_receita(receitas)
    puts "Digite o nome da receita a procurar: "
    nome_procurar = gets.chomp()

    if receitas.empty?
        puts  "=== NAO EXISTEM RECEITAS CADASTRADAS ===" 
    else
        receitas.each  do |receita|
            if receita [:nome] == nome_procurar 
               print "Receita encontrada: " 
               puts "#{receita [:nome]}"
            elsif
                puts "Receita NAO encontrada"
            end
            
        end    
        
    end
 
end


def imprimir_receitas(receitas)
    if receitas.empty?
       puts  "=== NAO EXISTEM RECEITAS CADASTRADAS ===" 
    else
        puts
        puts "====== Receitas cadastradas ======"
    
          receitas.each  do |receita|
            puts "#{receita [:nome]} - #{receita [:tipo]} "
            puts
            end
    end
   
    
   
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

receitas = []

loop do
    
    opcao = menu()

    if(opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    
    elsif (opcao == DELETAR_RECEITA)
       deletar_receita(receitas)

    elsif (opcao == PROCURAR_RECEITA)
       procurar_receita(receitas)

    elsif (opcao == IMPRIMIR_RECEITAS)
        imprimir_receitas(receitas)

    elsif (opcao == SAIR)
        break
    else 
       puts "Opção Invalida!"
    end
end


