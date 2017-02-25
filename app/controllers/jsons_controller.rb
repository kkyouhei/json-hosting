class JsonsController < ApplicationController

  def show
    render json: Json.find_by!(key: params[:id]).json
  end

  def new
    @json = Json.new
  end

  def create
    redirect_to action: :show, id: Json.create(form_parameter).key
  end

  private
    def form_parameter
      params.require(:json).permit(:json)
    end
end
