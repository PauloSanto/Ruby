#meu primeiro progarma com POO
class Inicio
    attr_reader :inserir_receita, :deletar_receita, :procurar_receita, :imprimir_receita, :sair
    

    def  dado
         
        @inserir_receita = 1
        @deletar_receita = 2
        @procurar_receita = 3
        @imprimir_receita = 4
        @sair = 5
    end

    def bem_vindo
        puts "====== Bem-vindo ao seu programa de receitas ======"
        puts
    end

end

class Receita
    def  
        @receitas::[]
    end

    def bem_vindo 
        puts "====== Bem-vindo ao seu programa de receitas ======"
        puts
    end

    def sem_receitas
        bem_vindo
        if receitas.empty?
        puts  "=== NAO EXISTEM RECEITAS CADASTRADAS ===" 
        return
    end 
    
    def nome_receita
        puts "Digite o nome da receita: "
        nome = gets.chomp()
    end

    def tipo_receita
        puts "Digite o tipo da receita: "
        tipo = gets.chomp()
    end

    def inserir_receita
        bem_vindo()
        nome()
        tipo()
        @receitas << { nome: nome_receita.nome, tipo: tipo_receita.tipo }
        puts "Receita #{nome} cadastrada com sucesso!"
    end

    def deletar_receita
        bem_vindo()
        sem_receitas()
        nome()
        puts "#{nome_receita.nome}"
        print "Confirme delete [S] ou [N] : " 
        confirma_delete = gets.chomp()
        if confirma_delete == "S" or "s"
            receitas.filter! { |receita| receita[:nome] != nome_receita.nome }
            puts "Deletado" + "#{nome_receita.nome}"
        end
    end

    def procurar_receita
        bem_vindo()
        sem_receitas()
        nome()
    
            recitas.each  do |receita|
                if receita [:nome] == nome_procurar 
                   print "Receita encontrada: " 
                   puts "#{receita [:nome]}"
                elsif
                    puts "Receita NAO encontrada"
                end
                
            end    
            
        end
     
    end

    def imprimir_receita
        bem_vindo()
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

end

class Menu
    
    def menu
        inicio = Inicio.new
        inserir_receita = inicio.dado.inserir_receita.value
        puts "[#{inserir_receita}]" + " Cadastrar uma receita:"   
        puts "[#{inicio.deletar_receita}] Apagar uma receita:" 
        puts "[#{inicio.procurar_receita}] Procurar uma receita:" 
        puts "[#{inicio.imprimir_receita}] Imprimir lista de receitas:" 
        puts "[#{inicio.sair}] Sair:" 
        print "Escolha uma opção:"
        return gets.to_i()
    end
end


receita = Receita.new
inicio = Inicio.new
menu = Menu.new

loop do
    opcao = menu.menu

    if(opcao == "[#{inicio.inserir_receita}]")
        receita.inserir_receita()
            
    elsif (opcao == "[#{inicio.deletar_receita}]")
        receita.deletar_receita()

    elsif (opcao == "[#{inicio.procurar_receita}]")
       receita.procurar_receita

    elsif (opcao == "[#{inicio.imprimir_receita}]")
        receita.imprimir_receita()

    elsif (opcao == "[#{inicio.sair}]")
        break
    else 
       puts "Opção Invalida!"
    end
end