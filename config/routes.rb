PandaExampleRails::Application.routes.draw do
  resources :videos

  match "/panda/authorize_upload", :to => "panda#authorize_upload"
  match "/panda/authorize_upload_postprocess", :to => "panda#authorize_upload_postprocess"

  match "/upload", :to => "videos#simple"

  match "/home", :to => "videos#advanced"

  match "/videos/postprocess", :to => "videos#postprocess"

  root :to => "videos#advanced"

end
