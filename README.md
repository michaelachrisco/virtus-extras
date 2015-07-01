# Virtus::Extras

Set of extra extensions to the Virtus Gem: https://github.com/solnic/virtus

## Installation

gem install virtus-extras

```ruby
gem 'virtus-extras'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install virtus-extras

## Usage

## Virtus::Extras::FormObject
Instead of this:
```ruby
# app/form_object/user_entry.rb
require 'active_model'
require 'active_support'
class UserEntry
  include Virtus.model

  extend ActiveModel::Naming
  include ActiveModel::Conversion

  attribute :first_name, String
  attribute :last_name, String
  attribute :display_name, String
  attribute :is_active, Integer
  attribute :hidden, Integer, :write => :private
end

```
FormObject:

### Same syntax as Rails validations
```ruby
# app/form_object/user_entry.rb
require 'active_model'
require 'active_support'
require 'virtus/extras'

class UserEntry
  include Virtus.model

  extend ActiveModel::Naming
  include ActiveModel::Conversion
  extend Virtus::Extras::FormObject

  form_attributes :first_name,
                  :last_name,
                  :display_name,
                  :model => String

  form_attributes :is_active,
                  :model => Integer

  form_attributes :hidden,
                  :model => Integer,
                  :writer => :private
end

```

## Contributing

1. Fork it ( https://github.com/[my-github-username]/Virtus-extras/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
