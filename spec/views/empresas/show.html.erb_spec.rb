require 'spec_helper'

describe "empresas/show" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nome => "Nome",
      :endereco_sede => "Endereco Sede"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Endereco Sede/)
  end
end
