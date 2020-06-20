Rails.application.routes.draw do

  get 'services', to: 'services#index'
  get 'serviceTypes', to: 'service_types#index'
  get 'brands', to: 'brands#index'
  get 'clients', to: 'clients#index'
  get 'colors', to: 'colors#index'
  get 'officials', to: 'officials#index'
  get 'positions', to: 'positions#index'
  get 'vehicleModels', to: 'vehicle_models#index'
  get 'vehicles', to: 'vehicles#index'

  get 'services/new', to: 'services#new', as: 'service_new'
  post 'services', to: 'services#create'

  get 'service/type/new', to: 'service_types#new', as: 'service_types_new'
  post 'service_types', to: 'service_types#create'

  get 'brand/new', to: 'brands#new', as: 'brands_new'
  post 'brands',to: 'brands#create'

  get 'client/new', to: 'clients#new', as: 'clients_new'
  post 'clients', to: 'clients#create'

  get 'color/new', to: 'colors#new', as: 'color_new'
  post 'colors', to: 'colors#create'

  get 'officials/new', to: 'officials#new', as: 'officials_new'
  post 'officials', to: 'officials#create'

  get 'position/new', to: 'positions#new',  as: 'position_new'
  post 'positions', to: 'positions#create'

  get 'vehicleModels/new', to: 'vehicle_models#new', as: 'models_new'
  post 'vehicle_models', to: 'vehicle_models#create'

  get 'vehicle/new', to: 'vehicles#new', as: 'vehicle_new'
  post 'vehicles', to: 'vehicles#create'

  get 'brand/:id', to: 'brands#show', as: 'brand'
  get 'brand/:id/edit', to: 'brands#edit', as: 'brand_edit'
  patch 'brand/:id', to: 'brands#update'

  get 'client/:id', to: 'clients#show', as: 'client'
  get 'client/:id/edit', to: 'clients#edit', as: 'client_edit'
  patch 'client/:id', to: 'clients#update'

  get 'color/:id', to: 'colors#show', as: 'color'
  get 'color/:id/edit', to: 'colors#edit', as: 'color_edit'
  patch 'color/:id', to: 'colors#update'

  get 'official/:id', to: 'officials#show', as: 'official'
  get 'official/:id/edit', to: 'officials#edit', as: 'official_edit'
  patch 'official/:id', to: 'officials#update'

  get 'position/:id', to: 'positions#show', as: 'position'
  get 'position/:id/edit', to: 'positions#edit', as: 'position_edit'
  patch 'position/:id', to: 'positions#update'

  get 'vehicle/model/:id', to: 'vehicle_models#show', as: 'vehicle_model'
  get 'vehicle/model/:id/edit', to: 'vehicle_models#edit', as: 'vehicle_model_edit'
  patch 'vehicle/model/:id', to: 'vehicle_models#update'

  get 'service/type/:id', to: 'service_types#show', as: 'service_type'
  get 'service/type/:id/edit', to: 'service_types#edit', as: 'service_type_edit'
  patch 'service/type/:id', to: 'service_types#update'

  get 'service/:id', to: 'services#show', as: 'service'
  get 'service/:id/edit', to: 'services#edit', as: 'service_edit'
  patch 'service/:id', to: 'services#update'

  get 'vehicle/:id', to: 'vehicles#show', as: 'vehicle'
  get 'vehicle/:id/edit', to: 'vehicles#edit', as: 'vehicle_edit'
  patch 'vehicle/:id', to: 'vehicles#update'

end
