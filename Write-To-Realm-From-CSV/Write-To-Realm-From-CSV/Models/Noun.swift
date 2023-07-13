//
//  Noun.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/10/23.
//

import Foundation
import RealmSwift

class Noun: Object {
    @Persisted var nominativeSingular = ""
    @Persisted var english = ""
    @Persisted var type = ""
    @Persisted var genitiveSingular = ""
    @Persisted var nominativePlural = ""
    @Persisted var genitivePlural = ""
    @Persisted var gender = ""
    @Persisted var declension = ""
    
    
    convenience init(name: String) {
        self.init()
        self.nominativeSingular = ""
        self.english = ""
        self.type = ""
        self.genitiveSingular = ""
        self.nominativePlural = ""
        self.genitivePlural = ""
        self.gender = ""
        self.declension = ""
        
    }
    
}
