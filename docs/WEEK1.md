# Ticketing System

## Week 1 – Requirements, Design and Setup

**Project:** Ticketing Application  
**Week:** November 23–27, 2026

---

## 1. Project Overview

The Ticketing System is a web application designed to help users report, assign, track and resolve issues.

The application supports two roles: Administrator and Regular User. Regular users can create tickets and track tickets relevant to them, while administrators can oversee all tickets and assign issues to appropriate users.

The system follows a defined ticket workflow:

Open → In Progress → Resolved → Closed

---

## 2. Proposed Technology Stack

| Component | Technology | Reason |
|---|---|---|
| Programming Language | Ruby 4.0.6 | Provides readable syntax and object-oriented programming capabilities. |
| Backend Framework | Ruby on Rails 8.1.4.1 | Provides MVC architecture, routing, ORM and rapid application development capabilities. |
| Database | PostgreSQL 16.15 | Supports relational data, foreign key constraints and transactional consistency. |
| Frontend | HTML, ERB, CSS | Used to build and render the application's user interface. |
| Version Control | Git | Tracks changes to the source code. |
| Repository Hosting | GitHub | Used for remote storage and collaboration. |

The above technology stack is proposed for the project.

---

## 3. User Stories and Acceptance Criteria

### US-01: User Authentication

**User Story:**

As a user, I want to log in to the application so that I can securely access the ticketing system.

**Acceptance Criteria:**

- Users must be able to log in using their credentials.
- Only authenticated users should be able to access protected pages.
- Invalid credentials must not allow access.
- Users must be able to log out.
- Logging out must terminate the user's session.

### US-02: Create a Ticket

**User Story:**

As a regular user, I want to create a ticket with a title, description and priority so that I can report an issue.

**Acceptance Criteria:**

- Users must be able to enter a ticket title.
- Users must be able to enter a ticket description.
- Users must be able to select a priority: Low, Medium or High.
- The ticket must be associated with its creator.
- Newly created tickets must have the status Open.
- Tickets must be stored in the database.
- A ticket cannot be created without a title or description.

### US-03: View Tickets

**User Story:**

As a regular user, I want to view tickets that I created or have been assigned to so that I can track relevant issues.

**Acceptance Criteria:**

- Regular users can view tickets they created.
- Regular users can view tickets assigned to them.
- Users must not be able to access unrelated tickets.
- Ticket listings must display relevant ticket information.
- Users must be able to view ticket details.

### US-04: Assign and Reassign Tickets

**User Story:**

As an administrator, I want to assign and reassign tickets to users so that issues can be handled by the appropriate people.

**Acceptance Criteria:**

- Administrators can view all tickets.
- Administrators can assign tickets to users.
- Administrators can reassign tickets.
- The assigned user must be stored in the ticket record.
- The assigned user must be visible in the ticket details.

### US-05: Update Ticket Status

**User Story:**

As an assigned user, I want to update the status of a ticket so that others can track the progress of the issue.

**Acceptance Criteria:**

- Tickets must follow the defined workflow.
- Assigned users can move tickets from Open to In Progress.
- Assigned users can move tickets from In Progress to Resolved.
- Invalid status transitions must not be allowed.

### US-06: Close a Ticket

**User Story:**

As a ticket creator or administrator, I want to close a resolved ticket so that the issue can be marked as completed.

**Acceptance Criteria:**

- Only the ticket creator or an administrator can close a resolved ticket.
- Only resolved tickets can be closed.
- The status must change to Closed after a valid action.

### US-07: Administrator Ticket Management

**User Story:**

As an administrator, I want to view all tickets so that I can oversee and manage the entire ticketing system.

**Acceptance Criteria:**

- Administrators can view all tickets in the system.
- Administrators can view ticket details.
- Administrators can assign and reassign tickets.
- Administrators can manage tickets according to the defined workflow and permissions.

---

## 4. Ticket Workflow

The application follows the workflow below:

1. **Open** – The issue has been reported.
2. **In Progress** – The assigned user is working on the issue.
3. **Resolved** – The issue has been resolved.
4. **Closed** – The resolved ticket has been formally closed.

---

## 5. Database Design

### 5.1 Users Table

| Column | Data Type | Description |
|---|---|---|
| id | Integer | Primary key and unique user identifier |
| name | String | Name of the user |
| email | String | Email address of the user |
| role | String | Administrator or regular user |
| created_at | Timestamp | Record creation time |
| updated_at | Timestamp | Record modification time |

### 5.2 Tickets Table

| Column | Data Type | Description |
|---|---|---|
| id | Integer | Primary key and unique ticket identifier |
| title | String | Title of the ticket |
| description | Text | Detailed description of the issue |
| priority | String | Low, Medium or High |
| status | String | Open, In Progress, Resolved or Closed |
| user_id | Integer | Foreign key referencing the ticket creator |
| assigned_to_id | Integer | Foreign key referencing the assigned user |
| created_at | Timestamp | Ticket creation time |
| updated_at | Timestamp | Ticket modification time |

---

## 6. Database Relationships

- One user can create multiple tickets.
- Each ticket belongs to one creator.
- One user can be assigned multiple tickets.
- Each ticket may be assigned to one user.
- A ticket has a creator and may have a separate assigned user.

### Relationship Diagram

```mermaid
erDiagram
    USERS ||--o{ TICKETS : creates
    USERS ||--o{ TICKETS : assigned_to

    USERS {
        integer id PK
        string name
        string email
        string role
    }

    TICKETS {
        integer id PK
        string title
        text description
        string priority
        string status
        integer user_id FK
        integer assigned_to_id FK
    }