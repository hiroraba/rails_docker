#!/bin/bash

rbenv rehash
bundle install
bundle exec rake db:migrate RAILS_ENV=test
bundle exec rspec spec
