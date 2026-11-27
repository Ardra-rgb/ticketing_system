# Ticketing System

## Overview

A ticketing application built using Ruby on Rails and PostgreSQL. The application currently allows users to create tickets and view the list of tickets.

## Technology Stack

- Ruby
- Ruby on Rails
- PostgreSQL
- HTML / ERB
- CSS
- Git and GitHub

## Database Design

### Users

- `id`
- `name`
- `email`

### Tickets

- `id`
- `title`
- `description`
- `status`
- `priority`
- `user_id`

### Relationships

- A User has many Tickets.
- A Ticket belongs to a User.

## Setup Instructions

1. Clone the repository.
2. Navigate to the project directory.
3. Install dependencies.
4. Create the database.
5. Run database migrations.
6. Start the Rails server.

### Commands

```bash
git clone https://github.com/Ardra-rgb/ticketing_system.git
cd ticketing_system
bundle install
bin/rails db:create
bin/rails db:migrate
bin/rails server
```

## Running the Application

Start the Rails server and access the application through your browser:

`http://localhost:3000/tickets`

## Features

- Ticket creation
- Ticket listing
- Ticket title and description validation
- Priority selection
- Automatic initial ticket status
- Database persistence
- User-ticket association
