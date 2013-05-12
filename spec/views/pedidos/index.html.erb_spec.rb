require 'spec_helper'

describe "pedidos/index" do
  before(:each) do
    assign(:pedidos, [
      stub_model(Pedido,
        :valor_total => 1.5,
        :cliente_id => 1,
        :local_de_entrega => ""
      ),
      stub_model(Pedido,
        :valor_total => 1.5,
        :cliente_id => 1,
        :local_de_entrega => ""
      )
    ])
  end

  it "renders a list of pedidos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
