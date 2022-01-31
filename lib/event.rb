require 'time'
class Event
  attr_accessor :title
  attr_accessor :start_date
  attr_accessor :duration
  attr_accessor :attendees

  def initialize(title, start_date, duration, attendees)
    @title = title
    @start_date = Time.parse(start_date)
    @duration = duration
    @attendees = attendees
  end

  # Add an attendee to event and put a confirmation
  def add_attende(attende)
    @attendees.push(attende)
    puts "#{attende} added to event"
  end

  # Shift the event to tomorrow
  def shift_event
    new_date = Time.new
    new_date = @start_date + (60*60*24)
    @start_date = new_date
    puts "Event shifted by 1 day for #{@start_date.strftime("%d/%m/%Y")}"
  end

  # Puts end time
  def end_date
  end_date = Time.new
  end_date = @start_date + (60*@duration)
  puts "Event end at #{end_date.strftime("%k:%M")}"
  end

  # Return TRUE if event done
  def is_paste?
    today = Time.now
    return today > @start_date
  end

  # Return FALSE if event isn't done
  def is_future?
    return !is_paste?
  end

  def is_soon?
    time = Time.now
    if is_future?
      if @start_date <= time - (60*30)
      puts "This event start in less than 30 minutes"
      else
      puts "This event start in more than 30 minutes"
      end
    else
      "This event is ever passed"
    end
  end

  def to_s
    puts ">Title: #{@title.to_s}"
    puts ">Date start: #{@start_date.to_s}"
    puts ">Duration: #{@duration.to_s} minutes"
    puts ">Attendees: #{@attendees.join(', ')}"
  end

  def all_events
    
  end

end