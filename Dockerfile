# using Node v10
FROM node:10

# Create app directory
WORKDIR /usr/src/lafs

# Install app dependencies
COPY package*.json ./

RUN npm install -g @angular/cli
RUN npm install

# Bundle app source
COPY . .

# Expose port 3000 outside container
EXPOSE 3000

# Command used to start application

CMD ["npm", "run", "start"]

