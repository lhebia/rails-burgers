# 🍔 README 

A pet project burger API created by yours truly using Ruby on Rails. 

Burgers can be pulled with `GET` request from: 
[https://thawing-cliffs-09556.herokuapp.com/api/v1/burgers](https://thawing-cliffs-09556.herokuapp.com/api/v1/burgers)

### Things you may want to know:

#### Ruby version
- `3.0.1`

#### Rails version
- `6.1.3.2`

#### Deployment instructions
- One initial deploy only: `$ heroku create`
- Push changes from master: `$ git push heroku master: main`
- With error "Your bundle only supports platfofms...", run: `$ bundle lock --add-platform x86_64-linux`
- Commit changes
- Migrate DB: `$ heroku run rake db:migrate`
- Ensure you have a running dyno: `$ heroku ps:scale web=1`
- Open on browser: `% heroku open`
