FROM registry.gitlab.com/mtnygard/rails-image:latest

# App
RUN mkdir -p /app
WORKDIR /app
ADD . /app
RUN bundle install
ENTRYPOINT [ "/bin/bash", "/app/script/migrate-and-run.sh" ]
