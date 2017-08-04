class Api::V1::AuthenticationController < ApplicationController
  include ActionController::HttpAuthentication::Token::ControllerMethods

  before_action :authenticate_api


  def authenticate_api
    authenticate_token || render_unauthorized
  end

  private

  def authenticate_token
    authenticate_with_http_token do |key, options|
      ApiKeyStore.find_by(key: key)
    end
  end
  
  def render_unauthorized
    self.headers['WWW-Authenticate'] = 'Token realm="Application"'
    render json: {message: 'Bad credentials'}, status: 401
  end

end 