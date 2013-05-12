require 'spec_helper'

describe "local_de_entregas/show" do
  before(:each) do
    @local_de_entrega = assign(:local_de_entrega, stub_model(LocalDeEntrega,
      :nome => "Nome",
      :endereco => "Endereco",
      :referencia => "Referencia"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco/)
    rendered.should match(/Referencia/)
  end
end
