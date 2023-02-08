class CheckinsController < ApplicationController
  before_action :authenticate_user!

  def new
    @checkin = Checkin.new
  end

  def create
    @checkin = Checkin.new(user_id: current_user.id, event_id: params[:event_id])
    if @checkin.save
      redirect_to event_path(@checkin.event)
    else
      redirect_to event_path(@checkin.event),
                  notice: 'You have already checked in to this event.'
    end
  end
end
