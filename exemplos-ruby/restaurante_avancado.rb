# encoding: utf-8

=begin
def qualifica(nota)
	puts "A nota do restaurante foi #{nota}"
end

qualifica(100)
=end

=begin
def qualifica(nota, msg="Obrigado")
	puts "A nota do restaurante foi #{nota} . #{msg}"
end

qualifica(100)
qualifica(1, "Comida ruim")
=end

=begin
pessoa = Object.new()
def fala ()
	puts ("leandro")
end

pessoa.send(:fala)
=end

=begin
class Pessoa
	def fala
		puts "Sei falar"
	end

	def troca(roupa, lugar = "banheiro")
		"trocando de #{roupa} no #{lugar}"
	end

	def novo_metodo
		puts "teste inutil"
	end
end

p = Pessoa.new
puts p.class
p.novo_metodo
=end

=begin
class Restaurante
	def qualifica(nota, msg="Obrigado")
		puts "A nota do restaurante foi #{nota}. #{msg}"
	end
end

restaurante_um = Restaurante.new
restaurante_dois = Restaurante.new

restaurante_um.qualifica(10)
restaurante_dois.qualifica(1, 'Ruim!')
=end

=begin
class Fixnum
	def +(outro)
		self - outro
	end
end
=end

=begin
class Conta
	def transfere_para(destino, quantia)
		debita quantia
		#mesmo que self.debita(quantia)

		#destino.deposita quantia
	end
	def debita(quantia)
		puts "A sua conta ficou com quantia #{quantia}"
	end
end

conta = Conta.new
conta.transfere_para("Leandro", 200)
=end

# puts "ola"
#obj = "uma string"
#obj.puts "todos os objetos possuem o mÃ©todo puts?"

=begin
class Pessoa
	def muda_nome(novo_nome)
		@nome = novo_nome
	end

	def diz_nome()
		"meu nome é #{@nome}"
	end
end

p = Pessoa.new
p.muda_nome "Leandro"
puts p.diz_nome
=end

=begin
class Pessoa
	def initialize
		puts "Criando nova Pessoa"
	end
end

Pessoa.new
=end

=begin
class Pessoa
	def initialize(nome)
		@nome = nome
	end
end

joao = Pessoa.new("João")
=end

=begin
class Pessoa
	def nome # acessor
		@nome
	end

	def nome=(novo_nome)
		@nome = novo_nome
	end
end

pessoa = Pessoa.new
pessoa.nome=("tião")
puts pessoa.nome
=end

=begin
class Restaurante
	attr_accessor :nota
	def initialize(nome)
		puts "criando um novo restaurante: #{nome}"
		@nome = nome
	end
	def qualifica(msg="Obrigado")
		puts "A nota do #{@nome} foi #{nota} . #{msg}"
	end
end

restaurante_um = Restaurante.new("Fazano")
restaurante_dois = Restaurante.new("Fogo de Chao")

restaurante_um.nota = 10
restaurante_dois.nota = 1

restaurante_um.qualifica
restaurante_dois.qualifica("Comida ruim.")
=end

=begin
lista = Array.new
lista << "RR-71"
lista << "RR-75"
lista << "FJ-91"

puts lista.size
puts lista[1]

puts lista[0]

lista = [1, 2, "string", :simbolo, /$regex^/]
puts lista[2]

cliente = "Petrobras"
puts cliente.methods
=end

=begin
#def compra(*produtos)
#	puts produtos.size
#end

# arr
def compra(produtos)
	puts produtos.size
end

#compra("Notebook", "Pendrive", "Cafeteira")
compra(["Notebook", "Pendrive", "Cafeteira", "Impressora"]) #arr
=end

=begin
config = Hash.new
	config[":porta"] = 80
	config["ssh"] = false
	config["nome"] = "Caelum.com.br"

	puts config.size

	puts config[":porta"]
=end

=begin
class Conta
	def transfere(valor, argumentos)
		destino = argumentos[:para]
		data = argumentos[:em]
	end
end

conta = Conta.new
conta.transfere(50.00, {:para => "escola", :em => Time.now})
=end