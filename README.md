# Wetectives Front End Repo

![ruby](https://img.shields.io/badge/Ruby-2.7.4-red)
![rails](https://img.shields.io/badge/Rails-5.2.8.1-red)
![rspec](https://img.shields.io/badge/RSpec-3.11.0-green)
![bootstrap](https://img.shields.io/badge/Bootstrap-5.2.1-purple)
![openstreetmap](https://img.shields.io/badge/OpenStreetMap-_-blue)
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

The Wetective app can be found [on Heroku at the link here](https://wetective-fe.herokuapp.com).

## Background

The Wetectives frontend repository ingests the FBI's Most Wanted API, displays map data using OpenStreetMap and Leaflet.js, and connects to the [backend repository](https://github.com/wetective/be) via API endpoints in order to create new users and tips, as well as to retreive information about users or any tips they have submitted.

## User Experience

Once both the front and backends of the app are up and running, a user can navigate to the landing page of the app.
![landing_page](https://user-images.githubusercontent.com/95403666/191888142-78a1fb60-300e-4e3d-9248-d458068ef924.png)

The top navigation bar has a link to either login

<img width="480" alt="login" src="https://user-images.githubusercontent.com/95403666/191888266-20ded7a8-f7e9-4369-9c10-fd25cc5a9c1c.png">

or sign up to register to become a user.

![sign_up](https://user-images.githubusercontent.com/95403666/191888341-643c2771-d7ee-45f4-a2da-0e0e6a848a65.png)

For ease of access this app implements OAuthentication, allowing the user to register using their google account credentials.

![oauth](https://user-images.githubusercontent.com/95403666/191888509-8e8a6d4c-8328-41fc-8696-0effd618f004.png)

Once successfully logged in a user will then be directed to their user dashboard. If the user has submitted any tips for an active investigation then those tips will be displayed here.

<img width="953" alt="user_dashboard" src="https://user-images.githubusercontent.com/95403666/191889239-23d3b63a-051b-4503-9add-ebafc6a10f85.png">

Now that we are logged into our user account, the nav bar changes (as you can see in the above image). If we click on "Browse" link we are taken to the open investigation index page. This page displays all open investigations in the style of an image carousel.

![browse_investigation_index](https://user-images.githubusercontent.com/95403666/191889514-dbea211e-784e-4f86-9362-6a1975be554e.png)

Clicking on the "See More Details" button will take the user to the show page for that given investigation which displays the poster and pertinent information about the culprit.

![investigation_show](https://user-images.githubusercontent.com/95403666/191889743-7d781ff9-d67f-4841-9842-c7673062b7cc.png)

If a user clicks on the map button in the top navigation bar they will be redirected to the map feature of the app. This displays a map with interactable pins that denote the location for ever FBI field office listed in their API. Clicking on a pin will display a list of open investigations that are associated with that field office. Clicking on one of these investigations will take you to its show page.

<img width="1438" alt="map_with_pins" src="https://user-images.githubusercontent.com/95403666/191890848-3d2e237c-57dd-41f3-978b-18983f11f1fd.png">





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
