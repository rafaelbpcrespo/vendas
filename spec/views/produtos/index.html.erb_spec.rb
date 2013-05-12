require 'spec_helper'

describe "produtos/index" do
  before(:each) do
    assign(:produtos, [
      stub_model(Produto,
        :nome => "Nome",
        :fabricante => "Fabricante",
        :valor => 1.5,
        :descricao => "Descricao",
        :observacoes => "Observacoes"
      ),
      stub_model(Produto,
        :nome => "Nome",
        :fabricante => "Fabricante",
        :valor => 1.5,
        :descricao => "Descricao",
        :observacoes => "Observacoes"
      )
    ])
  end

  it "renders a list of produtos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    assert_select "tr>td", :text => "Fabricante".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => "Descricao".to_s, :count => 2
    assert_select "tr>td", :text => "Observacoes".to_s, :count => 2
  end
end
