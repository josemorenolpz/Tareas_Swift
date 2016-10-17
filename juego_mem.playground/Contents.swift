//: Playground - noun: a place where people can play

import Cocoa

for num in 1...100{
    if num % 5 == 0{
        print("\(num)\t Bingo!!!\n")
    }
    if num % 2 == 0{
        print("\(num)\t Par \n")
    }else {
        print("\(num)\t Impar \n")
    }
    if num >= 30 && num <= 40{
        print("\(num)\t Viva Swift \n")
    }
}

