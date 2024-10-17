import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        guard let windowScene = scene as? UIWindowScene else { return }
        
        window = UIWindow(windowScene: windowScene)
        
        let photosVC = PhotosTableViewController()
        let profileVC = ProfileViewController()
        
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [
            UINavigationController(rootViewController: photosVC),
            UINavigationController(rootViewController: profileVC)
        ]
        
        tabBarController.tabBar.items?[0].title = "Feed"
        tabBarController.tabBar.items?[1].title = "Profile"
        tabBarController.tabBar.items?[0].image = UIImage(systemName: "house.fill")
        tabBarController.tabBar.items?[1].image = UIImage(systemName: "person.fill")
        
        window?.rootViewController = tabBarController
        window?.makeKeyAndVisible()
    }
}


    func sceneDidDisconnect(_ scene: UIScene) {
        // Called when the scene is being released by the system.
        // This occurs shortly after the user quits the application.
        // Release any resources that were specific to the discarded scene, as they will not return.
    }

    func sceneDidBecomeActive(_ scene: UIScene) {
        // Restart any tasks that were paused (or not yet started) when the scene was inactive.
    }

    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    }

    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    }

    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough application state information
        // to restore your application to its current state in case it is terminated later.
    }
