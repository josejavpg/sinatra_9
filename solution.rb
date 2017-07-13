require "sinatra"

get '/' do
  token = request.env["HTTP_PERMISO"]
  @answer = "Sin Permiso"
  if token == "soy-un-token-secreto"
    @answer = "Si lo logramos!"
  end
  erb :index
end
# curl -XGET -H "permiso: soy-un-token-secreto" "http://localhost:4567/"