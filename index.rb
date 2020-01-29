require "sinatra"
require "make_todo"

get '/' do
    @task = Tarea.all
    erb :index
end

post '/' do
    Tarea.create(params[:content])
    redirect '/'
end

delete '/delete/:id' do
    Tarea.destroy(params[:id])
    redirect '/'
end

put '/update/:id' do
    Tarea.update(params[:id])
    redirect '/'
end
