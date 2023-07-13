//
//  AddAdjectives.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//

//Reads from file named Adjective.csv and adds to the Realm as an adjective object

import Foundation
import RealmSwift


func addAdjectives (inputFile: String, itemCount: Int) {
    // open the CSV file and read line by line
    let adjectiveList = readCSV(inputFile: inputFile, separator: "\n")
    for(adjective) in adjectiveList {
        //create array of items separated by ","
        let newAdjective = adjective.components(separatedBy: ",")
        let listAdjective = Adjective()
        //Check to see if the number of items on the line
        // being read matches the number of items in an adjective
        if (newAdjective.count == itemCount)
        {
            listAdjective.nominativeSingularMasculine = newAdjective[0]
            listAdjective.english = newAdjective[1]
            listAdjective.type = newAdjective[2]
            listAdjective.nominativeSingularFeminine = newAdjective[3]
            listAdjective.genitiveSingularMasculine = newAdjective[4]
            listAdjective.genitiveSingularFeminine = newAdjective[5]
            listAdjective.nominativePlural = newAdjective[6]
            listAdjective.nominativePluralSlenderConsonants = newAdjective[7]
            listAdjective.genitivePluralStrongPlurals = newAdjective[8]
            listAdjective.genitivePluralWeakPlurals = newAdjective[9]
            listAdjective.comparativePresent = newAdjective[10]
            listAdjective.superlativePresent = newAdjective[11]
            listAdjective.declension = newAdjective[12]
            try! realm.write {
                realm.add(listAdjective)
            }
        }
    }
}


