json.array!(@alunos) do |aluno|
  json.extract! aluno, :id, :nome, :endereco, :bairro, :telefone, :email
  json.url aluno_url(aluno, format: :json)
end
