//
//  SceneDelegate.swift
//  ChallengeSpotifyPlayer
//
//  Created by thyagoraphael on 7/25/21.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        
        guard let windowScene = (scene as? UIWindowScene) else { return }
        window = UIWindow(frame: windowScene.coordinateSpace.bounds)
        window?.windowScene = windowScene
        window?.makeKeyAndVisible()
        window?.backgroundColor = .white
        
        let navigatorController = UINavigationController(rootViewController: Challenge())
        window?.rootViewController = navigatorController
    }
}

