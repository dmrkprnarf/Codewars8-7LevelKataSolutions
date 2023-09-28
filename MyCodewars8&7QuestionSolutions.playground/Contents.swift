import Cocoa

// MARK: - Transportation on vacation (8kyu)
//:After a hard quarter in the office you decide to get some rest on a vacation. So you will book a flight for you and your girlfriend and try to leave all the mess behind you.You will need a rental car in order for you to get around in your vacation. The manager of the car rental makes you some good offers.Every day you rent the car costs $40. If you rent the car for 7 or more days, you get $50 off your total. Alternatively, if you rent the car for 3 or more days, you get $20 off your total.Write a code that gives out the total amount for different days(d).

func RentalCarCost(_ days: Int) -> Int {
    var total = 0
    for i in 0...days {
        if days >= 1 && days <= 2 {
            total  = i * 40
        }else if  days >= 3  && days <= 6 {
            total = (i * 40) - 20
        } else if days >= 7 {
            total = (i * 40) - 50
        }
    }
    return total
}

(RentalCarCost(1), 40)
(RentalCarCost(2), 80)
(RentalCarCost(3), 100)
(RentalCarCost(4), 140)
(RentalCarCost(5), 180)
(RentalCarCost(7), 230)
(RentalCarCost(8), 270)
(RentalCarCost(9), 310)
(RentalCarCost(10), 350)


// MARK: - Grasshopper - Personalized Message(8kyu)
//:Create a function that gives a personalized greeting. This function takes two parameters: name and owner.Use conditionals to return the proper message:
// case    return
//name equals owner    'Hello boss'
//otherwise    'Hello guest'

func great(_ name: String, _ owner: String) -> String {
    // complete this function
    if name == owner {
        return "Hello boss"
    }else {
        return "Hello guest"
    }
    
}

(great("Daniel", "Daniel"), "Hello boss")
(great("Greg", "Daniel"), "Hello guest")
(great("Bill", "Daniel"), "Hello guest")
(great("Mary", "Mary"), "Hello boss")
(great("Kate", "Bob"), "Hello guest")

// MARK: - Thinkful - Logic Drills: Traffic light (8kyu)
//:You're writing code to control your town's traffic lights. You need a function to handle each change from green, to yellow, to red, and then to green again.Complete the function that takes a string as an argument representing the current state of the light and returns a string representing the state the light should change to.For example, when the input is green, output should be yellow.

func update_light(_ current: String) -> String {
    switch current {
    case "green":
        return "yellow"
    case "yellow":
        return "red"
    case "red":
        return "green"
    default:
        return current
    }
    
}

(update_light("red"), "green")

// MARK: - Find the first non-consecutive number(8kyu)
//:Your task is to find the first element of an array that is not consecutive.By not consecutive we mean not exactly 1 larger than the previous element of the array.E.g. If we have an array [1,2,3,4,6,7,8] then 1 then 2 then 3 then 4 are all consecutive but 6 is not, so that's the first non-consecutive number.If the whole array is consecutive then return null2.The array will always have at least 2 elements1 and all elements will be numbers. The numbers will also all be unique and in ascending order. The numbers could be positive or negative and the first non-consecutive could be either too!If you like this Kata, maybe try this one next: https://www.codewars.com/kata/represent-array-of-numbers-as-ranges1 Can you write a solution that will return null2 for both [] and [ x ] though? (This is an empty array and one with a single number and is not tested for, but you can write your own example test. )

func firstNonConsecutive (_ arr: [Int]) -> Int? {
    for i in 1..<arr.count {
        if (arr[i - 1] + 1 != arr[i]) {
            return arr[i]
        }
    }
    return nil
}
let first = firstNonConsecutive([1,2,3,4,6,7,8])
(first, 6)

// MARK: - Convert number to reversed array of digits(8kyu)
//:Given a random non-negative number, you have to return the digits of this number within an array in reverse order.
//Example(Input => Output):
// 35231 => [1,3,2,5,3]
// 0 => [0]

func digitize(_ num:Int) -> [Int]{
    var numList:[String] = []
    for i in String(num) {
        var newValue = String(i)
        numList.append(newValue)
    }
    let  integerList:[Int] =  numList.map({Int($0)!})
    let reversed:[Int] = integerList.reversed()
    return reversed
}

(digitize(123), [3, 2, 1])
(digitize(348597), [7,9,5,8,4,3])
(digitize(35231),[1,3,2,5,3])
(digitize(23582357),[7,5,3,2,8,5,3,2])
(digitize(984764738),[8,3,7,4,6,7,4,8,9])
(digitize(45762893920),[0,2,9,3,9,8,2,6,7,5,4])
(digitize(548702838394),[4,9,3,8,3,8,2,0,7,8,4,5])
(digitize(0), [0])
(digitize(1), [1])

// MARK: - Opposite number(8kyu)
//:Very simple, given an integer or a floating-point number, find its opposite.
//Examples:
// 1: -1
// 14: -14
// -34: 34
func opposite(number: Double) -> Double {
    let total = number * -1
    return total
}

(opposite(number: 1), -1)

// MARK: - Fake Binary(8kyu)
//:Given a string of digits, you should replace any digit below 5 with '0' and any digit 5 and above with '1'. Return the resulting string.(Note: input will never be an empty string)

func fakeBin(digits: String) -> String {
    var digitsArray:[String] = []
    var resultArray:[String] = []
    var result:String = ""
    for i in digits {
        let newValue =  String(i)
        digitsArray.append(newValue)
    }
    digitsArray.map { num in
        if var numValue = Int(num) {
            if numValue < 5 {
                numValue = 0
                resultArray.append(String(numValue))
            }else if numValue >= 5 {
                numValue = 1
                resultArray.append(String(numValue))
            }
        }
    }
    for i in resultArray {
        result.append(i)
    }
    return result
}
(fakeBin(digits: "45385593107843568"), "01011110001100111")
(fakeBin(digits: "509321967506747"), "101000111101101")
(fakeBin(digits: "366058562030849490134388085"), "011011110000101010000011011")
(fakeBin(digits: "15889923"), "01111100")
(fakeBin(digits: "800857237867"), "100111001111")
(fakeBin(digits: ""), "")

// MARK: - String repeat(8kyu)
//:Write a function that accepts an integer n and a string s as parameters, and returns a string of s repeated exactly n times.
//Examples (input -> output)
//6, "I"     -> "IIIIII"
//5, "Hello" -> "HelloHelloHelloHelloHello"

func repeatStr(_ n: Int, _ string: String) -> String {
    // Code here:
    var result:String = ""
    for _ in 0..<n {
        result.append(string)
    }
    return result
}
(repeatStr(5, "Hello"), "HelloHelloHelloHelloHello")

// MARK: - Switch it Up!(8kyu)
//:When provided with a number between 0-9, return it in words.
//Input :: 1
//Output :: "One".
//If your language supports it, try using a switch statement.

func switchItUp(_ number: Int) -> String {
    switch number {
    case 0:
        return "Zero"
    case 1:
        return "One"
    case 2:
        return "Two"
    case 3:
        return "Three"
    case 4:
        return "Four"
    case 5:
        return "Five"
    case 6:
        return "Six"
    case 7:
        return "Seven"
    case 8:
        return "Eight"
    case 9:
        return "Nine"
    default:
        return ""
    }
    
}
(switchItUp(1), "One")
(switchItUp(3), "Three")
(switchItUp(5), "Five")

// MARK: - Multiplication table for number(8kyu)
//:Your goal is to return multiplication table for number that is always an integer from 1 to 10.For example, a multiplication table (string) for number == 5 looks like below:

func multi_table(_ number: Int) -> String {
    let numberList:[Int] = [1,2,3,4,5,6,7,8,9,10]
    var result:String = ""
    for i in 0..<numberList.count {
        if numberList[i] <= 9 {
            result.append("\(numberList[i]) * \(number) = \(numberList[i]*number)\n")
        }else {
            result.append("\(numberList[i]) * \(number) = \(numberList[i]*number)")
        }
    }
    return result
}
(multi_table(5),"1 * 5 = 5\n2 * 5 = 10\n3 * 5 = 15\n4 * 5 = 20\n5 * 5 = 25\n6 * 5 = 30\n7 * 5 = 35\n8 * 5 = 40\n9 * 5 = 45\n10 * 5 = 50")
(multi_table(1), "1 * 1 = 1\n2 * 1 = 2\n3 * 1 = 3\n4 * 1 = 4\n5 * 1 = 5\n6 * 1 = 6\n7 * 1 = 7\n8 * 1 = 8\n9 * 1 = 9\n10 * 1 = 10")

// MARK: - Functional Addition(7kyu)

func add(_ n: Int) -> ((_ y:Int) -> Int) {
    
    func addOne(number:Int) -> Int {
        
        return n + number
    }
    return addOne
}
(add(1)(3), 4, "add(1)(3) does not equal 4")
(add(2)(2), 4, "add(2)(2) does not equal 4")
(add(0)(-15), -15, "add(0)(-15)")
(add(10)(3), 13, "add(10)(3) does not equal 13")
(add(100)(23), 123, "add(100)(23) does not equal 123")

// MARK: - Even or Odd(8kyu)
//:Create a function that takes an integer as an argument and returns "Even" for even numbers or "Odd" for odd numbers.

func evenOrOdd(_ number:Int) -> String {
    
    if number % 2 == 0 {
        return "Even"
    }else {
        return "Odd"
    }
    
}

(evenOrOdd(2),"Even")
(evenOrOdd(0),"Even")
(evenOrOdd(7),"Odd")
(evenOrOdd(1),"Odd")
(evenOrOdd(-4),"Even")
(evenOrOdd(-3),"Odd")

// MARK: - Calculate BMI(8kyu)
//:Write function bmi that calculates body mass index (bmi = weight / height2).
//if bmi <= 18.5 return "Underweight"
//if bmi <= 25.0 return "Normal"
//if bmi <= 30.0 return "Overweight"
//if bmi > 30 return "Obese"

func bmi(_ weight: Int, _ height: Double) -> String {
    let bmi = Double(weight) / (height * height)
    switch bmi {
    case 0...18.5:
        return "Underweight"
    case 18.6...25.0:
        return "Normal"
    case 25.0...30.0:
        return "Overweight"
    case 30.1...:
        return "Obese"
    default:
        return "Error"
    }
}

("Underweight", bmi(50, 1.80))
("Normal", bmi(80, 1.80))
("Overweight", bmi(90, 1.80))
("Obese", bmi(110, 1.80))
("Normal", bmi(50, 1.50))

// MARK: - Is he gonna survive?(8kyu)
//: A hero is on his way to the castle to complete his mission. However, he's been told that the castle is surrounded with a couple of powerful dragons! each dragon takes 2 bullets to be defeated, our hero has no idea how many bullets he should carry.. Assuming he's gonna grab a specific given number of bullets and move forward to fight another specific given number of dragons, will he survive? Return true if yes, false otherwise :)

func hero(bullets: Int, dragons: Int) -> Bool {
    let result =  dragons * 2 == bullets ? true:false
    return result
}

(hero(bullets: 4, dragons: 2))
(hero(bullets: 4, dragons: 3))

