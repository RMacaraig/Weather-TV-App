//
//  Weather1TableViewController.swift
//  MyWeatherTvApp
//
//  Created by Ryle  Macaraig on 2019-11-23.
//  Copyright © 2019 Ryle  Macaraig. All rights reserved.
//

import UIKit

class Weather1TableViewController: UITableViewController {

  
    // step 9 - define CityDetails() object
    let cityData = CityDetails()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    // Step 10 - set number of rows to array length
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return cityData.cityNames.count
    }
    
    // Step 11 - define how cell will look
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        // Step 11b - create custom cell and define reuse
        // identifer - also configure how cell looks in
        // storyboard
        let cell = tableView.dequeueReusableCell(withIdentifier: "WeatherCell", for: indexPath) as! WeatherTableViewCell
        
        // Configure the cell...
        cell.lblCity.text = cityData.cityNames[indexPath.row]
        cell.imgCity.image = UIImage(named:cityData.cities[indexPath.row])
        return cell
    }
    
    // Step 12 - define how data is transferred
    // to detail view controller
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        //  let cell = tableView.cellForRow(at: indexPath)
        if let split = self.splitViewController {
            let controllers = split.viewControllers
            let detailViewController = controllers[controllers.count-1]
                as? Weather1ViewController
            detailViewController?.updateWeather(select: indexPath.row)
        }
    }
}
