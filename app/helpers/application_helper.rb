module ApplicationHelper
  def admin_user?
    session[:user_id]
  end
  
  def mark_required(object, attribute) 
    "*" if object.class.validators_on(attribute).map(&:class).include? ActiveModel::Validations::PresenceValidator
  end 
end
