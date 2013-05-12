require 'spec_helper'

describe "itens/show" do
  before(:each) do
    @item = assign(:item, stub_model(Item,
      :tipo_de_produto_id => 1,
      :produto_id => 2,
      :valor => 1.5,
      :quantitade_produto => 3,
      :observacoes => "Observacoes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/1.5/)
    rendered.should match(/3/)
    rendered.should match(/Observacoes/)
  end
end
