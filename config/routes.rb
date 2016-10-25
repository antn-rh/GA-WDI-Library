Rails.application.routes.draw do

  get 'authors/' => 'authors#index'
  get 'authors/:id' => 'authors#show', as: :author
  get 'authors/new' => 'authors#new', as: :new_author
  post 'authors/' => 'authors#create'
  get 'authors/:id/edit' => 'authors#edit', as: :edit_author
  patch 'authors/:id' => 'authors#update'
  delete 'authors/:id' => 'authors#destroy'
# ---------------------------------------------------------
# ---------------------------------------------------------
  get 'books/' => 'authors#index'
  get 'books/:id' => 'authors#show', as: :book
  get 'books/new' => 'books#new', as: :new_book
  post 'books/' => 'books#create'
  get 'books/:id/edit' => 'books#edit', as: :edit_book
  patch 'books/:id' => 'books#update'
  delete 'books/:id' => 'books#destroy'
# ---------------------------------------------------------
# ---------------------------------------------------------
  get 'categories/' => 'categories#index'
  get 'categories/:id' => 'categories#show', as: :category
  get 'categories/new' => 'categories#new', as: :new_category 
  post 'categories/' => 'categories#create'
  get 'categories/:id/edit' => 'categories#edit', as: :edit_category
  patch 'categories/:id' => 'categories#update'
  delete 'categories/:id' => 'categories#destroy'


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
