# README

## Setup Instructions:

Requirements:
- Ruby on Rails
- PostgreSQL

## Setting up Rails:

All the Ruby and Rails requirements are bundled together and can be downloaded here http://railsinstaller.org/en

Download and install the package. This package will setup git, ruby and rails on your computer. 

Once the installation is completed, the installer automatically opens the rails environment configuration command prompt. Enter your name and email for the git configuration.

To setup Bundler, run this command:
```gem install bundler```

This short video can be used as a guide to setup Rails on Windows https://www.youtube.com/watch?v=OHgXELONyTQ

## Setting up PostgreSQL:

Choose your operating system and download PostgreSQL from here https://www.postgresql.org/download/

This video can be used a reference to setup PostgreSQL on Windows https://www.youtube.com/watch?v=e1MwsT5FJRQ

Enter the username and password in the database.yml file in the project folder. This connects the application to the database.

Open the command prompt and go into the project folder. 

Run the following command to install all the dependencies:
```bundle install```

To setup the database, run the following command:

```rake db:setup```

To make the database migrations:

```rake db:migrate```

Once the database is setup and the migrations are complete, you can run the application by entering

```rails s```

The application will now be running on localhost:3000
Navigate to localhost:3000 in your browser to use the product.

## Additional Notes:

New trips can be created through the index page. The option to edit and delete a trip is also provided.

Days can be added to each trip, through the trip page. The option to edit and delete days are available on the trip page. 

The application utilizes the concept of nested attributes in Rails.

"Days" are a child attribute of "Trips". Which means that deleting a parent "Trip" will delete the associated "Days" as well. 
