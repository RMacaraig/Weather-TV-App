//
//  WeatherTableViewCell.swift
//  MyWeatherTvApp
//
//  Created by Ryle  Macaraig on 2019-11-23.
//  Copyright © 2019 Ryle  Macaraig. All rights reserved.
//

import UIKit

class WeatherTableViewCell: UITableViewCell {

    // Step 11c - define variables and configure table cell
    // in storyboard - don't forget to define reuse identifier
    @IBOutlet var lblCity : UILabel!
    @IBOutlet var imgCity : UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
    
}
