import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        
        
        // This works on iOS 12 and below, on iOS 12.1 UITabBar's layout of buttons is incorrect.
        window?.rootViewController?.additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: 80, right: 0)
        
        // Comment out the above line and uncomment the following to view how the UITabBar button's transform from valid to invalid layout.
//        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
//            UIView.animate(withDuration: 5, animations: {
//                self.window?.rootViewController?.additionalSafeAreaInsets = UIEdgeInsets(top: 0, left: 0, bottom: 80, right: 0)
//                self.window?.rootViewController?.view.layoutIfNeeded()
//            })
//        }
        
        return true
    }

}

