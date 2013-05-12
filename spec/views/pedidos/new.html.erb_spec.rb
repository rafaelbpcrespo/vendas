require 'spec_helper'

describe "pedidos/new" do
  before(:each) do
    assign(:pedido, stub_model(Pedido,
      :valor_total => 1.5,
      :cliente_id => 1,
      :local_de_entrega => ""
    ).as_new_record)
  end

  it "renders new pedido form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => pedidos_path, :method => "post" do
      assert_select "input#pedido_valor_total", :name => "pedido[valor_total]"
      assert_select "input#pedido_cliente_id", :name => "pedido[cliente_id]"
      assert_select "input#pedido_local_de_entrega", :name => "pedido[local_de_entrega]"
    end
  end
end
