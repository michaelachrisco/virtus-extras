require 'active_model'
require 'active_support'
class UserEntry
  include Virtus.model

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  extend Virtus::Extras::FormObject

  form_attributes :first_name,
                  :last_name,
                  :display_name,
                  :model => String
                  # :writer => :private
  form_attributes :is_active,
                  :model => Integer

  form_attributes :hidden,
                  :model => Integer,
                  :writer => :private
end
