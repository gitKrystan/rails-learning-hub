# Learning Hub (LearnHowToProgram.com clone)

##### By Krystan Menne

Learning Hub is a Rails app that allows administrators to create lessons, sections, and chapters for students to view.

Features:
* Renders Markdown with the Redcarpet gem
* Testing with RSpec, ShouldMatchers, and Capybara

## Prerequisites
* Ruby 2.2.2 or greater
* Rails 4.2.6 or greater
* PostgreSQL

## Installation
1. `$ git clone` this repository
1. Change into the new directory
1. `$ bundle install`
1. Create database and run migrations
  1. `$ rake db:create`
  1. `$ rake db:migrate`
  1. `$ rake db:test:prepare`
1. Run the tests (see below)

## Running / Development
1. `$ rails serve`
1. Visit your app at [http://localhost:3000](http://localhost:3000).

## Running Tests
`$ rspec`

## License
Copyright (c) 2016 Krystan Menne
This software is licensed under the MIT license.
