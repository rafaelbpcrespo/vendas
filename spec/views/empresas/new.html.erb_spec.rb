require 'spec_helper'

describe "empresas/new" do
  before(:each) do
    assign(:empresa, stub_model(Empresa,
      :nome => "MyString",
      :endereco_sede => "MyString"
    ).as_new_record)
  end

  it "renders new empresa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => empresas_path, :method => "post" do
      assert_select "input#empresa_nome", :name => "empresa[nome]"
      assert_select "input#empresa_endereco_sede", :name => "empresa[endereco_sede]"
    end
  end
end
