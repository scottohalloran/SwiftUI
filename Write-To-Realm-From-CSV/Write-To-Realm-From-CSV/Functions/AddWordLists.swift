//
//  AddWordLists.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 8/27/23.
//

//import Foundation
//import RealmSwift
//
//func addWordLists (inputFile: String, itemCount: Int) {
//    // open the CSV file and read line by line
//    let wordLists = readCSV(inputFile: inputFile, separator: "\n")
//    for(wordList) in wordLists {
//        //create array of items separated by ","
//        let newWordList = wordList.components(separatedBy: ",")
//        let listWordList = WordList()
//        //Check to see if the number of items on the line
//        // being read matches the number of items in a noun
//        if (newWordList.count == itemCount)
//        {
//            listWordList.name = newWordList[0]
//            listWordList.wordList = newWordList[1]
//
//            try! realm.write {
//                realm.add(newWordList)
//            }
//        }
//    }
//}
