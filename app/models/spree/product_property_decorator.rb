module Spree
  ProductProperty.class_eval do
    translates :value, fallbacks_for_empty_translations: true
    include OpenGlobalize::Translatable
  end
end