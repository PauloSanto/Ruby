class Animal
    def corre
        print "corre"
    end

    def pula
        print "pula"
    end    
end

class Dog < Animal
    def latir
        print "latir"
    end
    def corre
        print "corre rapido"
        super(corre)
    end    
end


Dog.new.latir
#Dog.new.pula # herança
Animal.new.corre
Dog.new.corre #polimorfismo
