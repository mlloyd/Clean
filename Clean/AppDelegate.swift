//
//  AppDelegate.swift
//  Clean
//
//  Created by Martin Lloyd on 22/03/2018.
//  Copyright © 2018 Martin Lloyd. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?

    let storyboardName = "Main"

    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        let storyboard = UIStoryboard(name: storyboardName, bundle: .main)
        let initialViewController: UINavigationController = storyboard.instantiateInitialViewController() as! UINavigationController
        let viewController = initialViewController.topViewController as! ProgrammersTableViewController

        let entityGateway = ProgrammersRepo()
        let useCase = ShowProgrammersListUseCase(entityGateway: entityGateway)
        let presenter = ProgrammersListPresenter(useCase: useCase)

        useCase.presenter = presenter

        viewController.presenter = presenter

        window = UIWindow()
        window?.rootViewController = initialViewController
        window?.makeKeyAndVisible()

        return true
    }
}
