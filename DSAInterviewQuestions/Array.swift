//
//  Array.swift
//  DSAInterviewQuestions
//
//  Created by ꧁☆༒☬MoʜɩtToɱɘʀ☬༒☆꧂ on 28/01/24.
//

import UIKit

/*
 
 MARK: InBuild Functions:- swapAt(0,1)
 let names = ["Paul", "John", "George", "Ringo"]
 names.swapAt(0,1)
 
 
 Space Complexity: When I create only variable, its constant time O(1). Here I have created only one variable i.e. "minIndex"
 
 MARK: "SC is 0(1)"
 
 Time Complexity: If the size of an array is "n" and comparison will be {(n-1), (n-2), (n-3) ...... 1}
 1+2+3+4........(n-2), (n-1) =  n(n-1)/2 => (n^2 - n)/2
 
 MARK: "TC is 0(n^2)"
 
 Best Case Time Complexity: doesn't matter the array is sorted or not I have to do blindly comparison with
 one other.
 
 MARK: "BCTC/WCTC is 0(n^2)"
 
 MARK: and same for the Worst Case Time Complexity.
 
 Use Case: When my array size, Vector size and list size is small, for these case I have to use Selection/Bubble sort
 because here I have some size constraints like "memory", Here we have to focus on memory.
 
 MARK: Work Pending: Contest Coding Ninja
 
 */



class Array: UIViewController {

    
    var array: [Int] = [6,2,8,4,10] {
        didSet {
            print(array) // O/P = [2, 4, 6, 8, 10] ascending order
        }
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.selectionSort(array: &array, n: array.count)
    }
    
    // MARK: Selection/Bubble Sort.
    
    func selectionSort(array: inout [Int], n: Int) {
        for i in 0..<n-1 {
            var minIndex = i
            for j in i+1..<n {
                if array[j] < array[minIndex] { // ascending order
                    minIndex = j
                }
            }
            array.swapAt(minIndex, i)
        }
    }

    


}

