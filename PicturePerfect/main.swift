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
    // Simply skip to the next iteration. Sure
    if numberOfPhotos > 65_000 || numberOfPhotos < 0 {
        continue
    }
    // Implement the rest of your logic here...
    
    
    
    
    
    
    
    // First of all, the declaration of the crucial element: the generic side.
    // Note that the problem setting does not mention in which order the sides need to be listed
    var oneSide = 0
    // Here is where fun begins: the extremely embarassing code now sorts out the plausible
    // values for the first side.
    
    var arrayOfSides : [Int] = []
    for i in 1...numberOfPhotos {
        if numberOfPhotos % i == 0 {
            arrayOfSides.append(i)
            
        }
        // I figured that the minimum perimeter in the shapes that have more than one possible arrangement
        // is obtained when the sides have the values close to the square root of the inputted number of photos
        // But that is irrelevent. All you need to know is that for the case when we have 12 photos
        // Out of all possibilities( 1 - 12, 3 - 4, 4 - 3, 6 - 2, 12 - 1)
        // the middle arrangements will have the least perimeter.
        // this part required thinking for quite a time
        // See, pondering is crucial when problem solving.
        // These problems ain't jokes after all ::DD
        
        oneSide = arrayOfSides[(Int(arrayOfSides.count - 1 ) / 2)]
    }
    // This is just a wrap-up part. Like any other problem:
    // 1. Some generic instructions(beginning of algorithm)
    // 2. Major problem( middle game)
    // 3. Mark droppers added for confusion but once you get though the middle game, this endgame isn't anything(e.g. calulate the sum of all possible Palindromes(after I found Palindromes themselves, I would usually simply ignore this part), find the maximum Pentagonal number, blah, blah, blah. You know.
    // So yeah, I do hope you enjoyed this little discussion we had. Looking forward for whatever dares to approach me.
    
    let otherSide = numberOfPhotos / oneSide
    let perimeter = 2 * otherSide + 2 * oneSide
    print("Minimum perimeter is \(perimeter) with dimensions \(otherSide) and \(oneSide)")

}

