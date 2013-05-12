require 'spec_helper'

describe "pedidos/show" do
  before(:each) do
    @pedido = assign(:pedido, stub_model(Pedido,
      :valor_total => 1.5,
      :cliente_id => 1,
      :local_de_entrega => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1.5/)
    rendered.should match(/1/)
    rendered.should match(//)
  end
end
