#encoding: utf-8

=begin
print "Digite um numero:"
numero = gets.to_i

begin
	resultado = 100 / numero
rescue
	puts "Numero digitado inválido!"
	exit
end

puts "100/#{numero} é #{resultado}"
=end

=begin
def verifica_idade(idade)
	unless idade > 18
		raise ArgumentError,
		"Você precisa ser maior de idade para jogar jogos violentos."
	end
end

verifica_idade(18)
=end

=begin
class IdadeInsuficienteException < Exception
end

def verifica_idade(idade)
	raise IdadeInsuficienteException
	"Você precisa ser maior de idade..." unless idade > 18
end

begin
	verifica_idade(15)
	rescue IdadeInsuficienteException => e
	puts "Foi lançada a exception: #{e}"
end
=end

=begin
def pesquisa_banco(nome)
	if nome.size < 10
		throw :nome_invalido, "Nome inválido, digite novamente"
	end

	"cliente #{nome}"
end

def executa_pesquisa(nome)
	catch :nome_invalido do
		cliente = pesquisa_banco(nome)
		return cliente
	end
end

puts executa_pesquisa("ana")

puts executa_pesquisa("keadsasssss")
=end

