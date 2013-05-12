require 'spec_helper'

describe "produtos/edit" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "MyString",
      :fabricante => "MyString",
      :valor => 1.5,
      :descricao => "MyString",
      :observacoes => "MyString"
    ))
  end

  it "renders the edit produto form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => produtos_path(@produto), :method => "post" do
      assert_select "input#produto_nome", :name => "produto[nome]"
      assert_select "input#produto_fabricante", :name => "produto[fabricante]"
      assert_select "input#produto_valor", :name => "produto[valor]"
      assert_select "input#produto_descricao", :name => "produto[descricao]"
      assert_select "input#produto_observacoes", :name => "produto[observacoes]"
    end
  end
end
