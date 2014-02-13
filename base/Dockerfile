FROM base

RUN apt-get -y update
RUN apt-get -y upgrade
RUN apt-get -y install git-core
RUN apt-get -y install wget
RUN apt-get -y install libopenssl-ruby
RUN apt-get -y install build-essential
RUN apt-get -y install libreadline-dev libssl-dev zlib1g-dev
RUN apt-get -y install libssl-dev libssl1.0.0
RUN apt-get -y install curl
RUN apt-get -y install libpq-dev
RUN apt-get -y install libsqlite3-dev

RUN git clone https://github.com/sstephenson/rbenv.git /root/.rbenv
RUN git clone https://github.com/sstephenson/ruby-build.git /root/.rbenv/plugins/ruby-build

RUN ./root/.rbenv/plugins/ruby-build/install.sh
RUN echo 'eval "$(rbenv init -)"' >> /etc/profile.d/rbenv.sh

ENV PATH /root/.rbenv/bin:/root/.rbenv/shims:$PATH

RUN rbenv install 2.0.0-p0 
RUN rbenv global 2.0.0-p0 
RUN rbenv rehash

RUN echo 'gem: --no-rdoc --no-ri' >> /.gemrc

RUN bash -l -c "gem install bundler"
