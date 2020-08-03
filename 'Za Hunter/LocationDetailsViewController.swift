//
//  LocationDetailsViewController.swift
//  'Za Hunter
//
//  Created by Diana Cao on 8/3/20.
//  Copyright © 2020 Diana Cao. All rights reserved.
//

import UIKit
import MapKit

class LocationDetailsViewController: UIViewController {
    
    var selectedMapItem = MKMapItem() //pass to this VC a selected map item
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem)
    }
    
}
