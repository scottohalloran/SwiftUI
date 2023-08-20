//
//  AddPrepositionalPronouns.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/25/23.
//

import Foundation
import RealmSwift

func addPrepositionalPronouns (inputFile: String, itemCount: Int) {
    // open the CSV file and read line by line
    let prepositionalPronounList = readCSV(inputFile: inputFile, separator: "\n")
    for(prepositionalPronoun) in prepositionalPronounList{
        //create array of items separated by ","
        let newPrepositionalPronoun = prepositionalPronoun.components(separatedBy: ",")
        let listPrepositionalPronoun = PrepositionalPronoun()
        //Check to see if the number of items on the line
        // being read matches the number of items in a noun
        if (newPrepositionalPronoun.count == itemCount)
        {
            listPrepositionalPronoun.irish = newPrepositionalPronoun[0]
            listPrepositionalPronoun.english = newPrepositionalPronoun[1]
            listPrepositionalPronoun.type = newPrepositionalPronoun[2]
            listPrepositionalPronoun.firstPersonSingularIrish = newPrepositionalPronoun[3]
            listPrepositionalPronoun.secondPersonSingularIrish = newPrepositionalPronoun[4]
            listPrepositionalPronoun.thirdPersonSingularIrishMasculine = newPrepositionalPronoun[5]
            listPrepositionalPronoun.thirdPersonSingularIrishFeminine = newPrepositionalPronoun[6]
            listPrepositionalPronoun.firstPersonPluralIrish = newPrepositionalPronoun[7]
            listPrepositionalPronoun.secondPersonPluralIrish = newPrepositionalPronoun[8]
            listPrepositionalPronoun.thirdPersonPluralIrish = newPrepositionalPronoun[9]
            listPrepositionalPronoun.firstPersonSingularEnglish = newPrepositionalPronoun[10]
            listPrepositionalPronoun.secondPersonSingularEnglish = newPrepositionalPronoun[11]
            listPrepositionalPronoun.thirdPersonSingularEnglishMasculine = newPrepositionalPronoun[12]
            listPrepositionalPronoun.thirdPersonSingularEnglishFeminine = newPrepositionalPronoun[13]
            listPrepositionalPronoun.firstPersonPluralEnglish = newPrepositionalPronoun[14]
            listPrepositionalPronoun.secondPersonPluralEnglish = newPrepositionalPronoun[15]
            listPrepositionalPronoun.thirdPersonPluralEnglish = newPrepositionalPronoun[16]
            try! realm.write {
                realm.add(listPrepositionalPronoun)
            }
        }
    }
}
