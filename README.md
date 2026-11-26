# Ticketing System

## Overview

A ticketing application built using Ruby on Rails and PostgreSQL. It allows users to create and view tickets.

## Technology Stack

- Ruby
- Ruby on Rails
- PostgreSQL
- HTML / ERB
- CSS / Bootstrap
- Git and GitHub

## Database Design

### Users
- name
- email

### Tickets
- title
- description
- status
- user_id

Relationship:
- A User has many Tickets.
- A Ticket belongs to a User.

## Setup Instructions

1. Clone the repository.
2. Navigate to the project directory.
3. Install dependencies.
4. Configure the database.
5. Create and migrate the database.
6. Start the Rails server.

## Running the Application

Run the Rails server and access the application through your browser.

## Features

- Ticket creation
- Ticket listing
- Ticket details
