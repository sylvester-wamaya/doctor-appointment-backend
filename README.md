<a name="readme-top"></a>

# 📗 Table of Contents

- [📖 About the Project](#about-project)
  - [🛠 Built With](#built-with)
    - [Tech Stack](#tech-stack)
  - [Key Features](#key-features)
- [💻 Getting Started](#getting-started)
  - [Setup](#setup)
  - [Prerequisites](#prerequisites)
  - [Install](#install)
- [Run tests](#run-tests)
- [Documentation](#documentation)
- [👥 Authors](#authors)
- [🔭 Future Features](#future-features)
- [🤝 Contributing](#contributing)
- [⭐️ Show your support](#support)
- [🙏 Acknowledgements](#acknowledgements)
- [📝 License](#license)


# 📖 Doctor Appointment Backend <a name="about-project"></a>

**Doctor Appointment Backend** Is a ruby on rails backend for a react/redux front end app. This deployed app serves the endpoints for users to signup, login, logout, create a doctor, fetch all doctors, remove a doctor, create an appointment, fetch all appointments, and delete an appointment, all with authentication.

##ERD
![image](https://github.com/sylvester-wamaya/doctor-appointment-backend/assets/106195171/62b51198-efd8-4252-b773-018c01e62e51)

## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

- [Link to Front End of Project](https://github.com/benja27/Doctor-Appoinments---Front-End)
</summary>


### Key Features <a name="key-features"></a>

- Data Model for users, doctors and appointments.
- Controllers with authentication for users, doctors and appointments.
- Endpoints for creating, logging in and signing out users.
- Endpoints for adding, updating, deleting and fetching doctors and appointments.
- Devise and JWT for Authentication
- Deployment
- API documentation

## Kanban
**Our team has 4 members**
- Kanban before
![kanban before](https://github.com/sylvester-wamaya/doctor-appointment-backend/assets/118696200/843a9a37-8813-44bb-a4f1-472eb34b23cc)
- Kanban After
![image](https://github.com/sylvester-wamaya/doctor-appointment-backend/assets/118696200/1cfc23f7-3ff6-4562-9b9a-19c4cc6f9143)


## Getting Started

To get a local copy up and running follow these simple example steps.

### Prerequisites

> You need the following tools be installed in your computer:

> - [Git](https://www.linode.com/docs/guides/how-to-install-git-on-linux-mac-and-windows/)
> - [Ruby](https://github.com/microverseinc/curriculum-ruby/blob/main/simple-ruby/articles/ruby_installation_instructions.md)
> - [Ruby on Rails](https://rubyonrails.org/)
> - IDE
> - Etc

### Setup

Clone this repository to your desired folder:

```sh
  cd my-prefered-folder
  
  git clone https://github.com/sylvester-wamaya/doctor-appointment-backend.git

```

### Install

Install this project with:

```sh
  cd doctor-appointment-backend
  
  bundle install
```

### Update database.yml file with database credentials
- Navigate to config/database.yml
- Update the user and password to match your postgresql user and password.

## Generate Devise secret Key
- Remove config/master.key and config/credentials.yml.enc if they exist.
- Run `rails secret`.  Copy the key.
- Run EDITOR="code --wait" bin/rails credentials:edit
- In the editor that opens, add this:  devise_jwt_secret_key: <the key you copied in step 2>
- Save the file and close the editor.  New master.key, credentials.yml.enc files will be generated, and the key will be stored in `Rails.application.credentials.devise_jwt_secret_key`.

### Create database and migrate
Run the following code-

```sh
  rails db:create
  rails db:migrate
```

### Run server
```sh
  rails s
```

### Run tests

To run tests, run the following command:

Run the `rspec` command in your console to run the tests.


### Documentation

- The documentation for the API can be found [here](https://clintonyounge.github.io/Doctors-Appointments-API-Documentation/)

## 👥 Authors <a name="authors"></a>

👤 **Clinton Younge**

- GitHub: [@ClintonYounge](https://github.com/ClintonYounge)
- Linkedin: [@clinton-younge](https://www.linkedin.com/in/clinton-younge-83386a25a/)
- Twitter: [@YoungeCjay](https://twitter.com/YoungeCjay)

👤 **Sylvester Wamaya**

- GitHub: [@githubhandle](https://github.com/sylvester-wamaya)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/sylvester-wamaya-b11a93112/)

👤 **Mariano Benjamin**

- GitHub: [@githubhandle](https://github.com/benja27)
- LinkedIn: [LinkedIn](http://www.linkedin.com/in/BenjaMendez2699)

👤 **Adeyemi Olusola**

- GitHub: [@emarkees](https://github.com/emarkees)
- LinkedIn: [LinkedIn](http://www.linkedin.com/in/adeyemi-olusola)

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🔭 Future Features <a name="future-features"></a>
- Cancancan for admin, user and guest authorization.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🤝 Contributing <a name="contributing"></a>

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/sylvester-wamaya/doctor-appointment-backend/issues).

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## ⭐️ Show your support <a name="support"></a>

If you like this project feel free to leave a star to show your support.

<p align="right">(<a href="#readme-top">back to top</a>)</p>

## 🙏 Acknowledgments <a name="acknowledgements"></a>

We would like to give thanks to Microverse for providing an environment that makes us strive to grow as developers.

<p align="right">(<a href="#readme-top">back to top</a>)</p>


## 📝 License <a name="license"></a>

This project is [License](./MIT.md) licensed.

<p align="right">(<a href="#readme-top">back to top</a>)</p>
