//
//  PrimeFinder.swift
//  Sieve of Eratosthenes
//
//  Created by Chanchal Raj on 27/03/2018.
//  Copyright © 2018 Khatri Corporation. All rights reserved.
//

import Foundation
class PrimeFinder{
    func primesUpTo(max: Int) -> [Int] {
        func findBoolList(max:Int) -> [Bool]{
            var tempArray = [Bool](repeating:true,count:max)
            for i in 2...Int(sqrt(Double(max))) {
                if tempArray[i] == true {
                    for j in 0...max {
                        let calculation = Int(pow(Double(i),Double(2))) + (j * i)
                        if calculation < max {
                            tempArray[calculation] = false
                        } else {
                            break;
                        }
                    }
                }
            }
            return tempArray
        }
        var truePrimes = [Int]()
        var boolList = findBoolList(max: max)
        
        for index in 2...max-1{
            if boolList[index] == true{
                truePrimes.append(index)
            }
        }
        return truePrimes
    }
}

