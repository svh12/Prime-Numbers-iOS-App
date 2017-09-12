//
//  ViewController.swift
//  PrimeNumbers
//
//  Created by Stephanie Hoang on 9/7/17.
//  Copyright © 2017 Stephanie Hoang. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    //Create references to UI labels to enable reading and writing to them
    @IBOutlet weak var primeTextField: UITextField!
    @IBOutlet weak var primesList: UILabel!
    @IBOutlet weak var nthPrime: UILabel!
    
    //Calculate and displays N and Nth Primes based on user input
    @IBAction func calculatePrimesButton(_ sender: Any) {
        
        //Get number of primes needed based on user input
        let n = Int(primeTextField.text!)

        //Create an array of prime numbers
        //For an explanation on how this line works, please see my post here: https://svh12.github.io/2017/09/11/breaking-down-the-one-liner.html
        let primeNumbers = [Int](2...2000).filter({num in [Int](1...Int(sqrt(Float(num)))).filter({num % $0 == 0}).count == 1})
        
        //Select number of primes needed from the prime number array based on user input
        var primesNeeded = primeNumbers[0..<n!]
        
        //Display N primes in UI
        self.primesList.text = String(describing: "N Primes: \(primesNeeded.removeArrayBrackets)")
        
        //Display Nth prime in the UI
        self.nthPrime.text = String(describing: "Nth Prime: \(primesNeeded[primesNeeded.count - 1])")
    }
    
    //Automatically recalculate primes list if the user inputs a new value
    @IBAction func recalculatePrimes(_ sender: UITextField) {
        self.calculatePrimesButton((Any).self)
    }
    
    @IBAction func dismissKeyboard(_ sender: UITapGestureRecognizer) {
        primeTextField.resignFirstResponder()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}

//Create extension to print an array without brackets
extension Sequence {
    var removeArrayBrackets: String {
        return map { "\($0)" }.joined(separator: " ")
    }
}
