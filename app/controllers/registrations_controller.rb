class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(calculators)
    calculators_path
  end
end