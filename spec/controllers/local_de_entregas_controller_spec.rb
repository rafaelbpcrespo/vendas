require 'spec_helper'

# This spec was generated by rspec-rails when you ran the scaffold generator.
# It demonstrates how one might use RSpec to specify the controller code that
# was generated by Rails when you ran the scaffold generator.
#
# It assumes that the implementation code is generated by the rails scaffold
# generator.  If you are using any extension libraries to generate different
# controller code, this generated spec may or may not pass.
#
# It only uses APIs available in rails and/or rspec-rails.  There are a number
# of tools you can use to make these specs even more expressive, but we're
# sticking to rails and rspec-rails APIs to keep things simple and stable.
#
# Compared to earlier versions of this generator, there is very limited use of
# stubs and message expectations in this spec.  Stubs are only used when there
# is no simpler way to get a handle on the object needed for the example.
# Message expectations are only used when there is no simpler way to specify
# that an instance is receiving a specific message.

describe LocalDeEntregasController do

  # This should return the minimal set of attributes required to create a valid
  # LocalDeEntrega. As you add validations to LocalDeEntrega, be sure to
  # update the return value of this method accordingly.
  def valid_attributes
    { "nome" => "MyString" }
  end

  # This should return the minimal set of values that should be in the session
  # in order to pass any filters (e.g. authentication) defined in
  # LocalDeEntregasController. Be sure to keep this updated too.
  def valid_session
    {}
  end

  describe "GET index" do
    it "assigns all local_de_entregas as @local_de_entregas" do
      local_de_entrega = LocalDeEntrega.create! valid_attributes
      get :index, {}, valid_session
      assigns(:local_de_entregas).should eq([local_de_entrega])
    end
  end

  describe "GET show" do
    it "assigns the requested local_de_entrega as @local_de_entrega" do
      local_de_entrega = LocalDeEntrega.create! valid_attributes
      get :show, {:id => local_de_entrega.to_param}, valid_session
      assigns(:local_de_entrega).should eq(local_de_entrega)
    end
  end

  describe "GET new" do
    it "assigns a new local_de_entrega as @local_de_entrega" do
      get :new, {}, valid_session
      assigns(:local_de_entrega).should be_a_new(LocalDeEntrega)
    end
  end

  describe "GET edit" do
    it "assigns the requested local_de_entrega as @local_de_entrega" do
      local_de_entrega = LocalDeEntrega.create! valid_attributes
      get :edit, {:id => local_de_entrega.to_param}, valid_session
      assigns(:local_de_entrega).should eq(local_de_entrega)
    end
  end

  describe "POST create" do
    describe "with valid params" do
      it "creates a new LocalDeEntrega" do
        expect {
          post :create, {:local_de_entrega => valid_attributes}, valid_session
        }.to change(LocalDeEntrega, :count).by(1)
      end

      it "assigns a newly created local_de_entrega as @local_de_entrega" do
        post :create, {:local_de_entrega => valid_attributes}, valid_session
        assigns(:local_de_entrega).should be_a(LocalDeEntrega)
        assigns(:local_de_entrega).should be_persisted
      end

      it "redirects to the created local_de_entrega" do
        post :create, {:local_de_entrega => valid_attributes}, valid_session
        response.should redirect_to(LocalDeEntrega.last)
      end
    end

    describe "with invalid params" do
      it "assigns a newly created but unsaved local_de_entrega as @local_de_entrega" do
        # Trigger the behavior that occurs when invalid params are submitted
        LocalDeEntrega.any_instance.stub(:save).and_return(false)
        post :create, {:local_de_entrega => { "nome" => "invalid value" }}, valid_session
        assigns(:local_de_entrega).should be_a_new(LocalDeEntrega)
      end

      it "re-renders the 'new' template" do
        # Trigger the behavior that occurs when invalid params are submitted
        LocalDeEntrega.any_instance.stub(:save).and_return(false)
        post :create, {:local_de_entrega => { "nome" => "invalid value" }}, valid_session
        response.should render_template("new")
      end
    end
  end

  describe "PUT update" do
    describe "with valid params" do
      it "updates the requested local_de_entrega" do
        local_de_entrega = LocalDeEntrega.create! valid_attributes
        # Assuming there are no other local_de_entregas in the database, this
        # specifies that the LocalDeEntrega created on the previous line
        # receives the :update_attributes message with whatever params are
        # submitted in the request.
        LocalDeEntrega.any_instance.should_receive(:update_attributes).with({ "nome" => "MyString" })
        put :update, {:id => local_de_entrega.to_param, :local_de_entrega => { "nome" => "MyString" }}, valid_session
      end

      it "assigns the requested local_de_entrega as @local_de_entrega" do
        local_de_entrega = LocalDeEntrega.create! valid_attributes
        put :update, {:id => local_de_entrega.to_param, :local_de_entrega => valid_attributes}, valid_session
        assigns(:local_de_entrega).should eq(local_de_entrega)
      end

      it "redirects to the local_de_entrega" do
        local_de_entrega = LocalDeEntrega.create! valid_attributes
        put :update, {:id => local_de_entrega.to_param, :local_de_entrega => valid_attributes}, valid_session
        response.should redirect_to(local_de_entrega)
      end
    end

    describe "with invalid params" do
      it "assigns the local_de_entrega as @local_de_entrega" do
        local_de_entrega = LocalDeEntrega.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LocalDeEntrega.any_instance.stub(:save).and_return(false)
        put :update, {:id => local_de_entrega.to_param, :local_de_entrega => { "nome" => "invalid value" }}, valid_session
        assigns(:local_de_entrega).should eq(local_de_entrega)
      end

      it "re-renders the 'edit' template" do
        local_de_entrega = LocalDeEntrega.create! valid_attributes
        # Trigger the behavior that occurs when invalid params are submitted
        LocalDeEntrega.any_instance.stub(:save).and_return(false)
        put :update, {:id => local_de_entrega.to_param, :local_de_entrega => { "nome" => "invalid value" }}, valid_session
        response.should render_template("edit")
      end
    end
  end

  describe "DELETE destroy" do
    it "destroys the requested local_de_entrega" do
      local_de_entrega = LocalDeEntrega.create! valid_attributes
      expect {
        delete :destroy, {:id => local_de_entrega.to_param}, valid_session
      }.to change(LocalDeEntrega, :count).by(-1)
    end

    it "redirects to the local_de_entregas list" do
      local_de_entrega = LocalDeEntrega.create! valid_attributes
      delete :destroy, {:id => local_de_entrega.to_param}, valid_session
      response.should redirect_to(local_de_entregas_url)
    end
  end

end
