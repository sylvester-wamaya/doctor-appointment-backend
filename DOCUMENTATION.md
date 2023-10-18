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