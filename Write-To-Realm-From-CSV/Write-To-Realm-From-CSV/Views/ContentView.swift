//
//  ContentView.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/3/23.
//

// Contains buttons for adding list of Irish words
import SwiftUI
import RealmSwift

let realm = try! Realm()

struct ContentView: View {
    var body: some View {
        //adds adjectives to the realm
        Button{
            addAdjectives(inputFile: "Adjective.csv", itemCount: 13)
            
        } label: {
            Text("Write Adjectives to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
        //adds compound prepositions to the realm
        Button{
            addCompoundPrepositions(inputFile: "CompoundPreposition.csv", itemCount: 3)
            
        } label: {
            Text("Write Compound Prepositions to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
        //adds nouns to the realm
        Button{
            addNouns(inputFile: "Noun.csv", itemCount: 8)
            
        } label: {
            Text("Write Nouns to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
        //adds prepositional pronouns to the realm
        Button{
            addPrepositionalPronouns(inputFile: "PrepositionalPronoun.csv", itemCount: 17)
            
        } label: {
            Text("Write Prepositional Pronouns to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
        //adds prepositional pronouns to the realm
        Button{
            addSimplePrepositions(inputFile: "SimplePreposition.csv", itemCount: 3)
            
        } label: {
            Text("Write Simple Prepositions to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
        //adds verbs to the realm
        Button{
            addVerbs(inputFile: "Verb.csv", itemCount: 168)
            
        } label: {
            Text("Write Verbs to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        
   //     Adds words to wordlist
        Button{
            addWords()
            
        } label: {
            Text("Write Wordlist to Realm")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
        Button{
            addWordsToTextFile()
            
        } label: {
            Text("Write Wordlist to TextFile")
            //.font(.title)
                .foregroundColor(.white)
                .frame(width: 200, height: 50)
                .background(.green)
                .clipShape(Capsule())
        }
    }
}



struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

