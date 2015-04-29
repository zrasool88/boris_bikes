[![Code Climate](https://codeclimate.com/github/zrasool88/boris_bikes/badges/gpa.svg)](https://codeclimate.com/github/zrasool88/boris_bikes) [![Test Coverage](https://codeclimate.com/github/zrasool88/boris_bikes/badges/coverage.svg)](https://codeclimate.com/github/zrasool88/boris_bikes) [![Build Status](https://travis-ci.org/zrasool88/boris_bikes.svg?branch=master)](https://travis-ci.org/zrasool88/boris_bikes) [![Dependency Status](https://gemnasium.com/zrasool88/boris_bikes.svg)](https://gemnasium.com/zrasool88/boris_bikes)

**Week 1 @ Makers Academy**

# Introduction to Object Oriented Programming and Ruby


## The Project

Designing a very simple clone of London's Boris Bikes program.

### Classes
* **Bike**: Can be broken and fixed.
* **Docking Station**: Releases working bike to user, accepts returned bike from user, prevents user from releasing broken bike, releases broken bike to van, accepts fixed bike from van, and has a limited capacity of bikes it can hold.
* **Van**: takes broken bike from station, drops the broken bike to garage, takes fixed bike from garage, drops fixed bike to station, and has a limited capacity.
* **Garage**: accepts broken bikes from the van, fixes broken bike, returns fixed bike to van, and has a limited capacity.

###To-Do
* Implement Van class
* Implement Garage class

## What we learnt
* Introduced to CRC (Class-Responsibility-Collaboration) Card
* Started coding in Ruby
* Testing using Rspec
* Mocking using doubles in Rspec
* Refactoring Code
* DRY Principle

## Technologies Used
* Ruby 2.1.2
* Rspec
* IRB

## How to Use
1. Clone the repository
2. Change into the directory
3. Run IRB
4. Load runner.rb file
5. Bike away
