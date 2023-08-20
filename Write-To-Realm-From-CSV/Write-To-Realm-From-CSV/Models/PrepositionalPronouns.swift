//
//  PrepositionalPronouns.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/25/23.
//

import Foundation
import RealmSwift

class PrepositionalPronoun : Object {
    
    @Persisted var irish = ""
    @Persisted var english = ""
    @Persisted var type = ""
    @Persisted var firstPersonSingularIrish = ""
    @Persisted var secondPersonSingularIrish = ""
    @Persisted var thirdPersonSingularIrishMasculine = ""
    @Persisted var thirdPersonSingularIrishFeminine = ""
    @Persisted var firstPersonPluralIrish = ""
    @Persisted var secondPersonPluralIrish = ""
    @Persisted var thirdPersonPluralIrish = ""
    @Persisted var firstPersonSingularEnglish = ""
    @Persisted var secondPersonSingularEnglish = ""
    @Persisted var thirdPersonSingularEnglishMasculine = ""
    @Persisted var thirdPersonSingularEnglishFeminine = ""
    @Persisted var firstPersonPluralEnglish = ""
    @Persisted var secondPersonPluralEnglish = ""
    @Persisted var thirdPersonPluralEnglish = ""
    
    convenience init(name: String) {
        self.init()
        self.irish = ""
        self.english = ""
        self.type = ""
        self.firstPersonSingularIrish = ""
        self.secondPersonSingularIrish = ""
        self.thirdPersonSingularIrishMasculine = ""
        self.thirdPersonSingularIrishFeminine = ""
        self.firstPersonPluralIrish = ""
        self.secondPersonPluralIrish = ""
        self.thirdPersonPluralIrish = ""
        self.firstPersonSingularEnglish = ""
        self.secondPersonSingularEnglish = ""
        self.thirdPersonSingularEnglishMasculine = ""
        self.thirdPersonSingularEnglishFeminine = ""
        self.firstPersonPluralEnglish = ""
        self.secondPersonPluralEnglish = ""
        self.thirdPersonPluralEnglish = ""
        
    }
}
