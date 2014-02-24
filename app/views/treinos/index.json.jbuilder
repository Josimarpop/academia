json.array!(@treinos) do |treino|
  json.extract! treino, :id, :serie, :data, :aluno_id, :modalidade_id
  json.url treino_url(treino, format: :json)
end
