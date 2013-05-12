require 'spec_helper'

describe "produtos/new" do
  before(:each) do
    assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :fabricante => "MyString",
      :valor => 1.5,
      :descricao => "MyString",
      :observacoes => "MyString"
    ).as_new_record)
  end

  it "renders new produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produtos_path, :method => "post" do
      assert_select "input#produto_nome", :name => "produto[nome]"
      assert_select "input#produto_fabricante", :name => "produto[fabricante]"
      assert_select "input#produto_valor", :name => "produto[valor]"
      assert_select "input#produto_descricao", :name => "produto[descricao]"
      assert_select "input#produto_observacoes", :name => "produto[observacoes]"
    end
  end
end
