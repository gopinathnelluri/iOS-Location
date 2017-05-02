//
//  AddDataViewController.swift
//  FinalExam
//
//  Created by  on 5/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit

class AddDataViewController: UIViewController {

    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    
    @IBOutlet weak var cityName: UITextField!
    @IBOutlet weak var latitude: UITextField!
    
    @IBOutlet weak var longitude: UITextField!
    
    
    @IBAction func add(_ sender: Any) {
        
        if cityName.text! == "" {
            cityName.text! = "New City"
        }
        
        if longitude.text! == "" {
            longitude.text! = "29.7604"
        }
        
        if latitude.text! == "" {
            latitude.text! = "-95.3698"
        }
        
        appDelegate.locationDB.add(cityName.text!,latitude.text!,longitude.text!)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if cityName.text! == "" {
            cityName.text! = "New City"
        }
        
        if longitude.text! == "" {
            longitude.text! = "29.7604"
        }
        
        if latitude.text! == "" {
            latitude.text! = "-95.3698"
        }
        
        appDelegate.lat = latitude.text!
        appDelegate.long = longitude.text!
        appDelegate.pname = cityName.text!
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
