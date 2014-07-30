class EventsController < ApplicationController

  def index
   @events = Event.all
   @day = Array.new(1 + (24.hours)/30.minutes) do |i|
     (Time.now.midnight + (i*(30.minutes))).strftime("%I:%M %p")
   end
   @sunday = Day.new("Sunday")
   @monday = Day.new("Monday")
   @tuesday = Day.new("Tuesday")
   @wednesday = Day.new("Wednesday")
   @thursday = Day.new("Thursday")
   @friday = Day.new("Friday")
   @saturday = Day.new("Saturday")
   @week = [@sunday, @monday, @tuesday, @wednesday, @thursday, @friday, @saturday]
   respond_to do |format|
    format.html
    format.json { render json: @events }
   end
  end

  def new
    @event = Event.new
  end

  def create
    @event = Event.new(event_params)
  end


private

  def event_params
    params.require(:event).permit(:name, :day, :start_time, :end_time)
  end
end
