//
//  AppDelegate.swift
//  Chatbuddy
//
//  Created by Ravi Shah on 09/12/23.
//

import Foundation
import UIKit
import Firebase


class AppDelegate: UIResponder, UIApplicationDelegate {
    
    var window: UIWindow?
    
    func application(_ application: UIApplication,
                     didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
        FirebaseApp.configure()
        
        return true
    }
}
