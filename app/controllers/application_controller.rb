class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #READ

  get "/notes" do
    notes = Note.all
    notes.to_json
  end

  get '/notes/:id' do
    notes = Note.find(params[:id])
    notes.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/projects' do
    projects = Project.all
    projects.to_json
  end

  get '/projects/:id' do
    projects = Project.find(params[:id])
    projects.to_json
  end

  get '/test/:id' do
    titles = Note.find(params[:id]).projs
    titles.to_json
  end




  # get '/login/:username' do
  #   user = User.find_by(:username => params[:username])
  #   user.to_json(include: { notes: {include: :project}})
  # end

  


  #CREATE

  post '/users' do
    user = User.create(
      username: params[:username],
      password: params[:password],
      email: params[:email],
      bio: params[:bio])
    user.to_json
  end

  post '/notes' do
    note = Note.create(
      title: params[:title],
      body: params[:body],
      project_id: params[:project_id],
      user_id: params[:user_id])
    note.to_json
  end



  #UPDATE


  patch '/notes/:id' do
    note = Note.find(params[:id])
    note.update(
      title: params[:title],
      body: params[:body])
    note.to_json
  end


  #DELETE

  delete '/notes/:id' do
    note = Note.find(params[:id])
    note.destroy
    note.to_json
  end

end