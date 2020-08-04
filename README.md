[![<ORG_NAME>](https://circleci.com/gh/N-Dimitri/Livestorm-spec.svg?style=svg)](https://app.circleci.com/pipelines/github/N-Dimitri/Livestorm-spec)

# Livestorm Capybara/cucumber testing

Simple repo to test Livestorm SignIn/SignOut process

## Requirement

Capybara requires [Ruby 2.5.0](https://www.ruby-lang.org/fr/) or later. 

## Installation

Clone repo

```bash
git clone https://github.com/N-Dimitri/Livestorm-spec.git
cd Livestorm-spec
```
Install depencies

```bash
bundle install
```

## Configure

Configure environnement variables for local testing

```bash
#.env
EMAIL=test_account@email // your valid account email
PASSWORD=yourpassword // your password
HEADLESS=false // true or false for headless mode
```


## Usage

Run all tests

```bash
bundle exec cucumber
```
Run test with specific tags

```bash
bundle exec cucumber --tags @signIn
```

Done !


## CircleCI configuration
Add enviroment variables to Project Settings

```bash
#.env
EMAIL=test_account@email // your valid account email
PASSWORD=yourpassword // your password
HEADLESS=true // use headless mode 
```