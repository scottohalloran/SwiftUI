//
//  CompoundPreposition.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//

import Foundation
import RealmSwift

class CompoundPreposition : Object {
    
    
    @Persisted var irish = ""
    @Persisted var english = ""
    @Persisted var type = ""
    
    convenience init(name: String) {
        self.init()
        self.irish = irish
        self.english = english
        self.type = type
        
    }
}
