class Hora < ActiveRecord::Base
  belongs_to :aluno
  belongs_to :professor
end
