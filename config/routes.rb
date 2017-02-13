Rails.application.routes.draw do

  root to: "links#index"

  put '/links/:id/read', to: 'links#update'

end