// MARK: - Balanced Number (Special Numbers Series #1 )(7kyu)
//:A balanced number is a number where the sum of digits to the left of the middle digit(s) and the sum of digits to the right of the middle digit(s) are equal. If the number has an odd number of digits, then there is only one middle digit. (For example, 92645 has one middle digit, 6.) Otherwise, there are two middle digits. (For example, the middle digits of 1301 are 3 and 0.) The middle digit(s) should not be considered when determining whether a number is balanced or not, e.g. 413023 is a balanced number because the left sum and right sum are both 5.The task Given a number, find if it is balanced, and return the string "Balanced" or "Not Balanced" accordingly. The passed number will always be positive.
//  Examples
// 7 ==> return "Balanced"
// Explanation:
// middle digit(s): 7
// sum of all digits to the left of the middle digit(s) -> 0
// sum of all digits to the right of the middle digit(s) -> 0
// 0 and 0 are equal, so it's balanced.
// 295591 ==> return "Not Balanced"
// Explanation:
// middle digit(s): 55
// sum of all digits to the left of the middle digit(s) -> 11
// sum of all digits to the right of the middle digit(s) -> 10
// 11 and 10 are not equal, so it's not balanced.
// 959 ==> return "Balanced"
// Explanation:
// middle digit(s): 5
// sum of all digits to the left of the middle digit(s) -> 9
// sum of all digits to the right of the middle digit(s) -> 9
// 9 and 9 are equal, so it's balanced.
// 27102983 ==> return "Not Balanced"
// Explanation:
// middle digit(s): 02
// sum of all digits to the left of the middle digit(s) -> 10
// sum of all digits to the right of the middle digit(s) -> 20
// 10 and 20 are not equal, so it's not balanced.

func balancedNumber(_ number: Int) -> String {
    let digitCount = String(number).count
    let numberOfElementsToCompare: Int = digitCount % 2 == 0 ? (digitCount / 2) - 1 : digitCount / 2
    let intArray = String(number).map{Int(String($0))!}
    let firstHalf = intArray.prefix(numberOfElementsToCompare).reduce(0,+)
    let secondHalf = intArray.suffix(numberOfElementsToCompare).reduce(0,+)
    
    return firstHalf == secondHalf ? "Balanced" : "Not Balanced"
}

(balancedNumber(7), "Balanced")
(balancedNumber(959), "Balanced")
(balancedNumber(13), "Balanced")
(balancedNumber(56239814), "Balanced")
(balancedNumber(424), "Balanced")
(balancedNumber(1024), "Not Balanced")
(balancedNumber(66545), "Not Balanced")
(balancedNumber(295591), "Not Balanced")
(balancedNumber(1230987), "Not Balanced")
(balancedNumber(432), "Not Balanced")

// MARK: - Reversed sequence(8kyu)
//:Build a function that returns an array of integers from n to 1 where n>0.
// Example : n=5 --> [5,4,3,2,1]

func reverseSeq(n: Int) -> [Int] {
    var numberList:[Int] = []
    for num in 0...n {
        if num > 0 {
            numberList.append(num)
        }
    }
    return numberList.reversed()
}

([5,4,3,2,1], reverseSeq(n: 5))

// MARK: - Sum of two lowest positive integers(7kyu)
//:Create a function that returns the sum of the two lowest positive numbers given an array of minimum 4 positive integers. No floats or non-positive integers will be passed. For example, when an array is passed like [19, 5, 42, 2, 77], the output should be 7. [10, 343445353, 3453445, 3453545353453] should return 3453455.

func sumOfTwoSmallestIntegersIn(_ array: [Int]) -> Int {
    let sortedArr = array.sorted()
    let result = sortedArr[0] + sortedArr[1]
    return result
    
}

(sumOfTwoSmallestIntegersIn([5, 8, 12, 18, 22]), 13)
(sumOfTwoSmallestIntegersIn([7, 15, 12, 18, 22]), 19)
(sumOfTwoSmallestIntegersIn([25, 42, 12, 18, 22]), 30)
(sumOfTwoSmallestIntegersIn([1, 8, 12, 18, 5]), 6)
(sumOfTwoSmallestIntegersIn([13, 12, 5, 61, 22]), 17)

// MARK: - Volume of a Cuboi(8kyu)
//:Bob needs a fast way to calculate the volume of a cuboid with three values: the length, width and height of the cuboid. Write a function to help Bob with this calculation.

func getVolumeOfCuboid(length: Int, width: Int, height: Int) -> Int {
    let volume = length * width * height
    return volume
}

var length = 2; var width = 5; var height = 6; var expected = 60
(getVolumeOfCuboid(length: length, width: width, height: height), expected, "Incorrect answer for length: \(length), width: \(width), height: \(height)")

length = 6; width = 3; height = 5; expected = 90
(getVolumeOfCuboid(length: length, width: width, height: height), expected, "Incorrect answer for length: \(length), width: \(width), height: \(height)")

length = 1; width = 2; height = 2; expected = 4
(getVolumeOfCuboid(length: length, width: width, height: height), expected, "Incorrect answer for length: \(length), width: \(width), height: \(height)")

// MARK: - Grasshopper - Messi Goals(8kyu)
//:Messi's Goal Total
//Use variables to find the sum of the goals Messi scored in 3 competitions
//Information
//Messi goal scoring statistics:
//Competition    Goals
//La Liga    43
//Champions League    10
//Copa del Rey    5

//Task
//Create these three variables and store the appropriate values using the table above:
//laLigaGoals
//championsLeagueGoals
//copaDelReyGoals
//Create a fourth variable named totalGoals that stores the sum of all of Messi's goals for this year.
var laLigaGoals = 43
var championLeagueGoals = 10
var copaDelReyGoals = 5

var totalGoals =  laLigaGoals + championLeagueGoals + copaDelReyGoals
(totalGoals, 58)

// MARK: - Beginner Series #2 Clock(8kyu)
//Clock shows h hours, m minutes and s seconds after midnight. Your task is to write a function which returns the time since midnight in milliseconds.
//Example:
// h = 0
// m = 1
// s = 1
//result = 61000
//Input constraints:
//0 <= h <= 23
//0 <= m <= 59
//0 <= s <= 59

func past(_ h: Int, _ m: Int, _ s: Int) -> Int {
    
    let milisecond = s * 1000
    let miniteConvertToMilisecond = m * 60_000
    let hoursConvertToMilisecond = h * 3_600_000
    var result = hoursConvertToMilisecond + miniteConvertToMilisecond + milisecond
    return result
}

(past(0, 1, 1), 61000)
(past(1, 1, 1), 3661000)
(past(0, 0, 0), 0)
(past(1, 0, 1), 3601000)
(past(1, 0, 0), 3600000)

// MARK: - Sum Mixed Array(8kyu)
//:Given an array of integers as strings and numbers, return the sum of the array values as if all were numbers. Return your answer as a number.

func sumMix(_ arr: [Any]) -> Int {
    var total = 0
    for i in 0..<arr.count {
        if ((arr[i] as? String) != nil) {
            total += Int(arr[i] as! String) ?? 0
        }else {
            total += arr[i] as? Int ?? 0
        }
    }
    return total
}

(sumMix([9, 3, "7", "3"]), 22)
(sumMix(["5", "0", 9, 3, 2, 1, "9", 6, 7]), 42)
(sumMix(["3", 6, 6, 0, "5", 8, 5, "6", 2,"0"]), 41)
(sumMix(["1", "5", "8", 8, 9, 9, 2, "3"]), 45)
(sumMix([8, 0, 0, 8, 5, 7, 2, 3, 7, 8, 6, 7]), 61)

// MARK: - Beginner - Lost Without a Map(8kyu)
//:Given an array of integers, return a new array with each value doubled.
//For example: [1, 2, 3] --> [2, 4, 6]

func maps(a : Array<Int>) -> Array<Int> {
    // write your code here...
    return a.map{$0 * 2}
}
(maps(a: [1,2,3,4,5]), [2,4,6,8,10])
(maps(a: [1,-2,3,4,5]), [2, -4, 6, 8, 10])
(maps(a: [-1,2,3,4,-5]), [-2, 4, 6, 8, -10])
(maps(a: []), []);

// MARK: - Sum of Minimums!(7kyu)
//:Caution: This kata does not currently have any known supported versions for Swift. It may not be completable due to dependencies on out-dated libraries/language versions. Given a 2D ( nested ) list ( array, vector, .. ) of size m * n, your task is to find the sum of the minimum values in each row.
// For Example:
// [ [ 1, 2, 3, 4, 5 ]        #  minimum value of row is 1
// , [ 5, 6, 7, 8, 9 ]        #  minimum value of row is 5
// , [ 20, 21, 34, 56, 100 ]  #  minimum value of row is 20
// ]
// So the function should return 26 because the sum of the minimums is 1 + 5 + 20 = 26.
// Note: You will always be given a non-empty list containing positive values.
// ENJOY CODING :)

func sumOfMinimums(_ numbers: [[Int]]) -> Int {
    var total = 0
    for i in 0..<numbers.count {
        if let result = numbers[i].min() {
            total += result
        }
    }
    return total
}

(5, sumOfMinimums([[2,8,5,4,3], [8,3,4,5,6]]))
(25, sumOfMinimums([[1,6,3,11,32], [21,32,45,24,34], [8,12,13,6,3]]))
(61, sumOfMinimums([[7,1,4,3,6],[9,3,13,24,25],[23,35,37,47,56],[12,32,35,58,53],[22,24,35,47,56]]))

// MARK: - Flatten and sort an array(7kyu)
//: Challenge:
//Given a two-dimensional array of integers, return the flattened version of the array with all the integers in the sorted (ascending) order.
//Example:
//Given [[3, 2, 1], [4, 6, 5], [], [9, 7, 8]], your function should return [1, 2, 3, 4, 5, 6, 7, 8, 9].

func flattenAndSort<T: Comparable>(_ arr: [[T]]) -> [T] {
    return arr.flatMap{$0}.sorted()
    
}

(flattenAndSort([[Int]]()), [])
(flattenAndSort([[Int](), []]), [])
(flattenAndSort([[], [1]]), [1])
(flattenAndSort([[], [], [], [2], [], [1]]), [1, 2])
(flattenAndSort([[3, 2, 1], [7, 9, 8], [6, 4, 5]]), [1, 2, 3, 4, 5, 6, 7, 8, 9])
(flattenAndSort([[1, 3, 5], [100], [2, 4, 6]]), [1, 2, 3, 4, 5, 6, 100])
(flattenAndSort([[111, 999], [222], [333], [444], [888], [777], [666], [555]]), [111, 222, 333, 444, 555, 666, 777, 888, 999])

// MARK: - Drone Fly-By(7kyu)
//:The other day I saw an amazing video where a guy hacked some wifi controlled lightbulbs by flying a drone past them. Brilliant. In this kata we will recreate that stunt... sort of. You will be given two strings: lamps and drone. lamps represents a row of lamps, currently off, each represented by x. When these lamps are on, they should be represented by o. The drone string represents the position of the drone T (any better suggestion for character??) and its flight path up until this point =. The drone always flies left to right, and always begins at the start of the row of lamps. Anywhere the drone has flown, including its current position, will result in the lamp at that position switching on. Return the resulting lamps string. See example tests for more clarity.

