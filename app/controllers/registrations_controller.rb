class RegistrationsController < Devise::RegistrationsController
  protected

  def after_sign_up_path_for(calculators)
    new_report_path
  end
end