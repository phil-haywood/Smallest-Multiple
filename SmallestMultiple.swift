// Option 1
func leastCommonMultiple(in range: ClosedRange<Int>) -> Int {
    var result = 1
    for number in range {
        result = lcm(result, number)
    }
    return result
}

func gcd(_ a: Int, _ b: Int) -> Int {
    return b == 0 ? a : gcd(b, a % b)
}

func lcm(_ a: Int, _ b: Int) -> Int {
    return a * b / gcd(a, b)
}

let smallestMultiple = leastCommonMultiple(in: 1...20)
print(smallestMultiple)

// Option 2
func findSmallestMultiple(upTo limit: Int) -> Int {
    func gcd(_ a: Int, _ b: Int) -> Int {
        var a = a
        var b = b
        while b != 0 {
            let temp = b
            b = a % b
            a = temp
        }
        return a
    }
    
    func lcm(_ a: Int, _ b: Int) -> Int {
        return a * b / gcd(a, b)
    }
    
    var result = 1
    for i in 2...limit {
        result = lcm(result, i)
    }
    return result
}

let smallestMultiple = findSmallestMultiple(upTo: 20)
print("Smallest multiple evenly divisible by numbers from 1 to 20:", smallestMultiple)
