//
//  WordList.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 8/27/23.
//

import Foundation
import RealmSwift

class WordList : Object{
    
 
    @Persisted var name = ""
    @Persisted var wordList = List<Word>()
    
    
    
}


