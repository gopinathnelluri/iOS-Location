//
//  ViewController.swift
//  FinalExam
//
//  Created by  on 5/2/17.
//  Copyright © 2017 uhcl. All rights reserved.
//

import UIKit
import MapKit

class ViewController: UIViewController {

    var appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    
    
    @IBOutlet weak var placeName: UITextField!
    
    @IBOutlet weak var longitude: UITextField!

    @IBOutlet weak var latitude: UITextField!
    
    @IBOutlet weak var checkSwitch: UISwitch!
    
    @IBOutlet weak var mapView: MKMapView!
    
    @IBOutlet weak var show: UIButton!
    
    @IBOutlet weak var maptype: UISegmentedControl!
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.isOn {
            show.isEnabled = true
        } else {
            show.isEnabled = false
        }
    }
    @IBAction func showMap(_ sender: UIButton) {
        
        if checkSwitch.isOn {
            

 
            let cordinate = CLLocationCoordinate2DMake(Double(longitude.text!)!, Double(latitude.text!)!)
            let region = MKCoordinateRegionMakeWithDistance(cordinate, 500, 500)
            mapView.region = region
            addAnnotation(cordinate, placeName.text!)
            appDelegate.locationDB.add(placeName.text!, longitude.text!, latitude.text!)
        }
        
    }
    
    @IBAction func taped(_ sender: UITapGestureRecognizer) {
        let cgpoint = sender.location(in: mapView)
        
       
    }
    
    
    
    
    @IBAction func prepare(for segue: UIStoryboardSegue, sender: AddDataViewController) {
        
        
        
        let cordinate = CLLocationCoordinate2DMake(Double(appDelegate.long)!, Double(appDelegate.lat)!)
        let region = MKCoordinateRegionMakeWithDistance(cordinate, 500, 500)
        mapView.region = region
        addAnnotation(cordinate, appDelegate.pname)
        
        
        
    }
    
    
    
    
    @IBAction func maptypefunction(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0 : mapView.mapType = MKMapType.standard
        case 1 : mapView.mapType = MKMapType.satellite
        case 2 : mapView.mapType = MKMapType.hybrid
        default : mapView.mapType = MKMapType.standard
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        // Do any additional setup after loading the view, typically from a nib.

    }

    func addAnnotation( _ cordinate : CLLocationCoordinate2D, _ place: String){
        let annotation = MKPointAnnotation()
        annotation.coordinate = cordinate
        annotation.title = place
        annotation.subtitle = ""
        mapView.addAnnotation(annotation)
    }
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    
    

}

