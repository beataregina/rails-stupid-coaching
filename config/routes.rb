Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html
  get 'ask', to: 'questions#ask', as: :ask # will define a route to the ask-user action
  get 'answer', to: 'questions#answer', as: :answer # will define a route to the answer-user action on another page
end
