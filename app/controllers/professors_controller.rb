class ProfessorsController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:professor, {}).permit(:nome, :endereco, :bairro, :telefone, :email, :salario)]
    end
end
