//
//  Meal.swift
//  Epicures.
//
//  Created by Alice on 7/28/19.
//  Copyright © 2019 Mallory. All rights reserved.
//

import UIKit

class Meal {
    // MARK: Initialization
    
    init?(name: String, photo: UIImage?, rating: Int){
        
        guard !name.isEmpty else {
            return nil
        }
        
        // The rating must be between 0 and 5 inclusively
        guard (rating >= 0) && (rating <= 5) else {
            return nil
        }
        
        // Initialization should fail if there is no name or if the rating is negative.
        if name.isEmpty || rating < 0  {
            return nil
        }
        
        self.name = name
        self.photo = photo!
        self.rating = rating
        
    }
    
    // MARK: Properties
    
    var name: String
    var photo: UIImage
    var rating: Int
    
    
}
