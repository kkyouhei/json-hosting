class JsonsController < ApplicationController

  def show
    render json: Json.find_by!(key: params[:id]).json
  end
end
