Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'main/compose_email'
  post '/sendmail', to: 'main#send_email', as: 'send_email'
  root 'main#compose_email'
end
