//
//  MPRootViewController.swift
//  ModalPresentationBug
//
//  Created by LuQuan Intrepid on 6/13/16.
//  Copyright © 2016 Lu Quan Tan. All rights reserved.
//

import UIKit

class MPRootViewController: UIViewController {

    
    @IBAction func presentButtonPressed(sender: AnyObject) {
        let secondVC = MPSecondViewController()
        presentViewController(secondVC, animated: true, completion: nil)
    }
}
