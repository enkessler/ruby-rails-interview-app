class MaterialsController < ApplicationController

  def index
    @materials = Material.all
  end

  def new
    @material = Material.new
  end

  def create
    Material.create(material_params)

    redirect_to action: 'index'
  end

  def edit
    @material = Material.find(params[:id])
  end

  def update
    @material = Material.find(params[:id])

    @material.update(material_params)

    redirect_to action: 'index'
  end

  def destroy
    @material = Material.find(params[:id])
    @material.destroy

    redirect_to action: 'index'
  end


  private


  def material_params
    params.require(:material).permit(:name, :quantity, :unit)
  end

end
