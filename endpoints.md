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
To revoke a session.  
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
To get information about a specific person, all movies as an actor, all movies as director, all movies as producer.  
Parameters:
```
id
```

**PATCH/PUT**  /api/v1/people/:id  
To update information about a specific person.  
Parameters:
```
id
access_token
last_name
first_name
aliases
```

**DELETE** /api/v1/people/:id  
To delete a specific person.  
Parameters:
```
id
access_token
```

**GET**    /api/v1/movies  
To get a list of all movies  

**POST**   /api/v1/movies  
To add a new movie.  
Parameters:
```
access_token
title  
release_year
```

**GET**    /api/v1/movies/:id  
To get information about a specific movie, its actor or actress, its directors, its producers.  
Parameters:
```
id
```

**PATCH/PUT**  /api/v1/movies/:id  
To update information about a specific movie.  
Parameters:
```
access_token
id
title  
release_year
```

**DELETE** /api/v1/movies/:id  
To delete a specific movie.  
Parameters:
```
access_token
id
```

**GET** /api/v1/people/:person_id/movies_as_actor  
To get a list of movies where a person has actor/actress role.  
Parameters:
```
person_id
```

**POST**   /api/v1/people/:person_id/movies_as_actor  
To add a person to a movie as actor/actress role.  
Parameters:
```
person_id
access_token
id
```

**DELETE** /api/v1/people/:person_id/movies_as_actor/:id  
To remove a person from a movie as an actor/actress.  
Parameters:
```
person_id
access_token
id
```

**GET**    /api/v1/people/:person_id/movies_as_director  
To get a list of movies where a person has director role.  
Parameters:
```
person_id
```

**POST**   /api/v1/people/:person_id/movies_as_director  
To add a person to a movie as director role.  
Parameters:
```
person_id
access_token
id
```

**DELETE** /api/v1/people/:person_id/movies_as_director/:id  
To remove a person from a movie as a director.  
Parameters:
```
person_id
access_token
id
```

**GET**    /api/v1/people/:person_id/movies_as_producer  
To get a list of movies where a person has producer role.  
Parameters:
```
person_id
```

**POST**   /api/v1/people/:person_id/movies_as_producer  
To add a person to a movie as producer role.  
Parameters:
```
person_id
access_token
id
```

**DELETE** /api/v1/people/:person_id/movies_as_producer/:id  
To remove a person from a movie as a producer.  
Parameters:
```
person_id
access_token
id
```

**GET**    /api/v1/movies/:movie_id/casting  
To get all actors and actress from a movie.  
Parameters:
```
movie_id
```

**POST**   /api/v1/movies/:movie_id/casting  
To add an actor or actress to a movie.
Parameters:
```
movie_id
access_token
id
```

**DELETE** /api/v1/movies/:movie_id/casting/:id  
To remove an actor or actress from a movie.  
Parameters:
```
movie_id
access_token
id
```

**GET**    /api/v1/movies/:movie_id/directors  
To get all directors from a movie.  
Parameters:
```
movie_id
```

**POST**   /api/v1/movies/:movie_id/directors  
To add a director to a movie.
Parameters:
```
movie_id
access_token
id
```

**DELETE** /api/v1/movies/:movie_id/directors/:id  
To remove a director from a movie.  
Parameters:
```
movie_id
access_token
id
```

**GET**    /api/v1/movies/:movie_id/producers  
To get all producers from a movie.  
Parameters:
```
movie_id
```

**POST**   /api/v1/movies/:movie_id/producers  
To add a producer to a movie.
Parameters:
```
movie_id
access_token
id
```

**DELETE** /api/v1/movies/:movie_id/producers/:id  
To remove a producer from a movie.  
Parameters:
```
movie_id
access_token
id
```
