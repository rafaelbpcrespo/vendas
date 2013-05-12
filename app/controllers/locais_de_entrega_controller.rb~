class LocaisDeEntregaController < ApplicationController
  # GET /local_de_entregas
  # GET /local_de_entregas.json
  def index
    @local_de_entregas = LocalDeEntrega.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @local_de_entregas }
    end
  end

  # GET /local_de_entregas/1
  # GET /local_de_entregas/1.json
  def show
    @local_de_entrega = LocalDeEntrega.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.json { render json: @local_de_entrega }
    end
  end

  # GET /local_de_entregas/new
  # GET /local_de_entregas/new.json
  def new
    @local_de_entrega = LocalDeEntrega.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @local_de_entrega }
    end
  end

  # GET /local_de_entregas/1/edit
  def edit
    @local_de_entrega = LocalDeEntrega.find(params[:id])
  end

  # POST /local_de_entregas
  # POST /local_de_entregas.json
  def create
    @local_de_entrega = LocalDeEntrega.new(params[:local_de_entrega])

    respond_to do |format|
      if @local_de_entrega.save
        format.html { redirect_to @local_de_entrega, notice: 'Local de entrega was successfully created.' }
        format.json { render json: @local_de_entrega, status: :created, location: @local_de_entrega }
      else
        format.html { render action: "new" }
        format.json { render json: @local_de_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # PUT /local_de_entregas/1
  # PUT /local_de_entregas/1.json
  def update
    @local_de_entrega = LocalDeEntrega.find(params[:id])

    respond_to do |format|
      if @local_de_entrega.update_attributes(params[:local_de_entrega])
        format.html { redirect_to @local_de_entrega, notice: 'Local de entrega was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: "edit" }
        format.json { render json: @local_de_entrega.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /local_de_entregas/1
  # DELETE /local_de_entregas/1.json
  def destroy
    @local_de_entrega = LocalDeEntrega.find(params[:id])
    @local_de_entrega.destroy

    respond_to do |format|
      format.html { redirect_to local_de_entregas_url }
      format.json { head :no_content }
    end
  end
end
