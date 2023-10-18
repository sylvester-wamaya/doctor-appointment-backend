# Doctors Appointments API Documentation

This is the documentation of the Doctors Appointments API service we created for this capstone project.

## **Base URL**
https://rails-j4lh.onrender.com

## **Endpoints**

**/signup/**

This endpoint allows new users to signup and obtain an authentication token for accessing resources.

**Endpoint URL:**  
`POST` https://rails-j4lh.onrender.com/signup

Allowed actions:
- **POST** to create a new user.

Request **header**:

```
headers: {
  'Content-Type': 'application/json',
}
```

Request **body**: a JSON object

Example of request body:
```
{
	"name": "Clinton Younge"
	"email": "cj@gmail.com"
	"password": "password"
}
```

Example of response header (to get the token)
```
{
	headers: {
		"Authorization": "Bearer ey...a-bunch-of-random-letters-and-numbers-way-longer-than-this...4dfgdfg"
	}
}
```

To get the authentication token from the response header-
```
const token = response.headers.get('Authorization')
```

Example of response body:
```
{
  "status": {
    "code": 200,
    "message": "Signed up successfully."
  },
  "data": {
    "id": 1,
    "email": "cj@gmail.com",
    "name": "Clinton Younge"
  }
}
```

**/login/**

This endpoint allows an existing user to log in and obtain an authentication token for accessing secured resources.

**Endpoint URL:**  
`POST` https://rails-j4lh.onrender.com/login

**Allowed actions:**
- **POST** to log in an existing user.