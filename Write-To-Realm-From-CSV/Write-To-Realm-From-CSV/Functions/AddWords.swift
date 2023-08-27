//
//  AddWords.swift
//  Write-To-Realm-From-CSV
//
//  Created by Scott O'Halloran on 7/9/23.
//

import Foundation
import RealmSwift


func addWords () {
    var wordArray: [Word] = []
    /*   Adjectives  */
    // Fetch all Adjective objects from Realm
    let adjectivesFromRealm = realm.objects(Adjective.self)
    // Create an array to hold the fetched data
    var adjectiveArray: [Adjective] = []
    // Populate the array with fetched data
    adjectiveArray.append(contentsOf: adjectivesFromRealm)
    for adjective in adjectiveArray{
        let word = Word()
        word.irish = adjective.nominativeSingularMasculine
        word.english = adjective.english
        word.type = adjective.type
        wordArray.append(word)
        }
    
    /*   Compound Prepositions  */
    // Fetch all Compound Preposition objects from Realm
    let compoundPrepositionsFromRealm = realm.objects(CompoundPreposition.self)
    // Create an array to hold the fetched data
    var compoundPrepositionArray: [CompoundPreposition] = []
    // Populate the array with fetched data
    compoundPrepositionArray.append(contentsOf: compoundPrepositionsFromRealm)
    for compoundPreposition in compoundPrepositionArray{
        let word = Word()
        word.irish = compoundPreposition.irish
        word.english = compoundPreposition.english
        word.type = compoundPreposition.type
        wordArray.append(word)
        }
    
    /*   Nouns  */
    // Fetch all Noun objects from Realm
    let nounsFromRealm = realm.objects(Noun.self)
    // Create an array to hold the fetched data
    var nounArray: [Noun] = []
    // Populate the array with fetched data
    nounArray.append(contentsOf: nounsFromRealm)
    for noun in nounArray{
        let word = Word()
        word.irish = noun.nominativeSingular
        word.english = noun.english
        word.type = noun.type
        wordArray.append(word)
        }
    
    /*   Prepositional Pronouns  */
    // Fetch all Prepositional Pronoun objects from Realm
    let prepositionalPronounsFromRealm = realm.objects(PrepositionalPronoun.self)
    // Create an array to hold the fetched data
    var prepositionalPronounArray: [PrepositionalPronoun] = []
    // Populate the array with fetched data
    prepositionalPronounArray.append(contentsOf: prepositionalPronounsFromRealm)
    for prepositionalPronoun in prepositionalPronounArray{
        let word = Word()
        word.irish = prepositionalPronoun.irish
        word.english = prepositionalPronoun.english
        word.type = prepositionalPronoun.type
        wordArray.append(word)
        }
    
    /*   Simple Prepositions  */
    // Fetch all Simple Prepositions objects from Realm
    let simplePrepositionsFromRealm = realm.objects(SimplePreposition.self)
    // Create an array to hold the fetched data
    var simplePrepositionArray: [SimplePreposition] = []
    // Populate the array with fetched data
    simplePrepositionArray.append(contentsOf: simplePrepositionsFromRealm)
    for simplePreposition in simplePrepositionArray{
        let word = Word()
        word.irish = simplePreposition.irish
        word.english = simplePreposition.english
        word.type = simplePreposition.type
        wordArray.append(word)
        }
    
    /*   Verbs   */
    // Fetch all Verb objects from Realm
    let verbsFromRealm = realm.objects(Verb.self)
    // Create an array to hold the fetched data
    var verbArray: [Verb] = []
    // Populate the array with fetched data
    verbArray.append(contentsOf: verbsFromRealm)
    for verb in verbArray{
        let word = Word()
        word.irish = verb.base
        word.english = verb.english
        word.type = verb.type
        wordArray.append(word)
        }
    wordArray.sort{
        $0.irish < $1.irish
    }
print(wordArray)
}
