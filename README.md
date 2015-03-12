# KinomaxParser

[![Build Status](https://travis-ci.org/eddiefisher/kinomax_parser.svg)](https://travis-ci.org/eddiefisher/kinomax_parser)

## Installation

For using this gem you need to get access:
read more about access ( http://kinomax.ru/articles/widget.htm )

Add this line to your application's Gemfile:

```ruby
gem 'kinomax_parser'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install kinomax_parser

## Usage

```ruby
# default
KinomaxParser::Announce.new
# with params
announce = KinomaxParser::Announce.new cinema: :solaris, date: '2015-03-13'

#methods for Announce

announce.result
announce.url
announce.movies
announce.cinema
announce.city
announce.time_zone
announce.schedule_date

#methods for Movie

movie = announce.movies.first

movie.id
movie.title
movie.length
movie.description
movie.genres
movie.rating
movie.rating_count
movie.poster
movie.trailer
movie.director
movie.cast
movie.schedules
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/kinomax_parser/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
