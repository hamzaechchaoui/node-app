#The first thing is to start with the base image (is the thing that will provide us the dependencies that we need)
# Here we need node version 14
# So it will install nodejs into our container
FROM node:14

# Create directory named app inside docker
WORKDIR /app

# We need to copy all the dependencies that are in package.json into the container
# When we add . alone it means copy it into the container
COPY package.json .

# Install the dependencies that are in package.json
# npm install is recognized because we already installed nodejs 
RUN npm install

# Copy all the files into container
COPY . .

# Pass an env variable to the container
# ENV PORT=4000
# Define the port, just for documentation
EXPOSE $PORT

# RUN the application
CMD [ "npm", "run", "start-dev" ]
