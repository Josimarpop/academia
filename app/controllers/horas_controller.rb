class HorasController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:hora, {}).permit(:aluno_id, :professor_id, :horario)]
    end
end
