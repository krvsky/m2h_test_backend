
Task at Hand - ONLY BACKEND / FULL-STACK POSITIONS

To serve the frontend, you will build the backend for that with an API.


- Set up the models, controllers, and API
- Database: SQLite or Postgres - please provide a seed file
- Send SQS/email message on create — it could be just kinda mock
- Validate uniqueness of `Name` of `category` and `vertical` across both models (if there is a category with name "TEST" then a vertical with name "TEST" can't be valid)

As you can see in the JSON folder, categories have a parent called vertical and courses have a parent called categories.

Your task is to build a simple RESTful API with Ruby / Ruby on Rails that will be consumed by external frontend applications.

Challenges you will face

- Ensuring that API can be scaled and is well-tested, abstracting business logic in reusable concerns or services
