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
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var addressLabel: UILabel!
    @IBOutlet weak var phoneLabel: UILabel!
    
    var selectedMapItem = MKMapItem() //pass to this VC a selected map item
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print(selectedMapItem)
    }
    override func viewWillAppear(_ animated: Bool) {
        nameLabel.text = selectedMapItem.placemark.name
        var address = selectedMapItem.placemark.subThoroughfare! + " "
        address += selectedMapItem.placemark.thoroughfare! + "\n"
        address += selectedMapItem.placemark.locality! + ", "
        address += selectedMapItem.placemark.administrativeArea! + " "
        address += selectedMapItem.placemark.postalCode!
        addressLabel.text = address
        phoneLabel.text = selectedMapItem.phoneNumber
        
    }
}
