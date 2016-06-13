//
//  MPSecondViewController.swift
//  ModalPresentationBug
//
//  Created by LuQuan Intrepid on 6/13/16.
//  Copyright © 2016 Lu Quan Tan. All rights reserved.
//

import UIKit

class MPSecondViewController: UIViewController {

    @IBAction func presentButtonPressed(sender: AnyObject) {
        let thirdVC = MPThirdViewController()
        presentViewController(thirdVC, animated: true, completion: nil)
    }

}
