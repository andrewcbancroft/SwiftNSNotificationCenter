import Foundation
import UIKit

class ThirdViewController: UIViewController {
	@IBOutlet weak var notificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(ThirdViewController.actOnSpecialNotification), name: mySpecialNotificationKey, object: nil)
	}
	
	func actOnSpecialNotification() {
		self.notificationLabel.text = "I heard the notification, too!"
	}
}
