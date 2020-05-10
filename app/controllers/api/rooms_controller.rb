class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render "index.json"
  end

  def create
    @room = Room.new(
      name: params[:name],
      password: params[:password],
    )
    if @room.save
      render "index.json.jb"
    else
      render json: { errors: @room.errors.full_messages }, status: :unprocessable_entity
    end
  end
end
