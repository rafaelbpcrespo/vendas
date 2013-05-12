require 'spec_helper'

describe "empresas/edit" do
  before(:each) do
    @empresa = assign(:empresa, stub_model(Empresa,
      :nome => "MyString",
      :endereco_sede => "MyString"
    ))
  end

  it "renders the edit empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => empresas_path(@empresa), :method => "post" do
      assert_select "input#empresa_nome", :name => "empresa[nome]"
      assert_select "input#empresa_endereco_sede", :name => "empresa[endereco_sede]"
    end
  end
end
