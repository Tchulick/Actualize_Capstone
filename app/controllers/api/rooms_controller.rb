class Api::RoomsController < ApplicationController
  def index
    @rooms = Room.all
    render "index.json"
  end

  def create
    @room = Room.new(
      name: params[:name],
      password: params[:password],
      password_status: params[:password_status],
      user_id: current_user.id,
    )
    if @room.save
      render "show.json.jb"
    else
      render json: { errors: @room.errors.full_messages }, status: :unprocessable_entity
    end
  end

  def show
    @room = Room.find_by(id: params[:id])
    render "show.json.jb"
  end

  def update
    @room = Room.find_by(id: params[:id])
    @room.name = params[:name] || @room.name
    @room.password = params[:password] || @room.password
    @room.password_status = params[:password_status] || @room.password_status
    if @room.save
      render "show.json.jb"
    else
      render json: { errors: @post.errors.full_messages }, status: :bad_request
    end
  end

  def destroy
    @room = Room.find_by(id: params[:id])
    @room.destroy
    render json: { message: "Room successfully removed" }
  end
end
