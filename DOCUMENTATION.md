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

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
}
```

Request **body**: a JSON object

Example of request body:
```
{
	"email": "cj@gmail.com"
	"password": "password"
}
```

Example of request response header (to get the token)
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
      "message": "Login successful."
  	},
  	"data": {
      "id": 1,
      "email": "cj@gmail.com",
      "name": "Clinton Younge"
  	}
}
```

**/logout/**

This endpoint allows a logged-in user to log out and invalidate their authentication token.

**Endpoint URL:**  
`DELETE` https://rails-j4lh.onrender.com/logout

**Allowed actions:**
- **DELETE** to log out the currently authenticated user.

**Request Headers:**
```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token'
}
```

Example of response body:
```
{
  "status": {
    "code": 200,
    "message": "Logout successful."
  }
}
```

#### **/doctors/**

- **URL**: https://rails-j4lh.onrender.com/doctors

**Allowed actions:**

- **GET** to retrieve a list of doctors or a specific doctor.

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of response body: (an array of doctors)
```
[
  {
    "id": 1,
    "name": "Dr. John Doe",
    "specialtization": "Cardiologist",
    "consultation_fee": 25,
    "prescription_fee": 20,
    "user_id": 20
  },
  // Additional doctors
]
```

- **POST** to add a new doctor to the list of doctors.

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of a request body:
```
{
	"name": "Dr. John Doe",
  "specialtization": "Cardiologist",
	"consultation_fee": 25,
  "prescription_fee": 20,
	"photo": "url-for-a-photo",
	"user_id": 20
}
```

Example of a response body:

```
{
	"id": "generated id",
	"name": "Clinton Younge",
	"specialization": "Programming",
	"consultation_fee": 25,
  "prescription_fee": 20,
	"photo": "url-for-a-photo",
	"user_id": 20
}
```

- **DELETE** to delete a doctor from the list of doctors.

URL parameters:

- **doctorId**: unique identifier of the doctor (mandatory)

Example URL: https://rails-j4lh.onrender.com/doctors/{doctorId}

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of Response Body:

```
{
  "message": "Doctor with ID {doctorId} has been deleted successfully."
}	
```

#### **/appointments/**

- **URL**: https://rails-j4lh.onrender.com/appointments

**Allowed actions:**

- **GET** to retrieve a list of appointments or a specific appointment.

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of response body: (an array of appointments)
```
[
  {
    "id": "generated id",
    "date": "2023-10-20",
    "location": "GT"
    "user_id": 20,
    "doctor_id" 21
  },
  // Additional appointments
]
```

- **POST** to add a new appointment to the list of appointments.

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of a request body:
```
{
	"location": "GT",
  "date": "2023-10-20",
  "user_id": 20,
  "doctor_id": 21,
}
```

Example of a response body:

```
{
	"id": "generated id",
	"location": "GT",
  "date": "2023-10-20",
  "user_id": 20,
  "doctor_id": 21
}
```	

- **DELETE** to delete a doctor from the list of doctors.

URL parameters:

- **appointmentId**: unique identifier of the appointment (mandatory)

Example URL: https://rails-j4lh.onrender.com/appointments/{appointmentId}

**Request Headers:**

```
headers: {
  'Content-Type': 'application/json',
  'Authorization': 'Bearer your-authentication-token-which-could-be-stored-locally-or-in-session-storage'
}
```

Example of Response Body:

```
{
  "message": "Appointment with ID {appointmentId} has been deleted successfully."
}	
```