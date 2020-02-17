class RestrictController < ActionController::Base
  before_action :authenticate_user!
  layout 'application'
end