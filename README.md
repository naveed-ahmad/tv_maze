## Information

### tv_maze [![Code Climate](https://codeclimate.com/github/naveed-ahmad/tv_maze/badges/gpa.svg)](https://codeclimate.com/github/naveed-ahmad/tv_maze) [![Gem Version](https://badge.fury.io/rb/tv_maze.svg)](https://badge.fury.io/rb/tv_maze)

A Ruby wrapper for the [Tv Maze](www.tvmaze.com/api).
Provides a simple, easy to use interface for the TvMaze API.

## Getting started

Add this line to your application's Gemfile:

```ruby
gem 'tv_maze'
```

And then execute:
```bash
$ bundle install
```

Or install it yourself as:
```bash
$ gem install tv_maze
```

## Usage

```ruby
TvMaze::Show.find(show_id)
TvMaze::Show.cast(show_id)
TvMaze::Show.alternative_names(show_id)
TvMaze::Show.seasons(show_id)
TvMaze::Show.find_by_imdb_id(imdb_id)
TvMaze::Show.find_by_tvrage_id(tvrage_id)
TvMaze::Show.find_by_tvdb_id(tvdb_id)
TvMaze::Show.all(page)
TvMaze::Show.search(query)
```

### Examples

## Show detail
```ruby
> show = TvMaze::Show.find(1)
=> #<TvMaze::Show id=1, name="Under the Dome", type="Scripted", ...
> show.name 
=> "Under the Dome"
> show.type 
=> "Scripted"
> show.network
=> #<TvMaze::Network id=2, name="CBS", country=#<TvMaze::Country name="United States", code="US", timezone="America/New_York">>
> show.external_ids
=> #<TvMaze::ExternalIds tvrage=25988, thetvdb=264492, imdb="tt1553656">
> show.airing_schedule
=> #<TvMaze::AiringSchedule time="22:00", days=["Thursday"]>
```

## Cast details
```ruby
> show = TvMaze::Show.cast(1)
=>  [#<TvMaze::Cast person=#<TvMaze::Person id=9, name="Dean Norris", image=#<TvMaze::Image ...
```
## Embeding 
```ruby
# fetc cast, episoes and next episodes data as well
> TvMaze::Show.find(17153, embed: ['episodes', 'cast', 'nextepisode'])
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/naveed-ahmad/tv_maze. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [Contributor Covenant](contributor-covenant.org) code of conduct.


## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).
