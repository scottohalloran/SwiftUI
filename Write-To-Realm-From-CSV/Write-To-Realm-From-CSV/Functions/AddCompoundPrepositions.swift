//
//  AddCompoundPrepositions.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//
//Reads from file named CompoundPreposition.csv and adds to the Realm as a CompoundPreposition object

import Foundation
import RealmSwift

func addCompoundPrepositions (inputFile: String, itemCount: Int) {
    // open the CSV file and read line by line
    let compoundPrepositionlist = readCSV(inputFile: inputFile, separator: "\n")
    for(compoundPreposition) in compoundPrepositionlist {
        //create array of items separated by ","
        let newcompoundPreposition = compoundPreposition.components(separatedBy: ",")
        let listcompoundPreposition = CompoundPreposition()
        //Check to see if the number of items on the line
        // being read matches the number of items in a compound preposition
        if (newcompoundPreposition.count == itemCount)
        {
            listcompoundPreposition.irish = newcompoundPreposition[0]
            listcompoundPreposition.english = newcompoundPreposition[1]
            listcompoundPreposition.type = newcompoundPreposition[2]
            try! realm.write {
                realm.add(listcompoundPreposition)
            }
        }
    }
}
