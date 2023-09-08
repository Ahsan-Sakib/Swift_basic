import Foundation

let queue = DispatchQueue(label: "XYZ", qos: .utility, attributes: .concurrent)
let item = DispatchWorkItem{
    print("it's an work item attached manually")
}
let itemRunOnMainThread = DispatchWorkItem{
    print("I am in main thread")
}

//MARK:- Executes the work item's block synchronously on the current thread.Block the current thread flow and execute it.
item.perform()

//MARK:- When the item task finish, it will notify the main thread to run the itemRunOnMainThread work item.
item.notify(queue: DispatchQueue.main, execute: itemRunOnMainThread)

//MARK:- Attach a work item manually.
queue.async(execute: item)

//MARK:- One other work item added asynchronously
queue.asyncAfter(deadline: DispatchTime.now() + 0.5, execute: {
    print("The block of code ran!")
})
