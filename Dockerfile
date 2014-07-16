# http://docs.docker.com/reference/builder/

# FROM - what is the base image for this Dockerfile?
FROM ubuntu:14.04

# MAINTAINER - who owns this Dockerfile?
MAINTAINER "KYle Rocks"

# Install Ruby
RUN apt-get update 
RUN apt-get install -y ruby 
RUN apt-get install -y build-essential 
RUN apt-get install -y ruby-dev

# Install the 'httparty' gem
RUN gem install httparty

# Add the application
ADD telephone.rb /app/telephone.rb

# Add a CMD
CMD ["ruby", "/app/telephone.rb"]