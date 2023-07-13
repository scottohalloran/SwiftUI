//
//  Adjective.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//

import Foundation
import RealmSwift

class Adjective : Object {
    
    
    @Persisted var nominativeSingularMasculine = ""
    @Persisted var english = ""
    @Persisted var type = ""
    @Persisted var nominativeSingularFeminine = ""
    @Persisted var genitiveSingularMasculine = ""
    @Persisted var genitiveSingularFeminine = ""
    @Persisted var nominativePlural = ""
    @Persisted var nominativePluralSlenderConsonants = ""
    @Persisted var genitivePluralStrongPlurals = ""
    @Persisted var genitivePluralWeakPlurals = ""
    @Persisted var comparativePresent = ""
    @Persisted var superlativePresent = ""
    @Persisted var declension = ""
    
    convenience init(name: String) {
        self.init()
        self.nominativeSingularMasculine = ""
        self.english = ""
        self.type = ""
        self.nominativeSingularFeminine = ""
        self.genitiveSingularMasculine = ""
        self.genitiveSingularFeminine = ""
        self.nominativePlural = ""
        self.nominativePluralSlenderConsonants = ""
        self.genitivePluralStrongPlurals = ""
        self.genitivePluralWeakPlurals = ""
        self.comparativePresent = ""
        self.superlativePresent = ""
        self.declension = ""
        
    }
}
