# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

INSTRUCTIONS    _ _ _ __ __ _ _ _
RANDOM COMMANDS :::::::::

   bundle
   rake db:create
   rake db:migrate
   rake db:test:prepare
   rake db:seed

*rails new 'app name'

*Add   gem 'jquery-rails'  to GemFile

*  && Add   group :development, :test do
      gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
      gem 'rspec-rails'
      gem 'launchy'
      gem 'pry'
    end
                                      to Gemfile  
