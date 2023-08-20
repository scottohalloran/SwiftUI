//
//  AddSimplePrepositions.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/31/23.
//

import Foundation
import RealmSwift


func addSimplePrepositions(inputFile: String, itemCount: Int) {
    // open the CSV file and read line by line
    let simplePrepositionList = readCSV(inputFile: inputFile, separator: "\n")
    for(simplePreposition) in simplePrepositionList {
        //create array of items separated by ","
        let newSimplePreposition = simplePreposition.components(separatedBy: ",")
        let listSimplePreposition = SimplePreposition()
        //Check to see if the number of items on the line
        // being read matches the number of items in a noun
        if (newSimplePreposition.count == itemCount)
        {
            listSimplePreposition.irish = newSimplePreposition[0]
            listSimplePreposition.english = newSimplePreposition[1]
            listSimplePreposition.type = newSimplePreposition[2]

            try! realm.write {
                realm.add(listSimplePreposition)
            }
        }
    }
}