func flyBy(lamps: String, drone: String) -> String {
    var resultString = ""
    drone.forEach{_ in resultString.append(String("o"))}
    for _ in 0..<lamps.count - drone.count {
        resultString.append("x")
    }
    return resultString
}

(flyBy(lamps: "xxxxxx", drone: "====T"), "ooooox")
(flyBy(lamps: "xxxxxxxxx", drone: "==T"), "oooxxxxxx")
(flyBy(lamps: "xxxxxxxxxxxxxxx", drone: "=========T"), "ooooooooooxxxxx")

// MARK: - Sum of angles(7kyu)
//:Find the total sum of internal angles (in degrees) in an n-sided simple polygon. N will be greater than 2.

func angle(_ n: Int) -> Int {
    // your code here
    return (n - 2) * 180
}
(angle(3), 180)
(angle(4), 360)

// MARK: - Strong Number (Special Numbers Series #2(7kyu)
//:Definition
// Strong number is the number that the sum of the factorial of its digits is equal to number itself.
// For example, 145 is strong, since 1! + 4! + 5! = 1 + 24 + 120 = 145.
// Task
// Given a number, Find if it is Strong or not and return either "STRONG!!!!" or "Not Strong !!".
// Notes
// Number passed is always Positive.
// Return the result as String
// Input >> Output Examples
// strong_num(1) ==> return "STRONG!!!!"
// Since, the sum of its digits' factorial (1) is equal to number itself, then its a Strong.
// strong_num(123) ==> return "Not Strong !!"
// Since the sum of its digits' factorial of 1! + 2! + 3! = 9 is not equal to number itself, then it's Not Strong .
// strong_num(2)  ==>  return "STRONG!!!!"
// Since the sum of its digits' factorial of 2! = 2 is equal to number itself, then its a Strong.
// strong_num(150) ==> return "Not Strong !!"
// Since the sum of its digits' factorial of 1! + 5! + 0! = 122 is not equal to number itself, Then it's Not Strong .

func strongNumber(_ number: Int) -> String {
    var intArr = String(number).compactMap{$0.wholeNumberValue}
    var result = 0
    for num in intArr {
        var sum = 1
        if num == 0 {
            sum = 1
        }else {
            for i in 1...num {
                sum *= i
            }
        }
        result += sum
    }
    return result == number ? "STRONG!!!!" : "Not Strong !!"
}

(strongNumber(1), "STRONG!!!!")
(strongNumber(2), "STRONG!!!!")
(strongNumber(145), "STRONG!!!!")
(strongNumber(7), "Not Strong !!")
(strongNumber(93), "Not Strong !!")
(strongNumber(185), "Not Strong !!")

// MARK: - Special Number (Special Numbers Series #5)(7kyu)
//: Definition
// A number is a Special Number if it’s digits only consist 0, 1, 2, 3, 4 or 5
// Given a number determine if it special number or not .
// Warm-up (Highly recommended)
// Playing With Numbers Series
// Notes
// The number passed will be positive (N > 0) .
// All single-digit numbers within the interval [1:5] are considered as special number.
// Input >> Output Examples
// specialNumber(2) ==> return "Special!!"
// Explanation:
// It's a single-digit number within the interval [1:5] .
// specialNumber(9) ==> return "NOT!!"
// Explanation:
// Although, it's a single-digit number but Outside the interval [1:5] .
// specialNumber(23) ==> return "Special!!"
// Explanation:
// All the number's digits formed from the interval [0:5] digits .
// specialNumber(39) ==> return "NOT!!"
// Explanation:
// Although, there is a digit (3) Within the interval But the second digit is not (Must be ALL The Number's Digits ) .
// specialNumber(59) ==> return "NOT!!"
// Explanation:
// Although, there is a digit (5) Within the interval But the second digit is not (Must be ALL The Number's Digits ) .
// specialNumber(513) ==> return "Special!!"
// specialNumber(709) ==> return "NOT!!"

func specialNumber(_ number: Int) -> String {
    var result = ""
    let intArr = String(number).compactMap({$0.wholeNumberValue})
    for i in 0..<intArr.count {
        print(intArr[i])
        if intArr[i] >= 0 && intArr[i] < 6 {
            result =  "Special!!"
        }else {
            result =  "NOT!!"
            break
        }
    }
    return result
}
func testSpecial() {
    for number in [2, 3, 11, 55, 25432] {
        (specialNumber(number), "Special!!");
    }
}

func testNotSpecial() {
    for number in [2789, 6, 9, 26, 92] {
        (specialNumber(number), "NOT!!");
    }
}
testSpecial()
testNotSpecial()

// MARK: - Extra Perfect Numbers (Special Numbers Series #7)(7kyu)
//: Definition
// Extra perfect number is the number that first and last bits are set bits.
// Task
// Given a positive integer  N , Return the extra perfect numbers in range from  1 to  N

func extraPerfect(_ n: Int) -> [Int] {
    var intArr:[Int] = []
    for i in 0...n {
        if i % 2 == 1 {
            intArr.append(i)
        }
    }
    return intArr
}
(extraPerfect(3),  [1, 3]);
(extraPerfect(5),  [1, 3, 5]);
(extraPerfect(7),  [1, 3, 5, 7]);
(extraPerfect(28), [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27]);
(extraPerfect(39), [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29, 31, 33, 35, 37, 39]);

// MARK: - Square(n) Sum(8kyu)
//:Complete the square sum function so that it squares each number passed into it and then sums the results together.
// For example, for [1, 2, 2] it should return 9 because

func squareSum(_ vals: [Int]) -> Int {
    var result = 0
    for i in vals {
        var sum = i * i
        result += sum
    }
    return result
}
(squareSum([]), 0)
(squareSum([1]), 1)
(squareSum([1, 2]), 5)
(squareSum([3, 4]), 25)
(squareSum([-3, -4]), 25)
(squareSum([1, 2, 3]), 14)
(squareSum([5, 3, 4]), 50)
(squareSum([-3, -4, 0]), 25)

// MARK: - Factoria(7kyu)
//: Your task is to write function factorial.
// https://en.wikipedia.org/wiki/Factorial
func factorial(_ n: Int) -> UInt64 {
    return n == 0 ? 1 : (1...UInt64(n)).reduce(1, *)
}
(factorial(0),    1, "Incorrect result for 0!")
(factorial(1),    1, "Incorrect result for 1!")
(factorial(2),    2, "Incorrect result for 2!")
(factorial(3),    6, "Incorrect result for 3!")
(factorial(4),   24, "Incorrect result for 4!")
(factorial(5),  120, "Incorrect result for 5!")
(factorial(6),  720, "Incorrect result for 6!")
(factorial(7), 5040, "Incorrect result for 7!")

// MARK: - Difference of Volumes of Cuboids(8kyu)
//:In this simple exercise, you will create a program that will take two lists of integers, a and b. Each list will consist of 3 positive integers above 0, representing the dimensions of cuboids a and b. You must find the difference of the cuboids' volumes regardless of which is bigger.or example, if the parameters passed are ([2, 2, 3], [5, 4, 1]), the volume of a is 12 and the volume of b is 20. Therefore, the function should return 8.Your function will be tested with pre-made examples as well as random ones.If you can, try writing it in one line of code.

func findDifference(_ a: [Int], _ b: [Int]) -> Int {
    //  Your code here!
    var aResult = 1
    var bResult = 1
    for i in 0..<a.count {
        aResult *= a[i]
        bResult *= b[i]
    }
    return  abs(aResult - bResult)
}
(findDifference([3, 2, 5], [1, 4, 4]), 14, "\(findDifference([3, 2, 5], [1, 4, 4])) should equal 14")
(findDifference([9, 7, 2], [5, 2, 2]), 106, "\(findDifference([9, 7, 2], [5, 2, 2])) should equal 106")

// MARK: - Doubleton number(7kyu)
//:We will call a natural number a "doubleton number" if it contains exactly two distinct digits. For example, 23, 35, 100, 12121 are doubleton numbers, and 123 and 9980 are not.For a given natural number n (from 1 to 1 000 000), you need to find the next doubleton number. If n itself is a doubleton, return the next bigger than n.
// Examples:
// doubleton(120) == 121
// doubleton(1234) == 1311
// doubleton(10) == 12

func doubleton(_ num: Int) -> Int {
    var number = num + 1
    var result = 0
    for i in number... {
        if Set(String(i).compactMap{$0.wholeNumberValue}).count == 2 {
            result = i
            break
        }
    }
    return result
}
// Result

func tests() {
    let testCases = [ (130, 131), (1434, 1441), (20, 21),(5, 10),(131, 133)]
    for testCase in testCases {
        (doubleton(testCase.0), testCase.1)
    }
}
tests()

// MARK: - Descending Order (7kyu)
//:Your task is to make a function that can take any non-negative integer as an argument and return it with its digits in descending order. Essentially, rearrange the digits to create the highest possible number.
// Examples:
// Input: 42145 Output: 54421
// Input: 145263 Output: 654321
// Input: 123456789 Output: 987654321

func descendingOrder(of number: Int) -> Int {
    return String(number).compactMap{$0.wholeNumberValue}.sorted(by: {$0 > $1}).reduce(0, {$0*10 + $1})
}
(descendingOrder(of: 0), 0)
(descendingOrder(of: 15), 51)
(descendingOrder(of: 123456789), 987654321)

// MARK: - Quarter of the year(8kyu)
//:Given a month as an integer from 1 to 12, return to which quarter of the year it belongs as an integer number.For example: month 2 (February), is part of the first quarter; month 6 (June), is part of the second quarter; and month 11 (November), is part of the fourth quarter.
//Constraint:
//1 <= month <= 12

func quarter(of month: Int) -> Int {
    switch month {
    case  1...3:
        return 1
    case 4...6:
        return 2
    case 7...9:
        return 3
    case 10...12:
        return 4
    default:
        return 0
    }
}
// Result
func basicTest() {
    let testCases = [(3, 1),(8, 3),(11, 4),]
    for testCase in testCases {
        (quarter(of: testCase.0), testCase.1)
    }
}
basicTest()

// MARK: - Convert a Boolean to a String(8kyu)

//Implement a function which convert the given boolean value into its string representation. (Note: Only valid inputs will be given.)
func booleanToString(_ b: Bool) -> String {
    String(b)
}

(booleanToString(true), "true")
(booleanToString(false), "false")

// MARK: - Convert boolean values to strings 'Yes' or 'No(8kyu)
//: Complete the method that takes a boolean value and return a "Yes" string for true, or a "No" string for false.

func boolToWord(_ bool: Bool) -> String {
    
    bool == true ?  "Yes":"No"
}

(boolToWord(true), "Yes", "Input: true")
(boolToWord(false), "No", "Input: false")

// MARK: - Grasshopper - Summation(8kyu)
//:Summation
// Write a program that finds the summation of every number from 1 to num. The number will always be a positive integer greater than 0.
// For example (Input -> Output):
// 2 -> 3 (1 + 2)
// 8 -> 36 (1 + 2 + 3 + 4 + 5 + 6 + 7 + 8)
func summation(_ n: Int) -> Int {
    Array(1...n).reduce(0, +)
}

