class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception

protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["ADMIN"] && password == ENV["PASSWORD"]
    end
  end

  def get_behance_projects
    # Initializing the client
    client = Behance::Client.new(access_token: ENV["BEHANCE_API_KEY"])
    user = client.user_projects("bejuloo")
    projects = []
    for i in 0..8
      projects.push(client.project(user[i]["id"]))
    end
    projects
  end
  
end
