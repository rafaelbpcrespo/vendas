require 'spec_helper'

describe "itens/new" do
  before(:each) do
    assign(:item, stub_model(Item,
      :tipo_de_produto_id => 1,
      :produto_id => 1,
      :valor => 1.5,
      :quantitade_produto => 1,
      :observacoes => "MyString"
    ).as_new_record)
  end

  it "renders new item form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => itens_path, :method => "post" do
      assert_select "input#item_tipo_de_produto_id", :name => "item[tipo_de_produto_id]"
      assert_select "input#item_produto_id", :name => "item[produto_id]"
      assert_select "input#item_valor", :name => "item[valor]"
      assert_select "input#item_quantitade_produto", :name => "item[quantitade_produto]"
      assert_select "input#item_observacoes", :name => "item[observacoes]"
    end
  end
end
