Rails.application.routes.draw do
    
   
    resources :staffs
    get 'staff/:id/delete' => 'staffs#delete', :as => :staffs_delete
    
    
     root 'staffs#index'
end