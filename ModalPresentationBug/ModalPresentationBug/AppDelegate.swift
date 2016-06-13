//
//  AppDelegate.swift
//  ModalPresentationBug
//
//  Created by LuQuan Intrepid on 6/13/16.
//  Copyright © 2016 Lu Quan Tan. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(application: UIApplication, didFinishLaunchingWithOptions launchOptions: [NSObject: AnyObject]?) -> Bool {
        let window = UIWindow(frame: UIScreen.mainScreen().bounds);
        let rootViewController = MPRootViewController()
        window.rootViewController = rootViewController
        window.makeKeyAndVisible()
        self.window = window

        return true
    }

}

