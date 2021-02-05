# TestProject
The project is for demo/test/educational purposes only. Used one of the possible project structures.

## Project Structure
The project is using clean-swift architecture.

- Features - Here will be features and/or screens, that mini squads will be working on
- Services - API or other external services
- UIComponents - Shared library of UI Components, that will be used across the app

## Scalability
The project structure will be good for medium sized projects. Multiple small squads can contribute to that.

In case of need of large scale project, that more than 3-4 scrum teams will be working on it, I would suggest to have multi-package structure in mono-repo.

### Example structure of multi-package project

- Packages - Here will be miniapps. Also cross cutting horizontal functionalities
  - Home Screen
  - Cart and Checkout
  - Flyers
  - Authentication
  - Cart Services
  - Core UI Components
  - Deep Links
- APIs - For cross miniapp communications and for network API clients
  - Cart API
  - User State API
  - Service clients
- Platform - Core App code to "glue" things together
  - App shell
  - Navigation handler
  - Shared state management
  - Packages maintainer

## Tests
Implementation of clean-swift is allowing to have high coverage for unit tests. Because of separation of the concerns here, it's possible to have tergetted unit tests with mock data if needed.
No tests are implemented in the project yet.

## Improvement points on Test/Demo project
- Implement Product Detail feature in clean-swift, which also will get more data from external services
- Product List performance true to handle large amount of data with infinite scrolling
- Add unit and integration tests
