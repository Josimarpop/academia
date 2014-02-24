json.array!(@avaliacaofisicas) do |avaliacaofisica|
  json.extract! avaliacaofisica, :id, :peso, :altura, :imc, :pressaoArterial, :peito, :cintura, :gluteo, :bracoDireito, :bracoEsquerdo, :coxaDireita, :coxaEsquerda, :aluno_id, :professor_id
  json.url avaliacaofisica_url(avaliacaofisica, format: :json)
end
