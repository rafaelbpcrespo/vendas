require 'spec_helper'

describe "itens/index" do
  before(:each) do
    assign(:itens, [
      stub_model(Item,
        :tipo_de_produto_id => 1,
        :produto_id => 2,
        :valor => 1.5,
        :quantitade_produto => 3,
        :observacoes => "Observacoes"
      ),
      stub_model(Item,
        :tipo_de_produto_id => 1,
        :produto_id => 2,
        :valor => 1.5,
        :quantitade_produto => 3,
        :observacoes => "Observacoes"
      )
    ])
  end

  it "renders a list of itens" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Observacoes".to_s, :count => 2
  end
end
