# PonyBreeds :horse:

The `pony_breeds` gem provides informations for 76 pony breeds. You can easily integrate the gem
into your project and use the data coming from it.

## Installation

Install the gem and add to the application's Gemfile by executing:

    $ bundle add pony_breeds

If bundler is not being used to manage dependencies, install the gem by executing:

    $ gem install pony_breeds

## Usage

Get the pony data by the symbolized JSON key
    `Pony::Breeds::ReadPonyData.new.get_pony_by_key(:american_shetland_pony)`

```ruby
{
  name: 'American Shetland Pony',
  description: 'Short description about the pony',
  wiki_url: 'https://en.wikipedia.org/wiki/American_Shetland_Pony'
}
```
    
Get the pony data by the actual name of the pony
    `Pony::Breeds::ReadPonyData.new.get_pony_by_name('Western sudan pony')`

```ruby
{
  name: 'Western sudan pony',
  description: 'Short description about the pony',
  wiki_url: 'https://en.wikipedia.org/wiki/Western_Sudan_Pony"'
}
```

Get a random pony data
    `Pony::Breeds::ReadPonyData.new.retrieve_random_pony`

```ruby
{
  name: 'Timor pony',
  description: 'Short description about the pony',
  wiki_url: 'https://en.wikipedia.org/wiki/Timor_Pony'
}
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`.

## Contributing

Contributions are welcomed to this project!
If you have an idea for a new feature or find a bug, please open an issue in this repository.

To contribute code to the project, follow these steps:

    1. Fork this repo 
    2. Create a new branch for your changes
    3. Make the necessary changes and commit them to your branch
    4. Push your branch to your forked repository
    5. Open a pull request from your branch to this repository

I will review your changes and merge them into the project if they are approved.

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
