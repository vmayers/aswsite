module ApplicationHelper
  def admin_user?
    session[:user_id]
  end
  
  def mark_required(object, attribute) 
    "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end 
  
  def sortable(column, title = nil)
    title ||= column.downcase
    css_class = column == sort_column ? "current #{sort_direction}" : nil
    direction = column == sort_column && sort_direction == "asc" ? "desc" : "asc"
    link_to title, {:sort => column, :direction => direction}, {:class => css_class}
  end
end
