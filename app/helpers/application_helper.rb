module ApplicationHelper
  
  def pretty_duration(seconds)
    return "(#{(Time.mktime(0) + seconds ).strftime("%M:%S")})"
  end
end
