//
//  FileManagement.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/3/23.
//

import Foundation
import SwiftUI
import RealmSwift

extension String {
    //get the filename from a string
    func fileName() -> String {
        return URL(fileURLWithPath: self).deletingPathExtension().lastPathComponent
    }
    //get the file extension from a string
    func fileExtension() -> String{
        return URL(fileURLWithPath: self).pathExtension
    }
}


func readCSV(inputFile: String, separator: String) -> [String] {
    //split the file name
    let fileExtension = inputFile.fileExtension()
    let fileName = inputFile.fileName()
    
    //get the file URL
    let fileURL = try! FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
    
    let inputFile = fileURL.appendingPathComponent(fileName).appendingPathExtension(fileExtension)
    
    //get data
    do {
        let savedData = try String(contentsOf: inputFile)
        return savedData.components(separatedBy: separator)
    } catch {
        return ["Error file couldn't be found"]
    }
    
}


