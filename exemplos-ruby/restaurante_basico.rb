# 'Olá mundo' em ruby
#print "Ola mundo com print" # exibe a string sem aspas e não pula linha
#puts "Ola mundo com puts"  # exibe a string sem aspas e pula linha
#p "Ola mundo com p" # exibe a string com aspas e pula linha

#nome = "Fazano"
#puts "O nome do restaurante é #{nome}"
#puts nome.class # retorna o tipo var

#puts nome

#comportamento imutável sem !
#nome.upcase	
#puts nome # Fazano

#nome.upcase!
#puts nome # FAZANO

# puts 3*(2+5) / 8

#resultado = 4 ** 3
#puts(resultado)

# puts :simbolo
# puts :simbolo.class

# Tipos
# 3.times {
#	puts "O 3 é um objeto!"
#}

#puts 3.class
#puts 33333333333333333333333.class

# puts 3*(2+5)/8

# puts (0..10).each {|x| puts x}
# puts ('a' .. 'z').each {|x| puts x}

# puts 3 > 2

# puts 3+4-2 <= 3*2/4

#variavel = 1

#if(variavel)
#	puts("so iria imprimir se variavel != null")
#end
#if(3 == 3)
#	puts("3 é 3")
#end

#def procura_sede_copa_do_mundo ( ano )
#	case ano
#	when 1895..1993
#		"Não lembro... :)"
#	when 1994
#		"Estados Unidos"
#	when 1998
#		"França"
#	end
#end

#puts procura_sede_copa_do_mundo(1998)


#def procura_sede_copa_do_mundo (ano)
#if 1994 == ano
#	"Estados Unidos"
#elsif 1998 == ano
#	"França"
#elsif 1895..1993 == ano
#	"Não lembro... :)"
#end
#end

#puts procura_sede_copa_do_mundo(1895)

#for i in (1..3)
#	x = i
#	puts x
#end

#regex = /rio/ =~ "são paulo"
#puts regex || "null"
#regex = /paulo/ =~ "são paulo"
#puts regex

#nome = nil
#nome ||= "anonimo"
#puts nome

# estruturas de controle : if 
# nota = 7.00

#if nota >= 7
#	puts "Boa nota!"
#else
#	puts "Nota ruim!"
#end

# estruturas de controle: for
#for i in (1..3)
#x = i
#end
#puts x

#puts /rio/ =~ "são paulo" # nil
#puts /paulo/ =~ "são paulo" # 4

#restaurante ||= "Fogo de Chao"
#puts restaurante

#errado
#resultado = 10 + 4
#texto = "O valor é " + resultado
#puts(texto)

#certo
#resultado = 10 + 4
#texto = "O valor é #{resultado}"
#puts(texto)

#puts(1+2)

#resultado = 10 + 3
#texto = "O valor é: #{resultado}"
#puts texto

#aspas simples - trás a variavel e não o valor
#resultado = 10 ** 2
#puts('o resultado é: #{resultado}')

#simbolo1 = :abc
#simbolo2 = :abc
#simbolo1 == simbolo2
# => true
#texto1 = "abc"
#texto2 = "abc"
#texto1 == texto2
# => true

#puts "string são objetos".upcase()
#puts :um_simbolo.object_id()
#puts 10.class()

#cria objeto
#objeto = Object.new()
#puts objeto

#def pessoa(lugar)
#	puts "indo para " + lugar
#end
#pessoa("aaa")

#def pessoa(lugar)
#	"indo para " + lugar
#end

#puts pessoa("teste")

#def pessoa(lugar)
#	"indo para #{lugar}"
#end

#puts pessoa("China")

#def pessoa(roupa, lugar)
#	"trocando de #{roupa} no(a) #{lugar}"
#end

#puts pessoa("camisa", "quarto")

#def pessoa(roupa, lugar = 'banheiro')
#	"trocando de #{roupa} no #{lugar}"
#end

#puts pessoa("camiseta")

#puts pessoa("camiseta", "sala")


