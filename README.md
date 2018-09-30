# Movies shop Apis  

The list of all endpoints and methods: [endpoints.md](endpoints.md)  

Here is a description of all frameworks/gems used in the current app  

```ruby
gem 'active_model_serializers'
```  
Active Model Serializers is a gem used to serialize model in the app. I choose over jbuilder or fast_jsonapi because it is easy to customize.  

```ruby
gem 'bcrypt'
```
Bcrypt is used to provide password digest to the User model. Bcrypt is an encryption algorithm for password hashing.  

```ruby
gem 'doorkeeper'
```  
Doorkeeper gem is a gem for provide access token authorization to resources in the API. 

```ruby
gem 'rubocop'
```
Rubocop gem, is a Ruby code analyzer and formatter for implementing best practices. Also used for code linting.

# Demo

The application is deployed in Heroku at: 

To run the demo you can use the following credentials:  

username: me@example.com
password: 12345678