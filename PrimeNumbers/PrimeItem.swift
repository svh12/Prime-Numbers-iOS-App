//
//  PrimeItem.swift
//  PrimeNumbers
//
//  Created by Stephanie Hoang on 9/7/17.
//  Copyright © 2017 Stephanie Hoang. All rights reserved.
//

//import UIKit
//
//class PrimeItem: NSObject {
//    
//    var primeValue: Int
//    var primeValuesArray = [PrimeItem]()
//    
//    init(primeValue: Int) {
//        self.primeValue = primeValue
//        
//        super.init()
//    }
//    
//    func primeValues(N: Int) -> [Int] {
//        let numbers = 1...N
//        
//        for number in numbers {
//            
//            var prime = true
//            
//            for var i = 2; i <= number - 1; i += 1 {
//                if number % i == 0 {
//                    prime = false
//                    break
//                }
//            }
//        }
//        
//        if prime == true {
//            primeValuesArray.append(number)
//        } else {
//            print("\(number) is not prime.")
//        }
//    
//    }
//    
//
//}
