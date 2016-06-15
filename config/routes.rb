Rails.application.routes.draw do
  resources :isadiseaseneighbors
  resources :typedefinitiondiseaseneighbors
  resources :diseasesynonyms
  resources :disxrefs
  resources :diseasesubsets
  resources :intersectionneighbors
  resources :relationshipneighbors
  resources :isaproneighbors
  resources :typedefinitionproteinneighbors
  resources :disjointneighbors
  resources :xrefproteins
  resources :synonymproteins
  resources :goannotations
  resources :keywords
  resources :is_adiseases
  resources :typedefinitiondiseases
  resources :diseaseontologies
  resources :pathologies
  resources :organs
  resources :siseasclasses
  resources :diseasefamilies
  resources :omims
  resources :diseases
  resources :references
  resources :misfoldmodles
  resources :intersection_ofs
  resources :relationships
  resources :is_aproteins
  resources :typedefinitionproteins
  resources :disjoint_froms
  resources :proteinontologies
  resources :externalsoforms
  resources :transcriptmodificationregions
  resources :transcripts
  resources :gos
  resources :posttranslationalmodifications
  resources :pathways
  resources :conservedregions
  resources :predictiontools
  resources :functions
  resources :twodstructureregions
  resources :pdbs
  resources :genes
  resources :proteinnames
  resources :proteins
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase
  root 'protein#home'
  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
