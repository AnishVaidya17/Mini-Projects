//Selectors
const todoInput = document.querySelector(".todo-input");
const todoButton = document.querySelector(".todo-button");
const todoList = document.querySelector(".todo-list");
const filterOption = document.querySelector(".filter-todo")




//Event Listners
document.addEventListener('DOMContentLoaded', getTodos);
todoButton.addEventListener('click', addtodo)
todoList.addEventListener('click', deleteCheck);
filterOption.addEventListener('click', filterTodo);





//Functions

function addtodo(event)
{
   event.preventDefault();          //prevent from submitting

   //now we create the div tags as the todo list is being 
   //generated-----when the user adds the to do list-item
   
   //create the todo DIV --- main todo DIV
   const todoDiv = document.createElement('div');
   todoDiv.classList.add("todo");

   //Create LI
   const newTodo = document.createElement('li');
   newTodo.innerText = todoInput.value;
   newTodo.classList.add('todo-item');
   todoDiv.appendChild(newTodo);


   //add todo to local storage
   saveLocalTodos(todoInput.value);

   //completed/check-mark button
   const completedButton = document.createElement('button');
   completedButton.innerHTML = '<i class="fas fa-check"></i>';          //to directly add the icon to the button
   completedButton.classList.add("complete-btn");
   todoDiv.appendChild(completedButton);
   
   //trash button
   const trashButton = document.createElement('button');
   trashButton.innerHTML = '<i class="fas fa-trash"></i>';          //to directly add the icon to the button
   trashButton.classList.add("trash-btn");
   todoDiv.appendChild(trashButton);


   
   /* So what we are doing here is, creating the divs as the user adds the 
      items 'todo', and then we are creating a list for todo-items, then a button for check and trash
      which are then appended to the todo-items list*/

   //APPEND TO THE MAIN LIST
   todoList.appendChild(todoDiv);

   //clear the todoInput value
   todoInput.value = "";

}//addTodo ends here





//function for delete and check button
function deleteCheck(event){
   //console.log(event.target);

   const item = event.target;

   //DELETE
   if(item.classList[0] === 'trash-btn'){
      const todo = item.parentElement;
      //animation for deleting
      todo.classList.add('fall');
      removeLocalTodos(todo);
      todo.addEventListener('transitionend', function(){
         todo.remove();
      });
   }


   //CHECK MARK
   if(item.classList[0] === 'complete-btn'){
      const todo = item.parentElement;
      todo.classList.toggle('completed');
   }
   
}




function filterTodo(e){
   const todos = todoList.childNodes;
   //console.log(todos);
   todos.forEach(function(todo){
      switch (e.target.value) {
         case "all":
            todo.style.display = "flex";
            break;
         
         case "completed":
            if(todo.classList.contains('completed')){
               todo.style.display = "flex";
            }else{
               todo.style.display = "none";
            }
            break;
         
         case "uncompleted":
            if(!todo.classList.contains("completed")){
               todo.style.display = "flex";
            }else{
               todo.style.display = "none";
            }
            break;   

         default:
            break;
      }
   });
   
}



//to save to local storage
function saveLocalTodos(todo){
   //check if already there
   let todos;
   if(localStorage.getItem('todos') === null){
      todos = [];

   }else{
      todos = JSON.parse(localStorage.getItem('todos'));
   }

   todos.push(todo);
   localStorage.setItem('todos', JSON.stringify(todos));
}





function getTodos(){
   let todos;
   //check if already there
   //let todos;
   if(localStorage.getItem('todos') === null){
      todos = [];

   }else{
      todos = JSON.parse(localStorage.getItem('todos'));
   }

   todos.forEach(function(todo){
   //create the todo DIV --- main todo DIV
   const todoDiv = document.createElement('div');
   todoDiv.classList.add("todo");

   //Create LI
   const newTodo = document.createElement('li');
   newTodo.innerText = todo;
   newTodo.classList.add('todo-item');
   todoDiv.appendChild(newTodo);



   //completed/check-mark button
   const completedButton = document.createElement('button');
   completedButton.innerHTML = '<i class="fas fa-check"></i>';          //to directly add the icon to the button
   completedButton.classList.add("complete-btn");
   todoDiv.appendChild(completedButton);
   
   //trash button
   const trashButton = document.createElement('button');
   trashButton.innerHTML = '<i class="fas fa-trash"></i>';          //to directly add the icon to the button
   trashButton.classList.add("trash-btn");
   todoDiv.appendChild(trashButton);


   
   /* So what we are doing here is, creating the divs as the user adds the 
      items 'todo', and then we are creating a list for todo-items, then a button for check and trash
      which are then appended to the todo-items list*/

   //APPEND TO THE MAIN LIST
   todoList.appendChild(todoDiv);
   });


}//getTodos ends here






function removeLocalTodos(todo){
   //check if there
   if(localStorage.getItem('todos') === null){
      todos = [];

   }else{
      todos = JSON.parse(localStorage.getItem('todos'));
   }

   const todoIndex = todo.children[0].innerText;
   todos.splice(todos.indexOf(todoIndex), 1);
   localStorage.setItem('todos', JSON.stringify(todos));

}