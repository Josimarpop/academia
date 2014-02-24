class ModalidadesController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:modalidade, {}).permit(:nome, :caloriasPerdidas, :valor)]
    end
end
