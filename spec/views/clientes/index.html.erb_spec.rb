require 'spec_helper'

describe "clientes/index" do
  before(:each) do
    assign(:clientes, [
      stub_model(Cliente,
        :nome => "Nome",
        :endereco => "Endereco",
        :email => "Email",
        :celular => "Celular",
        :telefone_principal => "Telefone Principal",
        :telefone_secundario => "Telefone Secundario",
        :ramal => "Ramal",
        :empresa_id => 1
      ),
      stub_model(Cliente,
        :nome => "Nome",
        :endereco => "Endereco",
        :email => "Email",
        :celular => "Celular",
        :telefone_principal => "Telefone Principal",
        :telefone_secundario => "Telefone Secundario",
        :ramal => "Ramal",
        :empresa_id => 1
      )
    ])
  end

  it "renders a list of clientes" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Celular".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone Principal".to_s, :count => 2
    assert_select "tr>td", :text => "Telefone Secundario".to_s, :count => 2
    assert_select "tr>td", :text => "Ramal".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
