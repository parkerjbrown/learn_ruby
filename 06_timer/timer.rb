class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end

  def time_string
    hours = @seconds/3600
    seconds_left = @seconds - hours*3600
    minutes = seconds_left/60 
    @seconds = seconds_left - 60*minutes

    if hours < 10
      hours = "0#{hours}"
    end

    if minutes < 10
      minutes = "0#{minutes}"
    end

    if @seconds < 10
      @seconds = "0#{@seconds}"
    end

    "#{hours}:#{minutes}:#{@seconds}"
  end
end
