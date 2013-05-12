require 'spec_helper'

describe "LocalDeEntregas" do
  describe "GET /local_de_entregas" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get local_de_entregas_path
      response.status.should be(200)
    end
  end
end
