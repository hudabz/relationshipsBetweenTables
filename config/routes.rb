Rails.application.routes.draw do
  get 'welcome/index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  get "/books", to: "books#index", as: "books" 
  get "/books/new", to: "books#new", as: "new_book"
  get "/books/:id/edit", to: "books#edit", as: "edit_book" 
  get "/books/:id", to: "books#show", as: "book" 
  delete "/books/:id", to: "books#destroy"
  post "/books", to: "books#create" 
  patch "/books/:id", to: "books#update" 

  get "/authors", to: "authors#index", as: "authors" 
  get "/authors/new", to: "authors#new", as: "new_author"
  get "/authors/:id/edit", to: "authors#edit", as: "edit_author"
  get "/authors/:id", to: "authors#show", as: "author" 
  delete "/authors/:id", to: "authors#destroy" 
  post "/authors", to: "authors#create"  
  patch "authors/:id", to: "authors#update"   

  get "/patients", to: "patients#index", as: "patients"
  get "/patients/new", to: "patients#new", as: "new_patient"
  get "/patients/:id/edit", to:"patients#edit", as: "edit_patient"
  get "/patients/:id", to: "patients#show", as: "patient" 
  delete "/patients/:id", to: "patients#destroy"  
  post "/patients", to: "patients#create" 
  patch "/patients/:id", to: "patients#update" 

root 'welcome#index' 

end 