(summation(1), 1)
(summation(8), 36)
(summation(22), 253)
(summation(100), 5050)
(summation(213), 22791)

// MARK: - Dollars and Cents(8kyu)
//:The company you work for has just been awarded a contract to build a payment gateway. In order to help move things along, you have volunteered to create a function that will take a float and return the amount formatting in dollars and cents.39.99 becomes $39.99The rest of your team will make sure that the argument is sanitized before being passed to your function although you will need to account for adding trailing zeros if they are missing (though you won't have to worry about a dangling period).
//Examples:
//3 needs to become $3.00
//3.1 needs to become $3.10
//Good luck! Your team knows they can count on you!

func formatMoney(_ val:Double) -> String {
    "$\( String(format: "%.2f", val))"
}

(formatMoney(0), "$0.00")
(formatMoney(3), "$3.00")
(formatMoney(3.1), "$3.10")
(formatMoney(3.10), "$3.10")
(formatMoney(3.100), "$3.10")
(formatMoney(3.1000000), "$3.10")
(formatMoney(39.99), "$39.99")
(formatMoney(314.16), "$314.16")
(formatMoney(123456789.166666), "$123456789.17")

// MARK: - Grasshopper - Check for factor(8kyu)
//:This function should test if the factor is a factor of base.Return true if it is a factor or false if it is not.About factorsFactors are numbers you can multiply together to get another number.2 and 3 are factors of 6 because: 2 * 3 = 6You can find a factor by dividing numbers. If the remainder is 0 then the number is a factor. You can use the mod operator (%) in most languages to check for a remainder For example 2 is not a factor of 7 because: 7 % 2 = 1 Note: base is a non-negative number, factor is a positive number.

func checkForFactor(_ base: Int, _ factor: Int) -> Bool {
    
    base % factor == 0 ?  true:false
}

(checkForFactor(10, 2), true)
(checkForFactor(63, 7), true)
(checkForFactor(2450, 5), true)
(checkForFactor(24612, 3), true)
(checkForFactor(9, 2), false)
(checkForFactor(653, 7), false)
(checkForFactor(2453, 5), false)
(checkForFactor(24617, 3), false)

// MARK: - Get the mean of an array(8kyu)
//:It's the academic year's end, fateful moment of your school report. The averages must be calculated. All the students come to you and entreat you to calculate their average for them. Easy ! You just need to write a script. Return the average of the given array rounded down to its nearest integer. The array will never be empty.
func getAverage(_ marks: [Int]) -> Int {
    marks.map{$0}.reduce(0,+) / marks.count
}
(getAverage([2,2,2,2]),2);
(getAverage([1,2,3,4,5,]),3);
(getAverage([1,1,1,1,1,1,1,2]),1)

// MARK: - Is n divisible by x and y?(8kyu)
//:Create a function that checks if a number n is divisible by two numbers x AND y. All inputs are positive, non-zero numbers.

func isDivisible(_ n: Int, _ x: Int, _ y: Int) -> Bool {
    // your code here
    
    n % x == 0 && n % y == 0 ? true:false
}

(isDivisible(3, 3, 4), false)
(isDivisible(12, 3, 4), true)
(isDivisible(8, 3, 4), false)
(isDivisible(48, 3, 4), true)
(isDivisible(100, 5, 10), true)
(isDivisible(100, 5, 3), false)
(isDivisible(4, 4, 2), true)
(isDivisible(5, 2, 3), false)
(isDivisible(17, 17, 17), true)
(isDivisible(17, 1, 17), true)

// MARK: - Beginner - Reduce but Grow(8kyu)
//:Given a non-empty array of integers, return the result of multiplying the values together in order. Example:
// [1, 2, 3, 4] => 1 * 2 * 3 * 4 = 24
func grow(_ arr: [Int]) -> Int {
    arr.reduce(1,*)
}

(6, grow([1,2,3]))
(16, grow([4,1,1,1,4]))
(64, grow([2,2,2,2,2,2]))

// MARK: - You Can't Code Under Pressure #1(8kyu)
//:Code as fast as you can! You need to double the integer and return it.

func doubleInteger(_ num: Int) -> Int {
    
    return num + num
}
(doubleInteger(2), 4, "Incorrect answer for num = 2")
(doubleInteger(4), 8, "Incorrect answer for num = 4")
(doubleInteger(-10), -20, "Incorrect answer for num = -10")
(doubleInteger(0), 0, "Incorrect answer for num = 0")
(doubleInteger(100), 200, "Incorrect answer for num = 100")

// MARK: - Sum of positive(8kyu)
//:You get an array of numbers, return the sum of all of the positives ones.
// Example [1,-4,7,12] => 1 + 7 + 12 = 20
// Note: if there is nothing to sum, the sum is default to 0.

func sumOfPositives (_ numbers: [Int] ) -> Int {
    numbers.filter{$0 > 0}.reduce(0,+)
    
}
(sumOfPositives([1,2,3,4,5]), 15);
(sumOfPositives([1,-2,3,4,5]), 13);
(sumOfPositives([-1,2,3,4,-5]), 9);
(sumOfPositives([]), 0);

// MARK: - Function 2 - squaring an argument(8kyu)
//:Now you have to write a function that takes an argument and returns the square of it.
func square(_ num: Int) -> Int {
    
    num * num
}

(square(-2), 4, "Incorrect result for num=-2")
(square(-1), 1, "Incorrect result for num=-1")
(square(0), 0, "Incorrect result for num=0")
(square(1), 1, "Incorrect result for num=1")
(square(2), 4, "Incorrect result for num=2")
(square(3), 9, "Incorrect result for num=3")
(square(4), 16, "Incorrect result for num=4")
(square(5), 25, "Incorrect result for num=5")

// MARK: - Grasshopper - Messi goals function(8kyu)
//Messi goals function Messi is a soccer player with goals in three leagues:
// LaLiga
// Copa del Rey
// Champions
// Complete the function to return his total number of goals in all three leagues.
// Note: the input will always be valid.
// For example:
// 5, 10, 2  -->  17
func goals(laLigaGoals: Int, copaDelReyGoals: Int, championsLeagueGoals: Int) -> Int {
    laLigaGoals + copaDelReyGoals + championsLeagueGoals
}
// RESULT
func testSample() {
    var laLigaGoals: Int
    var copaDelReyGoals: Int
    var championsLeagueGoals: Int
    var expected: Int
    
    laLigaGoals = 0; copaDelReyGoals = 0; championsLeagueGoals = 0
    expected = laLigaGoals + copaDelReyGoals + championsLeagueGoals
    (goals(laLigaGoals: laLigaGoals,copaDelReyGoals: copaDelReyGoals,championsLeagueGoals: championsLeagueGoals), expected, "Incorrect result for laLigaGoals:\(laLigaGoals) copaDelReyGoals:\(copaDelReyGoals) championsLeagueGoals:\(championsLeagueGoals)")
    
    laLigaGoals = 43; copaDelReyGoals = 10; championsLeagueGoals = 5
    expected = laLigaGoals + copaDelReyGoals + championsLeagueGoals
    (goals(laLigaGoals: laLigaGoals,copaDelReyGoals: copaDelReyGoals,championsLeagueGoals: championsLeagueGoals), expected, "Incorrect result for laLigaGoals:\(laLigaGoals) copaDelReyGoals:\(copaDelReyGoals) championsLeagueGoals:\(championsLeagueGoals)")
}

testSample()

// MARK: - BASIC: Making Six Toast.(8kyu)
//: Story:You are going to make toast fast, you think that you should make multiple pieces of toasts and once. So, you try to make 6 pieces of toast.
//Problem:
//You forgot to count the number of toast you put into there, you don't know if you put exactly six pieces of toast into the toasters. Define a function that counts how many more (or less) pieces of toast you need in the toasters. Even though you need more or less, the number will still be positive, not negative.
// Examples: You must return the number of toast the you need to put in (or to take out). In case of 5 you can still put 1 toast in:
//six_toast(5) == 1
//And in case of 12 you need 6 toasts less (but not -6):
//six_toast(12) == 6

func sixToast(_ num: Int) -> Int {
    return abs(num - 6)
}

(sixToast(15), 9, "Incorrect answer for num = 15")
(sixToast(6), 0, "Incorrect answer for num = 6")
(sixToast(7), 1, "Incorrect answer for num = 7")
(sixToast(4), 2, "Incorrect answer for num = 4")

// MARK: - Third Angle of a Triangle(8kyu)
//:You are given two interior angles (in degrees) of a triangle. Write a function to return the 3rd. Note: only positive integers will be tested. https://en.wikipedia.org/wiki/Triangle

func otherAngle(a: Int, b: Int) -> Int {
    
    abs((a + b) - 180)
}

(otherAngle(a:30, b:60), 90, "Incorrect result for a:30 b:60")
(otherAngle(a:60, b:60), 60, "Incorrect result for a:60 b:60")
(otherAngle(a:43, b:78), 59, "Incorrect result for a:43 b:78")
(otherAngle(a:10, b:20), 150, "Incorrect result for a:10 b:20")

// MARK: - Simple multiplication(8kyu)
//:This kata is about multiplying a given number by eight if it is an even number and by nine otherwise.
func simpleMultiplication(_ num: Int) -> Int {
    
    num % 2 == 0 ? num * 8:num * 9
}

(simpleMultiplication(8), 64)
(simpleMultiplication(2), 16)
(simpleMultiplication(5), 45)
(simpleMultiplication(21), 189)

// MARK: - Never visit a . . . !?(8kyu)
//:Subtract the sum
//NOTE! This kata can be more difficult than regular 8-kyu katas (lets say 7 or 6 kyu)

// Complete the function which get an input number n such that n >= 10 and n < 10000, then:
//
// Sum all the digits of n.
// Subtract the sum from n, and it is your new n.
// If the new n is in the list below return the associated fruit, otherwise return back to task 1.
// Example
// n = 325
// sum = 3+2+5 = 10
// n = 325-10 = 315 (not in the list)
// sum = 3+1+5 = 9
// n = 315-9 = 306 (not in the list)
// sum = 3+0+6 = 9
// n =306-9 = 297 (not in the list)
// ...until you find the first n in the list below.
// There is no preloaded code to help you. This is not about coding skills; think before you code

func subtractSum(_ n: Int) -> String {
    Int("\(n)".map{String($0)}.reduce("",+))! - "\(n)".compactMap({$0.wholeNumberValue}).reduce(0, +) == 9 ? "apple":"apple"
}
(subtractSum(10), "apple")

// MARK: - Sum The Strings(8kyu)
//:Create a function that takes 2 integers in form of a string as an input, and outputs the sum (also as a string):
// Example: (Input1, Input2 -->Output)
// "4",  "5" --> "9"
// "34", "5" --> "39"
// "", "" --> "0"
// "2", "" --> "2"
// "-5", "3" --> "-2"
// Notes:
// If either input is an empty string, consider it as zero.
// Inputs and the expected output will never exceed the signed 32-bit integer limit (2^31 - 1)

func sum_str(_ a:String, _ b:String) -> String {
    //     happy coding !
    String(Int((Int(a) == nil ? "0":a))!  + Int((Int(b) == nil ? "0":b))!)
}

