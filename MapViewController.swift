//
//  MapViewController.swift
//  
//
//  Created by Kevin Resler on 10/6/18.
//

import UIKit
import GoogleMaps
import GooglePlaces

class MapViewController: UIViewController, CLLocationManagerDelegate {
    
    var locationManager = CLLocationManager()
    var currentLocation: CLLocation?
    var mapView: GMSMapView!

    override func viewLoad() {
        
        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude: 103.848, zoom: 12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        do {
            // Set the map style by passing a valid JSON string.
            mapView.mapStyle = try GMSMapStyle(jsonString: basicMapStyle)
        } catch {
            NSLog("One or more of the map styles failed to load. \(error)")
        }

        self.view = mapView
        mapView.isMyLocationEnabled = true
        

        // Do any additional setup after loading the view.
    }

    override func viewDidLoad() {
        locationManager = CLLocationManager()
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.requestWhenInUseAuthorization()()
        locationManager.startUpdatingLocation()
        locationManager.delegate = self

    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    let basicMapStyle = "[" +
        "  {" +
        "    \"featureType\": \"poi.business\"," +
        "    \"elementType\": \"all\"," +
        "    \"stylers\": [" +
        "      {" +
        "        \"visibility\": \"off\"" +
        "      }" +
        "    ]" +
        "  }," +
        "  {" +
        "    \"featureType\": \"transit\"," +
        "    \"elementType\": \"labels.icon\"," +
        "    \"stylers\": [" +
        "      {" +
        "        \"visibility\": \"off\"" +
        "      }" +
        "    ]" +
        "  }" +
    "]"

    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
