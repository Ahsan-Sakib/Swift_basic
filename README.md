# Swift_basic

## GCD(Grand Central Dispatch)

is a low-level API for managing concurrent operations. It can help improve your app’s responsiveness by deferring computationally expensive tasks to the background. It’s an easier concurrency model to work with than locks and threads

With Swift 5.5, the official support for async and await has arrived

Topic 
-----
* Multithreading
* Dispatch queues
* Concurrency


## Concurrency

 The operating system scheduler manages the threads independently of each other.
 Each thread can execute concurrently, but it’s up to the system to decide if, when and how it happens.

 ** Single core
 ----------------
 Single-core devices achieve concurrency through a method called **time-slicing**. They run one thread, perform a context switch,   then run another thread.


 
  ** Multi core
 ----------------
 Multi-core devices, on the other hand, execute multiple threads at the same time via **parallelism**.


### GCD is built on top of threads

 It’s important to note that parallelism requires concurrency, but concurrency doesn’t guarantee parallelism.

### Understanding Queues
 * DispatchQueue
 * Dispatch queues are thread-safe, meaning you can simultaneously access them from multiple threads.
 * Queues can be either serial or concurrent

 **Queue Types**
 1. Main  -> Main queue and serial queue
 2. Global
    * Concurrent queue shared by whole system 
    **i) High, ii) Default, iii) Low, iv) Background.** Background queue has lowest priority
    
 3. Custom -> serial or concurrent
 
 ### Priority - QoS (quality of service)
 
  1. User-interactive
  2. User initiated
  3. Utility
  4. Background
  
  ### Synchronous vs. Asynchronous 
  
   DispatchQueue.sync(execute:)
   
   
   DispatchQueue.async(execute:)

### Managing Tasks
--------------------

Task like a Closure

Closures are self-contained, callable blocks of code you can store and pass around.

Each task you submit to a DispatchQueue is a DispatchWorkItem





------------------------------------------------------------------------------------------------------------------

Markdown Syntax
Heading	# H1
## H2
### H3
Bold	**bold text**
Italic	*italicized text*
Blockquote	> blockquote
Ordered List	1. First item
2. Second item
3. Third item
Unordered List	- First item
- Second item
- Third item
Code	`code`
Horizontal Rule	---
Link	[title](https://www.example.com)
Image	![alt text](image.jpg)
Extended Syntax
These elements extend the basic syntax by adding additional features. Not all Markdown applications support these elements.

Element	Markdown Syntax
Table	| Syntax | Description |
| ----------- | ----------- |
| Header | Title |
| Paragraph | Text |

Fenced Code Block	```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```


Footnote	Here's a sentence with a footnote. [^1]

[^1]: This is the footnote.
Heading ID	### My Great Heading {#custom-id}
Definition List	term
: definition
Strikethrough	~~The world is flat.~~
Task List	- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
Emoji
(see also Copying and Pasting Emoji)	That is so funny! :joy:
Highlight	I need to highlight these ==very important words==.
Subscript	H~2~O
Superscript	X^2^
