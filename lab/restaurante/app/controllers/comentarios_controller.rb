class ComentariosController < ApplicationController
  # GET /comentarios
  # GET /comentarios.xml
  def index
    @comentarios = Comentario.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @comentarios }
    end
  end

  # GET /comentarios/1
  # GET /comentarios/1.xml
  def show
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @comentario }
    end
  end

  # GET /comentarios/new
  # GET /comentarios/new.xml
  def new
    @comentario = Comentario.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @comentario }
    end
  end

  # GET /comentarios/1/edit
  def edit
    @comentario = Comentario.find(params[:id])
  end

  # POST /comentarios
  # POST /comentarios.xml
  def create
    @comentario = Comentario.new(params[:comentario])

    respond_to do |format|
      if @comentario.save
        flash[:notice] = 'Comentario was successfully created.'
        format.html { redirect_to(@comentario) }
        format.xml  { render :xml => @comentario, :status => :created, :location => @comentario }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @comentario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /comentarios/1
  # PUT /comentarios/1.xml
  def update
    @comentario = Comentario.find(params[:id])

    respond_to do |format|
      if @comentario.update_attributes(params[:comentario])
        flash[:notice] = 'Comentario was successfully updated.'
        format.html { redirect_to(@comentario) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @comentario.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /comentarios/1
  # DELETE /comentarios/1.xml
  def destroy
    @comentario = Comentario.find(params[:id])
    @comentario.destroy

    respond_to do |format|
      format.html { redirect_to(comentarios_url) }
      format.xml  { head :ok }
      format.js	  do
      			  render :update do |page|
      								page.visual_effect :fade, "comentario_#{@comentario.id}"
      								page.visual_effect :shake, "comentario_#{@comentario.id}"
								 end
      			  end	
    end
  end
end
