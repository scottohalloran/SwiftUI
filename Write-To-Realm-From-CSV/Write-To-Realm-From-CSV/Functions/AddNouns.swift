//
//  AddNouns.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/10/23.
//

//Reads from file named Noun.csv and adds to the Realm as an adjective object

import Foundation
import RealmSwift


func addNouns (inputFile: String, itemCount: Int) {
    // open the CSV file and read line by line
    let nounList = readCSV(inputFile: inputFile, separator: "\n")
    for(noun) in nounList {
        //create array of items separated by ","
        let newNoun = noun.components(separatedBy: ",")
        let listNoun = Noun()
        //Check to see if the number of items on the line
        // being read matches the number of items in a noun
        if (newNoun.count == itemCount)
        {
            listNoun.nominativeSingular = newNoun[0]
            listNoun.english = newNoun[1]
            listNoun.type = newNoun[2]
            listNoun.genitiveSingular = newNoun[3]
            listNoun.nominativePlural = newNoun[4]
            listNoun.genitivePlural = newNoun[5]
            listNoun.gender = newNoun[6]
            listNoun.declension = newNoun[7]
            try! realm.write {
                realm.add(listNoun)
            }
        }
    }
}
