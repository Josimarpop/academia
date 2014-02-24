class AlunosController < InheritedResources::Base
    def build_resource_params
        [params.fetch(:aluno, {}).permit(:nome, :endereco, :bairro, :telefone, :email)]
    end
end
