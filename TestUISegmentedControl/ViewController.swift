//
//  ViewController.swift
//  TestUISegmentedControl
//
//  Created by RD-WilleyLo on 07/06/2017.
//  Copyright © 2017 RD-WilleyLo. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var textLabel: UILabel!
    @IBAction func indexChanged(_ sender: UISegmentedControl) {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            textLabel.text = "First segmentedControl didSelected"
        case 1:
            textLabel.text = "Second segmentedControl didSelected"
        default:
            break
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupSegmentedControlID()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

// MARK: --
// MARK: setupSegmentedControl

    fileprivate func setupSegmentedControlID() {
        segmentedControl.setTitle("FirstControl", forSegmentAt: 0)
        segmentedControl.setTitle("SecondControl", forSegmentAt: 1)
    }


}

