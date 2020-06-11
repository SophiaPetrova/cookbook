# cookbook
My solution to the [Marley Spoon web challenge](https://github.com/SophiaPetrova/cookbook/blob/master/original_task.md)

## Initial setup
Please install Ruby 2.7.1 (prefferebly through [rbenv](https://github.com/rbenv/rbenv)). 

If you do not have bundler please install it with running `gem install bundler`

In the Gemfile are the rest of the dependencies and to install them run `bundle install` in the terminal.

## Run the server:
Run `ruby cookbook.rb` in the project folder in the terminal and open http://localhost:4567/ 

## Dependencies
I decided to use Sinatra with Ruby 2.7.1 for this task. 

I am using HAML as it makes the code cleaner in my opinion.

Gem rdiscount is helping me render the markdown which is included in some of the descriptions of recipes. 

Gem dotenv is used to load environment variables from .env into ENV in development.

During the development process to ensure that the ruby style guide was followed I ran my code through rubocop and for debugging I used pry. 

For CSS stylesheet I used Bootstrap 4.5.0 as a base.

## Approach
From the beginning, I was driven to write easy to understand software, well-balanced with the complexity of the task.

I choose Sinatra as a lightweight alternative to Rails fitting well to the current task. I choose to use Bootstrap 4 as a base for the CSS. 

The application consists of:
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
As Content Delivery API was coming with its limitation (for example: "The include array is not applicable while retrieving a single entry." from [here](https://www.contentful.com/developers/docs/references/content-delivery-api/#/reference/entries/entry) I needed to make more requests which slows down the app.

## Top priorities for application upgrade
- Implement caching
- Reduce the number of requests
- Acquire documentation of the API (what fields are mandatory, type of fields and so on) and write tests based on the documentation
- Write tests of different kinds (integration tests and unit tests)
- Implement faulty data handling
