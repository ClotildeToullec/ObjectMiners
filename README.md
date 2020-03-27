
 <img align="left" width=256 height= 256 src='https://raw.githubusercontent.com/ClotildeToullec/ObjectMiners/master/icons/ObjectMiners_Steven_03w.png'>

## Installation - Pharo 7
Evaluate this code in a Playground to load the Object Miners model and debugger:

```Smalltalk
Metacello new
    baseline: 'ObjectMiners';
    repository: 'github://ClotildeToullec/ObjectMiners';
    load.
```
<br><br>
---
## Authors

Design and implementation: 
* [Steven Costiou](https://github.com/StevenCostiou)
* [Clotilde Toullec](https://github.com/ClotildeToullec)

## Acknowledgments

* [Alain Plantec](https://github.com/plantec)
* Mickaël Kerboeuf
* [Stéphane Ducasse](https://github.com/Ducasse)

Icons and logos by Yann Plunian.


# Object Miners API
We describe the interface available from Object Miners instances.
Through this API developers configure what objects to capture as well as how to capture and interact with those objects.
We used this API as a guide for our Pharo implementation (https://github.com/ClotildeToullec/ObjectMiners).

## Reaching objects of interest

This interface provide means to reach objects of interest in the control flow of a program.
Basically it defines where the object miner receiving the message will install itself.

### Object Miners API for reaching objects read or written to instance and temporary variables


  Variable API | Parameters
  -- | --
  **reachInstVar**(varName, className, option)<br>Specifies an instance variable to reach in the control flow of the program. | **varName:** the inst. var. name `String` <br> **className:** the name of the class in which `varName` is defined `String` <br> **option:** "read", "write" or "all" `String`, specifies on which case of variable access reaching the object.
  **reachTemporaryOrParameter**(varName, methodName, className, option)<br>Specifies a temporary variable or parameter to reach in the control flow of the program |  **varName:** the temporary variable or method parameter name `String` <br>**methodName:** the name of the method in which `varName` is defined `String`. The option is not available for parameters.<br>**className:** the name of the class in which the method `methodName` is defined `String` <br>**option:** "read", "write" or "all" `String`
  **reachFromAST**(anASTNode) <br> Configures the miner to reach an anonymous object from a specific source code expression. | **anASTNode:** the abstract syntax tree node representing the expression from which an object will be returned.


## Capturing objects

The following APIs show interfaces to define which objects to capture, to define how to capture those objects, and recording strategies.




### Object Miners capture API: defining what objects to capture

  Object capture API | Parameters
  -- | --
   **captureContext**(reificationsArray)<br> Specifies which entities to capture from the execution context of the reached object.   | **reificationsArray:** an array of strings, containing the names of contextual entities to be reified and captured
  **recordIntermediateObjects**(boolean) <br> (De)activates the recording of objects produced by sub-computations of an instrumented expression.  | **boolean:** `true` or `false` (`false` as default), specifies if intermediate objects returned by the execution of sub-expressions of an instrumented expression must also be recorded

### Available contextual entities at capture time
#### All objects
object |The object in which the miner is installed.
  -- | --
class |The class of the object in which the miner is installed.
context | The execution context.


#### Variables
name   | The variable name.
  -- | --
oldValue  | The previous value of the variable when it is subject to an assignment.
newValue | The value assigned to the variable when it is subject to an assignment.


#### Anonymous objects

arguments | The arguments of the message creating the captured object.
  -- | --
receiver | The receiver of the message creating the captured object.
selector | The selector of the message creating the captured object.
sender | The sender of the message creating the captured object.




### Object Miners capture API: defining how to capture objects


  Object capture API | Parameters
  -- | --
  **setCondition**(sourceCode)<br> Condition upon which capture will happen. Elements from the execution context (*e.g.* object to capture) are accessible in the condition. | **sourceCode:** user defined condition `String`.
  **captureHistory**(size, loop)}<br>Configures the history of capture objects for a given miner.  | **size:** sets history size (`1` by default).<br>**loop:** `true` or `false`, specifies if the history wraps.
  **captureStack**(size)<br> Specifies the captured stack size. | **size:** the size of the stack (`Integer`) to store for each capture, `20` method calls by default, `0` means no stack.
  **recordStrategy**(strategy, recordContext)<br> Configures the record strategy to use when a capture is performed. This interface is only implemented in the debugger as an additional tool. | **strategy:** record strategy (`String`) to use when capturing an object.<br>**recordContext:** `true` or `false`, specifies if captured context elements should be recorded as well.

### Object recording strategies

**Strategy** | **Effect**
-- | --
**strongReference** | miners keep strong references to captured objects, and prevent them to be destroyed by the program's memory manager.
**deepCopy** | captured objects and their state are copied and stored by the object miner.  Details of how deep copy is implemented are left to developers.



## Accessing and interacting with captured objects

Captured objects and reifications from their execution context, *i.e.*, *records*, can be accessed and interacted with. There are two ways of interacting with captured objects: capture-time interaction which automatically performs actions at the time an object is captured, and post-capture interaction which are manual or tool interaction performed after the capture.

### Object Miners capture-time interaction API
  **Interaction API** | **Parameters**
  -- | --
  **setAction**(sourceCode)<br>	User-defined action to be executed just after the capture. Captured elements (*e.g.* captured objects) are accessible in the action. | **sourceCode:** user defined action `String`
  **haltAfterCapture**(size)<br> Breaks the execution after a given number of captures (opens a debugger).| **size:** number of captured objects (`Integer`) before breaking the execution.


### Object Miners post-capture interaction API
  **Interaction API** | **Parameters**
  -- | --
**getObject**(index)<br>Returns an object from the capture history. | **index:** index of the object (`Integer`) in the history of captured objects.
**getHistoryEntry**(index)<br>Returns an entry from the capture history. | **index:** index of the entry (`Integer`) to recover from the history of captured objects.
**getHistory**(size)<br> Returns entries from the capture history. | **size:** number of entries (`Integer`) to recover from the history of captured objects.
**replayObject**(entry, node)<br> Configures a specific object from an entry in the capture history to be replayed. That object must have been captured for the given node in a previous execution. | **entry:** entry from the history in which to find the replay object for next executions.<br>**node:** the AST node for which the captured object (found in the entry) will be set as replay

