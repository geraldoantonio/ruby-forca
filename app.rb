require_relative 'lib/palavra'
require 'json'

#Att. remover acentuação das palavras

lista_palavras = JSON.parse(File.read('lib/lista_palavras.json'))

p = Palavra.new
categoria = ""

until lista_palavras.keys.include?(categoria)
	
	system('clear')
	puts "Digite a categoria para sortear as palavras: "
	puts ""
	puts ">> #{lista_palavras.keys} - [\"todas\"] " 

	categoria = gets.chomp

	if categoria == "Todas" or categoria == "todas" 
		categoria = lista_palavras.keys.sample
	end

end
	

p.sortear(lista_palavras[categoria])	


until p.venceu? do
  system ('clear')
  puts "+++++++++ Jogo da Forca +++++++++"
  puts ""
  puts p.imagem
  puts p.revelar
  puts ""
  puts "---------------------------------"
  puts "Digitadas: #{p.digitadas}"
  puts "================================="
  
  
  print "Digite uma letra:"
  p.digitadas = gets.chomp
  
  puts ""
  puts ""
  puts ""
  
  if p.limit_error? 
    puts p.imagem
    puts p.revelar
    break
  end

end


p.encerrado