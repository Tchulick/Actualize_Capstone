class Api::UserRoomsController < ApplicationController
  def create
    @user_room = UserRoom.new({
      user_id: current_user.id,
      room_id: params[:room_id],
    })
    if @user_room.save
      render "show.json.jb"
    else
      render json: { errors: @user_room.error.full_messages }, status: 422
    end
  end
end
