require 'spec_helper'

describe "local_de_entregas/index" do
  before(:each) do
    assign(:local_de_entregas, [
      stub_model(LocalDeEntrega,
        :nome => "Nome",
        :endereco => "Endereco",
        :referencia => "Referencia"
      ),
      stub_model(LocalDeEntrega,
        :nome => "Nome",
        :endereco => "Endereco",
        :referencia => "Referencia"
      )
    ])
  end

  it "renders a list of local_de_entregas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Endereco".to_s, :count => 2
    assert_select "tr>td", :text => "Referencia".to_s, :count => 2
  end
end
