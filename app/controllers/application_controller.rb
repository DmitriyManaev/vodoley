class ApplicationController < ActionController::Base
  def ensure_json_request
    head :not_found unless request.format.json?
  end

  def raise_not_found
    raise ActionController::RoutingError.new('Not Found')
  end
end
