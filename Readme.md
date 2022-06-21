# Viper architecture pattern

in this example it shows how to implement viper pattern using delegates and with generic Async + Await network layer 
## Basic Syntax

the viper pattern is classified into 5 classes and they communicate using delegation pattern between each other 

they goes under :

1. **View: which contains UIView, view controller, xib files and only cares about UI logic**
2. **Presenter: which is the heart of communication in the pattern and it has reference to View, interactor and Router protocols** 
3. **Interactor: handle all business logic in every module of viper pattern**
4. **Router: handle navigation and presentation of views**
5. **Entity: contain data models app have to deal with including network models, core data models... etc**
### Note

`View have reference to presenter and presenter have reference to view so make on of reference as weak to avoid retain cycle as like as the interactor and presenter each one of them has reference to the other so make one of them weak`

-------


![alt text](https://i.ibb.co/N6FMwSd/68747470733a2f2f63646e2d696d616765732d322e6d656469756d2e636f6d2f6d61782f3830302f312a30704e33424e5458.png)

---------

![alt text](https://i.ibb.co/BcHS05W/Screen-Recording-2022-06-21-at-11-31-35-PM.gif)

