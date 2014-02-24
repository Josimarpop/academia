class TreinosController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:treino, {}).permit(:aluno_id, :modalidade_id, :serie, :data)]
    end
end
