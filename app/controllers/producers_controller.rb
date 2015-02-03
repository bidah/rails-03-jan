class ProducersController < ApplicationController
  def index
    @producers = Producer.all
  end

  def new
    @producer = Producer.new
  end

  def create
    @producer = Producer.new(producer_params)
    if @producer.save
      redirect_to producer_path(@producer)
    else
      render :new
    end
  end

  def show
    @producer = Producer.find(params[:id])
  end

  def edit
    @producer = Producer.find(params[:id])
  end

  def update
    @producer = Producer.find(params[:id])
      
    if @producer.update(producer_params)
      redirect_to producer_path(@producer)
    else
      render :edit
    end
  end

  def destroy
  end

  private
  def producer_params
    params.require(:producer).permit(:name, :bug, :internals, :exceptions, :components, :gives)
  end
end
