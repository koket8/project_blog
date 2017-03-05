Rails.application.routes.draw do
 
  



resources :categories

 


resources :streets, except: [:edit] do

resources :anuncios, only: [:create, :update, :destroy, :show, :index]

end


devise_for :cars, controllers: {registrations: 'registrations'} 

  get "/friendly_:id", constraints: { the_id: /[a-z0-9]{6}\-[a-z0-9]{6}/ }, to: "streets#edit", :as => :edit_street 

      


=begin
    get "/articles"            index
    get "/articles/:id"        show
    get "/articles/new"        new
    post "/articles"           create
    delete "/articles"         destroy
    get "/articles/:id/edit"
    patch "/articles/:id"
    put "/articles/:id"


  get 'welcome/index'
  get  "special", to: "welcome#index"
  
  For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

=end

   root 'welcome#index'
 



 get 'search/create'
    
  
    get "/dashboard", to: "welcome#dashboard"

   get "/cars/:id/streets", to: "cars#streets", :as => :car_streets

       get '/cars/:id', to: 'cars#show', as: :car
     
       
       post "streets/new"
  
   put "/streets/:id/publish", to: "streets#publish"




end
