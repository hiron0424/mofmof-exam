class PropertiesController < ApplicationController
  def new
    @property = Property.new
  end

  def create
    Property.create(property_params)
    redirect_to new_property_path
  end

  def edit
  end

  def show
  end

  def delete
  end

  private

  def property_params
    params.require(:property).permit(:name, :rent, :address, :age, :notes)
  end
end