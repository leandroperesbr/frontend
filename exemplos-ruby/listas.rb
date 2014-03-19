# encoding: utf-8

=begin
nomes = []

nomes[0] = "Fazano"
nomes << "Fogo de Chao"

for nome in nomes
	puts nome
end
=end

=begin

class Franquia
	def initialize
		@restaurantes = []
	end

	def adiciona(*restaurante)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		for restaurante in @restaurantes
			puts restaurante.nome
		end
	end
end

class Restaurante
	attr_accessor :nome

	def fechar_conta(dados)
		puts "Conta fechado no valor de #{dados[:valor]} e com nota #{dados[:nota]}. Comentário: #{dados[:comentario]}"
	end
end

restaurante_um = Restaurante.new
restaurante_um.nome = "Fazano"

restaurante_um.fechar_conta :valor => 50, :nota => 9,
:comentario => 'Gostei!'

=end

=begin
class Banco
	def initialize(contas)
		@contas = contas
	end

	def status
		saldo = 0
		for conta in @contas
			saldo += conta
			puts saldo
		end
		saldo
	end
end

banco = Banco.new([200, 300, 400])
banco.status do |saldo_parcial|
	puts saldo_parcial
end
=end

=begin
lista = ["rails", "rake", "ruby", "rvm"]
lista.each do |programa|
	puts programa
end
=end

=begin
funcionarios = ["Guilherme", "Sergio", "David"]
nomes_maiusculos = []

for nome in funcionarios
	nomes_maiusculos << nome.upcase
end

funcionarios.each do |nome|
	nomes_maiusculos << nome.upcase
end

puts nomes_maiusculos
=end

=begin
class Array
	def cria_uma_array
		array = []
		self.each do |elemento|
			array << yield(elemento)
		end
		array
	end
end

funcionarios = ["Guilherme", "Sergio", "David"]

nomes_maiusculos = funcionarios.map do |nome|
	nome.upcase
end

puts nomes_maiusculos
=end

=begin
class Franquia
	def initialize
		@restaurantes = []
	end

	def adiciona(*restaurante)
		for restaurante in restaurantes
			@restaurantes << restaurante
		end
	end

	def mostra
		@restaurantes.each do |r|
			puts r.nome
		end
	end

	def relatorio
		@restaurantes.each do |r|
			yield r
		end
	end
end

franquia = new Franquia
# chamada com blocos
franquia.relatorio do |r|
	puts "Restaurante cadastrado: #{r.nome}"
end
=end

=begin
caelum = [
	{:ruby => 'rr-71', :java => 'fj-11'},
	{:ruby => 'rr-75', :java => 'fj-21'}
]

caelum.sort_by { |curso| curso[:ruby] }.each do |curso|
	puts "Curso de RoR na Caelum: #{ curso[:ruby] }"
end

caelum.sort_by { |curso| curso[:ruby] }.each do |curso|
	next if curso[:ruby] == 'rr-71'
	puts "Curso de RoR na Caelum: #{ curso[:ruby] }"
end
=end

