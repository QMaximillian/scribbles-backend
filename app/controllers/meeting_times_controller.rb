class MeetingTimesController < ApplicationController

  def index
    @meeting_times = MeetingTime.all

    render json: @meeting_times
  end

  def create
    byebug
    @meeting_times = MeetingTime.create(meeting_times_params)

    if @meeting_times.valid?

      render json: @meeting_times, status: :created

    else
     render json: { error: 'failed to create meeting range' }, status: :not_acceptable
    end
  end

  def meeting_times_params
    params.require(:meeting_time).permit(:meeting_range_id, :user_id, :day, :begin_time, :end_time)
  end
end
