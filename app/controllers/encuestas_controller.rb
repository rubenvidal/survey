class EncuestasController < ApplicationController
  def index
    @encuestas = Encuesta.all
  end

  def show
    @encuesta = Encuesta.find(params[:id])
  end

  def new
    @encuesta = Encuesta.new
    3.times do
      pregunta = @encuesta.preguntas.build
      4.times { pregunta.respuestas.build }
    end
  end
  def create
    @encuesta = Encuesta.new(params[:encuesta])
    if @encuesta.save
      redirect_to @encuesta, :notice => "Successfully created encuesta."
    else
      render :action => 'new'
    end
  end

  def edit
    @encuesta = Encuesta.find(params[:id])
  end

  def update
    @encuesta = Encuesta.find(params[:id])
    if @encuesta.update_attributes(params[:encuesta])
      redirect_to @encuesta, :notice  => "Successfully updated encuesta."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @encuesta = Encuesta.find(params[:id])
    @encuesta.destroy
    redirect_to encuestas_url, :notice => "Successfully destroyed encuesta."
  end
end
