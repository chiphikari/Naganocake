class Admins::OrderItemsController < ApplicationController
  before_action :authenticate_admin!
end
