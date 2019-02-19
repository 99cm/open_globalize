Spree::Core::Engine.routes.draw do
  namespace :admin do
    get '/:resource/:resource_id/translations', to: 'translations#index', as: :translations
    patch '/option_values/:id', to: 'option_values#update', as: :option_type_option_value
    patch 'product/:id/product_properties/:id', to: "product_properties#translate", as: :translate_product_property
  end
end