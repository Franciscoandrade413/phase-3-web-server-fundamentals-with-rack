require 'rack'
require 'pry'

class App
  def call(env)
    path = env["PATH_INFO"]

    if path == "/"
      [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
    elsif path == "/potato"
      [200, { "Content-Type" => "text/html" }, ["<p>Boil 'em, mash 'em, stick 'em in a stew</p>"]]
    else
      [404, { "Content-Type" => "text/html" }, ["Page not found"]]
    end
  end
end

run App.new

# to begin server run rackup [placeholder].ru
# run "http://localhost:9292/" in browser to run

# require 'rack'
# require 'pry'

# class App
#   def call(env)
#     binding.pry
#     [200, { "Content-Type" => "text/html" }, ["<h2>Hello <em>World</em>!</h2>"]]
#   end
# end

# run App.new

