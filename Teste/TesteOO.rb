class Produto 
    attr_accessor :nome, :categoria, :preco, :estoque
    def initialize (nome: 'Geral', categoria: 'Geral', preco: 'valor', estoque: 'qtde' )
        @nome = nome
        @categoria = categoria
        @preco = preco
        @estoque = estoque
    end

end
class Categoria
  attr_accessor :nome
  def initialize(nome: 'Geral')
    @nome = nome
  end
end