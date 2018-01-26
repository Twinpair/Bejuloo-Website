class ApplicationController < ActionController::Base

  require 'net/http'
  require 'json'

  protect_from_forgery with: :exception

protected

  def authenticate
    authenticate_or_request_with_http_basic do |username, password|
      username == ENV["ADMIN"] && password == ENV["PASSWORD"]
    end
  end

  def get_behance_projects
    url = "https://api.behance.net/v2/users/bejuloo/projects?client_id=#{ENV["BEHANCE_API_KEY"]}"
    uri = URI(url)
    response = Net::HTTP.get(uri)
    user = JSON.parse(response)
    projects = []
    for i in 0..8
      url = "https://www.behance.net/v2/projects/#{user["projects"][i]["id"]}?api_key=#{ENV["BEHANCE_API_KEY"]}"
      uri = URI(url)
      response = Net::HTTP.get(uri)
      project = JSON.parse(response)
      projects.push(project["project"])
    end
    projects
  end
  
end
