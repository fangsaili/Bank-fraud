# Kanban Rules
### When to move cards between lists
## Backlog -> In Progress
* You, and only you, have decided to work on the story task.
* You are not working on any other tasks at the moment.
* You have at most one task waiting for approval.
## In Progress -> Awaiting Approval
* The user story has been completed and works as designed.
* Has adequate automated tests.
* Code passes all tests.
* It has been refactored (if needed) and conforms to clean coding standards.
## Awaiting Approval -> In progress
* A team member asked to inspect the code believes it needs refactoring, they must give a clear and specific reason. They must also give a clear indication of what they believe needs to be done.
* A test fails to pass. 
* Fails to run on production server.
## Awaiting Approval -> Done
* The code has been inspected by at least two other team members. 
* Both team members agree the code is clean.
* Code passes all tests.
* Code has been successfully run and tested on production server.
* If needed, the ER diagram and database specification files have been updated.
