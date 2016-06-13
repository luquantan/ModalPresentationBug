//
//  MPThirdViewController.swift
//  ModalPresentationBug
//
//  Created by LuQuan Intrepid on 6/13/16.
//  Copyright © 2016 Lu Quan Tan. All rights reserved.
//

import UIKit

class MPThirdViewController: UIViewController {

    @IBAction func dismissToRootPressed(sender: AnyObject) {
        presentingViewController?.presentingViewController?.dismissViewControllerAnimated(true, completion: nil)
    }

}
