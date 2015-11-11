Rails.application.routes.draw do
  root 'posts#index'


  get ':controller(/:action(/:id))'
  post ':controller(/:action(/:id))'
end
