json.array!(@horas) do |hora|
  json.extract! hora, :id, :horario, :aluno_id, :professor_id
  json.url hora_url(hora, format: :json)
end
