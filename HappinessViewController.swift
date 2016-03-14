//
//  HappinessViewController.swift
//  Happiness
//
//  Created by Chris on 2016. 3. 13..
//  Copyright © 2016년 WePlanet. All rights reserved.
//

import UIKit

class HappinessViewController: UIViewController, FaceViewDataSource
{
    @IBOutlet weak var faceview: FaceView! {
        didSet {
            faceview.dataSource = self
        }
    }
    
    var happiness: Int = 100 { // 0 = very sad, 100 = scstatic
        didSet {
            happiness = min(max(happiness, 0), 100)
            print("happiness = \(happiness)")
            updateUI()
        }
    }
    
    private func updateUI() {
        
    }
    
    func smilnessForFaceView(sender: FaceView) -> Double? {
        return Double(happiness-50)/50
    }
}
