//
//  ChangeCityViewController.swift
//  WeatherApp
//
//  Created by peers tech on 13/06/18.
//  Copyright © 2018 Strawberry. All rights reserved.
//

import UIKit


//protocol declaration
protocol ChangeCityDelegate {
    func userEnteredANewCityName(city: String)
}


class ChangeCityViewController: UIViewController {
    
    //delegate variable
    
    var delegate : ChangeCityDelegate?
    
    //IBOutlets to the text field
    @IBOutlet weak var changeCityTextField: UITextField!

    
    //IBAction that gets called when the user taps on the "Get Weather" button
    @IBAction func getWeatherPressed(_ sender: AnyObject) {

        
        //1 Get the city name the user entered in the text field
        let cityName = changeCityTextField.text!
        
        
        //2 If we have a delegate set, call the method userEnteredANewCityName
        delegate?.userEnteredANewCityName(city: cityName)

        
        //3 dismiss the Change City View Controller to go back to the WeatherViewController
        self.dismiss(animated: true, completion: nil)
        
    }
    
    

    //IBAction that gets called when the user taps the back button. It dismisses the ChangeCityViewController.
    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
