![Bitmaker](https://github.com/johncarlolopez/bitmaker-reference/blob/master/bitmakerlogo.svg)
# OOP Recap: Farm Simulator
### Friday, Dec 22nd

## The assignment
___
You are a farmer that wishes to keep track of the fields on your farm. You want to be able to add fields of various types - for example, corn and wheat - and to keep track of the harvest. You will be keeping track of the total amount of food your farm has ever produced.

Each field type produces a different amount of food per hectare:

  * corn: 20
  * wheat: 30

You can add fields of choice to your farm by specifying their type (eg. "corn") and their total area in hectares (eg. 100).

When you harvest, you must collect food from every one of your fields and record how much total food you have collected. It should display all of this information.

Sometimes a farmer wants to relax. In doing so, you will get a chance to enjoy the beauty of each one of your fields (without harvesting them).

You can also check the status of each field, which is a more direct way of observing the status of your fields (their size and type). It should also tell you how much total food you have produced up until this point.

The program should provide a list of input options whenever it asks you to enter one.

## Example Input/output broken down
___
```
status ->

The farm has 0 harvested food so far.
harvest ->

The farm has 0 harvested food so far.
field ->

What kind of field is it: corn or wheat?
corn ->

How large is the field in hectares?
50 ->

Added a corn field of 50 hectares!
status ->

Corn field is 50 hectares.
The farm has 0 harvested food so far.
harvest ->

Harvesting 1000 food from 50 hectare corn field.
The farm has 1000 harvested food so far.
field ->

What kind of field is it: corn or wheat?
wheat ->

How large is the field in hectares?
100 ->

Added a wheat field of 100 hectares!
harvest ->

Harvesting 1000 food from 50 hectare corn field.
Harvesting 3000 food from 100 hectare wheat field.
The farm has 5000 harvested food so far.
relax ->

50 hectares of tall green stalks rustling in the breeze fill your horizon.
The sun hangs low, casting an orange glow on a sea of 100 hectares of wheat.
field ->

What kind of field is it: corn or wheat?
corn ->

How large is the field in hectares?
200 ->

Added a corn field of 200 hectares!
harvest ->

Harvesting 1000 food from 50 hectare corn field.
Harvesting 3000 food from 100 hectare wheat field.
Harvesting 4000 food from 200 hectare corn field.
The farm has 13000 harvested food so far.
status ->

Corn field is 50 hectares.
Wheat field is 100 hectares.
Corn field is 200 hectares.
The farm has 13000 harvested food so far.
exit ->

Exiting...
```
