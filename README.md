# cookbook
My solution of the Marley Spoon web challenge

## Initial setup
Please install the latest Ruby in the time of writing the app: Ruby 2.7.1. 
In the Gemfile are the rest of the dependecies. If you have bundler run `bundle install` in the terminal and if not install it with `gem install bundler`.

## Run the server:
Run `ruby cookbook.rb` in the cookbook folder in the terminal and open http://localhost:4567/ 

## Dependencies
I decided to use Sinatra with Ruby 2.7.1 for this task. 
I am using HAML as I prefer it than ERB.
Gem rdiscount is helping me render the markdown which is included in some of the descriptions of recepis. 
Gem dotenv is used to load environment variables from .env into ENV in development.

During the development process to ensure that ruby style guide was followed I ran my code through rubocop and for debugging I used pry. Both of them are removed as they are only needed in the development process. 

For CSS stylesheet I used Bootstrap 4.5.0 as base.

## Application
From the beginning, I was driven to write easy to understand software, well-balanced with the complexity of the task. 

![Recipes list](https://photos.app.goo.gl/gtdihERBsh3ttJkX7)
![Single Recipe](https://photos.app.goo.gl/3Ak74UfZ4Ws1TJ2q9)
