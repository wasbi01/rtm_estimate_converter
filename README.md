# RtmEstimateConverter

Simple converter for RTM's estimate time to seconds

## Installation

Add this line to your application's Gemfile:

    gem 'rtm_estimate_converter'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rtm_estimate_converter

## Usage

```ruby
§ irb

require "rtm_estimate_converter"

"1.5h".estimated_time
# => 5400.0
"1hours 30minutes".estimated_time
# => 5400.0
"90min".estimated_time
# => 5400.0

```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/rtm_estimate_converter/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
