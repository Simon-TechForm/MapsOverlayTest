//
//  ViewController.swift
//  MapsOverlayTest
//
//  Created by Simon on 22/08/2022.
//

import UIKit
import GoogleMaps

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let camera = GMSCameraPosition.camera(withLatitude: -33.86, longitude: 151.20, zoom: 8.0)
        let mapView = GMSMapView.map(withFrame: self.view.frame, camera: camera)
        self.view.addSubview(mapView)
        
        // 1024px
        let southWest_1024px = CLLocationCoordinate2D(latitude: -33.86, longitude: 151.20)
        let northEast_1024px = CLLocationCoordinate2D(latitude: -33.66, longitude: 151.80)
        let overlayBounds_1024px = GMSCoordinateBounds(coordinate: southWest_1024px, coordinate: northEast_1024px)

        // Image from https://da.wikipedia.org/wiki/Fil:Sydney_skyline_Sept_2015_(22136171070).jpg
        let icon_1024px = UIImage(named: "sydney_1024px")

        let overlay_1024px = GMSGroundOverlay(bounds: overlayBounds_1024px, icon: icon_1024px)
        overlay_1024px.map = mapView
        
        
        //1280px
        let southWest_1280px = CLLocationCoordinate2D(latitude: -34.26, longitude: 150.50)
        let northEast_1280px = CLLocationCoordinate2D(latitude: -34.06, longitude: 151.10)
        let overlayBounds_1280px = GMSCoordinateBounds(coordinate: southWest_1280px, coordinate: northEast_1280px)

        // Image from https://da.wikipedia.org/wiki/Fil:Sydney_skyline_Sept_2015_(22136171070).jpg
        let icon_1280px = UIImage(named: "sydney_1280px")

        let overlay_1280px = GMSGroundOverlay(bounds: overlayBounds_1280px, icon: icon_1280px)
        overlay_1280px.map = mapView
    }


}

