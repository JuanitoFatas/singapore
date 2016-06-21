# Singapore

![Singapore flag](flag-sg.png)

Singapore is a gem and one of Singaporan gems is the language, singlish.

This gem attempts to make life easier for Singaporean Rubyists by integrating Singlish into the Ruby language:

```ruby
>> require "singapore"

>> "singapore".empty_hor?
=> false

>> "singapore".upcase_lah!
=> "SINGAPORE"

>> bobian "Something went wrong"
RuntimeError: Walao, Something went wrong
  from (irb):2
  from bin/hack:7:in `<main>'

>> ord
Exit console
```

Kwel, hor?

## Production Ready™

Yes. Proof: [![Build Status](https://travis-ci.org/JuanitoFatas/Singapore.png)](https://travis-ci.org/JuanitoFatas/Singapore)

## Installation

Add this line to your application's Gemfile:

    gem "singapore"

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install singapore

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Product of Canada

This gem is a Made in Singapore and sweetened with 100% Singaporean Teh C. If you would like to join Ruby SG, check out http://ruby.sg for details.