(sum_str("4","5"), "9")
(sum_str("34","5"), "39")
(sum_str("9",""), "9")
(sum_str("",""), "0")

// MARK: - Count the Monkeys!(8kyu)
//:You take your son to the forest to see the monkeys. You know that there are a certain number there (n), but your son is too young to just appreciate the full number, he has to start counting them from 1.As a good parent, you will sit and count with him. Given the number (n), populate an array with all numbers up to and including that number, but excluding zero.
// For example(Input --> Output):
//10 --> [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
//1 --> [1]

func monkeyCount(_ n: Int) -> [Int] {
    
    Array(1...n)
}

(monkeyCount(5), [1, 2, 3, 4, 5])
(monkeyCount(3), [1, 2, 3])
(monkeyCount(9), [1, 2, 3, 4, 5, 6, 7, 8, 9])
(monkeyCount(10), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10])
(monkeyCount(20), [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20])

// MARK: - You only need one - Beginner(8kyu)
//You will be given an array a and a value x. All you need to do is check whether the provided array contains the value. The type of a and x can be String or Int. Return true if the array contains the value, false if not.

func check<T: Equatable>(_ a: [T], _ x: T) -> Bool {
    // Your code here
    a.contains(x)
}

// Result
class SampleTests  {
    static let exampleStringTests = [
        (["t", "e", "s", "t"], "e" , true),
        (["what", "a", "great", "kata"], "kat" , false)
    ]
    
    static let exampleIntTests = [
        ([66, 101], 66, true),
        ([80, 117, 115, 104, 45, 85, 112, 115], 45 , true)
    ]
    
    static var allTests = [
        ("Example Tests", runExampleTests)
    ]
    
    func runExampleTests() {
        for test in SampleTests.exampleStringTests {
            (check(test.0, test.1), test.2)
        }
        for test in SampleTests.exampleIntTests {
            (check(test.0, test.1), test.2)
        }
    }
}
SampleTests().runExampleTests()

// MARK: - Grasshopper - Terminal game move function(8kyu)
//:Terminal game move function In this game, the hero moves from left to right. The player rolls the dice and moves the number of spaces indicated by the dice two times. Create a function for the terminal game that takes the current position of the hero and the roll (1-6) and return the new position.
// Example:
// move(3, 6) should equal 15

func move(_ p: Int, _ r: Int) -> Int {
    // your code here
    p + (r + r)
}
(move(0, 4), 8)
(move(3, 6), 15)
(move(2, 5), 12)

// MARK: - Get Planet Name By ID(8kyu)
//:he function is not returning the correct values. Can you figure out why?
// Example (Input --> Output ):
// 3 --> "Earth"

func getPlanetName(_ id: Int) -> String {
    switch id {
    case 1:
        return "Mercury"
    case 2:
        return "Venus"
    case 3:
        return  "Earth"
    case 4:
        return  "Mars"
    case 5:
        return "Jupiter"
    case 6:
        return  "Saturn"
    case 7:
        return  "Uranus"
    case 8:
        return "Neptune"
    default:
        return ""
    }
}
(getPlanetName(2),"Venus")
(getPlanetName(5),"Jupiter")
(getPlanetName(3),"Earth")

// MARK: - Convert a Number to a String!(8kyu)
//:We need a function that can transform a number (integer) into a string.
// What ways of achieving this do you know?
// Examples (input --> output):
// 123  --> "123"
// 999  --> "999"
// -100 --> "-100"

func numberToString(number: Int) -> String {
    // TODO Your code goes here!
    "\(number)".map{String($0)}.reduce("", +)
}
(numberToString(number: 5), "5")
(numberToString(number: 79585), "79585")
(numberToString(number: 1+2), "3")
(numberToString(number: 1-2), "-1")

// MARK: - A wolf in sheep's clothing(8kyu)
//:Wolves have been reintroduced to Great Britain. You are a sheep farmer, and are now plagued by wolves which pretend to be sheep. Fortunately, you are good at spotting them.Warn the sheep in front of the wolf that it is about to be eaten. Remember that you are standing at the front of the queue which is at the end of the array: [sheep, sheep, sheep, sheep, sheep, wolf, sheep, sheep]      (YOU ARE HERE AT THE FRONT OF THE QUEUE) 7      6      5      4      3            2      1 If the wolf is the closest animal to you, return "Pls go away and stop eating my sheep". Otherwise, return "Oi! Sheep number N! You are about to be eaten by a wolf!" where N is the sheep's position in the queue. (Note: there will always be exactly one wolf in the array.)
// Examples
// Input: ["sheep", "sheep", "sheep", "wolf", "sheep"]
// Output: "Oi! Sheep number 1! You are about to be eaten by a wolf!"
// Input: ["sheep", "sheep", "wolf"]
// Output: "Pls go away and stop eating my sheep"

func warnTheSheep(_ queue: [String]) -> String {
    var result :[String] =  queue.reversed()
    return  queue.last != "wolf" ?  "Oi! Sheep number \(result.firstIndex(of: "wolf") ?? 0)! You are about to be eaten by a wolf!":"Pls go away and stop eating my sheep"
}

