FROM hiroraba/ruby

RUN mkdir root/workspace
ADD ../workspace ./root/workspace

RUN bash -l -c "cd root/workspace; rbenv rehash; bundle install; bundle exec rake db:migrate; bundle exec rake db:migrate RAILS_ENV=test; bundle exec rspec spec"
