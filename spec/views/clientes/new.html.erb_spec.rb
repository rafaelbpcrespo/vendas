require 'spec_helper'

describe "clientes/new" do
  before(:each) do
    assign(:cliente, stub_model(Cliente,
      :nome => "MyString",
      :endereco => "MyString",
      :email => "MyString",
      :celular => "MyString",
      :telefone_principal => "MyString",
      :telefone_secundario => "MyString",
      :ramal => "MyString",
      :empresa_id => 1
    ).as_new_record)
  end

  it "renders new cliente form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clientes_path, :method => "post" do
      assert_select "input#cliente_nome", :name => "cliente[nome]"
      assert_select "input#cliente_endereco", :name => "cliente[endereco]"
      assert_select "input#cliente_email", :name => "cliente[email]"
      assert_select "input#cliente_celular", :name => "cliente[celular]"
      assert_select "input#cliente_telefone_principal", :name => "cliente[telefone_principal]"
      assert_select "input#cliente_telefone_secundario", :name => "cliente[telefone_secundario]"
      assert_select "input#cliente_ramal", :name => "cliente[ramal]"
      assert_select "input#cliente_empresa_id", :name => "cliente[empresa_id]"
    end
  end
end
