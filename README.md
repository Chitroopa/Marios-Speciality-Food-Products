# _Mario's Speciality Food Products_

#### _Ruby on Rails week1 independent project, 06/30/2017_

#### By _**Chitroopa Manikkavasagam**_

## Description

This application show the products and corresponding reviews.

The following are requirements:

1. Products

* The site needs to include a products section with a list of the tasty products that Mario sells. Each product should be clickable with a detail view.

* Site admins should be able to add, update and delete new products. (Don't worry about user authentication; assume everyone who visits the site is an admin for now).

* Users should be able to click an individual product to see its detail page. (You will not be expected to show the product's average rating; that's included in the further exploration section.)
* Users should be able to add a review to a product.

2. Scopes

Your site should use scopes to display the following information on the site:

* The product with the most reviews.
* The three most recently added products.
* All products made in the USA for buyers that want to buy local products.

3. Validations

Your site should include validations for the following:

* All fields should be filled out, including rating.
* Rating can only be an integer between 1 and 5.
* The review's content_body must be between 50 and 250 characters.

4. Seeding

* Your project should include seed data for 50 products and 250 reviews. Use Faker with a loop to seed the database.

## Installation
------------

```
$ git clone https://github.com/Chitroopa/Marios-Speciality-Food-Products
$ cd Marios-Speciality-Food-Products
```

Install required gems:
```
$ bundle install
```

Start postgres:
```
$ psql
```

Create databases:
```
$ rails db:create
$ rails db:migrate
$ rails db:seed
```

Start the webserver:
```
$ rails s
```

Navigate to `localhost:3000` in browser.


## Known Bugs

_NA_

## Technologies Used

_Ruby on Rails, HTML, CSS_

### License

*MIT*

Copyright (c) 2017 **_Chitroopa Manikkavasagam_**
