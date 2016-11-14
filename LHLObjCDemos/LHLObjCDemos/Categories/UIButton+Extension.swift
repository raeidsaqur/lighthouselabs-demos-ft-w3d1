import Foundation
import UIKit

extension UIButton {
    
    func contact() {
        self.layer.cornerRadius = 4
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.purple.cgColor
    }
    
    func menuItemsCircular() {
        self.layer.cornerRadius = self.bounds.size.height / 2
        self.layer.borderWidth = 1
        self.layer.borderColor = UIColor.purple.cgColor
    }
    
}
