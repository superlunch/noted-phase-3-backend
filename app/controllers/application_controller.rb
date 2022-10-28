class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'

  #READ

  get "/notes" do
    notes = Note.all
    notes.to_json
  end

  get "/projects" do
    projects = project.all
    projects.to_json
  end

  get "/users" do
    users = User.all
    users.to_json
  end

  get '/users/:id' do
    user = User.find(params[:id])
    user.to_json
  end

  get '/project/:title' do
    project = Project.find_by(:title => params[:title])
    project.to_json(include: :notes)
  end
  
  get '/users/projects/:id' do
    project = User.find(params[:id]).projects.uniq
    project.to_json(include: :notes)
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

  post '/new_note' do
    note = Note.create(
      title: params[:title],
      body: params[:body],
      project_id: params[:project_id],
      user_id: params[:user_id])
    note.to_json
  end

  post '/new_project' do
    project = project.create(
      title: params[:title])
    project.to_json
  end


  #UPDATE

  patch '/users' do
    user = User.find(params[:id])
    user.update(
      username: params[:username],
      password: params[:password],
      email: params[:email],
      bio: params[:bio])
    user.to_json
  end

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

  delete '/projects/:id' do
    project = project.find(params[:id])
    project.destroy
    project.to_json
  end
end