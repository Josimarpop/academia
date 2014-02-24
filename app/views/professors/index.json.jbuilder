json.array!(@professors) do |professor|
  json.extract! professor, :id, :nome, :endereco, :bairro, :telefone, :email, :salario
  json.url professor_url(professor, format: :json)
end
