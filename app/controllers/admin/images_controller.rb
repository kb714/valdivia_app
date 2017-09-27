class Admin::ImagesController < ApplicationController
  def create
    @image = Image.new(image_params)
    #authorize @image
    @image.save!

    respond_to do |format|
      format.json { render :json => { url: @image.image.url, image_id: @image.id } }
    end
  end

  def destroy
    @image = Image.find_by(id: params[:id])
    #authorize @image
    @image.destroy!
    respond_to do |format|
      format.json { render :json => { status: :ok } }
    end
  end

  private

  def image_params
    params.require(:image).permit(:image)
  end

end
