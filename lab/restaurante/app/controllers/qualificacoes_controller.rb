class QualificacoesController < ApplicationController
  # GET /qualificacoes
  # GET /qualificacoes.xml
  def index
    @qualificacoes = Qualificacao.find(:all)

    respond_to do |format|
      format.html # index.html.erb
      format.xml  { render :xml => @qualificacoes }
    end
  end

  # GET /qualificacoes/1
  # GET /qualificacoes/1.xml
  def show
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      format.html # show.html.erb
      format.xml  { render :xml => @qualificacao }
    end
  end

  # GET /qualificacoes/new
  # GET /qualificacoes/new.xml
  def new
    @qualificacao = Qualificacao.new

    respond_to do |format|
      format.html # new.html.erb
      format.xml  { render :xml => @qualificacao }
    end
  end

  # GET /qualificacoes/1/edit
  def edit
    @qualificacao = Qualificacao.find(params[:id])
  end

  # POST /qualificacoes
  # POST /qualificacoes.xml
  def create
    @qualificacao = Qualificacao.new(params[:qualificacao])

    respond_to do |format|
      if @qualificacao.save
        flash[:notice] = 'Qualificacao was successfully created.'
        format.html { redirect_to(@qualificacao) }
        format.xml  { render :xml => @qualificacao, :status => :created, :location => @qualificacao }
      else
        format.html { render :action => "new" }
        format.xml  { render :xml => @qualificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # PUT /qualificacoes/1
  # PUT /qualificacoes/1.xml
  def update
    @qualificacao = Qualificacao.find(params[:id])

    respond_to do |format|
      if @qualificacao.update_attributes(params[:qualificacao])
        flash[:notice] = 'Qualificacao was successfully updated.'
        format.html { redirect_to(@qualificacao) }
        format.xml  { head :ok }
      else
        format.html { render :action => "edit" }
        format.xml  { render :xml => @qualificacao.errors, :status => :unprocessable_entity }
      end
    end
  end

  # DELETE /qualificacoes/1
  # DELETE /qualificacoes/1.xml
  def destroy
    @qualificacao = Qualificacao.find(params[:id])
    @qualificacao.destroy

    respond_to do |format|
      format.html { redirect_to(qualificacoes_url) }
      format.xml  { head :ok }
    end
  end
end
