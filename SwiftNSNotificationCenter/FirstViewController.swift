import Foundation
import UIKit

let mySpecialNotificationKey = "com.andrewcbancroft.specialNotificationKey"

class FirstViewController: UIViewController {
	@IBOutlet weak var sentNotificationLabel: UILabel!
	
	override func viewDidLoad() {
		super.viewDidLoad()
		NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(FirstViewController.updateNotificationSentLabel), name: mySpecialNotificationKey, object: nil)
	}
	
	@IBAction func notify() {
		NSNotificationCenter.defaultCenter().postNotificationName(mySpecialNotificationKey, object: self)
	}
	
	func updateNotificationSentLabel() {
		self.sentNotificationLabel.text = "Notification sent!"
	}
}

