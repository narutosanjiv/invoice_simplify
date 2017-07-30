# Interview Assignment

## Purpose
The purpose of this assignment is to evaluate your skills as a software engineer. It should take about 1 hour to complete this assignment, which is the typical length for most programming interviews, but you can spend as little or as much time as you need.

## Platform Requirements
- Ruby on Rails >= 4.x.x
- AngularJS >= 1.0.0
- PostgreSQL >= 9.0.0
- Git for source control

## Tasks
1. Implement user authentication using the Devise gem
    - user can sign up using email and password
    - user can sign in using email and password
2. Create an Invoice model
    - Attributes: number, amount (USD), date, to address, from address, notes
    - User should be able to login and create invoices
3. Create a Payment model
    - Attributes: amount (USD), date, invoice (reference)
    - User can record a payment against an invoice in the system
4. Use a public API provider to show "amount" in GBP when viewing an invoice
    - API provider: http://fixer.io/
    - Must be done in the backend, not the frontend.
5. Allows invoices to be accessible via a JSON API
    - A third party should be able to list and view a user's invoices.

## Evaluation Criteria
We will evaluate the code quality based on the following guidelines

1. Practice "The Rails Way" - i.e. using rails conventions and best practices
2. Good coding style: formatting, proper naming of variables and functions, etc...
3. Knowledge of the rails ecosytem: proper use available gems, tools, etc...
4. Logical database design
5. Adequate understanding of security best practices
6. The program runs... :)

## Bonus Points
These things are not required, and will not count against you if you don't do them, but will be a positive. If you do attempt any of these, you should do it correctly...

- Using an HTML/CSS framework
- Implementing authentication for the API service
- Includes installation instructions
- Leaving good git commit messages and proper use of source control
- Deploying the app to a platform like Heroku so we can see it in action