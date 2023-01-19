# 19 January 2023 Review
## Project requirements
- Acme Todo Inc
- Command line todo app
- Add and complete todos 
  

### INPUT
- Add todo using add keyword 
- Both add and done are strings
- Start program, view all todos along with ID
- See prompt to add or complete a todo
- Only add single tasks and complete single tasks at a time  
- Todos are added to the end of the sentence
  
Type `add`, followed by a sentence, to add a todo. 
Type `done`, followed by the todo ID, to complete a todo.

### OUTPUT 
- When todo added, update the list with the new task 
- Show list of incomplete todos 
- Completed todos are removed from the list and not displayed 


## Example input and outputs
| INPUT          | OUTPUT           |
|----------------|------------------|
|   add Wash the car     |  1 Wash the car                |
|   add Walk             |   1 Walk               |
|   add Wash the car (followed by) add Walk            |    1 Wash the car (followed by)   1 Wash the car/n2 Walk   |
|   add Wash the car (followed by) done Wash the car             |  1 Wash the car (followed by) Original prompt (Enter add to add task, or done to complete task)                |
| add Wash the car (followed by) add Walk (followed by) done Wash the car   |  1 Wash the car (followed by) 1 Wash the car/n2 Walk (followed by) 1 Walk               |
|                |                  |


## EDGE CASES
1. Input is empty or an array -> Give user the original prompt to add or complete / commands that are accepted 
2. Try and complete a task that doesn't exist -> "ToDo does not exist"