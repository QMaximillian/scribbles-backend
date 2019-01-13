class MeetingRangesController < ApplicationController

  def index
    @meeting_ranges = MeetingRange.all

    render json: @meeting_ranges
  end

  def show
    @meeting_range = MeetingRange.find(params[:id])

    render json: {meeting_range: @meeting_range, meeting_time: @meeting_range.meeting_times, users: @meeting_range.users}
  end

  def create
    @meeting_range = MeetingRange.create(meeting_range_params)

    if @meeting_range.valid?

      render json: @meeting_range, status: :created

    else
     render json: { error: 'failed to create meeting range' }, status: :not_acceptable
    end
  end

  def meeting_range_params
    params.require(:meeting_range).permit(:begin_date, :end_date, :cut_off_early, :cut_off_late)
  end
end
