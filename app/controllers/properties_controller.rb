class PropertiesController < ApplicationController
  before_action :set_property, only: %i(show edit update destroy)

  def new
    @property = Property.new
  end

  def create
    @property = Property.new(property_params)
    if @property.save
      redirect_to properties_path
    else
      render :new
    end
  end

  def index
    @properties = Property.all
  end

  def edit
  end

  def update
    if @property.update(property_params)
      redirect_to properties_path
    else
      render :edit
    end
  end

  def show
  end

  def destroy
    @property.destroy
    redirect_to properties_path
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :notes)
  end

  def set_property
    @property = Property.find(params[:id])
  end
end