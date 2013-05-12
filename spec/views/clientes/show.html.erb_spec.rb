require 'spec_helper'

describe "clientes/show" do
  before(:each) do
    @cliente = assign(:cliente, stub_model(Cliente,
      :nome => "Nome",
      :endereco => "Endereco",
      :email => "Email",
      :celular => "Celular",
      :telefone_principal => "Telefone Principal",
      :telefone_secundario => "Telefone Secundario",
      :ramal => "Ramal",
      :empresa_id => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Email/)
    rendered.should match(/Celular/)
    rendered.should match(/Telefone Principal/)
    rendered.should match(/Telefone Secundario/)
    rendered.should match(/Ramal/)
    rendered.should match(/1/)
  end
end
