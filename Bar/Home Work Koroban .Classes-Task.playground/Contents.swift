/*:
 ### Литература к прочтению
 - [Структуры и классы](https://swiftbook.ru/content/languageguide/classes-and-structures/)
 - [Наследование](https://swiftbook.ru/content/languageguide/inheritance/)
 - [Инициализация](https://swiftbook.ru/content/languageguide/initialization/)
 */
/*:
 ### Создать класс Vehicle (транспортное средство)
 - Свойства:
     - wheelsNumber - количество колёс у транспортного средства
     - maximumSpeed - максимальная скорость транспортного средства (в качестве дополнительного задания, создайте алиас для типа этого свойства и наховите этот алиас Kmph)
 - Методы:
    - describe() - выводит в консоль фразу "Транспортное средство"
 - Параметры инициализатора:
    - wheelsNumber
    - maximumSpeed
 */
// Транспортное средство:
class Vehicle {
    let wheelsNumber: Int
    let maximumSpeed: Int
    init (wheelsNumber: Int, maximumSpeed: Int) {
        self.wheelsNumber = wheelsNumber
        self.maximumSpeed = maximumSpeed
    }
    func describe() {
        print("Транспортное средство")
    }
}

 


/*:
### Создать класс Bicycle (велосипед), являющийся наследником класса Vehicle (транспортное средство)
 - Свойства класса:
    - weight - вес велосипеда
 - Методы
    - describe() - выводит в консоль фразу "Двухколесный велосипед весом \(weight) кг разгоняется до скорости \(maximumSpeed) км/ч"
 - Параметры инициализатора:
    - weight
    - wheelsNumber и maximumSpeed должны задаваться через инициализатор супер класса (super.init(...))

 */
// Велосипед:
class Bicycle: Vehicle {
    var weight: Int
    init(wheelsNumber: Int, maximumSpeed: Int, weight: Int) {
        self.weight = weight
        super.init(wheelsNumber: wheelsNumber, maximumSpeed: maximumSpeed)
    }
    override func describe() {
        print("Двухколесный велосипед весом \(weight) кг разгоняется до скорости \(maximumSpeed) км/ч ")
        
    }
    
}



/*:
### Создать класс Car (автомобиль), являющийся наследником класса Vehicle (транспортное средство)
 - Свойства класса:
    - brand - марка автомобиля
    - year - год выпуска автомобиля
 - Методы
    - describe() - выводит в консоль фразу "Aвтомобиль марки \(brand) \(year) года выпуска разгоняется до скорости \(maximumSpeed) км/ч"
 - Параметры инициализатора:
    - brand
    - year
    - wheelsNumber и maximumSpeed должны задаваться через инициализатор супер класса (super.init(...))

 */
// Автомобиль:
class Car: Vehicle {
   var brand: String
    var year: Int
     init(wheelsNumber: Int, maximumSpeed: Int, brand: String , year: Int) {
        self.brand = brand
        self.year = year
        super.init(wheelsNumber: 4, maximumSpeed: 300)
    }
    override func describe() {
        print("Aвтомобиль марки \(brand) \(year) года выпуска разгоняется до скорости \(maximumSpeed) км/ч")
    }
}



/*:
### Массив транспортных средств
Требуется создать массив из нескольких транспортных средств (несколько велосипедов и несколько автомобилей и вывести описание каждого транспортного средства в списке (вызвать метод describe() у каждого элемента массива)
 */
// Решение:
let someVehicle = Vehicle(wheelsNumber: 2, maximumSpeed: 80)
let someBicycle = Bicycle(wheelsNumber: 2, maximumSpeed: 90, weight: 200)
let someCar = Car(wheelsNumber: 4, maximumSpeed: 300, brand: "Toyota", year: 2020)

let array = [someCar,someVehicle,someBicycle]
someCar.describe()
someBicycle.describe()
someVehicle.describe()


/*:
### CoffeeShop
 В приложении CoffeeShop в синглтоне CoffeeShop добавить общую выручку totalRevenue, которая будет содержать в себе выручку кофейни за все дни.
 Общую выручку нужно выводить в консоль каждый раз, когда начинается новый день (когда вызывается метод startNewDay)
 */



