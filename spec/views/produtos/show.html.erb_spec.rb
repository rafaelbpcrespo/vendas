require 'spec_helper'

describe "produtos/show" do
  before(:each) do
    @produto = assign(:produto, stub_model(Produto,
      :nome => "Nome",
      :fabricante => "Fabricante",
      :valor => 1.5,
      :descricao => "Descricao",
      :observacoes => "Observacoes"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    rendered.should match(/Fabricante/)
    rendered.should match(/1.5/)
    rendered.should match(/Descricao/)
    rendered.should match(/Observacoes/)
  end
end
