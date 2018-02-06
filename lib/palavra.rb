class Palavra
  
  attr_reader :palavra
  
  def initialize
    @digitadas = []
     sortear
  end
  
  def sortear(text = ["ABACAXI","AMORA"])
    @palavra = text.sample.upcase
  end
  
  def imagem(image = count_error)
    
    case image
    
    when 0
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "____|_________" 
      puts "	"
      
    when 1
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 2
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |    [ ]"
      puts "    |"
      puts "    |"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 3
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |    [ ]"
      puts "    |     |"
      puts "    |"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 4
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |    [ ]"
      puts "    |     |"
      puts "    |    /"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 5
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |    [ ]"
      puts "    |     |"
      puts "    |    / \\"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 6
      
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |   /[ ]"
      puts "    |     |"
      puts "    |    / \\"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    when 7
      puts ""  
      puts "    -------"
      puts "    |     |"
      puts "    |     |"
      puts "    |     O"
      puts "    |   /[ ]\\"
      puts "    |     |"
      puts "    |    / \\"
      puts "    |"
      puts "____|_________" 
      puts "	"
  
    else
      puts "Erro loading image..."
    end
  
  
  end

  
  def revelar
    r = ""
    @palavra.split('').each do |l|
      if @digitadas.include?(l) or (l == "-") or (l == " ")
        r << l
      else
        r << " __ "
      end
    end
    
    r
  end
  
  
  def digitadas=(text)
    if text.empty?
       puts ""
    else
      @digitadas.push(text[0].upcase)
    end
  end
  
  def digitadas
    @digitadas.uniq
  end
  
  def venceu?
    revelar == @palavra
  end
  
  def encerrado
    system ('clear')
    puts ""
    puts ""
    puts ">> PALAVRA: #{@palavra.upcase} <<"
    puts ""
    puts ""
    if self.venceu?
      puts "Jogo Encerrado, você venceu!"
    else
      puts "Não foi dessa vez, tente novamente!"
    end
        
    puts ""
    puts ""
  end
  
  def count_error
    (@digitadas.uniq - @palavra.split('').uniq).size
  end
  
  def limit_error?
    count_error >= 7
  end
  
end


