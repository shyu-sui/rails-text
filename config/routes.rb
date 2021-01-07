Rails.application.routes.draw do
  get 'books/index'
  get 'books/show'
  get 'books/new'
  get 'books/edit'
 resources :books
 root "books#top"
 root "books#new"
end
