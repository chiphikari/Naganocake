class Admins::HomesController < ApplicationController
  before_action :authenticate_admin!

  #before_action :authenticate_admin!

  def top
    @orders = Order.all

  end
end
