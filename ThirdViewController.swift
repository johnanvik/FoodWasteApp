//
//  ThirdViewController.swift
//  31.03.18Prototype5
//
//  Created by Samira Ali on 2018-03-31.
//  Copyright © 2018 Samira Ali. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation

class ThirdViewController: UIViewController, CLLocationManagerDelegate {

    //MAP
    @IBOutlet weak var MapViewConnect: MKMapView!
    
    @IBOutlet var Input: UILabel!
    
    //Variables: Input
    var Input = String()
    
    let manager = CLLocationManager()
    
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation])
    {
        let location = locations[0]
        
        let span:MKCoordinateSpan = MKCoordinateSpanMake(0.01, 0.01)
        let myLocation:CLLocationCoordinate2D = CLLocationCoordinate2DMake(location.coordinate.latitude, location.coordinate.longitude)
        let region:MKCoordinateRegion = MKCoordinateRegionMake(myLocation, span)
        MapViewConnect.setRegion(region, animated: true)
        
        self.MapViewConnect.showsUserLocation = true
        
        func viewDidLoad()
    {
    
        super.viewDidLoad()
    
        manager.delegate = self
        manager.desiredAccuracy = kCLLocationAccuracyBest
        manager.requestWhenInUseAuthorization()
        manager.startUpdatingLocation()
    
        myString = Input.text
        
}

        // Do any additional setup after loading the view.


func didReceiveMemoryWarning() {
        didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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
}
