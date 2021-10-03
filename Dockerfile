# Start from a small, trusted base image with he version pinned down

FROM ruby:3.0-alpine AS base


RUN apk --no-cach add curl

# This stage  will be responsible for installing gems
FROM base AS dependencies

# Install system dependencies required to build some Ruby gems 
RUN apk add --update build-base

COPY Gemfile Gemfile.lock ./

# We're back at the base stage
FROM base

# Create a non-root use to run the app and own app-specific files
RUN adduser -D app

# Switch to this user
USER app

# We'll install the app in this directory 
WORKDIR /home/app

# Copy over gems from the dependencies stage
COPY --from=dependencies /usr/local/bundle/ usr/local/bundle/

# Finally, copy over the code
COPY --chown=app . ./

EXPOSE 80

# Launch the server
CMD ["ruby","/home/app/http_server.rb"]