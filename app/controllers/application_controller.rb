class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def resource_name
    :account_holder
  end

  def resource
    @account_holder ||= AccountHolder.new
  end
  def devise_mapping
    @devise_mapping ||= Devise.mappings[:account_holder]
  end

  def signed_in_root_path(resource)
    profile_path(current_account_holder)
  end
end
