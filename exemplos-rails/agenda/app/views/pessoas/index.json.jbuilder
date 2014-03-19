json.array!(@pessoas) do |pessoa|
  json.extract! pessoa, :id, :nome, :data_de_nascimento, :date, :altura
  json.url pessoa_url(pessoa, format: :json)
end
