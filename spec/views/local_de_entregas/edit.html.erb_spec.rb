require 'spec_helper'

describe "local_de_entregas/edit" do
  before(:each) do
    @local_de_entrega = assign(:local_de_entrega, stub_model(LocalDeEntrega,
      :nome => "MyString",
      :endereco => "MyString",
      :referencia => "MyString"
    ))
  end

  it "renders the edit local_de_entrega form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => local_de_entregas_path(@local_de_entrega), :method => "post" do
      assert_select "input#local_de_entrega_nome", :name => "local_de_entrega[nome]"
      assert_select "input#local_de_entrega_endereco", :name => "local_de_entrega[endereco]"
      assert_select "input#local_de_entrega_referencia", :name => "local_de_entrega[referencia]"
    end
  end
end
