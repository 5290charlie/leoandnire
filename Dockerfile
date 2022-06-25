FROM ruby:2.5.8

ENV BASE_DIR /site

RUN gem install jekyll && \
    mkdir -p ${BASE_DIR}

WORKDIR ${BASE_DIR}

# COPY Gemfile Gemfile.lock ./

# RUN bundle install

COPY . .

CMD [ "jekyll", "serve", "--host=0.0.0.0" ]
