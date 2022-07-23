Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  #
  root 'haupt#main'
  get 'preis', to: 'haupt#preis'
  get 'erfahrungsberichte', to: 'haupt#erfahrungsberichte'
  get 'fuer_schueler', to: 'haupt#fuer_schueler'
  get 'fuer_erwachsene', to: 'haupt#fuer_erwachsene'
  get 'erfahrungsberichte', to: 'haupt#erfahrungsberichte'
end
