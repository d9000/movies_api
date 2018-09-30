**List of endpoint and methods**

**POST**   /oauth/token
This endpoint provides authentication to registered users and return authtoken.
Parameters:
```
grant_type:password
username
password
```

**POST**   /oauth/revoke
To revoke a sesson.
Parameters:
```
access_token
```

**GET**    /oauth/token/info
To provide information about a specific token.
Parameters:
```
access_token
```

**GET**    /api/v1/people
To get a list of all people

**POST**   /api/v1/people
To add a new person
Parameters:
```
access_token
last_name
first_name
aliases
```

**GET**    /api/v1/people/:id
To get information about a specific person, all movies as an actor, all movies as director, all movies as producer
Parameters:
```
id
```

**PATCH/PUT**  /api/v1/people/:id
To update information about an specific person
Parameters:
```
id
access_token
last_name
first_name
aliases
```

**DELETE** /api/v1/people/:id
To delete a specific person
Parameters:
```
id
access_token
```
GET    /api/v1/movies
POST   /api/v1/movies
GET    /api/v1/movies/:id
PATCH  /api/v1/movies/:id
PUT    /api/v1/movies/:id
DELETE /api/v1/movies/:id
**GET**    /api/v1/people/:person_id/movies_as_actor

POST   /api/v1/people/:person_id/movies_as_actor
DELETE /api/v1/people/:person_id/movies_as_actor/:id
GET    /api/v1/people/:person_id/movies_as_director
POST   /api/v1/people/:person_id/movies_as_director
DELETE /api/v1/people/:person_id/movies_as_director/:id
GET    /api/v1/people/:person_id/movies_as_producer
POST   /api/v1/people/:person_id/movies_as_producer
DELETE /api/v1/people/:person_id/movies_as_producer/:id
GET    /api/v1/movies/:movie_id/casting
POST   /api/v1/movies/:movie_id/casting
DELETE /api/v1/movies/:movie_id/casting/:id
GET    /api/v1/movies/:movie_id/directors
POST   /api/v1/movies/:movie_id/directors
DELETE /api/v1/movies/:movie_id/directors/:id
GET    /api/v1/movies/:movie_id/producers
POST   /api/v1/movies/:movie_id/producers
DELETE /api/v1/movies/:movie_id/producers/:id

