//
//  main.swift
//  KTGK
//
//  Created by Apple on 28/05/2021.
//

import Foundation

//MARK: Bài 1 Vẽ hình chữ nhật rỗng m(cột) x n(hàng)
func printRectangle() {
    print("Bài 1: Nhập số cột (m)")
    let inputM = readLine()
    guard let strM = inputM else {
        print("số không hợp lệ (nil)")
        return
    }
    print("Bài 1: Nhập số hàng (n)")
    let inputN = readLine()
    guard let strN = inputN else {
        print("số không hợp lệ (nil)")
        return
    }

    let m = Int(strM) ?? -1
    let n = Int(strN) ?? -1
    if m <= 0 || n <= 0 {
        print("số không hợp lệ")
        printRectangle()
        return
    }
    // xử lý trường hợp cạnh = 1 hoặc =2
    if m < 3 || n < 3 {
        for _ in 1...n {
            for _ in 1...m {
                print("*", terminator: "")
            }
            print()
        }
        return
    }

    // cạnh >=3
    for _ in 1...m {
        print("*", terminator: "")
    }
    print()

    for _ in 2...(n - 1) {
        print("*", terminator: "")

        for _ in 1...(m - 2) {
            print(" ", terminator: "")
        }

        print("*", terminator: "")
        print()
    }

    for _ in 1...m {
        print("*", terminator: "")
    }
    print()
}
printRectangle()


//MARK: Bài 2
// check năm nhuận
func checkYear(_ year: Int) -> Bool {
    if year%400 == 0 || (year%4 == 0 && year%100 != 0) {
        return true
    }
    return false
}


func checkDate() {
    print("Ngày?")
    let inputDay = readLine()
    guard let strDay = inputDay else {
        print("số không hợp lệ (nil)")
        return
    }
    print("Tháng?")
    let inputMonth = readLine()
    guard let strMonth = inputMonth else {
        print("số không hợp lệ (nil)")
        return
    }

    print("Năm?")
    let inputYear = readLine()
    guard let strYear = inputYear else {
        print("số không hợp lệ (nil)")
        return
    }
    let day = Int(strDay) ?? -1
    let month = Int(strMonth) ?? -1
    let year = Int(strYear) ?? -1

    if year < 0 || month < 0 || month > 12 {
        print("số không hợp lệ")
        checkDate()
        return
    }

    switch month {
    case 2:
        if day < 1 || (day > 29 && checkYear(year) == true) || (day > 28 && checkYear(year) == false) {
            print("số không hợp lệ")
            checkDate()
            return
        }

        if checkYear(year) == true {
            print("tháng có 29 ngày")
            if day == 29 {
                print("liền trước \(1) / \(3) / \(year)")
                print("liền sau \(28) / \(2) / \(year)")
            } else if day == 1 {
                print("liền trước \(2) / \(2) / \(year)")
                print("liền sau \(31) / \(1) / \(year)")
            }


        } else {
            print("tháng có 28 ngày")
            if day == 28 {
                print("ngày liền sau là \(1) / \(3) / \(year)")
                print("ngày liền sau là \(27) / \(2) / \(year)")
            } else if day == 1 {
                print("ngày liền sau là \(2) / \(2) / \(year)")
                print("ngày liền sau là \(31) / \(1) / \(year)")
            }
        }

    case 3, 5, 7, 8, 10:
        if day < 1 || day > 31 {
            print("số không hợp lệ")
            checkDate()
            return
        }
        print("tháng có 31 ngày")

        if day == 31 {
            print("ngày liền trước là \(30) / \(month) / \(year)")
            print("ngày liền sau là \(1) / \(month + 1) / \(year)")
        } else if day == 1 {
            print("ngày liền trước là \(30) / \(month - 1) / \(year)")
            print("ngày liền sau là \(2) / \(month) / \(year)")
        }
    case 1:
        if day < 1 || day > 31 {
            print("số không hợp lệ")
            checkDate()
            return
        }
        print("tháng có 31 ngày")

        if day == 31 {
            print("ngày liền trước là \(30) / \(month) / \(year)")
            print("ngày liền sau là \(1) / \(month + 1) / \(year)")
        } else if day == 1 {
            print("ngày liền trước là \(31) / \(1) / \(year - 1)")
            print("ngày liền sau là \(2) / \(month) / \(year)")
        }
    case 12:
        if day < 1 || day > 31 {
            print("số không hợp lệ")
            checkDate()
            return
        }
        print("tháng có 31 ngày")

        if day == 31 {
            print("ngày liền trước là \(30) / \(month) / \(year)")
            print("ngày liền sau là \(1) / \( 1) / \(year + 1)")
        } else if day == 1 {
            print("ngày liền trước là \(31) / \(month - 1) / \(year)")
            print("ngày liền sau là \(2) / \(month) / \(year)")
        }


    default:
        if day < 1 || day > 30 {
            print("số không hợp lệ")
            checkDate()
            return
        }
        print("tháng có 30 ngày")

    if day == 30 {
        print("ngày liền trước là \(29) / \(month) / \(year)")
        print("ngày liền sau là \(1) / \(month + 1) / \(year)")
    } else if day == 1 {
        print("ngày liền trước là \(31) / \(month - 1) / \(year)")
        print("ngày liền sau là \(2) / \(month) / \(year)")
    }
}
}

checkDate()

//MARK: - Bài 3
func randomGame() {
    let randomNumber = Int.random(in: 1...100)

    print("Bài 3: Nhập số bất kì từ 1 đến 100")
    let inputNumber = readLine()
    guard let strNumber = inputNumber else {
        print("số không hợp lệ (nil)")
        return
    }

    let n = Int(strNumber) ?? -1
    if n < 1 || n > 100 {
        print("số không hợp lệ")
        randomGame()
        return
    }

    if n > randomNumber {
        print("lớn quá")
    } else if n < randomNumber {
        print("bé quá")
    } else {
        print("chúc mừng")
    }
}

randomGame()


//MARK: Bai 4
func luyThua(_ n : Int, _ x: Int) -> Int {
    var tich = 1
    for _ in 1...x {
        tich = tich * n
    }
    return tich
    
}

func checkAmstrong(_ n: Int) -> Bool {
  
    let strN = String(n)
    var sum = 0
    for i in strN {
    sum = sum + luyThua((Int(String(i))!), strN.count)
    }
    return sum == n ? true : false
}

for i in 1...1000 {
    if checkAmstrong(i) == true {
        print(i)
    }
}

