# Bilvision

Ruby wrapper for Bilvision api. [www.bilvision.se](http://www.bilvision.se/)

## Installation

Add this line to your application's Gemfile:

    gem 'bilvision'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install bilvision

## Usage

    Bilvision.configure do |config|
      config.user_id  = 'username'
      config.password = '<secret>'
    end

    client = Bilvision::Request.new('AAA111')
    client.general
    client.technical
    client.owners

    # We can also fetch all results
    data = client.all

    # Override global configuration at instance level
    client = Bilvision::Request.new('AAA111',
      user_id:  'uname',
      password: '<new_secret>'
    )

## Contributing

1. Fork it ( http://github.com/sandelius/bilvision/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
