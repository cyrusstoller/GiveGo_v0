module ApplicationHelper
  def bootstrap_alert_type(type)
    case type
    when :alert
      "error"
    when :error
      "error"
    when :notice
      "warning"
    when :success
      "success"
    else
      type.to_s
    end
  end
  
  def title
    base_title = "GiveGo"
    if @title.nil?
      base_title
    else
      "#{@title} | #{base_title}"
    end
  end
  
  def current_user
    if session[:user_id].nil?
      nil
    else
      User.find(session[:user_id])
    end
  end
end
