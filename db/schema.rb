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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20130512144710) do

  create_table "clientes", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "email"
    t.string   "celular"
    t.string   "telefone_principal"
    t.string   "telefone_secundario"
    t.string   "ramal"
    t.integer  "empresa_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "empresas", :force => true do |t|
    t.string   "nome"
    t.string   "endereco_sede"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "itens", :force => true do |t|
    t.integer  "tipo_de_produto_id"
    t.integer  "produto_id"
    t.float    "valor"
    t.integer  "quantitade_produto"
    t.string   "observacoes"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "locais_de_entrega", :force => true do |t|
    t.string   "nome"
    t.string   "endereco"
    t.string   "referencia"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "pedidos", :force => true do |t|
    t.float    "valor_total"
    t.integer  "cliente_id"
    t.integer  "local_de_entrega_id"
    t.datetime "created_at",          :null => false
    t.datetime "updated_at",          :null => false
  end

  create_table "produtos", :force => true do |t|
    t.string   "nome"
    t.string   "fabricante"
    t.float    "valor"
    t.string   "descricao"
    t.string   "observacoes"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

end
