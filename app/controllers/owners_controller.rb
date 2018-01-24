class OwnersController < ApplicationController
  before_action :set_profile, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_owner!

  def dashboard
  end

end
