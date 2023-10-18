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
## 🛠 Built With <a name="built-with"></a>

### Tech Stack <a name="tech-stack"></a>

<details>
  <ul>
    <li><a href="https://www.ruby-lang.org/en/">Ruby</a></li>
    <li><a href="https://rubyonrails.org/">Ruby on Rails</a></li>
  </ul>
</details>

<summary>
  <a href="https://github.com/benja27/Doctor-Appoinments---Front-End">
    <h3>Front End of Project</h3>
  </a>
</summary>


### Key Features <a name="key-features"></a>

- Data Model for users, doctors and appointments.
- Controllers with authentication for users, doctors and appointments.
- Endpoints for creating, logging in and signing out users.
- Endpoints for adding, updating, deleting and fetching doctors and appointments.
- Devise and JWT for Authentication
- Deployment
- API documentation

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
