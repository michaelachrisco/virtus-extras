# Needed for extract_options! method.
require 'active_support'

# +FormObject+ module.
#
# Depends on Virtus for model attributes.
# Assigns attributes to parent model.
# ex:
# form_attributes :field1, field2, ..., :model => Integer
# Same syntax as Rails validations
module Virtus
  module Extras
    module FormObject
      def form_attributes(*args)
        options = args.extract_options!
                model = options[:model]
        attributes = args

        attributes.each do |attribute_key|
          attribute attribute_key, model, optional_args(options)
        end
      end

      private

      def optional_args(options)
        options.tap { |hs| hs.delete(:model) }
      end
    end
  end
end
