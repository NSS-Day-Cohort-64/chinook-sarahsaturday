# Event-Listeners-in-Javascript
## by Team 3

Event listeners are a cornerstone of the UI experience. Up to this point, much of the code we have written is designed to simply run upon being invoked. Event listeners are functions that listen for a certain trigger to be involved, with this trigger traditionally being input from the user such as typing on their keyboard, clicking with their mouse, etc. This allows for our code to be responsive to the users instead of having to have everything run whenever the page is loaded. 

Web developers use event listeners to give users an interactive and dynamic experience when using their web application. On a practical level, they allow developers to provide this experience without needing to reload the page or server request.

In JavaScript, there are several predefined event listener events that are generated when certain actions occur. Here are some of the most common ones:

Click - generated when a user clicks on an element.
Mouseover - generated when a user's mouse cursor moves over an element.
Mouseout - generated when a user's mouse cursor moves off an element.
Keydown - generated when a user presses a key on their keyboard.
Keyup - generated when a user releases a key on their keyboard.
Submit - generated when a user submits a form.
Load - generated when a webpage finishes loading.
Unload - generated when a webpage is about to be unloaded.
Error - generated when an error occurs in the browser or on the webpage.

These events can be listened to using JavaScript's addEventListener() method. When an event occurs, any function that has been registered to listen for that event will be executed.

In addition to the predefined event listeners in JavaScript, developers can also define custom event listeners that are specific to their application or use case. The events that can be defined as custom events are not limited to a specific list, as they can be named and defined by the developer according to the needs of their application. Here are some examples:

Scroll events - These event listeners can be used to trigger animations or other visual effects as the user scrolls through content.
Cart Update: This event can be triggered when a user adds or removes an item from their shopping cart. The event can include the item details such as the name, price, and quantity.
Mobile touch events - These event listeners can be used to create mobile-friendly web applications that respond to user touch input.
Drag and drop - These event listeners can be used to create interactive interfaces that allow users to drag and drop elements on a page.
Save Changes: This event can be triggered when a user saves changes to their profile or settings. The event can include the updated data such as the user's name, email, and password.
When an event occurs on an element in the DOM, the event then begins to move through the DOM tree, starting from where the element originated and then up to the root of the document.  Along the way each element gets the opportunity to handle the event by executing any event listeners that might be associated with the trigger. 

There are two predominant types of event propagation, and the first is called bubbling. Bubbling occurs when the event is triggered on the innermost element and then “bubbles up” to its parent element and so on and so on all the way to its highest ancestor. This is the default form of event propagation. 
# chinook-sarahsaturday
