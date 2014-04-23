# Bilvision

TODO: Write a gem description

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

    # We cal also fetch all results
    data = client.all

## Contributing

1. Fork it ( http://github.com/<my-github-username>/bilvision/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
