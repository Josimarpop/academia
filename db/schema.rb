# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140224225049) do

  create_table "alunos", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "avaliacaofisicas", force: true do |t|
    t.string   "peso"
    t.string   "altura"
    t.string   "imc"
    t.string   "pressaoArterial"
    t.string   "peito"
    t.string   "cintura"
    t.string   "gluteo"
    t.string   "bracoDireito"
    t.string   "bracoEsquerdo"
    t.string   "coxaDireita"
    t.string   "coxaEsquerda"
    t.integer  "aluno_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "avaliacaofisicas", ["aluno_id"], name: "index_avaliacaofisicas_on_aluno_id"
  add_index "avaliacaofisicas", ["professor_id"], name: "index_avaliacaofisicas_on_professor_id"

  create_table "horas", force: true do |t|
    t.string   "horario"
    t.integer  "aluno_id"
    t.integer  "professor_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "horas", ["aluno_id"], name: "index_horas_on_aluno_id"
  add_index "horas", ["professor_id"], name: "index_horas_on_professor_id"

  create_table "modalidades", force: true do |t|
    t.string   "nome"
    t.string   "caloriasPerdidas"
    t.decimal  "valor"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "professors", force: true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "bairro"
    t.string   "telefone"
    t.string   "email"
    t.decimal  "salario"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "treinos", force: true do |t|
    t.string   "serie"
    t.date     "data"
    t.integer  "aluno_id"
    t.integer  "modalidade_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "treinos", ["aluno_id"], name: "index_treinos_on_aluno_id"
  add_index "treinos", ["modalidade_id"], name: "index_treinos_on_modalidade_id"

end
