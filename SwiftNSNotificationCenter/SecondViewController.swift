import Foundation
import UIKit

class SecondViewController: UIViewController {
	@IBOutlet weak var notificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(SecondViewController.actOnSpecialNotification), name: mySpecialNotificationKey, object: nil)
	}
	
	func actOnSpecialNotification() {
		self.notificationLabel.text = "I heard the notification!"
	}
}
