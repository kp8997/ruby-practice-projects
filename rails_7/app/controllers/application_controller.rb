class ApplicationController < ActionController::Base
  def hello
    render plain: "<h1>Hello World</h1>"
  end
end
