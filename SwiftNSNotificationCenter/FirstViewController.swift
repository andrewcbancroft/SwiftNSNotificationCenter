import Foundation
import UIKit

let mySpecialNotificationKey = "com.andrewcbancroft.specialNotificationKey"

class FirstViewController: UIViewController {
	@IBOutlet weak var sentNotificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		NotificationCenter.default.addObserver(self, selector: #selector(FirstViewController.updateNotificationSentLabel), name: NSNotification.Name(rawValue: mySpecialNotificationKey), object: nil)
	}
	
	@IBAction func notify() {
		NotificationCenter.default.post(name: Notification.Name(rawValue: mySpecialNotificationKey), object: self)
	}
	
	func updateNotificationSentLabel() {
		self.sentNotificationLabel.text = "Notification sent!"
	}
}

