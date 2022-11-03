//
//  QuestionBank.swift
//  Quizzler
//
//  Created by James Daniel Malvern on 31/01/2019.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    // array constructor of type 'Question'
    var list = [Question]()
    
    init() {
        // Creating a quiz item and appending it to the list
        let item = Question()
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append()
        
        list.append()
        
        list.append()
      
    }
}
