//
//  main.swift
//  PicturePerfect
//

import Foundation

// INPUT
// Global variable to use later in program
var countOfPhotoArrangementsToBeConsidered = 3

while true {
    print("How many photo arrangements are we going to examine today?")
    guard let consideredArrangements = readLine() else {
        continue
    }
    guard let realArrangements = Int(consideredArrangements) else {
        continue
    }
    if realArrangements > 10 || realArrangements < 0 {
        continue
    }
    
    countOfPhotoArrangementsToBeConsidered = realArrangements
    break
    
}



// Write a loop to actually collect the number of photo arrangements to be considered
// e.g.: write the rest of the INPUT section


// PROCESS & OUTPUT
// Implement the primary logic of the problem here
// Some output may be given here if you desire

// Collect the number of pictures in each arrangement using this loop
for counter in 1...countOfPhotoArrangementsToBeConsidered {
    
    // Ask how many pictures in this particular arrangement
    print("How many pictures in photo arrangement #\(counter)?")
    
    // Get the input (use guard-let to guarantee it is not nil)
    // and then print it out
    guard let givenInput = readLine() else {
        // If someone enters nil input, just skip to the next line
        continue
    }
    
    guard let numberOfPhotos = Int(givenInput) else {
        continue
    }
    
    // Implement the rest of your logic here...
    var oneSide = 0
    var arrayOfSides : [Int] = []
    for i in 1...numberOfPhotos {
        if numberOfPhotos % i == 0 {
            arrayOfSides.append(i)
            
        }
        oneSide = arrayOfSides[(Int(arrayOfSides.count - 1 ) / 2)]
    }
    let otherSide = numberOfPhotos / oneSide
    let perimeter = 2 * otherSide + 2 * oneSide
    print("Minimum perimeter is \(perimeter) with dimensions \(otherSide) and \(oneSide)")

}

