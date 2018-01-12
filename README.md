# CampON

**Ever tried to plan a trip only to have it descend into chaos? Yeah, us too.**

CampON is a project about bringing those who love to camp together while keeping things organized. Designed with Ontario Parks camping in mind, this web application allows you coordinate and make sure your next trip is the best one yet! Find the perfect Ontario park, invite your friends to a trip, see who's bringing what, and get camping!

## Getting Started
CampOn Rails app (version 5.1.3)
Ruby version 2.4.1

### Prerequisites
#### Postgres
Install Postgres at https://www.postgresql.org/

#### Sendgrid
campON uses Sendgrid to send email invites to trip members.  You will need your own sendgrid API key, username, and password for email invites.  
https://sendgrid.com/

#### Google API
Maps on park pages rely on Google.  You will need your own Google API key to display maps.
https://developers.google.com/maps/documentation/embed/get-api-key

### Installing
Clone repository and cd into folder.  Run the following commands to install dependencies:

```
bundle install
```

```
nmp install
```

#### Database setup
Make sure Postgres is running!

1. Create databases
```
rails db: create
```
2. Run migrations
```
rails db: migrate
```
3. Seed the database with park information
```
rails db: seed
```

## Testing

Testing suite is run with
```
rake
```

Guard is configured.  Run
```
bundle exec guard
```
to have Guard automatically run tests when files are saved.

## Deployment

App is currently deployed on Heroku:

link

## Authors

Mary Franks
https://github.com/maryfranks

Nadia Ivanova
https://github.com/nadiaivannova

Martine Gagne
https://github.com/martinegagne

Abby Wilson
https://github.com/abby-wilson

## Acknowledgements
The information for Ontario Parks comes from the Ontario Parks website:
http://www.ontarioparks.com/

## Contributing

Think our app is cool?  Want to make it better?  Reach out and let us know what you can do!
