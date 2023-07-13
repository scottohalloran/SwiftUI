//
//  AddWords.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//

import Foundation
import RealmSwift

func addWords (inputFile: String, itemCount: Int) {
    let wordlist = readCSV(inputFile: inputFile, separator: "\n")
    for(word) in wordlist {
        let newWord = word.components(separatedBy: ",")
        let listword = Word()
        if (newWord.count == itemCount)
        {
            listword.irish = newWord[0]
            listword.english = newWord[1]
            listword.type = newWord[2]
            try! realm.write {
                realm.add(listword)
            }
        }
    }
}
