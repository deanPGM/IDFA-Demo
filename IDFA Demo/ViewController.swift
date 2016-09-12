//
//  ViewController.swift
//  IDFA Demo
//
//  Created by Dean Murphy on 12/09/2016.
//  Copyright © 2016 Murphy Apps. All rights reserved.
//

import UIKit
import AdSupport

class ViewController: UIViewController {
    
    @IBOutlet weak var idfaLabel: UILabel!
    @IBOutlet weak var LimitAdTrackingLabel: UILabel!

    @IBAction func refreshButton(_ sender: AnyObject) {
        
        getIDFA()
    }
    
    func getIDFA() {
        
        let advertisingIdManager = ASIdentifierManager()
        let IDFA = advertisingIdManager.advertisingIdentifier
        let isTracking = advertisingIdManager.isAdvertisingTrackingEnabled
        
        switch isTracking {
        case false:
            
            LimitAdTrackingLabel.text = "Limit Ad Tracking: Enabled"
        default:
            
            LimitAdTrackingLabel.text = "Limit Ad Tracking: Disabled"
        }
        
        idfaLabel.text = "IDFA: \(IDFA!)"
        
        print(IDFA, isTracking)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        getIDFA()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