(warnTheSheep(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]), "Oi! Sheep number 2! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "sheep", "sheep", "sheep", "wolf", "sheep", "sheep"]).")
(warnTheSheep(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 5! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep", "sheep", "sheep", "sheep", "sheep"]).")
(warnTheSheep(["wolf", "sheep", "sheep", "sheep", "sheep", "sheep", "sheep"]), "Oi! Sheep number 6! You are about to be eaten by a wolf!", "Testing for \(["sheep", "sheep", "wolf"]).")
(warnTheSheep(["sheep", "wolf", "sheep"]), "Oi! Sheep number 1! You are about to be eaten by a wolf!", "Testing for \(["sheep", "wolf", "sheep"])")
(warnTheSheep(["sheep", "sheep", "wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["sheep", "sheep", "wolf"]).")
(warnTheSheep(["wolf"]), "Pls go away and stop eating my sheep", "Testing for \(["wolf"]).")

// MARK: - Stringy Strings(8kyu)
//:write me a function stringy that takes a size and returns a string of alternating 1s and 0s.the string should start with a 1. a string with size 6 should return :'101010'. with size 4 should return : '1010'. with size 12 should return : '101010101010'. The size will always be positive and will only use whole numbers.

func stringy(_ size: Int) -> String {
    (1...size).map{$0 % 2 == 0  ? "0":"1"}.reduce("",+)
}
(stringy(1), "1")
(stringy(2), "10")
(stringy(3), "101")

// MARK: - Multiply(8kyu)
//:This code does not execute properly. Try to figure out why.
func multiply(_ a: Double, _ b: Double) -> Double {
    
    Double(b * a )
}

(multiply(1, 3), 3, accuracy:0.0000001)
(multiply(0, 3), 0, accuracy:0.0000001)
(multiply(-1, 3), -3, accuracy:0.0000001)

// MARK: - Expressions Matter(8kyu)
//:Task

// Given three integers a ,b ,c, return the largest number obtained after inserting the following operators and brackets: +, *, ()
// In other words , try every combination of a,b,c with [*+()] , and return the Maximum Obtained (Read the notes for more detail about it)
// Example
// With the numbers are 1, 2 and 3 , here are some ways of placing signs and brackets:
// 1 * (2 + 3) = 5
// 1 * 2 * 3 = 6
// 1 + 2 * 3 = 7
// (1 + 2) * 3 = 9
// So the maximum value that you can obtain is 9.
// Notes
// The numbers are always positive.
// The numbers are in the range (1  ≤  a, b, c  ≤  10).
// You can use the same operation more than once.
// It's not necessary to place all the signs and brackets.
// Repetition in numbers may occur .
// You cannot swap the operands. For instance, in the given example you cannot get expression (1 + 3) * 2 = 8.
// Input >> Output Examples:
// expressionsMatter(1,2,3)  ==>  return 9
// Explanation:
// After placing signs and brackets, the Maximum value obtained from the expression (1+2) * 3 = 9.

func expressionMatter(_ a: Int, _ b: Int, _ c: Int) -> Int {
    // your code here
    Array(arrayLiteral: a * (b + c),a * b * c,a + b * c,(a + b) * c,a + b + c,(a * b) + c, a * b + c).max()!
}
(expressionMatter(2, 1, 2), 6)
(expressionMatter(2, 1, 1), 4)
(expressionMatter(1, 1, 1), 3)
(expressionMatter(1, 2, 3), 9)
(expressionMatter(1, 3, 1), 5)
(expressionMatter(2, 2, 2), 8)
(expressionMatter(5, 1, 3), 20)
(expressionMatter(3, 5, 7), 105)
(expressionMatter(5, 6, 1), 35)
(expressionMatter(1, 6, 1), 8)
(expressionMatter(2, 6, 1), 14)
(expressionMatter(6, 7, 1), 48)
(expressionMatter(2, 10, 3), 60)
(expressionMatter(1, 8, 3), 27)
(expressionMatter(9, 7, 2), 126)
(expressionMatter(1, 1, 10), 20)
(expressionMatter(9, 1, 1), 18)
(expressionMatter(10, 5, 6), 300)
(expressionMatter(1, 10, 1), 12)

// MARK: - Get Nth Even Number(8kyu)
//:Return the Nth Even Number
// Example(Input --> Output)
// 1 --> 0 (the first even number is 0)
// 3 --> 4 (the 3rd even number is 4 (0, 2, 4))
// 100 --> 198
// 1298734 --> 2597466
// The input will not be 0.

func nthEven(_ n: Int) -> Int {
    (n * 2) - 2
}
(nthEven(1), 0)
(nthEven(2), 2)
(nthEven(3), 4)
(nthEven(100), 198)
(nthEven(1298734), 2597466)

// MARK: - Kata Example Twist(8kyu)
//:This is an easy twist to the example kata (provided by Codewars when learning how to create your own kata). Add the value "codewars" to the array websites 1,000 times.
var websites: [String] = [String](repeating: "codewars", count: 1000)
(websites.count, 1000, "The websites array has \(websites.count) elements.  It should have 1000 elements")
(websites.allSatisfy { $0 == "codewars" }, "Every element in the websites array must be \"codewars\"")

// MARK: - Gravity Flip(8kyu)
//If you've completed this kata already and want a bigger challenge, here's the 3D version
//Bob is bored during his physics lessons so he's built himself a toy box to help pass the time. The box is special because it has the ability to change gravity.
//There are some columns of toy cubes in the box arranged in a line. The i-th column contains a_i cubes. At first, the gravity in the box is pulling the cubes downwards. When Bob switches the gravity, it begins to pull all the cubes to a certain side of the box, d, which can be either 'L' or 'R' (left or right). Below is an example of what a box of cubes might look like before and after switching gravity.

func flip(_ direction: String, _ a: [Int]) -> [Int] {
    // Do some magic
    direction == "R" ? a.sorted():a.sorted{$0>$1}
}
(flip("R", [3, 2, 1, 2]), [1, 2, 2, 3])
(flip("L", [1, 4, 5, 3, 5]), [5, 5, 4, 3, 1])

// MARK: - Waiting room(7kyu)
//:There's a waiting room with N chairs set in single row. Chairs are consecutively numbered from 1 to N. First is closest to the entrance (which is exit as well). For some reason people choose a chair in the following way
// Find a place as far from other people as possible
// Find a place as close to exit as possible
// All chairs must be occupied before the first person will be served
// So it looks like this for 10 chairs and 10 patients
// Chairs    1    2    3    4    5    6    7    8    9    10
// Patients    1    7    5    8    3    9    4    6    10    2
// Your task is to find last patient's chair's number.
// Input: number of chairs N, an integer greater than 2.
// Output: a positive integer, the last patient's chair number.
// Have fun :)

func lastChair(_ n: Int) -> Int {
    // user code ..
    Array(0..<n)[n - 1]
}

(lastChair(10), 9)

// MARK: - Leap Years(7kyu)
// In this kata you should simply determine, whether a given year is a leap year or not. In case you don't know the rules, here they are:
// years divisible by 4 are leap years
// but years divisible by 100 are not leap years
// but years divisible by 400 are leap years
// Additional Notes:
// Only valid years (positive integers) will be tested, so you don't have to validate them
// Examples can be found in the test fixture.

func isLeapYear(_ year: Int) -> Bool {
    if year % 4 == 0 {
        if year % 100 == 0 && year % 400 != 0 {
            return   false
        } else {
            return  true
        }
    } else {
        return false
    }
}
// RESULT
class SampleTest {
    
    static var sampleTests = [
        ("Year 2020 is a leap year",   test2020),
        ("Year 2000 is a leap year",   test2000),
        ("Year 2015 is not a leap year",   test2015),
        ("Year 2100 is not a leap year",   test2100),
    ]
    
    func test2020() {
        (isLeapYear(2020), true)
    }
    func test2000() {
        (isLeapYear(2000), true)
    }
    func test2015() {
        (isLeapYear(2015), false)
    }
    func test2100() {
        (isLeapYear(2100), false)
    }
}
SampleTest().test2020()
SampleTest().test2000()
SampleTest().test2015()
SampleTest().test2100()

// MARK: - Minimum Perimeter of a Rectangle(7kyu)
//:A rectangle is can be defined by two factors: height and width.
// Its area is defined as the multiplication of the two: height * width.
// Its perimeter is the sum of its four edges: height + height + width + width.
// It is possible to create rectangles of the same area but different perimeters. For example, given an area of 45, the possible heights, widths and resultant perimeters would be:
// (1, 45) = 92
// (9, 5) = 28
// (15, 3) = 36
// Note that (6, 7.5) has an area of 45 too, but is discarded in this kata because its width is non integral.
// The task is to write a function that, given an area as a positive integer, returns the smallest perimeter possible of a rectangle with integral side lengths.
// Input range:
// 1 <= area <= 5 x 10 ^ 10

func minimumPerimeter(_ area: Int64) -> Int64 {
    var sqrt:Int64 = Int64(sqrtf(Float(area)))
    for i in stride(from: sqrt, to: 0, by: -1) {
        if area % i == 0 {
            return   2 * (i  + area / i)
        }
    }
    return  0
}

class SolutionTest {
    static var allTests = [
        (" Basic tests", basicTests),
    ]
    
    func doTest(n: Int64, expected: Int64) {
        let actual = minimumPerimeter(n)
        (actual == expected, "Incorrect answer for area = \(n)\nActual: \(actual)\nExpected: \(expected)")
    }
    
    func basicTests() {
        doTest(n: 45, expected: 28)
        doTest(n: 30, expected: 22)
        doTest(n: 81, expected: 36)
        doTest(n: 89, expected: 180)
        doTest(n: 10000019, expected: 20000040)
        doTest(n: 982451653, expected: 1964903308)
    }
}
SolutionTest().basicTests()

// MARK: - Simple Fun #74: Growing Plant(7kyu)
// Task
//Each day a plant is growing by upSpeed meters. Each night that plant's height decreases by downSpeed meters due to the lack of sun heat. Initially, plant is 0 meters tall. We plant the seed at the beginning of a day. We want to know when the height of the plant will reach a certain level.
// Example
// For upSpeed = 100, downSpeed = 10 and desiredHeight = 910, the output should be 10.
// After day 1 --> 100
// After night 1 --> 90
// After day 2 --> 190
// After night 2 --> 180
// After day 3 --> 280
// After night 3 --> 270
// After day 4 --> 370
// After night 4 --> 360
// After day 5 --> 460
// After night 5 --> 450
// After day 6 --> 550
// After night 6 --> 540
// After day 7 --> 640
// After night 7 --> 630
// After day 8 --> 730
// After night 8 --> 720
// After day 9 --> 820
// After night 9 --> 810
// After day 10 --> 910
// For upSpeed = 10, downSpeed = 9 and desiredHeight = 4, the output should be 1.
// Because the plant reach to the desired height at day 1(10 meters).
// After day 1 --> 10
// Input/Output
// [input] integer upSpeed
// A positive integer representing the daily growth.
// Constraints: 5 ≤ upSpeed ≤ 100.
//[input] integer downSpeed
//A positive integer representing the nightly decline.
//Constraints: 2 ≤ downSpeed < upSpeed.
//[input] integer desiredHeight
//A positive integer representing the threshold.
//Constraints: 4 ≤ desiredHeight ≤ 1000.
//[output] an integer
// The number of days that it will take for the plant to reach/pass desiredHeight (including the last day in the total count).

func growingPlant(_ upSpeed: Int, _ downSpeed: Int, _ desiredHeight: Int) -> Int {
    var totalHeight =  upSpeed
    var day = 1
    while totalHeight < desiredHeight{
        totalHeight -= downSpeed
        totalHeight +=  upSpeed
        day += 1
    }
    return day
}

(growingPlant(100, 10, 910), 10)
(growingPlant(10, 9, 4), 1)
(growingPlant(5, 2, 5), 1)
(growingPlant(5, 2, 6), 2)

// MARK: - Mumbling(7kyu)
//:This time no story, no theory. The examples below show you how to write function accum:
// Examples:
// accum("abcd") -> "A-Bb-Ccc-Dddd"
// accum("RqaEzty") -> "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy"
// accum("cwAt") -> "C-Ww-Aaa-Tttt"
// The parameter of accum is a string which includes only letters from a..z and A..Z.

func accum(_ s: String) -> String {
    var str = ""
    var character:[String] = s.map{String($0)}
    for  i in  0..<s.count{
        str += "-"
        for _ in 0...i {
            str  +=  character[i]
        }
    }
    var  removeFirstİndex = str.dropFirst()
    return   removeFirstİndex.capitalized
}
(accum("abcd"), "A-Bb-Ccc-Dddd")
(accum("RqaEzty"), "R-Qq-Aaa-Eeee-Zzzzz-Tttttt-Yyyyyyy")
(accum("cwAt"), "C-Ww-Aaa-Tttt")

// MARK: - Printer Errors(7kyu)
//:n a factory a printer prints labels for boxes. For one kind of boxes the printer has to use colors which, for the sake of simplicity, are named with letters from a to m.
// The colors used by the printer are recorded in a control string. For example a "good" control string would be aaabbbbhaijjjm meaning that the printer used three times color a, four times color b, one time color h then one time color a... Sometimes there are problems: lack of colors, technical malfunction and a "bad" control string is produced e.g. aaaxbbbbyyhwawiwjjjwwm with letters not from a to m. You have to write a function printer_error which given a string will return the error rate of the printer as a string representing a rational whose numerator is the number of errors and the denominator the length of the control string. Don't reduce this fraction to a simpler expression. The string has a length greater or equal to one and contains only letters from ato z.
// Examples:
// s="aaabbbbhaijjjm"
// printer_error(s) => "0/14"
// s="aaaxbbbbyyhwawiwjjjwwm"
// printer_error(s) => "8/22"

func printerError(_ s: String) -> String {
    return "\(s.filter{$0 > "m"}.count)/\(s.count)"
}
let actual = 1
(actual, 1)

// MARK: - Triangular Treasure(7kyu)
//:Triangular numbers are so called because of the equilateral triangular shape that they occupy when laid out as dots. i.e.

func triangular(_ n: Int) -> Int{
    var sum = ""
    if n < 0 {
        return 0
    }else {
        for i in 0..<n {
            for _ in 0...i {
                sum += "*"
            }
            if n < 0 {
            }
        }
        return  sum.count
    }
}
let actual1 = 1
(actual, 1)

// MARK: - Disemvowel Trolls(7kyu)
//:Trolls are attacking your comment section!
// A common way to deal with this situation is to remove all of the vowels from the trolls' comments, neutralizing the threat.
// Your task is to write a function that takes a string and return a new string with all vowels removed.
// For example, the string "This website is for losers LOL!" would become "Ths wbst s fr lsrs LL!".
// Note: for this kata y isn't considered a vowel.
func disemvowel(_ s: String) -> String {
    var n = s
    let characters: Set<Character> = ["a","A","E","e","I","i","O","o","U","u"]
    n.removeAll(where:{characters.contains($0)})
    return n
}

("Ths wbst s fr lsrs LL!", disemvowel("This website is for losers LOL!"))
("N ffns bt,\nYr wrtng s mng th wrst 'v vr rd", disemvowel("No offense but,\nYour writing is among the worst I've ever read"))
("Wht r y,  cmmnst?", disemvowel("What are you, a communist?"))

// MARK: - Drying Potatoes(7kyu)
//:All we eat is water and dry matter.
//Let us begin with an example:
//John bought potatoes: their weight is 100 kilograms. Potatoes contain water and dry matter. The water content is 99 percent of the total weight. He thinks they are too wet and puts them in an oven - at low temperature - for them to lose some water.
// At the output the water content is only 98%.
// What is the total weight in kilograms (water content plus dry matter) coming out of the oven?
// He finds 50 kilograms and he thinks he made a mistake: "So much weight lost for such a small change in water content!"
// Can you help him?
// Task
// Write function potatoes with
// int parameter p0 - initial percent of water-
// int parameter w0 - initial weight -
// int parameter p1 - final percent of water -
// potatoesshould return the final weight coming out of the oven w1 truncated as an int.
// Example:
// potatoes(99, 100, 98) --> 50

func potatoes (_ p0: Int, _ w0: Int, _ p1: Int) -> Int {
    // your code
    Int(floor( Double(w0 * (100 - p0) / (100 - p1))))
}

func dotest(_ p0: Int, _ w0: Int, _ p1: Int, _ exp: Int) {
    let ans = potatoes(p0, w0, p1)
    (ans, exp)
}

func testExample() {
    dotest(99, 100, 98, 50)
    dotest(82, 127, 80, 114)
}
testExample()

// MARK: - Easy wallpape(7kyu)
//John wants to decorate the walls of a room with wallpaper. He wants a fool-proof method for getting it right.
// John knows that the rectangular room has a length of l meters, a width of w meters, a height of h meters. The standard width of the rolls he wants to buy is 52 centimeters. The length of a roll is 10 meters. He bears in mind however, that it’s best to have an extra length of wallpaper handy in case of mistakes or miscalculations so he wants to buy a length 15% greater than the one he needs.
//Last time he did these calculations he got a headache, so could you help John?
//Task
//Your function wallpaper(l, w, h) should return as a plain English word in lower case the number of rolls he must buy.
//Example:
//wallpaper(4.0, 3.5, 3.0) should return "ten"
//wallpaper(0.0, 3.5, 3.0) should return "zero"
//Notes:
//all rolls (even with incomplete width) are put edge to edge
//0 <= l, w, h (floating numbers); it can happens that w * h * l is zero
//the integer r (number of rolls) will always be less or equal to 20
//FORTH: the number of rolls will be a positive or null integer (not a plain English word; this number can be greater than 20)
//In Coffeescript, Javascript, Python, Ruby and Scala the English numbers are preloaded and can be accessed as:
//numbers = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine", "ten", "eleven", "twelve","thirteen", "fourteen", "fifteen", "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
//For other languages it is not preloaded and you can instead copy the above list if you desire.

func wallpaper(_ l: Double, _  w: Double,_  h: Double) -> String {
    let numbers = ["zero", "one", "two", "three", "four", "five",
                   "six", "seven", "eight", "nine", "ten",
                   "eleven", "twelve", "thirteen", "fourteen", "fifteen",
                   "sixteen", "seventeen", "eighteen", "nineteen", "twenty"]
    if l <= 0.0 || w <= 0.0 {
        return  numbers[0]
    }else {
        let longWall = ((l * h) / 5.2) * 2
        let shortWall = ((w * h) / 5.2) * 2
        let fifteenPercent = ((longWall + shortWall) / 100 ) * 15
        let sum = (longWall + shortWall) + fifteenPercent
        let rounted = Int(sum.rounded(.up))
        return numbers[rounted]
    }
}

(wallpaper(6.3, 4.5, 3.29), "sixteen")
(wallpaper(0.0, 2.9, 3.29), "zero")
(wallpaper(6.3, 5.8, 3.13), "seventeen")
(wallpaper(0.0, 6.7, 2.81), "zero")

// MARK: - Grasshopper - Grade boo(8kyu)
// Grade book
// Complete the function so that it finds the average of the three scores passed to it and returns the letter value associated with that grade.
// Numerical Score    Letter Grade
// 90 <= score <= 100    'A'
// 80 <= score < 90    'B'
// 70 <= score < 80    'C'
// 60 <= score < 70    'D'
// 0 <= score < 60    'F'
// Tested values are all between 0 and 100. Theres is no need to check for negative values or values greater than 100.

func getGrade(_ s1: Int, _ s2: Int, _ s3: Int) -> String {
    // Code here
    let total = s1 + s2 + s3
    let totalScore = total / 3
    switch totalScore {
    case 90...100:
        return "A"
    case 80...89:
        return "B"
    case 70...79:
        return "C"
    case 60...69:
        return "D"
    case 0...59:
        return "F"
    default:
        return "Aralık Dışı"
    }
}

(getGrade(95,90,93), "A", "Expected A, but got \(getGrade(95,90,93))")
(getGrade(100,85,96), "A", "Expected A, but got \(getGrade(100,85,96))")
(getGrade(92,93,94), "A", "Expected A, but got \(getGrade(92,93,94))")
(getGrade(100,100,100), "A", "Expected A, but got \(getGrade(100,100,100))")
(getGrade(70,70,100), "B", "Expected B but got \(getGrade(70,70,100))")
(getGrade(82,85,87), "B", "Expected B but got \(getGrade(82,85,87))")
(getGrade(84,79,85), "B", "Expected B but got \(getGrade(84,79,85))")
(getGrade(70,70,70), "C", "Expected C but got \(getGrade(70,70,70))")
(getGrade(75,70,79), "C", "Expected C but got \(getGrade(75,70,79))")
(getGrade(60,82,76), "C", "Expected C but got \(getGrade(60,82,76))")
(getGrade(65,70,59), "D",  "Expected D but got \(getGrade(65,70,59))")
(getGrade(66,62,68), "D",  "Expected D but got \(getGrade(66,62,68))")
(getGrade(58,62,70), "D",  "Expected D but got \(getGrade(58,62,70))")
(getGrade(44,55,52), "F", "Expected F but got \(getGrade(44,55,52))")
(getGrade(48,55,52), "F", "Expected F but got \(getGrade(48,55,52))")
(getGrade(58,59,60), "F", "Expected F but got \(getGrade(58,59,60))")
(getGrade(0,0,0), "F", "Expected F but got \(getGrade(0,0,0))")


// MARK: - Maximum Multiple(7kyu)
// Task
// Given a Divisor and a Bound , Find the largest integer N , Such That ,
// Conditions :
// N is divisible by divisor
// N is less than or equal to bound
// N is greater than 0.
// Notes
// The parameters (divisor, bound) passed to the function are only positive values .
// It's guaranteed that a divisor is Found .
// Input >> Output Examples
// divisor = 2, bound = 7 ==> return (6)
// Explanation:
// (6) is divisible by (2) , (6) is less than or equal to bound (7) , and (6) is > 0 .
// divisor = 10, bound = 50 ==> return (50)
// Explanation:
// (50) is divisible by (10) , (50) is less than or equal to bound (50) , and (50) is > 0 .*
// divisor = 37, bound = 200 ==> return (185)
// Explanation:
// (185) is divisible by (37) , (185) is less than or equal to bound (200) , and (185) is > 0 .

func maxMultiple(_ d: Int, _ b: Int) -> Int {
    // your code here
    var arr:[Int] = []
    for i in 0...b {
        if i % d == 0 {
            arr.append(i)
        }
    }
    return  arr.sorted{$0>$1}[0]
}

(maxMultiple(2, 7), 6)
(maxMultiple(3, 10), 9)
(maxMultiple(7, 17), 14)
(maxMultiple(10, 50), 50)
(maxMultiple(37, 200), 185)
(maxMultiple(7, 100), 98)

// MARK: - Credit Card Mask(7kyu)
//:Usually when you buy something, you're asked whether your credit card number, phone number or answer to your most secret question is still correct. However, since someone could look over your shoulder, you don't want that shown on your screen. Instead, we mask it.
//Your task is to write a function maskify, which changes all but the last four characters into '#'.
//Examples (input --> output):
//"4556364607935616" --> "############5616"
//     "64607935616" -->      "#######5616"
//               "1" -->                "1"
//                "" -->                 ""
// "What was the name of your first pet?"
//"Skippy" --> "##ippy"
//"Nananananananananananananananana Batman!" --> "###############################

func maskify(_ string:String) -> String {
    // TODO Your code goes here!
    if string.count <= 0 {
        return ""
    }else if string.count <= 4 {
        return string.map{String($0)}.reduce("", +)
    }else {
        let strArr = string.map{String($0)}[(string.count - 4)...string.count - 1]
        return  String(repeating: "#", count: (string.count) - 4 ).appending(strArr.reduce("", +))
    }
}

(maskify("4556364607935616"), "############5616")
(maskify("1"), "1")
(maskify("11111"), "#1111")

// MARK: - ToLeetSpeak(7kyu)
// Your task is to write a function toLeetSpeak that converts a regular english sentence to Leetspeak.
// More about LeetSpeak You can read at wiki -> https://en.wikipedia.org/wiki/Leet
// Consider only uppercase letters (no lowercase letters, no numbers) and spaces.
// For example:
// toLeetSpeak("LEET") returns "1337"
// In this kata we use a simple LeetSpeak dialect. Use this alphabet:
// {
//   A : '@',
//   B : '8',
//   C : '(',
//   D : 'D',
//   E : '3',
//   F : 'F',
//   G : '6',
//   H : '#',
//   I : '!',
//   J : 'J',
//   K : 'K',
//   L : '1',
//   M : 'M',
//   N : 'N',
//   O : '0',
//   P : 'P',
//   Q : 'Q',
//   R : 'R',
//   S : '$',
//   T : '7',
//   U : 'U',
//   V : 'V',
//   W : 'W',
//   X : 'X',
//   Y : 'Y',
//   Z : '2'
// }

func toLeetSpeak(_ s : String) -> String {
    let dict:[String:String] = ["A":"@","B":"8","C":"(","D":"D","E":"3","F":"F","G":"6","H":"#","I":"!","J":"J","K":"K","L":"1","M":"M","N":"N","O":"0","P":"P","Q":"Q","R":"R","S":"$","T":"7","U":"U","V":"V","W":"W","X":"X","Y":"Y",
                                "Z":"2"]
    return  s.map{dict[String($0),default: " "]}.reduce("", +)
}

(toLeetSpeak("LEET"), "1337")
(toLeetSpeak("CODEWARS"), "(0D3W@R$")
(toLeetSpeak("HELLO WORLD"), "#3110 W0R1D")
(toLeetSpeak("LOREM IPSUM DOLOR SIT AMET"), "10R3M !P$UM D010R $!7 @M37")
(toLeetSpeak("THE QUICK BROWN FOX JUMPS OVER THE LAZY DOG"), "7#3 QU!(K 8R0WN F0X JUMP$ 0V3R 7#3 1@2Y D06")

// MARK: - Over The Road(7kyu)
//:Task

//You've just moved into a perfectly straight street with exactly n identical houses on either side of the road. Naturally, you would like to find out the house number of the people on the other side of the street. The street looks something like this.
//Street
//1|   |6
//3|   |4
//5|   |2
//  you
//Evens increase on the right; odds decrease on the left. House numbers start at 1 and increase without gaps. When n = 3, 1 is opposite 6, 3 opposite 4, and 5 opposite 2.

func overTheRoad(address: Int, street: Int) -> Int {
    if address <= 1  {
        return street  * 2
    }else if address == street {
        return address + 1
    }else {
        
        return   (street * 2) - address + 1
    }
}
func basicTests() {
    let expectedValues = [6, 4, 5, 8, 16]
    let inputsToBeTested = [(1, 3), (3, 3), (2, 3), (3, 5), (7, 11)]
    for (inputs, expectedValue) in zip(inputsToBeTested, expectedValues) {
        let result = overTheRoad(address: inputs.0, street: inputs.1)
        (result, expectedValue, "Testing for address = \(inputs.0) and street = \(inputs.1) failed! Expected \(expectedValue) but got \(result)")
    }
}
basicTest()
// MARK: - Binary Calculator(7kyu)
//In this kata you need to write a function that will receive two strings (n1 and n2), each representing an integer as a binary number. A third parameter will be provided (o) as a string representing one of the following operators: add, subtract, multiply.
// Your task is to write the calculate function so that it will perform the arithmetic and the result returned should be a string representing the binary result.
// Examples:
// 1 + 1 === 10
// 10 + 10 === 100
// Negative binary numbers are usually preceded by several 1's. For this kata, negative numbers can be represented with the negative symbol at the beginning of the string.
// Examples of negatives:
// 1 - 10 === -1
// 10 - 100 === -10

enum Operator {
    case ADD, SUBTRACT, MULTIPLY
}

func calculate(_ a:String, _ b:String, _ op:Operator) -> String {
    switch op {
    case .ADD:
        if  let number =  Int(a,radix: 2), let number2  = Int(b,radix: 2) {
            let result =  number + number2
            return  String(result, radix: 2)
        }
    case .SUBTRACT:
        if  let number =  Int(a,radix: 2), let number2  = Int(b,radix: 2) {
            let result =  number - number2
            return  String(result, radix: 2)
        }
    case .MULTIPLY:
        if  let number =  Int(a,radix: 2), let number2  = Int(b,radix: 2) {
            let result =  number * number2
            return  String(result, radix: 2)
        }
    }
    return ""
}

(calculate("1", "1", .ADD), "10")
(calculate("1", "1", .MULTIPLY), "1")
(calculate("10", "10", .MULTIPLY), "100")
(calculate("100", "10", .SUBTRACT), "10")

// MARK: - Count the Digit(7kyu)
// Take an integer n (n >= 0) and a digit d (0 <= d <= 9) as an integer.
// Square all numbers k (0 <= k <= n) between 0 and n.
// Count the numbers of digits d used in the writing of all the k**2.
// Implement the function taking n and d as parameters and returning this count.
// Examples:
// n = 10, d = 1
// the k*k are 0, 1, 4, 9, 16, 25, 36, 49, 64, 81, 100
// We are using the digit 1 in: 1, 16, 81, 100. The total count is then 4.
// The function, when given n = 25 and d = 1 as argument, should return 11 since
// the k*k that contain the digit 1 are:
// 1, 16, 81, 100, 121, 144, 169, 196, 361, 441.
// So there are 11 digits 1 for the squares of numbers between 0 and 25.
// Note that 121 has twice the digit 1.

// func nbDig(_ n: Int, _ d: Int) -> Int {
//     [Int](0...n).map{"\($0*$0)".map{"\($0)"}.filter{$0 == "\(d)"}}.flatMap{$0}.count
// }
//
// (nbDig(5750, 0), 4700)
// (nbDig(11011, 2), 9481)
// (nbDig(12224, 8), 7733)
// (nbDig(11549, 1), 11905)

// MARK: - Valid Parentheses(7kyu)
// Write a function that takes a string of parentheses, and determines if the order of the parentheses is valid. The function should return true if the string is valid, and false if it's invalid.
// Examples
// "()"              =>  true
// ")(()))"          =>  false
// "("               =>  false
// "(())((()())())"  =>  true
// Constraints
// 0 <= length of input <= 100
// All inputs will be strings, consisting only of characters ( and ).
// Empty strings are considered balanced (and therefore valid), and will be tested.
// For languages with mutable strings, the inputs should not be mutated.
// Protip: If you are trying to figure out why a string of parentheses is invalid, paste the parentheses into the code editor, and let the code highlighting show you!

func validParentheses(_ str: String) -> Bool {
    let charMap: [Character:Character] = [")": "(",]
    var stack:[Character] = []
    for char in str {
        let character = charMap[char]
        if character == nil {
            stack.append(char)
        } else {
            if stack.popLast() != character {
                return false
            }
        }
    }
    return stack.count == 0
}

validParentheses("()")
validParentheses("((()))")
validParentheses("()()()")
validParentheses("(()())()")
validParentheses("()(())((()))(())()")
validParentheses(")(")
validParentheses("()()(")
validParentheses("((())")
validParentheses("())(()")
validParentheses(")()")
validParentheses(")")

// MARK: - Sum of odd numbers(7kyu)

func rowSumOddNumbers(_ row: Int) -> Int {
    row * (row * row )
}
(rowSumOddNumbers(1), 1)
(rowSumOddNumbers(2), 8)
(rowSumOddNumbers(13), 2197)
(rowSumOddNumbers(19), 6859)
(rowSumOddNumbers(41), 68921)
(rowSumOddNumbers(42), 74088)
(rowSumOddNumbers(74), 405224)
(rowSumOddNumbers(86), 636056)
(rowSumOddNumbers(93), 804357)
(rowSumOddNumbers(101), 1030301)

// MARK: - Count the divisors of a number(7kyu)
// Count the number of divisors of a positive integer n.
// Random tests go up to n = 500000.
// Examples (input --> output)
// 4 --> 3 // we have 3 divisors - 1, 2 and 4
// 5 --> 2 // we have 2 divisors - 1 and 5
// 12 --> 6 // we have 6 divisors - 1, 2, 3, 4, 6 and 12
// 30 --> 8 // we have 8 divisors - 1, 2, 3, 5, 6, 10, 15 and 30
// Note you should only return a number, the count of divisors. The numbers between parentheses are shown only for you to see which numbers are counted in each case.

func divisors(_ n: UInt32) -> UInt32 {
    var pointer:UInt32 = 0
    for i in 1...n {
        if n % i == 0 {
            pointer += 1
        }
    }
    return pointer
}

divisors(1)

// MARK: - Square Every Digit(7kyu)
// Welcome. In this kata, you are asked to square every digit of a number and concatenate them.
// For example, if we run 9119 through the function, 811181 will come out, because 92 is 81 and 12 is 1. (81-1-1-81)
// Example #2: An input of 765 will/should return 493625 because 72 is 49, 62 is 36, and 52 is 25. (49-36-25)
// Note: The function accepts an integer and returns an integer.
// Happy Coding!

func squareDigits(_ num: Int) -> Int {
    Int("\(num)".compactMap{String($0.wholeNumberValue! * $0.wholeNumberValue!)}.reduce("", +)) ?? 0
    
}
(squareDigits(9119), 811181)
(squareDigits(0), 0)

// MARK: - Heron's formula(7kyu)
//:Write function heron which calculates the area of a triangle with sides a, b, and c (x, y, z in COBOL).

func heron(_ a: Double, _ b: Double, _ c: Double) -> Double {
    
    let s =  (a + b + c ) / 2
    return   sqrt((s * (s - a) * (s - b) * (s - c) ))
}

func doTest(a: Double, b:Double, c: Double, expected: Double) {
    let actual = heron(a, b, c)
    if abs(actual - expected) > 0.01 {
        (actual == expected, "Incorrect answer for a = \(a), b = \(b), c = \(c)\nActual: \(actual)\nExpected: \(expected)")
    } else {
        (true)
    }
}
func fixedTests() {
    doTest(a: 3.0, b:4.0, c: 5.0, expected: 6)
}
fixedTests()

// MARK: - Shortest Word(7kyu)
//Simple, given a string of words, return the length of the shortest word(s).
//String will never be empty and you do not need to account for different data types.


func find_short(_ str: String) -> Int {
    str.components(separatedBy: .whitespaces).compactMap{$0.count}.min() ?? 0
}

(3, find_short("bitcoin take over the world maybe who knows perhaps"))
(3, find_short("lets talk about javascript the best language"))
(1, find_short("i want to travel the world writing code one day"))
(2, find_short("Lets all go on holiday somewhere very cold"))
(2, find_short("Let's travel abroad shall we"))

// MARK: - Don't give me five!(7kyu)
//: Don't give me five!
// In this kata you get the start number and the end number of a region and should return the count of all numbers except numbers with a 5 in it. The start and the end number are both inclusive!
// Examples:
// 1,9 -> 1,2,3,4,6,7,8,9 -> Result 8
// 4,17 -> 4,6,7,8,9,10,11,12,13,14,16,17 -> Result 12
// The result may contain fives. ;-)
// The start number will always be smaller than the end number. Both numbers can be also negative!
// I'm very curious for your solutions and the way you solve it. Maybe someone of you will find an easy pure mathematics solution.
// Have fun coding it and please don't forget to vote and rank this kata! :-)
// I have also created other katas. Take a look if you enjoyed this kata!

func dontGiveMeFive(_ start: Int, _ end: Int) -> Int {
    let count = [Int](start...end).compactMap{String($0)}.filter{$0.contains("5")}.count
    return  [Int](start...end).count - count
}

(8, dontGiveMeFive(1,9));
(12, dontGiveMeFive(4,17));

// MARK: - Simple Fun #152: Invite More Women?(7kyu)
// Task
// King Arthur and his knights are having a New Years party. Last year Lancelot was jealous of Arthur, because Arthur had a date and Lancelot did not, and they started a duel.
// To prevent this from happening again, Arthur wants to make sure that there are at least as many women as men at this year's party. He gave you a list of integers of all the party goers.
// Arthur needs you to return true if he needs to invite more women or false if he is all set.
// Input/Output
// [input] integer array L ($a in PHP)
// An array (guaranteed non-associative in PHP) representing the genders of the attendees, where -1 represents women and 1 represents men.
// 2 <= L.length <= 50
// [output] a boolean value
//true if Arthur need to invite more women, false otherwise.

func inviteMoreWomen(_ arr: [Int]) -> Bool {
    arr.filter{$0 != 1}.count >= arr.filter{$0 != -1}.count ? false:true
}

(inviteMoreWomen([1, -1, 1]), true)
(inviteMoreWomen([-1, -1, -1]), false)
(inviteMoreWomen([1, -1]), false)
(inviteMoreWomen([1, 1, 1]), true)

// MARK: - Number of Decimal Digits(7kyu)
//:Determine the total number of digits in the integer (n>=0) given as input to the function. For example, 9 is a single digit, 66 has 2 digits and 128685 has 6 digits. Be careful to avoid overflows/underflows. All inputs will be valid.
func digits(num n: UInt64) -> Int {
    "\(n)".map{$0}.count
}

(1,  digits(num: 5))
(5,  digits(num: 12345))
(10, digits(num: 9876543210))

// MARK: - Spacify(7kyu)
// Modify the spacify function so that it returns the given string with spaces inserted between each character.
// spacify("hello world") // "h e l l o   w o r l d"
func spacify(_ str: String) -> String {
    str.map{"\($0)"}.joined(separator: " ")
}
(spacify("hello world"), "h e l l o   w o r l d")
(spacify("12345"),"1 2 3 4 5")
(spacify(""), "")
(spacify("a"),"a")
(spacify("Pippi"),"P i p p i")

// MARK: - Sum of integers in string(7kyu)
//Your task in this kata is to implement a function that calculates the sum of the integers inside a string. For example, in the string "The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog", the sum of the// integers is 3635. Note: only positive integers will be tested.

func sumOfIntegersInString(_ string: String) -> Int {
    string.components(separatedBy: CharacterSet.decimalDigits.inverted).compactMap{Int($0)}.reduce(0, +)
}
(sumOfIntegersInString("12.4"), 16)
(sumOfIntegersInString("h3ll0w0rld"), 3)
(sumOfIntegersInString("2 + 3 = "), 5)
(sumOfIntegersInString("Our company made approximately 1 million in gross revenue last quarter."), 1)
(sumOfIntegersInString("The Great Depression lasted from 1929 to 1939."), 3868)
(sumOfIntegersInString("Dogs are our best friends."), 0)
(sumOfIntegersInString("C4t5 are 4m4z1ng."), 18)
(sumOfIntegersInString("The30quick20brown10f0x1203jumps914ov3r1349the102l4zy dog"), 3635)

// MARK: - Enumerable Magic #25 - Take the First N Elements(8kyu)
//Create a function take that takes an Array<Int> and an Int, n, and returns an Array<Int> containing the first up to n elements from the array.
//If you need help, here's a reference:
//https://developer.apple.com/documentation/swift/array

func take(_ arr: [Int], _ n: Int) -> [Int] {
    arr.prefix(n).compactMap{$0}
}

(take([0, 1, 2, 3, 5, 8, 13], 3), [0, 1, 2])
(take([0, 1, 2, 3, 5, 8, 13], 0), [])
(take([], 3), [])






