require "spec_helper"

describe LocalDeEntregasController do
  describe "routing" do

    it "routes to #index" do
      get("/local_de_entregas").should route_to("local_de_entregas#index")
    end

    it "routes to #new" do
      get("/local_de_entregas/new").should route_to("local_de_entregas#new")
    end

    it "routes to #show" do
      get("/local_de_entregas/1").should route_to("local_de_entregas#show", :id => "1")
    end

    it "routes to #edit" do
      get("/local_de_entregas/1/edit").should route_to("local_de_entregas#edit", :id => "1")
    end

    it "routes to #create" do
      post("/local_de_entregas").should route_to("local_de_entregas#create")
    end

    it "routes to #update" do
      put("/local_de_entregas/1").should route_to("local_de_entregas#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/local_de_entregas/1").should route_to("local_de_entregas#destroy", :id => "1")
    end

  end
end
