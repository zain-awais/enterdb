# Use the official Ruby 3.0.0 image as the base image
FROM ruby:3.0.0

# Install system dependencies
RUN apt-get update && apt-get install -y \
    build-essential \
    libpq-dev \
    nodejs

# Set the working directory in the container
WORKDIR /app

# Copy the Gemfile and Gemfile.lock to the container
COPY Gemfile Gemfile.lock ./

# Install gems
RUN bundle install

# Copy the Rails application code to the container
COPY . .

# Precompile assets
RUN bundle exec rails assets:precompile

# Expose port 3000 for the Rails application
EXPOSE 3000

# Start the Rails server
CMD ["bundle", "exec", "rails", "server", "-b", "0.0.0.0"]
