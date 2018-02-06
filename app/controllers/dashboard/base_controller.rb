class Dashboard::BaseController < ApplicationController
  before_action :authenticate_dashboard_user!
  
  layout 'dashboard'
end
