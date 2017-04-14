//
//  Meal.swift
//  FoodTracker
//
//  Created by Andriy Krupych on 4/13/17.
//  Copyright © 2017 Andriy Krupych. All rights reserved.
//

import UIKit

class Meal : NSObject, NSCoding {
    
    static let DocumentsDirectory = FileManager().urls(for: .documentDirectory, in: .userDomainMask).first!
    static let ArchiveURL = DocumentsDirectory.appendingPathComponent("meals")
    
    var name: String
    var photo: UIImage?
    var rating: Int
    
    init?(name: String, photo: UIImage?, rating: Int) {
        if (name.isEmpty || rating < 0) { return nil }
        self.name = name
        self.photo = photo
        self.rating = rating
    }
    
    required convenience init?(coder aDecoder: NSCoder) {
        self.init(
            name: aDecoder.decodeObject(forKey: "name") as! String,
            photo: aDecoder.decodeObject(forKey: "photo") as! UIImage?,
            rating: aDecoder.decodeInteger(forKey: "rating")
        )
    }
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(name, forKey: "name")
        aCoder.encode(photo, forKey: "photo")
        aCoder.encode(rating, forKey: "rating")
    }
    
}
