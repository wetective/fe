# Wetectives Back End Repo

![ruby](https://img.shields.io/badge/Ruby-2.7.4-red)
![rails](https://img.shields.io/badge/Rails-5.2.8.1-red)
![rspec](https://img.shields.io/badge/RSpec-3.11.0-green)
![contributors](https://img.shields.io/badge/Contributors-5-yellow)

## Table of Contents
- [Wetectives Back End Repo](#wetectives-back-end-repo)
  - [App](#app)
  - [Background](#background)
  - [User Experience](#user-experience)
  - [Endpoints](#endpoints)
  - [Installation](#installation)
  - [Contributors](#contributors)

## App

Wetectives app can be found on [Heroku](https://wetective-fe.herokuapp.com).

## Background

The Wetectives frontend repository ingests the FBI's Most Wanted API, displays map data using OpenStreetMap and Leaflet.js, and connects to the [backend repository](https://github.com/wetective/be) via API endpoints in order to create new users and tips, as well as to retreive information about users or any tips they have submitted.

## User Experience

![__text__](__link___)

## Endpoints

- Create a new user
```shell
POST /api/v1/users/register

  "data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "test user",
      "email": "user@email.com",
    }
  }
```

- Search users by id
```shell
GET http://localhost:3000/api/v1/users/find?id={{id}}

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```

- Create a new tip
```shell
GET http://localhost:3000/api/v1/users/:id/tips/new

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```

- Retrieve a user's tips
```shell
GET http://localhost:3000/api/v1/users/:id/tips

"data": {
    "type": "user",
    "id": "1",
    "attributes": {
      "name": "Some person",
      "email": "sample@email.com",
    }
  }
```

## Installation

Note: You must also install and run the [Wetectives BE app](https://github.com/wetective/be) for full functionality.

1. Clone this repository: On your local machine, open a terminal session and enter the following commands for SSH or HTTPS to clone the repo.

- Using SSH key <br>
```shell
$ git clone git@github.com:wetective/fe.git
```

- Using HTTPS <br>
```shell
$ git clone https://github.com/wetective/fe.git
```

- Once cloned, you'll have a new local copy in the directory you ran the clone command in.
  
2. Change to the project directory: In terminal, use `$cd` to navigate to the project directory.
```shell
$ cd be
```
  
3. Install required Gems utilizing Bundler: <br>
- In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.
```shell
$ gem install bundler
```
  
- If Bundler is already installed or after it has been installed, run the following command.
```shell
$ bundle install
```
  
4. Database Migration<br>
- Before using the web application you will need to setup your databases locally by running the following command
```shell
$ rails db:{drop,create,migrate,seed}
```
  
5. Startup and Access<br>
- Finally, in order to use the web app you will have to start the server locally and access the app through a web browser.

```shell
$ rails s
```
  
6. You will need to run the [fe](https://github.com/wetective/be) server simultaneously in order for the two parts to be able to talk to each other.
```shell
$ rails s -p 4999
```

- Open web browser and visit link
    http://localhost:3000 
    
<br>
<br>

## Contributors
|  | |
| --- | --- |
| Rue Zheng | [GitHub](https://github.com/ruezheng) &#124; [LinkedIn](https://www.linkedin.com/in/ruezheng/) |
| Brenna Stuart | [GitHub](https://github.com/brennacodes) &#124; [LinkedIn](https://www.linkedin.com/in/brennastuart/) |
| Cory Bethune |[GitHub](https://github.com/CoryBethune) &#124; [LinkedIn](https://www.linkedin.com/in/cory-b-711b79178/) |
| Jared Hardinger | [GitHub](https://github.com/jaredhardinger) &#124; [LinkedIn](https://www.linkedin.com/in/hardinger/) |
| Blake Saylor | [GitHub](https://github.com/blakesaylor) &#124; [LinkedIn](linkedin.com/in/blake-saylor/) |
