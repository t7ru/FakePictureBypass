import Orion
import UIKit
import FakePictureBypassC

class TableHook: ClassHook<UITableViewLabel> {
    func setText(_ text: String) {
        if text.contains("Settings") {
            orig.setText("Settings xd")
        } else {
        orig.setText(text)
        }
    }
}