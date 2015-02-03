class ProducersController < ApplicationController
  def index
  end

  def new
    @producer = Producer.new
  end

  def create
    @producer = Producer.create(producer_params)
    redirect_to producer_path(@producer)
  end

  def show
    @producer = Producer.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private
  def producer_params
    params.require(:producer).permit(:name, :bug, :internals, :exceptions, :components, :gives)
  end
end
