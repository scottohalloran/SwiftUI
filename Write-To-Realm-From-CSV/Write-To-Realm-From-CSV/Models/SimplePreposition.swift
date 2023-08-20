//
//  SimplePreposition.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/31/23.
//

import Foundation
import RealmSwift

class SimplePreposition: Object {
    @Persisted var irish = ""
    @Persisted var english = ""
    @Persisted var type = ""

    
    
    convenience init(name: String) {
        self.init()
        self.irish = ""
        self.english = ""
        self.type = ""
        
    }
    
}
