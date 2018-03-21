class ApplicationController < ActionController::Base
  respond_to :html

  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def title
    @title || 'EquiValent - Ruby on Rails developer'
  end
  helper_method :title

  def author
    'Tomas Valent (EquiValent)'
  end
  helper_method :author

  def body_id
    nil
  end
  helper_method :body_id
end
