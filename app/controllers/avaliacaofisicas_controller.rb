class AvaliacaofisicasController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:avaliacaofisica, {}).permit(:peso, :altura, :imc, :pressaoArterial, :peito, :cintura, :gluteo, :bracoDireito, :bracoEsquerdo, :coxaDireita, :coxaEsquerda, :aluno_id, :professor_id)]
    end
end
