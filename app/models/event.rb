class Event < ActiveRecord::Base

  def self.for_week_starting(day=Date.today.beginning_of_week(:sunday))
    sunday = day.beginning_of_week(:sunday)
    saturday = day.end_of_week(:sunday)
  end
end
