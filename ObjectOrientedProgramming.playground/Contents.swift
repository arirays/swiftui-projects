import Foundation

// Object Oriented Programming

//During the life the app, we create and destroy objects
// Create = Initialize (init) = Allocate (add to memory)
// Destroy = Deinitialize (deinit) = Deallocate (removing from memory)

// Automatic Reference Counting (ARC)
// A live count of the number of objects in memory
// Create 1 object, count goes up by 1
// Create 2 objects, count goes up by 2
// Destroy 1 object, count goes down by 1

// The more objects in memory, the slower the app performs.
// We want to keep the ARC count as low as possible.
// We want to create(initialize) objects only when we need them.
// And destroy them as soon as we no longer need them.

// For example, if an app has 2 screens and user is moving from screen 1 to screen 2. When we move we only want to allocate(create) screen 2 WHEN we need it. (ie. when the user clicks a button to segue to screen 2. In the contrary when we get to screen 2, we MAY want to deallocate(destroy) screen 1. 
