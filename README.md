# cookbook
My solution of the Marley Spoon web challenge

## Initial setup
Please install the latest Ruby in the time of writing the app: Ruby 2.7.1 ([prefferebly through rbenv](https://github.com/rbenv/rbenv). 
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

## Approach
From the beginning, I was driven to write easy to understand software, well-balanced with the complexity of the task.
I choose Sinatra as its leightweight is fitting good to the compexity of the task. I choose to use Bootstrap 4 as a base for the CSS. 

### List view
- Display a preview of all recipes, including:
  - Title
  - Image
![Recipes list](https://www.webpagescreenshot.info/image-url/XUHAIM3qO)
### Details View
- Display all the data for a recipe:
  - Title
  - Image
  - List of Tags
  - Description
  - Chef Name
  - Calouries
![Single Recipe](https://www.webpagescreenshot.info/image-url/IeZQV3g13)

## Design trade-offs or short-cuts
As Content Delivery API was coming with its limitation (for examle: "The include array is not applicable while retrieving a single entry." from [here](https://www.contentful.com/developers/docs/references/content-delivery-api/#/reference/entries/entry) I needed to make more requests which slows down the app.

## Top priorities for application upgrade
- Implement cashing
- Reduce number of requests
- Acquire documentation of the API (what fields are mandatory, type of fields and so on) and write tests based on the documentation
- Write tests of different kinds (integration tests and unit tests)
- Implement faulty data handling


