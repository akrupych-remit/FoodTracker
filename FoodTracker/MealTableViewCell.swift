//
//  MealTableViewCell.swift
//  FoodTracker
//
//  Created by Andriy Krupych on 4/13/17.
//  Copyright © 2017 Andriy Krupych. All rights reserved.
//

import UIKit

class MealTableViewCell: UITableViewCell {
    
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var photoImageView: UIImageView!
    @IBOutlet weak var ratingControl: RatingControl!
    
    var meal: Meal?

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func bind(meal: Meal) {
        self.meal = meal
        nameLabel.text = meal.name
        photoImageView.image = meal.photo
        ratingControl.rating = meal.rating
    }

}
