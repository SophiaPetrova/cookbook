# cookbook
My solution to the [Marley Spoon web challenge](https://github.com/SophiaPetrova/cookbook/blob/master/original_task.md)

## Initial setup
Please install Ruby 2.7.1 (prefferebly through [rbenv](https://github.com/rbenv/rbenv)). 

If you do not have bundler install it with `gem install bundler`

In the Gemfile are the rest of the dependencies and to install them run `bundle install` in the terminal.

## Run the server:
Run `ruby cookbook.rb` in the project folder in the terminal and open http://localhost:4567/ 

## Dependencies
I decided to use Sinatra with Ruby 2.7.1 for this task. 

I am using HAML as in my opinion it makes the code cleaner.

Gem rdiscount is helping me render the markdown which is included in some of the descriptions of the recipes. 

Gem dotenv is used to load environment variables from .env into ENV in development.

During the development process to ensure that the ruby style guide was followed I ran my code through rubocop and for debugging I used pry. 

For CSS stylesheet I used Bootstrap 4.5.0 as a base.

## Approach
From the beginning, I was driven to write easy to understand software, well-balanced with the complexity of the task.

One of my main goals was to achieve responsive, mobile-first design.

I choose Sinatra as a lightweight alternative fitting well to the current task. I choose to use Bootstrap 4 as a base for the CSS. 

During the development process, I was using primarily Google Chrome but I tested it as well with Mozilla Firefox. 

During the development, I used Postman for learning the API and planning the application.

## Architecture

The application consists of:

cookbook.rb which is the main app

In views folder are the haml files

In public/css is the CSS file which is used for enriching bootstrap

In helpers folder is the api_calls file with ApiCalls module in which are the methods with all the API calls made to Content Delivery API

## User Interface (screenshots from Google Chrome)

### List view
- Display a preview of all recipes, including:
  - Title
  - Image

![Recipes list](https://www.webpagescreenshot.info/image-url/SEC6pCkMN)

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
- Test with more data (and how the app is going to handle requesting it)
- Change the views according to the data ( for example I would have switched to 3 or 4 recipes per row in index if i had more recipes)
- Test with more web browsers
- Implement caching
- Reduce the number of requests
- Acquire documentation of the API (what fields are mandatory, type of fields and so on) and write tests based on the documentation
- Write tests of different kinds (integration tests and unit tests)
- Implement faulty data handling
