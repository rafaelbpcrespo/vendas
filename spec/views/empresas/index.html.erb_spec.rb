require 'spec_helper'

describe "empresas/index" do
  before(:each) do
    assign(:empresas, [
      stub_model(Empresa,
        :nome => "Nome",
        :endereco_sede => "Endereco Sede"
      ),
      stub_model(Empresa,
        :nome => "Nome",
        :endereco_sede => "Endereco Sede"
      )
    ])
  end

  it "renders a list of empresas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco Sede".to_s, :count => 2
  end
end
