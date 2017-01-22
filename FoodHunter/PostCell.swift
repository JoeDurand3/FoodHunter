//
//  PostCellController.swift
//  FoodHunter
//
//  Created by Joe Durand on 11/12/16.
//  Copyright © 2016 Cal Poly App Dev. All rights reserved.
//

import Foundation
import UIKit

class PostCell: UITableViewCell {
    
    @IBOutlet weak var foodLabel: UILabel!
    @IBOutlet weak var startLabel: UILabel!
    @IBOutlet weak var locationLabel: UILabel!
    
    func setup(record: Post) {
        foodLabel.text = record.food
        
        startLabel.text = PostCell.convertDate(date: record.start)
        
        locationLabel.text = record.location.alias
    }
    
    static func convertDate(date: Date) -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE, MMM d @ h:mma"
        let prettyDate = formatter.string(from: date)
        return prettyDate
    }
}
