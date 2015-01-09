class MyDevise::RegistrationsController < Devise::RegistrationsController

  protected 
  def after_update_path_for(resource)
    staffs_path
  end
end